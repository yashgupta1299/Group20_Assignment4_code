ѕц
Дз
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8–х
И
Adam/Output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_layer/bias/v
Б
,Adam/Output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output_layer/bias/v*
_output_shapes
:*
dtype0
Р
Adam/Output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_layer/kernel/v
Й
.Adam/Output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output_layer/kernel/v*
_output_shapes

:
*
dtype0
Р
Adam/Hidden_layer_III/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_III/bias/v
Й
0Adam/Hidden_layer_III/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/bias/v*
_output_shapes
:
*
dtype0
Ш
Adam/Hidden_layer_III/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*/
shared_name Adam/Hidden_layer_III/kernel/v
С
2Adam/Hidden_layer_III/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/kernel/v*
_output_shapes

:
*
dtype0
О
Adam/Hidden_layer_II/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Hidden_layer_II/bias/v
З
/Adam/Hidden_layer_II/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/bias/v*
_output_shapes
:*
dtype0
Ц
Adam/Hidden_layer_II/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/Hidden_layer_II/kernel/v
П
1Adam/Hidden_layer_II/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/kernel/v*
_output_shapes

:*
dtype0
М
Adam/Hidden_layer_I/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_I/bias/v
Е
.Adam/Hidden_layer_I/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/bias/v*
_output_shapes
:*
dtype0
Х
Adam/Hidden_layer_I/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameAdam/Hidden_layer_I/kernel/v
О
0Adam/Hidden_layer_I/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/kernel/v*
_output_shapes
:	А*
dtype0
И
Adam/Output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/Output_layer/bias/m
Б
,Adam/Output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output_layer/bias/m*
_output_shapes
:*
dtype0
Р
Adam/Output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/Output_layer/kernel/m
Й
.Adam/Output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output_layer/kernel/m*
_output_shapes

:
*
dtype0
Р
Adam/Hidden_layer_III/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameAdam/Hidden_layer_III/bias/m
Й
0Adam/Hidden_layer_III/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/bias/m*
_output_shapes
:
*
dtype0
Ш
Adam/Hidden_layer_III/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*/
shared_name Adam/Hidden_layer_III/kernel/m
С
2Adam/Hidden_layer_III/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_III/kernel/m*
_output_shapes

:
*
dtype0
О
Adam/Hidden_layer_II/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Hidden_layer_II/bias/m
З
/Adam/Hidden_layer_II/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/Hidden_layer_II/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameAdam/Hidden_layer_II/kernel/m
П
1Adam/Hidden_layer_II/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_II/kernel/m*
_output_shapes

:*
dtype0
М
Adam/Hidden_layer_I/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/Hidden_layer_I/bias/m
Е
.Adam/Hidden_layer_I/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/bias/m*
_output_shapes
:*
dtype0
Х
Adam/Hidden_layer_I/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameAdam/Hidden_layer_I/kernel/m
О
0Adam/Hidden_layer_I/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_layer_I/kernel/m*
_output_shapes
:	А*
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
В
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
В
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
К
Hidden_layer_III/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameHidden_layer_III/kernel
Г
+Hidden_layer_III/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_III/kernel*
_output_shapes

:
*
dtype0
А
Hidden_layer_II/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameHidden_layer_II/bias
y
(Hidden_layer_II/bias/Read/ReadVariableOpReadVariableOpHidden_layer_II/bias*
_output_shapes
:*
dtype0
И
Hidden_layer_II/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameHidden_layer_II/kernel
Б
*Hidden_layer_II/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_II/kernel*
_output_shapes

:*
dtype0
~
Hidden_layer_I/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameHidden_layer_I/bias
w
'Hidden_layer_I/bias/Read/ReadVariableOpReadVariableOpHidden_layer_I/bias*
_output_shapes
:*
dtype0
З
Hidden_layer_I/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameHidden_layer_I/kernel
А
)Hidden_layer_I/kernel/Read/ReadVariableOpReadVariableOpHidden_layer_I/kernel*
_output_shapes
:	А*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:€€€€€€€€€А*
dtype0*
shape:€€€€€€€€€А
ф
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Hidden_layer_I/kernelHidden_layer_I/biasHidden_layer_II/kernelHidden_layer_II/biasHidden_layer_III/kernelHidden_layer_III/biasOutput_layer/kernelOutput_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_202005

