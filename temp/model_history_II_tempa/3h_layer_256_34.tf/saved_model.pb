��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��
�
Adam/Output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_layer/bias/v
�
,Adam/Output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output_layer/bias/v*
_output_shapes
:*
dtype0
�
Adam/Output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_layer/kernel/v
�
.Adam/Output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output_layer/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/Hidden_layer_III/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_III/bias/v
�
0Adam/Hidden_layer_III/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/bias/v*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_III/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*/
shared_name Adam/Hidden_layer_III/kernel/v
�
2Adam/Hidden_layer_III/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/Hidden_layer_II/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameAdam/Hidden_layer_II/bias/v
�
/Adam/Hidden_layer_II/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/bias/v*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_II/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*.
shared_nameAdam/Hidden_layer_II/kernel/v
�
1Adam/Hidden_layer_II/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/kernel/v*
_output_shapes

:

*
dtype0
�
Adam/Hidden_layer_I/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_layer_I/bias/v
�
.Adam/Hidden_layer_I/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/bias/v*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_I/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*-
shared_nameAdam/Hidden_layer_I/kernel/v
�
0Adam/Hidden_layer_I/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/kernel/v*
_output_shapes
:	�
*
dtype0
�
Adam/Output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_layer/bias/m
�
,Adam/Output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output_layer/bias/m*
_output_shapes
:*
dtype0
�
Adam/Output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_layer/kernel/m
�
.Adam/Output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output_layer/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/Hidden_layer_III/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_III/bias/m
�
0Adam/Hidden_layer_III/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/bias/m*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_III/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*/
shared_name Adam/Hidden_layer_III/kernel/m
�
2Adam/Hidden_layer_III/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/Hidden_layer_II/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameAdam/Hidden_layer_II/bias/m
�
/Adam/Hidden_layer_II/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/bias/m*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_II/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*.
shared_nameAdam/Hidden_layer_II/kernel/m
�
1Adam/Hidden_layer_II/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/kernel/m*
_output_shapes

:

