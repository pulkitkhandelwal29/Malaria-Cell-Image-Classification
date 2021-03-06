?	v?X??<@v?X??<@!v?X??<@	???0?????0??!???0??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLv?X??<@,?,??@1?S?4?*@A+?`??I#????@YW^???;??rEagerKernelExecute 0*	n???d@2]
&Iterator::Model::MaxIntraOpParallelism?]~p??!??T?`V@)??C5%Y??1/?|p?P@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch??????!7)."7@)??????17)."7@:Preprocessing2F
Iterator::ModelJ??c???!      Y@)?۽?'G??1~?Y??$@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 24.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?27.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???0??IS?AYJ@Q?+g?F@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	,?,??@,?,??@!,?,??@      ??!       "	?S?4?*@?S?4?*@!?S?4?*@*      ??!       2	+?`??+?`??!+?`??:	#????@#????@!#????@B      ??!       J	W^???;??W^???;??!W^???;??R      ??!       Z	W^???;??W^???;??!W^???;??b      ??!       JGPUY???0??b qS?AYJ@y?+g?F@?"g
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?Z]????!?Z]????0"-
IteratorGetNext/_1_Send??;???!?=???p??"i
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter!E???s??!??????0"[
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad?w?I`??!?V?????"F
(gradient_tape/sequential/conv2d/ReluGradReluGrad??ŧo???!|?`???":
sequential/conv2d_1/Relu_FusedConv2Dw??5Ǥ?!{?????"8
sequential/conv2d/Relu_FusedConv2Dz?????!?BrK&??"g
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput`?d?????!?g???#??0"=
 sequential/max_pooling2d/MaxPoolMaxPoolfO`????!cj??????"i
=gradient_tape/sequential/conv2d_2/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?c#??Y??!???)e???0Q      Y@Y]?u]?u!@aEQE?V@qX?{?W@y???&???"?

both?Your program is POTENTIALLY input-bound because 24.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?27.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Turing)(: B 