NoOpNoOp
ё6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Щ6
valueП6BМ6 BЕ6
Л
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
∞
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
¶
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias*
¶
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias*
¶
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

kernel
bias*
¶
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

kernel
bias*
‘
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
У
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
У
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
У
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
У
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
ї
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
GPU 2J 8В *(
f#R!
__inference__traced_save_202260
Ґ
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_202369ха
Ш

ь
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_201831

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ћE
÷
__inference__traced_save_202260
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

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: «
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*р
valueжBг"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_i_kernel_read_readvariableop.savev2_hidden_layer_i_bias_read_readvariableop1savev2_hidden_layer_ii_kernel_read_readvariableop/savev2_hidden_layer_ii_bias_read_readvariableop2savev2_hidden_layer_iii_kernel_read_readvariableop0savev2_hidden_layer_iii_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_adam_hidden_layer_i_kernel_m_read_readvariableop5savev2_adam_hidden_layer_i_bias_m_read_readvariableop8savev2_adam_hidden_layer_ii_kernel_m_read_readvariableop6savev2_adam_hidden_layer_ii_bias_m_read_readvariableop9savev2_adam_hidden_layer_iii_kernel_m_read_readvariableop7savev2_adam_hidden_layer_iii_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_hidden_layer_i_kernel_v_read_readvariableop5savev2_adam_hidden_layer_i_bias_v_read_readvariableop8savev2_adam_hidden_layer_ii_kernel_v_read_readvariableop6savev2_adam_hidden_layer_ii_bias_v_read_readvariableop9savev2_adam_hidden_layer_iii_kernel_v_read_readvariableop7savev2_adam_hidden_layer_iii_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*о
_input_shapes№
ў: :	А::::
:
:
:: : : : : : : : : :	А::::
:
:
::	А::::
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
:	А: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
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
:	А: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
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
:	А: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:
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
§

щ
H__inference_Output_layer_layer_call_and_return_conditional_losses_202138

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ы

ь
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_202078

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
 
Ъ
-__inference_Output_layer_layer_call_fn_202127

inputs
unknown:

	unknown_0:
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_201865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
”(
Ґ
F__inference_model_c256_layer_call_and_return_conditional_losses_202058

inputs@
-hidden_layer_i_matmul_readvariableop_resource:	А<
.hidden_layer_i_biasadd_readvariableop_resource:@
.hidden_layer_ii_matmul_readvariableop_resource:=
/hidden_layer_ii_biasadd_readvariableop_resource:A
/hidden_layer_iii_matmul_readvariableop_resource:
>
0hidden_layer_iii_biasadd_readvariableop_resource:
=
+output_layer_matmul_readvariableop_resource:
:
,output_layer_biasadd_readvariableop_resource:
identityИҐ%Hidden_layer_I/BiasAdd/ReadVariableOpҐ$Hidden_layer_I/MatMul/ReadVariableOpҐ&Hidden_layer_II/BiasAdd/ReadVariableOpҐ%Hidden_layer_II/MatMul/ReadVariableOpҐ'Hidden_layer_III/BiasAdd/ReadVariableOpҐ&Hidden_layer_III/MatMul/ReadVariableOpҐ#Output_layer/BiasAdd/ReadVariableOpҐ"Output_layer/MatMul/ReadVariableOpУ
$Hidden_layer_I/MatMul/ReadVariableOpReadVariableOp-hidden_layer_i_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0З
Hidden_layer_I/MatMulMatMulinputs,Hidden_layer_I/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Р
%Hidden_layer_I/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_i_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
Hidden_layer_I/BiasAddBiasAddHidden_layer_I/MatMul:product:0-Hidden_layer_I/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€n
Hidden_layer_I/TanhTanhHidden_layer_I/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
%Hidden_layer_II/MatMul/ReadVariableOpReadVariableOp.hidden_layer_ii_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ъ
Hidden_layer_II/MatMulMatMulHidden_layer_I/Tanh:y:0-Hidden_layer_II/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&Hidden_layer_II/BiasAdd/ReadVariableOpReadVariableOp/hidden_layer_ii_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
Hidden_layer_II/BiasAddBiasAdd Hidden_layer_II/MatMul:product:0.Hidden_layer_II/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€p
Hidden_layer_II/TanhTanh Hidden_layer_II/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
&Hidden_layer_III/MatMul/ReadVariableOpReadVariableOp/hidden_layer_iii_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Э
Hidden_layer_III/MatMulMatMulHidden_layer_II/Tanh:y:0.Hidden_layer_III/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Ф
'Hidden_layer_III/BiasAdd/ReadVariableOpReadVariableOp0hidden_layer_iii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0©
Hidden_layer_III/BiasAddBiasAdd!Hidden_layer_III/MatMul:product:0/Hidden_layer_III/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
Hidden_layer_III/TanhTanh!Hidden_layer_III/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
О
"Output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ц
Output_layer/MatMulMatMulHidden_layer_III/Tanh:y:0*Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€М
#Output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
Output_layer/BiasAddBiasAddOutput_layer/MatMul:product:0+Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€p
Output_layer/SoftmaxSoftmaxOutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€m
IdentityIdentityOutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Д
NoOpNoOp&^Hidden_layer_I/BiasAdd/ReadVariableOp%^Hidden_layer_I/MatMul/ReadVariableOp'^Hidden_layer_II/BiasAdd/ReadVariableOp&^Hidden_layer_II/MatMul/ReadVariableOp(^Hidden_layer_III/BiasAdd/ReadVariableOp'^Hidden_layer_III/MatMul/ReadVariableOp$^Output_layer/BiasAdd/ReadVariableOp#^Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 2N
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
:€€€€€€€€€А
 
_user_specified_nameinputs
≈	
ї
+__inference_model_c256_layer_call_fn_202026

inputs
unknown:	А
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityИҐStatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_c256_layer_call_and_return_conditional_losses_201872o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Г
∆
F__inference_model_c256_layer_call_and_return_conditional_losses_201976
input_1(
hidden_layer_i_201955:	А#
hidden_layer_i_201957:(
hidden_layer_ii_201960:$
hidden_layer_ii_201962:)
hidden_layer_iii_201965:
%
hidden_layer_iii_201967:
%
output_layer_201970:
!
output_layer_201972:
identityИҐ&Hidden_layer_I/StatefulPartitionedCallҐ'Hidden_layer_II/StatefulPartitionedCallҐ(Hidden_layer_III/StatefulPartitionedCallҐ$Output_layer/StatefulPartitionedCallЙ
&Hidden_layer_I/StatefulPartitionedCallStatefulPartitionedCallinput_1hidden_layer_i_201955hidden_layer_i_201957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_201814µ
'Hidden_layer_II/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_I/StatefulPartitionedCall:output:0hidden_layer_ii_201960hidden_layer_ii_201962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_201831Ї
(Hidden_layer_III/StatefulPartitionedCallStatefulPartitionedCall0Hidden_layer_II/StatefulPartitionedCall:output:0hidden_layer_iii_201965hidden_layer_iii_201967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_201848Ђ
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_III/StatefulPartitionedCall:output:0output_layer_201970output_layer_201972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_201865|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€л
NoOpNoOp'^Hidden_layer_I/StatefulPartitionedCall(^Hidden_layer_II/StatefulPartitionedCall)^Hidden_layer_III/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 2P
&Hidden_layer_I/StatefulPartitionedCall&Hidden_layer_I/StatefulPartitionedCall2R
'Hidden_layer_II/StatefulPartitionedCall'Hidden_layer_II/StatefulPartitionedCall2T
(Hidden_layer_III/StatefulPartitionedCall(Hidden_layer_III/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€А
!
_user_specified_name	input_1
–
Э
0__inference_Hidden_layer_II_layer_call_fn_202087

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_201831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А
≈
F__inference_model_c256_layer_call_and_return_conditional_losses_201872

inputs(
hidden_layer_i_201815:	А#
hidden_layer_i_201817:(
hidden_layer_ii_201832:$
hidden_layer_ii_201834:)
hidden_layer_iii_201849:
%
hidden_layer_iii_201851:
%
output_layer_201866:
!
output_layer_201868:
identityИҐ&Hidden_layer_I/StatefulPartitionedCallҐ'Hidden_layer_II/StatefulPartitionedCallҐ(Hidden_layer_III/StatefulPartitionedCallҐ$Output_layer/StatefulPartitionedCallИ
&Hidden_layer_I/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer_i_201815hidden_layer_i_201817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_201814µ
'Hidden_layer_II/StatefulPartitionedCallStatefulPartitionedCall/Hidden_layer_I/StatefulPartitionedCall:output:0hidden_layer_ii_201832hidden_layer_ii_201834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_201831Ї
(Hidden_layer_III/StatefulPartitionedCallStatefulPartitionedCall0Hidden_layer_II/StatefulPartitionedCall:output:0hidden_layer_iii_201849hidden_layer_iii_201851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_201848Ђ
$Output_layer/StatefulPartitionedCallStatefulPartitionedCall1Hidden_layer_III/StatefulPartitionedCall:output:0output_layer_201866output_layer_201868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_Output_layer_layer_call_and_return_conditional_losses_201865|
IdentityIdentity-Output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€л
NoOpNoOp'^Hidden_layer_I/StatefulPartitionedCall(^Hidden_layer_II/StatefulPartitionedCall)^Hidden_layer_III/StatefulPartitionedCall%^Output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 2P
&Hidden_layer_I/StatefulPartitionedCall&Hidden_layer_I/StatefulPartitionedCall2R
'Hidden_layer_II/StatefulPartitionedCall'Hidden_layer_II/StatefulPartitionedCall2T
(Hidden_layer_III/StatefulPartitionedCall(Hidden_layer_III/StatefulPartitionedCall2L
$Output_layer/StatefulPartitionedCall$Output_layer/StatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
–Г
г
"__inference__traced_restore_202369
file_prefix9
&assignvariableop_hidden_layer_i_kernel:	А4
&assignvariableop_1_hidden_layer_i_bias:;
)assignvariableop_2_hidden_layer_ii_kernel:5
'assignvariableop_3_hidden_layer_ii_bias:<
*assignvariableop_4_hidden_layer_iii_kernel:
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
0assignvariableop_17_adam_hidden_layer_i_kernel_m:	А<
.assignvariableop_18_adam_hidden_layer_i_bias_m:C
1assignvariableop_19_adam_hidden_layer_ii_kernel_m:=
/assignvariableop_20_adam_hidden_layer_ii_bias_m:D
2assignvariableop_21_adam_hidden_layer_iii_kernel_m:
>
0assignvariableop_22_adam_hidden_layer_iii_bias_m:
@
.assignvariableop_23_adam_output_layer_kernel_m:
:
,assignvariableop_24_adam_output_layer_bias_m:C
0assignvariableop_25_adam_hidden_layer_i_kernel_v:	А<
.assignvariableop_26_adam_hidden_layer_i_bias_v:C
1assignvariableop_27_adam_hidden_layer_ii_kernel_v:=
/assignvariableop_28_adam_hidden_layer_ii_bias_v:D
2assignvariableop_29_adam_hidden_layer_iii_kernel_v:
>
0assignvariableop_30_adam_hidden_layer_iii_bias_v:
@
.assignvariableop_31_adam_output_layer_kernel_v:
:
,assignvariableop_32_adam_output_layer_bias_v:
identity_34ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*р
valueжBг"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHі
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_i_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_i_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_2AssignVariableOp)assignvariableop_2_hidden_layer_ii_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_3AssignVariableOp'assignvariableop_3_hidden_layer_ii_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_4AssignVariableOp*assignvariableop_4_hidden_layer_iii_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_5AssignVariableOp(assignvariableop_5_hidden_layer_iii_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOp&assignvariableop_6_output_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_7AssignVariableOp$assignvariableop_7_output_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_hidden_layer_i_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_hidden_layer_i_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_19AssignVariableOp1assignvariableop_19_adam_hidden_layer_ii_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_20AssignVariableOp/assignvariableop_20_adam_hidden_layer_ii_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_hidden_layer_iii_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_hidden_layer_iii_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_23AssignVariableOp.assignvariableop_23_adam_output_layer_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_output_layer_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_hidden_layer_i_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_hidden_layer_i_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_hidden_layer_ii_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_28AssignVariableOp/assignvariableop_28_adam_hidden_layer_ii_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_29AssignVariableOp2assignvariableop_29_adam_hidden_layer_iii_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_hidden_layer_iii_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_output_layer_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_output_layer_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 •
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
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
_user_specified_namefile_prefix
—
Э
/__inference_Hidden_layer_I_layer_call_fn_202067

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_201814o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Щ

э
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_202118

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э/
Ѓ
!__inference__wrapped_model_201796
input_1K
8model_c256_hidden_layer_i_matmul_readvariableop_resource:	АG
9model_c256_hidden_layer_i_biasadd_readvariableop_resource:K
9model_c256_hidden_layer_ii_matmul_readvariableop_resource:H
:model_c256_hidden_layer_ii_biasadd_readvariableop_resource:L
:model_c256_hidden_layer_iii_matmul_readvariableop_resource:
I
;model_c256_hidden_layer_iii_biasadd_readvariableop_resource:
H
6model_c256_output_layer_matmul_readvariableop_resource:
E
7model_c256_output_layer_biasadd_readvariableop_resource:
identityИҐ0model_c256/Hidden_layer_I/BiasAdd/ReadVariableOpҐ/model_c256/Hidden_layer_I/MatMul/ReadVariableOpҐ1model_c256/Hidden_layer_II/BiasAdd/ReadVariableOpҐ0model_c256/Hidden_layer_II/MatMul/ReadVariableOpҐ2model_c256/Hidden_layer_III/BiasAdd/ReadVariableOpҐ1model_c256/Hidden_layer_III/MatMul/ReadVariableOpҐ.model_c256/Output_layer/BiasAdd/ReadVariableOpҐ-model_c256/Output_layer/MatMul/ReadVariableOp©
/model_c256/Hidden_layer_I/MatMul/ReadVariableOpReadVariableOp8model_c256_hidden_layer_i_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
 model_c256/Hidden_layer_I/MatMulMatMulinput_17model_c256/Hidden_layer_I/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
0model_c256/Hidden_layer_I/BiasAdd/ReadVariableOpReadVariableOp9model_c256_hidden_layer_i_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ƒ
!model_c256/Hidden_layer_I/BiasAddBiasAdd*model_c256/Hidden_layer_I/MatMul:product:08model_c256/Hidden_layer_I/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
model_c256/Hidden_layer_I/TanhTanh*model_c256/Hidden_layer_I/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€™
0model_c256/Hidden_layer_II/MatMul/ReadVariableOpReadVariableOp9model_c256_hidden_layer_ii_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ї
!model_c256/Hidden_layer_II/MatMulMatMul"model_c256/Hidden_layer_I/Tanh:y:08model_c256/Hidden_layer_II/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€®
1model_c256/Hidden_layer_II/BiasAdd/ReadVariableOpReadVariableOp:model_c256_hidden_layer_ii_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0«
"model_c256/Hidden_layer_II/BiasAddBiasAdd+model_c256/Hidden_layer_II/MatMul:product:09model_c256/Hidden_layer_II/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
model_c256/Hidden_layer_II/TanhTanh+model_c256/Hidden_layer_II/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ђ
1model_c256/Hidden_layer_III/MatMul/ReadVariableOpReadVariableOp:model_c256_hidden_layer_iii_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Њ
"model_c256/Hidden_layer_III/MatMulMatMul#model_c256/Hidden_layer_II/Tanh:y:09model_c256/Hidden_layer_III/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
™
2model_c256/Hidden_layer_III/BiasAdd/ReadVariableOpReadVariableOp;model_c256_hidden_layer_iii_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0 
#model_c256/Hidden_layer_III/BiasAddBiasAdd,model_c256/Hidden_layer_III/MatMul:product:0:model_c256/Hidden_layer_III/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
И
 model_c256/Hidden_layer_III/TanhTanh,model_c256/Hidden_layer_III/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
§
-model_c256/Output_layer/MatMul/ReadVariableOpReadVariableOp6model_c256_output_layer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ј
model_c256/Output_layer/MatMulMatMul$model_c256/Hidden_layer_III/Tanh:y:05model_c256/Output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.model_c256/Output_layer/BiasAdd/ReadVariableOpReadVariableOp7model_c256_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
model_c256/Output_layer/BiasAddBiasAdd(model_c256/Output_layer/MatMul:product:06model_c256/Output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
model_c256/Output_layer/SoftmaxSoftmax(model_c256/Output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
IdentityIdentity)model_c256/Output_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€№
NoOpNoOp1^model_c256/Hidden_layer_I/BiasAdd/ReadVariableOp0^model_c256/Hidden_layer_I/MatMul/ReadVariableOp2^model_c256/Hidden_layer_II/BiasAdd/ReadVariableOp1^model_c256/Hidden_layer_II/MatMul/ReadVariableOp3^model_c256/Hidden_layer_III/BiasAdd/ReadVariableOp2^model_c256/Hidden_layer_III/MatMul/ReadVariableOp/^model_c256/Output_layer/BiasAdd/ReadVariableOp.^model_c256/Output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 2d
0model_c256/Hidden_layer_I/BiasAdd/ReadVariableOp0model_c256/Hidden_layer_I/BiasAdd/ReadVariableOp2b
/model_c256/Hidden_layer_I/MatMul/ReadVariableOp/model_c256/Hidden_layer_I/MatMul/ReadVariableOp2f
1model_c256/Hidden_layer_II/BiasAdd/ReadVariableOp1model_c256/Hidden_layer_II/BiasAdd/ReadVariableOp2d
0model_c256/Hidden_layer_II/MatMul/ReadVariableOp0model_c256/Hidden_layer_II/MatMul/ReadVariableOp2h
2model_c256/Hidden_layer_III/BiasAdd/ReadVariableOp2model_c256/Hidden_layer_III/BiasAdd/ReadVariableOp2f
1model_c256/Hidden_layer_III/MatMul/ReadVariableOp1model_c256/Hidden_layer_III/MatMul/ReadVariableOp2`
.model_c256/Output_layer/BiasAdd/ReadVariableOp.model_c256/Output_layer/BiasAdd/ReadVariableOp2^
-model_c256/Output_layer/MatMul/ReadVariableOp-model_c256/Output_layer/MatMul/ReadVariableOp:Q M
(
_output_shapes
:€€€€€€€€€А
!
_user_specified_name	input_1
“
Ю
1__inference_Hidden_layer_III_layer_call_fn_202107

inputs
unknown:

	unknown_0:

identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_201848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»	
Љ
+__inference_model_c256_layer_call_fn_201891
input_1
unknown:	А
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_c256_layer_call_and_return_conditional_losses_201872o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€А
!
_user_specified_name	input_1
Ь	
µ
$__inference_signature_wrapper_202005
input_1
unknown:	А
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:

	unknown_5:

	unknown_6:
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_201796o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:€€€€€€€€€А: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€А
!
_user_specified_name	input_1
§

щ
H__inference_Output_layer_layer_call_and_return_conditional_losses_201865

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ы

ь
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_201814

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Щ

э
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_201848

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ш

ь
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_202098

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ђ
serving_defaultШ
<
input_11
serving_default_input_1:0€€€€€€€€€А<
output_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Уp
†
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
 
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
ґ
trace_0
trace_12€
+__inference_model_c256_layer_call_fn_201891
+__inference_model_c256_layer_call_fn_202026Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0ztrace_1
м
trace_0
trace_12µ
F__inference_model_c256_layer_call_and_return_conditional_losses_202058
F__inference_model_c256_layer_call_and_return_conditional_losses_201976Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0ztrace_1
ћB…
!__inference__wrapped_model_201796input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ї
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
ї
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
г
7iter

8beta_1

9beta_2
	:decay
;learning_ratemdmemfmgmhmimjmkvlvmvnvovpvqvrvs"
	optimizer
,
<serving_default"
signature_map
(:&	А2Hidden_layer_I/kernel
!:2Hidden_layer_I/bias
(:&2Hidden_layer_II/kernel
": 2Hidden_layer_II/bias
):'
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
аBЁ
+__inference_model_c256_layer_call_fn_201891input_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
яB№
+__inference_model_c256_layer_call_fn_202026inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_model_c256_layer_call_and_return_conditional_losses_202058inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
F__inference_model_c256_layer_call_and_return_conditional_losses_201976input_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
у
Dtrace_02÷
/__inference_Hidden_layer_I_layer_call_fn_202067Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zDtrace_0
О
Etrace_02с
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_202078Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
ф
Ktrace_02„
0__inference_Hidden_layer_II_layer_call_fn_202087Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zKtrace_0
П
Ltrace_02т
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_202098Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
х
Rtrace_02Ў
1__inference_Hidden_layer_III_layer_call_fn_202107Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zRtrace_0
Р
Strace_02у
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_202118Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
≠
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
с
Ytrace_02‘
-__inference_Output_layer_layer_call_fn_202127Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zYtrace_0
М
Ztrace_02п
H__inference_Output_layer_layer_call_and_return_conditional_losses_202138Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zZtrace_0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ЋB»
$__inference_signature_wrapper_202005input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
гBа
/__inference_Hidden_layer_I_layer_call_fn_202067inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_202078inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
0__inference_Hidden_layer_II_layer_call_fn_202087inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_202098inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
еBв
1__inference_Hidden_layer_III_layer_call_fn_202107inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_202118inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
бBё
-__inference_Output_layer_layer_call_fn_202127inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
H__inference_Output_layer_layer_call_and_return_conditional_losses_202138inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
-:+	А2Adam/Hidden_layer_I/kernel/m
&:$2Adam/Hidden_layer_I/bias/m
-:+2Adam/Hidden_layer_II/kernel/m
':%2Adam/Hidden_layer_II/bias/m
.:,
2Adam/Hidden_layer_III/kernel/m
(:&
2Adam/Hidden_layer_III/bias/m
*:(
2Adam/Output_layer/kernel/m
$:"2Adam/Output_layer/bias/m
-:+	А2Adam/Hidden_layer_I/kernel/v
&:$2Adam/Hidden_layer_I/bias/v
-:+2Adam/Hidden_layer_II/kernel/v
':%2Adam/Hidden_layer_II/bias/v
.:,
2Adam/Hidden_layer_III/kernel/v
(:&
2Adam/Hidden_layer_III/bias/v
*:(
2Adam/Output_layer/kernel/v
$:"2Adam/Output_layer/bias/vђ
L__inference_Hidden_layer_III_layer_call_and_return_conditional_losses_202118\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€

Ъ Д
1__inference_Hidden_layer_III_layer_call_fn_202107O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€
Ђ
K__inference_Hidden_layer_II_layer_call_and_return_conditional_losses_202098\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ Г
0__inference_Hidden_layer_II_layer_call_fn_202087O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€Ђ
J__inference_Hidden_layer_I_layer_call_and_return_conditional_losses_202078]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ Г
/__inference_Hidden_layer_I_layer_call_fn_202067P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€®
H__inference_Output_layer_layer_call_and_return_conditional_losses_202138\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "%Ґ"
К
0€€€€€€€€€
Ъ А
-__inference_Output_layer_layer_call_fn_202127O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "К€€€€€€€€€Ч
!__inference__wrapped_model_201796r1Ґ.
'Ґ$
"К
input_1€€€€€€€€€А
™ "3™0
.
output_1"К
output_1€€€€€€€€€Ѓ
F__inference_model_c256_layer_call_and_return_conditional_losses_201976d1Ґ.
'Ґ$
"К
input_1€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≠
F__inference_model_c256_layer_call_and_return_conditional_losses_202058c0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ж
+__inference_model_c256_layer_call_fn_201891W1Ґ.
'Ґ$
"К
input_1€€€€€€€€€А
™ "К€€€€€€€€€Е
+__inference_model_c256_layer_call_fn_202026V0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€•
$__inference_signature_wrapper_202005}<Ґ9
Ґ 
2™/
-
input_1"К
input_1€€€€€€€€€А"3™0
.
output_1"К
output_1€€€€€€€€€