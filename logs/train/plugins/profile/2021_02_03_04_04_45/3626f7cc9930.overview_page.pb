�	�<�-�@�<�-�@!�<�-�@	a��H�?a��H�?!a��H�?"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6�<�-�@��-���?1�x"��p�?A%A�
��?IR~R�3@Y>"�D�?*	�Zd;��@2]
&Iterator::Model::MaxIntraOpParallelism/O�R�?!�5�u��X@).���=V�?1�%&�X@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch)@̘��?!s�!ڌ+@))@̘��?1s�!ڌ+@:Preprocessing2F
Iterator::Model�7/N|5�?!      Y@)of��ᔉ?1�?eE��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 26.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"�38.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9b��H�?I��m�lP@Q�^2��u@@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��-���?��-���?!��-���?      ��!       "	�x"��p�?�x"��p�?!�x"��p�?*      ��!       2	%A�
��?%A�
��?!%A�
��?:	R~R�3@R~R�3@!R~R�3@B      ��!       J	>"�D�?>"�D�?!>"�D�?R      ��!       Z	>"�D�?>"�D�?!>"�D�?b      ��!       JGPUYb��H�?b q��m�lP@y�^2��u@@�"g
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput(�lN9|�?!(�lN9|�?0"i
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter���Iu(�?!�\6LWR�?0"g
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterG� �_p�?!OU�C�?0"]
<gradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGradl�ʟ	_�?!*�]�?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?�`_h�?!
�%�J�?"[
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad�qt��?!>�I
�?":
sequential/conv2d_1/Relu_FusedConv2D/e�h���?!��P���?"F
(gradient_tape/sequential/conv2d/ReluGradReluGrad͎��N�?!��(���?"6
sequential/conv2d/Conv2DConv2Dp�Í��?!�)�I��?0"6
sequential/conv2d/BiasAddBiasAdd�4O8.�?!5�o���?Q      Y@Y6��P^C)@az�5��U@qA�=:f @yk��p��?"�

both�Your program is POTENTIALLY input-bound because 26.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
high�38.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"GPU(: B 