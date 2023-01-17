import vim
import os
import socket


class SendToMaya:

    def log(self) -> None:

        host = '127.0.0.1'
        port = 7002
        addr = (host, port)
        conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        try:

            conn.connect(addr)
            print('everything work correctly')

        except ConnectionRefusedError:

            print('fail to connect to maya: please start the server at port 7002')

        finally:

            conn.close()

    def send(self):

        # print('\n'.join(vim.current.buffer[:]))

        host = '127.0.0.1'
        port = 7002
        addr = (host, port)

        conn = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        try:

            # data = 'from maya import cmds; cmds.polyCube()'
            data = '\n'.join(vim.current.buffer[:])
            data = data.replace('"', r'\"')
            data = data.replace("'", r'\'')
            print(data)
            data = data.encode()

            conn.connect(addr)
            conn.send(data)

        except ConnectionRefusedError:

            print('please start the server')

        finally:

            conn.close()