*
dtype0
�
Adam/Hidden_layer_I/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameAdam/Hidden_layer_I/bias/m
�
.Adam/Hidden_layer_I/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/bias/m*
_output_shapes
:
*
dtype0
�
Adam/Hidden_layer_I/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*-
shared_nameAdam/Hidden_layer_I/kernel/m
�
0Adam/Hidden_layer_I/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/kernel/m*
_output_shapes
:	�
*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
z
Output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameOutput_layer/bias
s
%Output_layer/bias/Read/ReadVariableOpReadVariableOpOutput_layer/bias*
_output_shapes
:*
dtype0
�
Output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_nameOutput_layer/kernel
{
'Output_layer/kernel/Read/ReadVariableOpReadVariableOpOutput_layer/kernel*
_output_shapes

:
*
dtype0
�
Hidden_layer_III/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameHidden_layer_III/bias
{
)Hidden_layer_III/bias/Read/ReadVariableOpReadVariableOpHidden_layer_III/bias*
_output_shapes
:
*
dtype0
�
Hidden_layer_III/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*(
shared_nameHidden_layer_III/kernel
�
+Hidden_layer_III/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_III/kernel*
_output_shapes

:

*
dtype0
�
Hidden_layer_II/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameHidden_layer_II/bias
y
(Hidden_layer_II/bias/Read/ReadVariableOpReadVariableOpHidden_layer_II/bias*
_output_shapes
:
*
dtype0
�
Hidden_layer_II/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

*'
shared_nameHidden_layer_II/kernel
�
*Hidden_layer_II/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_II/kernel*
_output_shapes

:

*
dtype0
~
Hidden_layer_I/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameHidden_layer_I/bias
w
'Hidden_layer_I/bias/Read/ReadVariableOpReadVariableOpHidden_layer_I/bias*
_output_shapes
:
*
dtype0
�
Hidden_layer_I/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameHidden_layer_I/kernel
�
)Hidden_layer_I/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_I/kernel*
_output_shapes
:	�
*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Hidden_layer_I/kernelHidden_layer_I/biasHidden_layer_II/kernelHidden_layer_II/biasHidden_layer_III/kernelHidden_layer_III/biasOutput_layer/kernelOutput_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_795960

NoOpNoOp
�6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�6
value�6B�6 B�6
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	H_layer_1
		H_layer_2

	H_layer_3
output_layer
	optimizer

signatures*
<
0
1
2
3
4
5
6
7*
<
0
1
2
3
4
5
6
7*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

kernel
bias*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

kernel
bias*
�
7iter

8beta_1

9beta_2
	:decay
;learning_ratemdmemfmgmhmimjmkvlvmvnvovpvqvrvs*

<serving_default* 
UO
VARIABLE_VALUEHidden_layer_I/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEHidden_layer_I/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEHidden_layer_II/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEHidden_layer_II/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEHidden_layer_III/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEHidden_layer_III/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEOutput_layer/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEOutput_layer/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
	1

2
3*

=0
>1*
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Dtrace_0* 

Etrace_0* 

0
1*

0
1*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 

0
1*

0
1*
* 
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

Rtrace_0* 

Strace_0* 

0
1*

0
1*
* 
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Ytrace_0* 

Ztrace_0* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
8
[	variables
\	keras_api
	]total
	^count*
H
_	variables
`	keras_api
	atotal
	bcount
c
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

]0
^1*

[	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

a0
b1*

_	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
xr
VARIABLE_VALUEAdam/Hidden_layer_I/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_I/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Hidden_layer_II/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/Hidden_layer_II/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_III/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_III/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Output_layer/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Output_layer/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_I/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Hidden_layer_I/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/Hidden_layer_II/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/Hidden_layer_II/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/Hidden_layer_III/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/Hidden_layer_III/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/Output_layer/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/Output_layer/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_layer_I/kernel/Read/ReadVariableOp'Hidden_layer_I/bias/Read/ReadVariableOp*Hidden_layer_II/kernel/Read/ReadVariableOp(Hidden_layer_II/bias/Read/ReadVariableOp+Hidden_layer_III/kernel/Read/ReadVariableOp)Hidden_layer_III/bias/Read/ReadVariableOp'Output_layer/kernel/Read/ReadVariableOp%Output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0Adam/Hidden_layer_I/kernel/m/Read/ReadVariableOp.Adam/Hidden_layer_I/bias/m/Read/ReadVariableOp1Adam/Hidden_layer_II/kernel/m/Read/ReadVariableOp/Adam/Hidden_layer_II/bias/m/Read/ReadVariableOp2Adam/Hidden_layer_III/kernel/m/Read/ReadVariableOp0Adam/Hidden_layer_III/bias/m/Read/ReadVariableOp.Adam/Output_layer/kernel/m/Read/ReadVariableOp,Adam/Output_layer/bias/m/Read/ReadVariableOp0Adam/Hidden_layer_I/kernel/v/Read/ReadVariableOp.Adam/Hidden_layer_I/bias/v/Read/ReadVariableOp1Adam/Hidden_layer_II/kernel/v/Read/ReadVariableOp/Adam/Hidden_layer_II/bias/v/Read/ReadVariableOp2Adam/Hidden_layer_III/kernel/v/Read/ReadVariableOp0Adam/Hidden_layer_III/bias/v/Read/ReadVariableOp.Adam/Output_layer/kernel/v/Read/ReadVariableOp,Adam/Output_layer/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_796215
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_layer_I/kernelHidden_layer_I/biasHidden_layer_II/kernelHidden_layer_II/biasHidden_layer_III/kernelHidden_layer_III/biasOutput_layer/kernelOutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/Hidden_layer_I/kernel/mAdam/Hidden_layer_I/bias/mAdam/Hidden_layer_II/kernel/mAdam/Hidden_layer_II/bias/mAdam/Hidden_layer_III/kernel/mAdam/Hidden_layer_III/bias/mAdam/Output_layer/kernel/mAdam/Output_layer/bias/mAdam/Hidden_layer_I/kernel/vAdam/Hidden_layer_I/bias/vAdam/Hidden_layer_II/kernel/vAdam/Hidden_layer_II/bias/vAdam/Hidden_layer_III/kernel/vAdam/Hidden_layer_III/bias/vAdam/Output_layer/kernel/vAdam/Output_layer/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_796324��
�

�
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_795803

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
H__inference_Output_layer_layer_call_and_return_conditional_losses_796093

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
0__inference_Hidden_layer_II_layer_call_fn_796042

inputs
unknown:


	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_795786o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_795786

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_796033

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795931
input_1(
hidden_layer_i_795910:	�
#
hidden_layer_i_795912:
(
hidden_layer_ii_795915:

$
hidden_layer_ii_795917:
)
hidden_layer_iii_795920:

%
hidden_layer_iii_795922:
%
output_layer_795925:
!
output_layer_795927:
identity��&Hidden_layer_I/StatefulPartitionedCall�'Hidden_layer_II/StatefulPartitionedCall�(Hidden_layer_III/StatefulPartitionedCall�$Output_layer/StatefulPartitionedCall�
&Hidden_layer_I/StatefulPartitionedCallStatefulPartitionedCallinput_1hidden_layer_i_795910hidden_layer_i_795912*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_795769�
'Hidden_layer_II/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_I/StatefulPartitionedCall:output:0hidden_layer_ii_795915hidden_layer_ii_795917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_795786�
(Hidden_layer_III/StatefulPartitionedCallStatefulPartitionedCall0Hidden_layer_II/StatefulPartitionedCall:output:0hidden_layer_iii_795920hidden_layer_iii_795922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_795803�
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_III/StatefulPartitionedCall:output:0output_layer_795925output_layer_795927*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_795820|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden_layer_I/StatefulPartitionedCall(^Hidden_layer_II/StatefulPartitionedCall)^Hidden_layer_III/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2P
&Hidden_layer_I/StatefulPartitionedCall&Hidden_layer_I/StatefulPartitionedCall2R
'Hidden_layer_II/StatefulPartitionedCall'Hidden_layer_II/StatefulPartitionedCall2T
(Hidden_layer_III/StatefulPartitionedCall(Hidden_layer_III/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�1
�
!__inference__wrapped_model_795751
input_1L
9h_layer_256_hidden_layer_i_matmul_readvariableop_resource:	�
H
:h_layer_256_hidden_layer_i_biasadd_readvariableop_resource:
L
:h_layer_256_hidden_layer_ii_matmul_readvariableop_resource:

I
;h_layer_256_hidden_layer_ii_biasadd_readvariableop_resource:
M
;h_layer_256_hidden_layer_iii_matmul_readvariableop_resource:

J
<h_layer_256_hidden_layer_iii_biasadd_readvariableop_resource:
I
7h_layer_256_output_layer_matmul_readvariableop_resource:
F
8h_layer_256_output_layer_biasadd_readvariableop_resource:
identity��23h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOp�13h_layer_256/Hidden_layer_I/MatMul/ReadVariableOp�33h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOp�23h_layer_256/Hidden_layer_II/MatMul/ReadVariableOp�43h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOp�33h_layer_256/Hidden_layer_III/MatMul/ReadVariableOp�03h_layer_256/Output_layer/BiasAdd/ReadVariableOp�/3h_layer_256/Output_layer/MatMul/ReadVariableOp�
13h_layer_256/Hidden_layer_I/MatMul/ReadVariableOpReadVariableOp9h_layer_256_hidden_layer_i_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
"3h_layer_256/Hidden_layer_I/MatMulMatMulinput_193h_layer_256/Hidden_layer_I/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
23h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOpReadVariableOp:h_layer_256_hidden_layer_i_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
#3h_layer_256/Hidden_layer_I/BiasAddBiasAdd,3h_layer_256/Hidden_layer_I/MatMul:product:0:3h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 3h_layer_256/Hidden_layer_I/TanhTanh,3h_layer_256/Hidden_layer_I/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
23h_layer_256/Hidden_layer_II/MatMul/ReadVariableOpReadVariableOp:h_layer_256_hidden_layer_ii_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
#3h_layer_256/Hidden_layer_II/MatMulMatMul$3h_layer_256/Hidden_layer_I/Tanh:y:0:3h_layer_256/Hidden_layer_II/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
33h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOpReadVariableOp;h_layer_256_hidden_layer_ii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
$3h_layer_256/Hidden_layer_II/BiasAddBiasAdd-3h_layer_256/Hidden_layer_II/MatMul:product:0;3h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
!3h_layer_256/Hidden_layer_II/TanhTanh-3h_layer_256/Hidden_layer_II/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
33h_layer_256/Hidden_layer_III/MatMul/ReadVariableOpReadVariableOp;h_layer_256_hidden_layer_iii_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
$3h_layer_256/Hidden_layer_III/MatMulMatMul%3h_layer_256/Hidden_layer_II/Tanh:y:0;3h_layer_256/Hidden_layer_III/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
43h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOpReadVariableOp<h_layer_256_hidden_layer_iii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
%3h_layer_256/Hidden_layer_III/BiasAddBiasAdd.3h_layer_256/Hidden_layer_III/MatMul:product:0<3h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
"3h_layer_256/Hidden_layer_III/TanhTanh.3h_layer_256/Hidden_layer_III/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
/3h_layer_256/Output_layer/MatMul/ReadVariableOpReadVariableOp7h_layer_256_output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
 3h_layer_256/Output_layer/MatMulMatMul&3h_layer_256/Hidden_layer_III/Tanh:y:073h_layer_256/Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
03h_layer_256/Output_layer/BiasAdd/ReadVariableOpReadVariableOp8h_layer_256_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!3h_layer_256/Output_layer/BiasAddBiasAdd*3h_layer_256/Output_layer/MatMul:product:083h_layer_256/Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!3h_layer_256/Output_layer/SoftmaxSoftmax*3h_layer_256/Output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+3h_layer_256/Output_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^3h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOp2^3h_layer_256/Hidden_layer_I/MatMul/ReadVariableOp4^3h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOp3^3h_layer_256/Hidden_layer_II/MatMul/ReadVariableOp5^3h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOp4^3h_layer_256/Hidden_layer_III/MatMul/ReadVariableOp1^3h_layer_256/Output_layer/BiasAdd/ReadVariableOp0^3h_layer_256/Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2h
23h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOp23h_layer_256/Hidden_layer_I/BiasAdd/ReadVariableOp2f
13h_layer_256/Hidden_layer_I/MatMul/ReadVariableOp13h_layer_256/Hidden_layer_I/MatMul/ReadVariableOp2j
33h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOp33h_layer_256/Hidden_layer_II/BiasAdd/ReadVariableOp2h
23h_layer_256/Hidden_layer_II/MatMul/ReadVariableOp23h_layer_256/Hidden_layer_II/MatMul/ReadVariableOp2l
43h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOp43h_layer_256/Hidden_layer_III/BiasAdd/ReadVariableOp2j
33h_layer_256/Hidden_layer_III/MatMul/ReadVariableOp33h_layer_256/Hidden_layer_III/MatMul/ReadVariableOp2d
03h_layer_256/Output_layer/BiasAdd/ReadVariableOp03h_layer_256/Output_layer/BiasAdd/ReadVariableOp2b
/3h_layer_256/Output_layer/MatMul/ReadVariableOp/3h_layer_256/Output_layer/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�E
�
__inference__traced_save_796215
file_prefix4
0savev2_hidden_layer_i_kernel_read_readvariableop2
.savev2_hidden_layer_i_bias_read_readvariableop5
1savev2_hidden_layer_ii_kernel_read_readvariableop3
/savev2_hidden_layer_ii_bias_read_readvariableop6
2savev2_hidden_layer_iii_kernel_read_readvariableop4
0savev2_hidden_layer_iii_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_adam_hidden_layer_i_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_i_bias_m_read_readvariableop<
8savev2_adam_hidden_layer_ii_kernel_m_read_readvariableop:
6savev2_adam_hidden_layer_ii_bias_m_read_readvariableop=
9savev2_adam_hidden_layer_iii_kernel_m_read_readvariableop;
7savev2_adam_hidden_layer_iii_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_i_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_i_bias_v_read_readvariableop<
8savev2_adam_hidden_layer_ii_kernel_v_read_readvariableop:
6savev2_adam_hidden_layer_ii_bias_v_read_readvariableop=
9savev2_adam_hidden_layer_iii_kernel_v_read_readvariableop;
7savev2_adam_hidden_layer_iii_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_i_kernel_read_readvariableop.savev2_hidden_layer_i_bias_read_readvariableop1savev2_hidden_layer_ii_kernel_read_readvariableop/savev2_hidden_layer_ii_bias_read_readvariableop2savev2_hidden_layer_iii_kernel_read_readvariableop0savev2_hidden_layer_iii_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_adam_hidden_layer_i_kernel_m_read_readvariableop5savev2_adam_hidden_layer_i_bias_m_read_readvariableop8savev2_adam_hidden_layer_ii_kernel_m_read_readvariableop6savev2_adam_hidden_layer_ii_bias_m_read_readvariableop9savev2_adam_hidden_layer_iii_kernel_m_read_readvariableop7savev2_adam_hidden_layer_iii_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_hidden_layer_i_kernel_v_read_readvariableop5savev2_adam_hidden_layer_i_bias_v_read_readvariableop8savev2_adam_hidden_layer_ii_kernel_v_read_readvariableop6savev2_adam_hidden_layer_ii_bias_v_read_readvariableop9savev2_adam_hidden_layer_iii_kernel_v_read_readvariableop7savev2_adam_hidden_layer_iii_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�
:
:

:
:

:
:
:: : : : : : : : : :	�
:
:

:
:

:
:
::	�
:
:

:
:

:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	�
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$  

_output_shapes

:
: !

_output_shapes
::"

_output_shapes
: 
�
�
/__inference_Hidden_layer_I_layer_call_fn_796022

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_795769o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_Output_layer_layer_call_fn_796082

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_795820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�(
�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_796013

inputs@
-hidden_layer_i_matmul_readvariableop_resource:	�
<
.hidden_layer_i_biasadd_readvariableop_resource:
@
.hidden_layer_ii_matmul_readvariableop_resource:

=
/hidden_layer_ii_biasadd_readvariableop_resource:
A
/hidden_layer_iii_matmul_readvariableop_resource:

>
0hidden_layer_iii_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identity��%Hidden_layer_I/BiasAdd/ReadVariableOp�$Hidden_layer_I/MatMul/ReadVariableOp�&Hidden_layer_II/BiasAdd/ReadVariableOp�%Hidden_layer_II/MatMul/ReadVariableOp�'Hidden_layer_III/BiasAdd/ReadVariableOp�&Hidden_layer_III/MatMul/ReadVariableOp�#Output_layer/BiasAdd/ReadVariableOp�"Output_layer/MatMul/ReadVariableOp�
$Hidden_layer_I/MatMul/ReadVariableOpReadVariableOp-hidden_layer_i_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
Hidden_layer_I/MatMulMatMulinputs,Hidden_layer_I/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
%Hidden_layer_I/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_i_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
Hidden_layer_I/BiasAddBiasAddHidden_layer_I/MatMul:product:0-Hidden_layer_I/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
n
Hidden_layer_I/TanhTanhHidden_layer_I/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
%Hidden_layer_II/MatMul/ReadVariableOpReadVariableOp.hidden_layer_ii_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
Hidden_layer_II/MatMulMatMulHidden_layer_I/Tanh:y:0-Hidden_layer_II/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
&Hidden_layer_II/BiasAdd/ReadVariableOpReadVariableOp/hidden_layer_ii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
Hidden_layer_II/BiasAddBiasAdd Hidden_layer_II/MatMul:product:0.Hidden_layer_II/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
p
Hidden_layer_II/TanhTanh Hidden_layer_II/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
&Hidden_layer_III/MatMul/ReadVariableOpReadVariableOp/hidden_layer_iii_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0�
Hidden_layer_III/MatMulMatMulHidden_layer_II/Tanh:y:0.Hidden_layer_III/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
'Hidden_layer_III/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_iii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
Hidden_layer_III/BiasAddBiasAdd!Hidden_layer_III/MatMul:product:0/Hidden_layer_III/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
Hidden_layer_III/TanhTanh!Hidden_layer_III/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
"Output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
Output_layer/MatMulMatMulHidden_layer_III/Tanh:y:0*Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#Output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Output_layer/BiasAddBiasAddOutput_layer/MatMul:product:0+Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
Output_layer/SoftmaxSoftmaxOutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������m
IdentityIdentityOutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^Hidden_layer_I/BiasAdd/ReadVariableOp%^Hidden_layer_I/MatMul/ReadVariableOp'^Hidden_layer_II/BiasAdd/ReadVariableOp&^Hidden_layer_II/MatMul/ReadVariableOp(^Hidden_layer_III/BiasAdd/ReadVariableOp'^Hidden_layer_III/MatMul/ReadVariableOp$^Output_layer/BiasAdd/ReadVariableOp#^Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2N
%Hidden_layer_I/BiasAdd/ReadVariableOp%Hidden_layer_I/BiasAdd/ReadVariableOp2L
$Hidden_layer_I/MatMul/ReadVariableOp$Hidden_layer_I/MatMul/ReadVariableOp2P
&Hidden_layer_II/BiasAdd/ReadVariableOp&Hidden_layer_II/BiasAdd/ReadVariableOp2N
%Hidden_layer_II/MatMul/ReadVariableOp%Hidden_layer_II/MatMul/ReadVariableOp2R
'Hidden_layer_III/BiasAdd/ReadVariableOp'Hidden_layer_III/BiasAdd/ReadVariableOp2P
&Hidden_layer_III/MatMul/ReadVariableOp&Hidden_layer_III/MatMul/ReadVariableOp2J
#Output_layer/BiasAdd/ReadVariableOp#Output_layer/BiasAdd/ReadVariableOp2H
"Output_layer/MatMul/ReadVariableOp"Output_layer/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795827

inputs(
hidden_layer_i_795770:	�
#
hidden_layer_i_795772:
(
hidden_layer_ii_795787:

$
hidden_layer_ii_795789:
)
hidden_layer_iii_795804:

%
hidden_layer_iii_795806:
%
output_layer_795821:
!
output_layer_795823:
identity��&Hidden_layer_I/StatefulPartitionedCall�'Hidden_layer_II/StatefulPartitionedCall�(Hidden_layer_III/StatefulPartitionedCall�$Output_layer/StatefulPartitionedCall�
&Hidden_layer_I/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_i_795770hidden_layer_i_795772*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_795769�
'Hidden_layer_II/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_I/StatefulPartitionedCall:output:0hidden_layer_ii_795787hidden_layer_ii_795789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_795786�
(Hidden_layer_III/StatefulPartitionedCallStatefulPartitionedCall0Hidden_layer_II/StatefulPartitionedCall:output:0hidden_layer_iii_795804hidden_layer_iii_795806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_795803�
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_III/StatefulPartitionedCall:output:0output_layer_795821output_layer_795823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_795820|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^Hidden_layer_I/StatefulPartitionedCall(^Hidden_layer_II/StatefulPartitionedCall)^Hidden_layer_III/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2P
&Hidden_layer_I/StatefulPartitionedCall&Hidden_layer_I/StatefulPartitionedCall2R
'Hidden_layer_II/StatefulPartitionedCall'Hidden_layer_II/StatefulPartitionedCall2T
(Hidden_layer_III/StatefulPartitionedCall(Hidden_layer_III/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_795960
input_1
unknown:	�

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_795751o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�	
�
-__inference_3h_layer_256_layer_call_fn_795846
input_1
unknown:	�

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_1
�

�
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_796053

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_795769

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
H__inference_Output_layer_layer_call_and_return_conditional_losses_795820

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_796073

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�	
�
-__inference_3h_layer_256_layer_call_fn_795981

inputs
unknown:	�

	unknown_0:

	unknown_1:


	unknown_2:

	unknown_3:


	unknown_4:

	unknown_5:

	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_Hidden_layer_III_layer_call_fn_796062

inputs
unknown:


	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_795803o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
Ѓ
�
"__inference__traced_restore_796324
file_prefix9
&assignvariableop_hidden_layer_i_kernel:	�
4
&assignvariableop_1_hidden_layer_i_bias:
;
)assignvariableop_2_hidden_layer_ii_kernel:

5
'assignvariableop_3_hidden_layer_ii_bias:
<
*assignvariableop_4_hidden_layer_iii_kernel:

6
(assignvariableop_5_hidden_layer_iii_bias:
8
&assignvariableop_6_output_layer_kernel:
2
$assignvariableop_7_output_layer_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: C
0assignvariableop_17_adam_hidden_layer_i_kernel_m:	�
<
.assignvariableop_18_adam_hidden_layer_i_bias_m:
C
1assignvariableop_19_adam_hidden_layer_ii_kernel_m:

=
/assignvariableop_20_adam_hidden_layer_ii_bias_m:
D
2assignvariableop_21_adam_hidden_layer_iii_kernel_m:

>
0assignvariableop_22_adam_hidden_layer_iii_bias_m:
@
.assignvariableop_23_adam_output_layer_kernel_m:
:
,assignvariableop_24_adam_output_layer_bias_m:C
0assignvariableop_25_adam_hidden_layer_i_kernel_v:	�
<
.assignvariableop_26_adam_hidden_layer_i_bias_v:
C
1assignvariableop_27_adam_hidden_layer_ii_kernel_v:

=
/assignvariableop_28_adam_hidden_layer_ii_bias_v:
D
2assignvariableop_29_adam_hidden_layer_iii_kernel_v:

>
0assignvariableop_30_adam_hidden_layer_iii_bias_v:
@
.assignvariableop_31_adam_output_layer_kernel_v:
:
,assignvariableop_32_adam_output_layer_bias_v:
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_i_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_i_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp)assignvariableop_2_hidden_layer_ii_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp'assignvariableop_3_hidden_layer_ii_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp*assignvariableop_4_hidden_layer_iii_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp(assignvariableop_5_hidden_layer_iii_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp&assignvariableop_6_output_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp$assignvariableop_7_output_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_hidden_layer_i_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_hidden_layer_i_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_hidden_layer_ii_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_hidden_layer_ii_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_hidden_layer_iii_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_hidden_layer_iii_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_output_layer_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_output_layer_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_hidden_layer_i_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_hidden_layer_i_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_hidden_layer_ii_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_adam_hidden_layer_ii_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_hidden_layer_iii_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_hidden_layer_iii_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_output_layer_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_output_layer_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input_11
serving_default_input_1:0����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�p
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	H_layer_1
		H_layer_2

	H_layer_3
output_layer
	optimizer

signatures"
_tf_keras_model
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
-__inference_3h_layer_256_layer_call_fn_795846
-__inference_3h_layer_256_layer_call_fn_795981�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_796013
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795931�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�B�
!__inference__wrapped_model_795751input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
7iter

8beta_1

9beta_2
	:decay
;learning_ratemdmemfmgmhmimjmkvlvmvnvovpvqvrvs"
	optimizer
,
<serving_default"
signature_map
(:&	�
2Hidden_layer_I/kernel
!:
2Hidden_layer_I/bias
(:&

2Hidden_layer_II/kernel
": 
2Hidden_layer_II/bias
):'

2Hidden_layer_III/kernel
#:!
2Hidden_layer_III/bias
%:#
2Output_layer/kernel
:2Output_layer/bias
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_3h_layer_256_layer_call_fn_795846input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_3h_layer_256_layer_call_fn_795981inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_796013inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795931input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
Dtrace_02�
/__inference_Hidden_layer_I_layer_call_fn_796022�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zDtrace_0
�
Etrace_02�
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_796033�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_02�
0__inference_Hidden_layer_II_layer_call_fn_796042�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0
�
Ltrace_02�
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_796053�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_02�
1__inference_Hidden_layer_III_layer_call_fn_796062�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0
�
Strace_02�
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_796073�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zStrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
Ytrace_02�
-__inference_Output_layer_layer_call_fn_796082�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zYtrace_0
�
Ztrace_02�
H__inference_Output_layer_layer_call_and_return_conditional_losses_796093�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_795960input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
[	variables
\	keras_api
	]total
	^count"
_tf_keras_metric
^
_	variables
`	keras_api
	atotal
	bcount
c
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_Hidden_layer_I_layer_call_fn_796022inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_796033inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_Hidden_layer_II_layer_call_fn_796042inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_796053inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_Hidden_layer_III_layer_call_fn_796062inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_796073inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_Output_layer_layer_call_fn_796082inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_Output_layer_layer_call_and_return_conditional_losses_796093inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
]0
^1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
_	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
-:+	�
2Adam/Hidden_layer_I/kernel/m
&:$
2Adam/Hidden_layer_I/bias/m
-:+

2Adam/Hidden_layer_II/kernel/m
':%
2Adam/Hidden_layer_II/bias/m
.:,

2Adam/Hidden_layer_III/kernel/m
(:&
2Adam/Hidden_layer_III/bias/m
*:(
2Adam/Output_layer/kernel/m
$:"2Adam/Output_layer/bias/m
-:+	�
2Adam/Hidden_layer_I/kernel/v
&:$
2Adam/Hidden_layer_I/bias/v
-:+

2Adam/Hidden_layer_II/kernel/v
':%
2Adam/Hidden_layer_II/bias/v
.:,

2Adam/Hidden_layer_III/kernel/v
(:&
2Adam/Hidden_layer_III/bias/v
*:(
2Adam/Output_layer/kernel/v
$:"2Adam/Output_layer/bias/v�
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_795931d1�.
'�$
"�
input_1����������
� "%�"
�
0���������
� �
H__inference_3h_layer_256_layer_call_and_return_conditional_losses_796013c0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
-__inference_3h_layer_256_layer_call_fn_795846W1�.
'�$
"�
input_1����������
� "�����������
-__inference_3h_layer_256_layer_call_fn_795981V0�-
&�#
!�
inputs����������
� "�����������
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_796073\/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� �
1__inference_Hidden_layer_III_layer_call_fn_796062O/�,
%�"
 �
inputs���������

� "����������
�
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_796053\/�,
%�"
 �
inputs���������

� "%�"
�
0���������

� �
0__inference_Hidden_layer_II_layer_call_fn_796042O/�,
%�"
 �
inputs���������

� "����������
�
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_796033]0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� �
/__inference_Hidden_layer_I_layer_call_fn_796022P0�-
&�#
!�
inputs����������
� "����������
�
H__inference_Output_layer_layer_call_and_return_conditional_losses_796093\/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� �
-__inference_Output_layer_layer_call_fn_796082O/�,
%�"
 �
inputs���������

� "�����������
!__inference__wrapped_model_795751r1�.
'�$
"�
input_1����������
� "3�0
.
output_1"�
output_1����������
$__inference_signature_wrapper_795960}<�9
� 
2�/
-
input_1"�
input_1����������"3�0
.
output_1"�
output_1���������