import os

import tensorflow as tf

zero_out_module = tf.load_op_library('src/tf_op/op.so')

print(zero_out_module.zero_out([[1, 2], [3, 4]]).numpy())

# op = tensorwasm("tokenizer.wasm")

# op(tf.constant(["mon text"]))
# # {"tokens": tf.Tensor([123, 1234], shape=(2,), dtype=string), "mask": ...} 
