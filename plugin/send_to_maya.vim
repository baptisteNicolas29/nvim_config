if !has('python3')
    echomsg ':python3 is not available, vim-find-test will not be loaded.'
    finish
endif

python3 import send_to_maya.send_to_maya
python3 stm= send_to_maya.send_to_maya.SendToMaya()

command! SendToMayaLog python3 stm.log()
command! SendToMaya python3 stm.send()
