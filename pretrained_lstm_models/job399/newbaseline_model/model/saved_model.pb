п
рУ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.11.02unknown8Мо
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
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:*
dtype0

Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/v/dense_4/kernel

)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes

:2*
dtype0

Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/m/dense_4/kernel

)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes

:2*
dtype0

Adam/v/lstm_4/lstm_cell_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*0
shared_name!Adam/v/lstm_4/lstm_cell_64/bias

3Adam/v/lstm_4/lstm_cell_64/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_4/lstm_cell_64/bias*
_output_shapes	
:Ш*
dtype0

Adam/m/lstm_4/lstm_cell_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*0
shared_name!Adam/m/lstm_4/lstm_cell_64/bias

3Adam/m/lstm_4/lstm_cell_64/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_4/lstm_cell_64/bias*
_output_shapes	
:Ш*
dtype0
Г
+Adam/v/lstm_4/lstm_cell_64/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*<
shared_name-+Adam/v/lstm_4/lstm_cell_64/recurrent_kernel
Ќ
?Adam/v/lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOpReadVariableOp+Adam/v/lstm_4/lstm_cell_64/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0
Г
+Adam/m/lstm_4/lstm_cell_64/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*<
shared_name-+Adam/m/lstm_4/lstm_cell_64/recurrent_kernel
Ќ
?Adam/m/lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOpReadVariableOp+Adam/m/lstm_4/lstm_cell_64/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

!Adam/v/lstm_4/lstm_cell_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*2
shared_name#!Adam/v/lstm_4/lstm_cell_64/kernel

5Adam/v/lstm_4/lstm_cell_64/kernel/Read/ReadVariableOpReadVariableOp!Adam/v/lstm_4/lstm_cell_64/kernel*
_output_shapes
:	Ш*
dtype0

!Adam/m/lstm_4/lstm_cell_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*2
shared_name#!Adam/m/lstm_4/lstm_cell_64/kernel

5Adam/m/lstm_4/lstm_cell_64/kernel/Read/ReadVariableOpReadVariableOp!Adam/m/lstm_4/lstm_cell_64/kernel*
_output_shapes
:	Ш*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

lstm_4/lstm_cell_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ш*)
shared_namelstm_4/lstm_cell_64/bias

,lstm_4/lstm_cell_64/bias/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_64/bias*
_output_shapes	
:Ш*
dtype0
Ѕ
$lstm_4/lstm_cell_64/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2Ш*5
shared_name&$lstm_4/lstm_cell_64/recurrent_kernel

8lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_4/lstm_cell_64/recurrent_kernel*
_output_shapes
:	2Ш*
dtype0

lstm_4/lstm_cell_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш*+
shared_namelstm_4/lstm_cell_64/kernel

.lstm_4/lstm_cell_64/kernel/Read/ReadVariableOpReadVariableOplstm_4/lstm_cell_64/kernel*
_output_shapes
:	Ш*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:2*
dtype0

serving_default_lstm_4_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
М
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_4_inputlstm_4/lstm_cell_64/kernel$lstm_4/lstm_cell_64/recurrent_kernellstm_4/lstm_cell_64/biasdense_4/kerneldense_4/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1013723

NoOpNoOp
Ц-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*-
valueї,Bє, Bэ,

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
А
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
%trace_0
&trace_1
'trace_2
(trace_3* 
6
)trace_0
*trace_1
+trace_2
,trace_3* 
* 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla*

4serving_default* 

0
1
2*

0
1
2*
* 


5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
;trace_0
<trace_1
=trace_2
>trace_3* 
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
* 
у
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_4/lstm_cell_64/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$lstm_4/lstm_cell_64/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_4/lstm_cell_64/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

R0
S1
T2*
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
R
.0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
U0
W1
Y2
[3
]4*
'
V0
X1
Z2
\3
^4*
* 
* 
* 
* 

0*
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

0
1
2*

0
1
2*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

dtrace_0
etrace_1* 

ftrace_0
gtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
h	variables
i	keras_api
	jtotal
	kcount*
H
l	variables
m	keras_api
	ntotal
	ocount
p
_fn_kwargs*
H
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs*
lf
VARIABLE_VALUE!Adam/m/lstm_4/lstm_cell_64/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/lstm_4/lstm_cell_64/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/m/lstm_4/lstm_cell_64/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/lstm_4/lstm_cell_64/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/lstm_4/lstm_cell_64/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_4/lstm_cell_64/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_4/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_4/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_4/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
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
j0
k1*

h	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

l	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

s0
t1*

q	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
џ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp.lstm_4/lstm_cell_64/kernel/Read/ReadVariableOp8lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOp,lstm_4/lstm_cell_64/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp5Adam/m/lstm_4/lstm_cell_64/kernel/Read/ReadVariableOp5Adam/v/lstm_4/lstm_cell_64/kernel/Read/ReadVariableOp?Adam/m/lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOp?Adam/v/lstm_4/lstm_cell_64/recurrent_kernel/Read/ReadVariableOp3Adam/m/lstm_4/lstm_cell_64/bias/Read/ReadVariableOp3Adam/v/lstm_4/lstm_cell_64/bias/Read/ReadVariableOp)Adam/m/dense_4/kernel/Read/ReadVariableOp)Adam/v/dense_4/kernel/Read/ReadVariableOp'Adam/m/dense_4/bias/Read/ReadVariableOp'Adam/v/dense_4/bias/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*$
Tin
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1014888
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biaslstm_4/lstm_cell_64/kernel$lstm_4/lstm_cell_64/recurrent_kernellstm_4/lstm_cell_64/bias	iterationlearning_rate!Adam/m/lstm_4/lstm_cell_64/kernel!Adam/v/lstm_4/lstm_cell_64/kernel+Adam/m/lstm_4/lstm_cell_64/recurrent_kernel+Adam/v/lstm_4/lstm_cell_64/recurrent_kernelAdam/m/lstm_4/lstm_cell_64/biasAdam/v/lstm_4/lstm_cell_64/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biastotal_2count_2total_1count_1totalcount*#
Tin
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1014967э
ў	
д
lstm_4_while_cond_1013963*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1C
?lstm_4_while_lstm_4_while_cond_1013963___redundant_placeholder0C
?lstm_4_while_lstm_4_while_cond_1013963___redundant_placeholder1C
?lstm_4_while_lstm_4_while_cond_1013963___redundant_placeholder2C
?lstm_4_while_lstm_4_while_cond_1013963___redundant_placeholder3
lstm_4_while_identity
~
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: Y
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ч	
ѕ
D__inference_dense_4_layer_call_and_return_conditional_losses_1014698

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ш

I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014764

inputs
states_0
states_11
matmul_readvariableop_resource:	Ш3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2T
SoftmaxSoftmaxsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2^
mul_1MulSigmoid:y:0Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Q
	Softmax_1Softmax	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
mul_2MulSigmoid_2:y:0Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_1
Г9
б
while_body_1013517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 

З
(__inference_lstm_4_layer_call_fn_1014066
inputs_0
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013043o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
иK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1014389
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1014304*
condR
while_cond_1014303*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
Й
ю
%__inference_signature_wrapper_1013723
lstm_4_input
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1012891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
$
ъ
while_body_1012973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_64_1012997_0:	Ш/
while_lstm_cell_64_1012999_0:	2Ш+
while_lstm_cell_64_1013001_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_64_1012997:	Ш-
while_lstm_cell_64_1012999:	2Ш)
while_lstm_cell_64_1013001:	ШЂ*while/lstm_cell_64/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_1012997_0while_lstm_cell_64_1012999_0while_lstm_cell_64_1013001_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1012958r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_64/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_64_1012997while_lstm_cell_64_1012997_0":
while_lstm_cell_64_1012999while_lstm_cell_64_1012999_0":
while_lstm_cell_64_1013001while_lstm_cell_64_1013001_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ї
Е
(__inference_lstm_4_layer_call_fn_1014088

inputs
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013396o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЕK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1014534

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1014449*
condR
while_cond_1014448*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э
ї
.__inference_lstm_cell_64_layer_call_fn_1014715

inputs
states_0
states_1
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1012958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_1
Г9
б
while_body_1014159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_1014158
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014158___redundant_placeholder05
1while_while_cond_1014158___redundant_placeholder15
1while_while_cond_1014158___redundant_placeholder25
1while_while_cond_1014158___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:

З
(__inference_lstm_4_layer_call_fn_1014077
inputs_0
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
й
и
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013688
lstm_4_input!
lstm_4_1013675:	Ш!
lstm_4_1013677:	2Ш
lstm_4_1013679:	Ш!
dense_4_1013682:2
dense_4_1013684:
identityЂdense_4/StatefulPartitionedCallЂlstm_4/StatefulPartitionedCall
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_1013675lstm_4_1013677lstm_4_1013679*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013396
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_1013682dense_4_1013684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
Г9
б
while_body_1014449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
з
ё
.__inference_sequential_4_layer_call_fn_1013738

inputs
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
щ
ї
.__inference_sequential_4_layer_call_fn_1013672
lstm_4_input
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
э
ї
.__inference_lstm_cell_64_layer_call_fn_1014732

inputs
states_0
states_1
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identity

identity_1

identity_2ЂStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1013106o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_1
К
Ш
while_cond_1013165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1013165___redundant_placeholder05
1while_while_cond_1013165___redundant_placeholder15
1while_while_cond_1013165___redundant_placeholder25
1while_while_cond_1013165___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
9

C__inference_lstm_4_layer_call_and_return_conditional_losses_1013236

inputs'
lstm_cell_64_1013152:	Ш'
lstm_cell_64_1013154:	2Ш#
lstm_cell_64_1013156:	Ш
identityЂ$lstm_cell_64/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_1013152lstm_cell_64_1013154lstm_cell_64_1013156*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1013106n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_1013152lstm_cell_64_1013154lstm_cell_64_1013156*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1013166*
condR
while_cond_1013165*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2u
NoOpNoOp%^lstm_cell_64/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
р

I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1012958

inputs

states
states_11
matmul_readvariableop_resource:	Ш3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2T
SoftmaxSoftmaxsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2^
mul_1MulSigmoid:y:0Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Q
	Softmax_1Softmax	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
mul_2MulSigmoid_2:y:0Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
К
Ш
while_cond_1014303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014303___redundant_placeholder05
1while_while_cond_1014303___redundant_placeholder15
1while_while_cond_1014303___redundant_placeholder25
1while_while_cond_1014303___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ч	
ѕ
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
щ
ї
.__inference_sequential_4_layer_call_fn_1013434
lstm_4_input
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
нA
Б

lstm_4_while_body_1013964*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0:	ШO
<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШJ
;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorK
8lstm_4_while_lstm_cell_64_matmul_readvariableop_resource:	ШM
:lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШH
9lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpЂ/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpЂ1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ћ
/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0Я
 lstm_4/while/lstm_cell_64/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЏ
1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ж
"lstm_4/while/lstm_cell_64/MatMul_1MatMullstm_4_while_placeholder_29lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
lstm_4/while/lstm_cell_64/addAddV2*lstm_4/while/lstm_cell_64/MatMul:product:0,lstm_4/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЉ
0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0М
!lstm_4/while/lstm_cell_64/BiasAddBiasAdd!lstm_4/while/lstm_cell_64/add:z:08lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШk
)lstm_4/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_4/while/lstm_cell_64/splitSplit2lstm_4/while/lstm_cell_64/split/split_dim:output:0*lstm_4/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
!lstm_4/while/lstm_cell_64/SigmoidSigmoid(lstm_4/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Sigmoid_1Sigmoid(lstm_4/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/while/lstm_cell_64/mulMul'lstm_4/while/lstm_cell_64/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
!lstm_4/while/lstm_cell_64/SoftmaxSoftmax(lstm_4/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
lstm_4/while/lstm_cell_64/mul_1Mul%lstm_4/while/lstm_cell_64/Sigmoid:y:0+lstm_4/while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
lstm_4/while/lstm_cell_64/add_1AddV2!lstm_4/while/lstm_cell_64/mul:z:0#lstm_4/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Sigmoid_2Sigmoid(lstm_4/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Softmax_1Softmax#lstm_4/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2А
lstm_4/while/lstm_cell_64/mul_2Mul'lstm_4/while/lstm_cell_64/Sigmoid_2:y:0-lstm_4/while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2y
7lstm_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1@lstm_4/while/TensorArrayV2Write/TensorListSetItem/index:output:0#lstm_4/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: n
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_4Identity#lstm_4/while/lstm_cell_64/mul_2:z:0^lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/while/Identity_5Identity#lstm_4/while/lstm_cell_64/add_1:z:0^lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2ь
lstm_4/while/NoOpNoOp1^lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp0^lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp2^lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"x
9lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0"z
:lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0"v
8lstm_4_while_lstm_cell_64_matmul_readvariableop_resource:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0"Ф
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2d
0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp2b
/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp2f
1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
з
ё
.__inference_sequential_4_layer_call_fn_1013753

inputs
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
	unknown_2:2
	unknown_3:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г9
б
while_body_1014304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ч
в
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013644

inputs!
lstm_4_1013631:	Ш!
lstm_4_1013633:	2Ш
lstm_4_1013635:	Ш!
dense_4_1013638:2
dense_4_1013640:
identityЂdense_4/StatefulPartitionedCallЂlstm_4/StatefulPartitionedCall§
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_1013631lstm_4_1013633lstm_4_1013635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013602
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_1013638dense_4_1013640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш

I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014796

inputs
states_0
states_11
matmul_readvariableop_resource:	Ш3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2T
SoftmaxSoftmaxsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2^
mul_1MulSigmoid:y:0Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Q
	Softmax_1Softmax	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
mul_2MulSigmoid_2:y:0Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_1
иK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1014244
inputs_0>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1014159*
condR
while_cond_1014158*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0
й
и
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013704
lstm_4_input!
lstm_4_1013691:	Ш!
lstm_4_1013693:	2Ш
lstm_4_1013695:	Ш!
dense_4_1013698:2
dense_4_1013700:
identityЂdense_4/StatefulPartitionedCallЂlstm_4/StatefulPartitionedCall
lstm_4/StatefulPartitionedCallStatefulPartitionedCalllstm_4_inputlstm_4_1013691lstm_4_1013693lstm_4_1013695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013602
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_1013698dense_4_1013700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
Q
б
&sequential_4_lstm_4_while_body_1012800D
@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counterJ
Fsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations)
%sequential_4_lstm_4_while_placeholder+
'sequential_4_lstm_4_while_placeholder_1+
'sequential_4_lstm_4_while_placeholder_2+
'sequential_4_lstm_4_while_placeholder_3C
?sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1_0
{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_4_lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0:	Ш\
Isequential_4_lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШW
Hsequential_4_lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш&
"sequential_4_lstm_4_while_identity(
$sequential_4_lstm_4_while_identity_1(
$sequential_4_lstm_4_while_identity_2(
$sequential_4_lstm_4_while_identity_3(
$sequential_4_lstm_4_while_identity_4(
$sequential_4_lstm_4_while_identity_5A
=sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1}
ysequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensorX
Esequential_4_lstm_4_while_lstm_cell_64_matmul_readvariableop_resource:	ШZ
Gsequential_4_lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШU
Fsequential_4_lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ=sequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpЂ<sequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpЂ>sequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp
Ksequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
=sequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_4_while_placeholderTsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Х
<sequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOpGsequential_4_lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0і
-sequential_4/lstm_4/while/lstm_cell_64/MatMulMatMulDsequential_4/lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЩ
>sequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOpIsequential_4_lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0н
/sequential_4/lstm_4/while/lstm_cell_64/MatMul_1MatMul'sequential_4_lstm_4_while_placeholder_2Fsequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШк
*sequential_4/lstm_4/while/lstm_cell_64/addAddV27sequential_4/lstm_4/while/lstm_cell_64/MatMul:product:09sequential_4/lstm_4/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШУ
=sequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOpHsequential_4_lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0у
.sequential_4/lstm_4/while/lstm_cell_64/BiasAddBiasAdd.sequential_4/lstm_4/while/lstm_cell_64/add:z:0Esequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШx
6sequential_4/lstm_4/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
,sequential_4/lstm_4/while/lstm_cell_64/splitSplit?sequential_4/lstm_4/while/lstm_cell_64/split/split_dim:output:07sequential_4/lstm_4/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitЂ
.sequential_4/lstm_4/while/lstm_cell_64/SigmoidSigmoid5sequential_4/lstm_4/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
0sequential_4/lstm_4/while/lstm_cell_64/Sigmoid_1Sigmoid5sequential_4/lstm_4/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Т
*sequential_4/lstm_4/while/lstm_cell_64/mulMul4sequential_4/lstm_4/while/lstm_cell_64/Sigmoid_1:y:0'sequential_4_lstm_4_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
.sequential_4/lstm_4/while/lstm_cell_64/SoftmaxSoftmax5sequential_4/lstm_4/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2г
,sequential_4/lstm_4/while/lstm_cell_64/mul_1Mul2sequential_4/lstm_4/while/lstm_cell_64/Sigmoid:y:08sequential_4/lstm_4/while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2Щ
,sequential_4/lstm_4/while/lstm_cell_64/add_1AddV2.sequential_4/lstm_4/while/lstm_cell_64/mul:z:00sequential_4/lstm_4/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Є
0sequential_4/lstm_4/while/lstm_cell_64/Sigmoid_2Sigmoid5sequential_4/lstm_4/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
0sequential_4/lstm_4/while/lstm_cell_64/Softmax_1Softmax0sequential_4/lstm_4/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2з
,sequential_4/lstm_4/while/lstm_cell_64/mul_2Mul4sequential_4/lstm_4/while/lstm_cell_64/Sigmoid_2:y:0:sequential_4/lstm_4/while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Dsequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
>sequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_4_while_placeholder_1Msequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItem/index:output:00sequential_4/lstm_4/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвa
sequential_4/lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_4/lstm_4/while/addAddV2%sequential_4_lstm_4_while_placeholder(sequential_4/lstm_4/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_4/lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
sequential_4/lstm_4/while/add_1AddV2@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counter*sequential_4/lstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_4/lstm_4/while/IdentityIdentity#sequential_4/lstm_4/while/add_1:z:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: К
$sequential_4/lstm_4/while/Identity_1IdentityFsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: 
$sequential_4/lstm_4/while/Identity_2Identity!sequential_4/lstm_4/while/add:z:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: Т
$sequential_4/lstm_4/while/Identity_3IdentityNsequential_4/lstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_4/lstm_4/while/NoOp*
T0*
_output_shapes
: Е
$sequential_4/lstm_4/while/Identity_4Identity0sequential_4/lstm_4/while/lstm_cell_64/mul_2:z:0^sequential_4/lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е
$sequential_4/lstm_4/while/Identity_5Identity0sequential_4/lstm_4/while/lstm_cell_64/add_1:z:0^sequential_4/lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_4/lstm_4/while/NoOpNoOp>^sequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp=^sequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp?^sequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_4_lstm_4_while_identity+sequential_4/lstm_4/while/Identity:output:0"U
$sequential_4_lstm_4_while_identity_1-sequential_4/lstm_4/while/Identity_1:output:0"U
$sequential_4_lstm_4_while_identity_2-sequential_4/lstm_4/while/Identity_2:output:0"U
$sequential_4_lstm_4_while_identity_3-sequential_4/lstm_4/while/Identity_3:output:0"U
$sequential_4_lstm_4_while_identity_4-sequential_4/lstm_4/while/Identity_4:output:0"U
$sequential_4_lstm_4_while_identity_5-sequential_4/lstm_4/while/Identity_5:output:0"
Fsequential_4_lstm_4_while_lstm_cell_64_biasadd_readvariableop_resourceHsequential_4_lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0"
Gsequential_4_lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resourceIsequential_4_lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0"
Esequential_4_lstm_4_while_lstm_cell_64_matmul_readvariableop_resourceGsequential_4_lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0"
=sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1?sequential_4_lstm_4_while_sequential_4_lstm_4_strided_slice_1_0"ј
ysequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2~
=sequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp=sequential_4/lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp2|
<sequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp<sequential_4/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp2
>sequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp>sequential_4/lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
ЕK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1013396

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1013311*
condR
while_cond_1013310*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1013310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1013310___redundant_placeholder05
1while_while_cond_1013310___redundant_placeholder15
1while_while_cond_1013310___redundant_placeholder25
1while_while_cond_1013310___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
А[

I__inference_sequential_4_layer_call_and_return_conditional_losses_1013904

inputsE
2lstm_4_lstm_cell_64_matmul_readvariableop_resource:	ШG
4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource:	2ШB
3lstm_4_lstm_cell_64_biasadd_readvariableop_resource:	Ш8
&dense_4_matmul_readvariableop_resource:25
'dense_4_biasadd_readvariableop_resource:
identityЂdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpЂ*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpЂ)lstm_4/lstm_cell_64/MatMul/ReadVariableOpЂ+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpЂlstm_4/whileB
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Y
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_4/transpose	Transposeinputslstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:f
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
)lstm_4/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Ћ
lstm_4/lstm_cell_64/MatMulMatMullstm_4/strided_slice_2:output:01lstm_4/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ѕ
lstm_4/lstm_cell_64/MatMul_1MatMullstm_4/zeros:output:03lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
lstm_4/lstm_cell_64/addAddV2$lstm_4/lstm_cell_64/MatMul:product:0&lstm_4/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0Њ
lstm_4/lstm_cell_64/BiasAddBiasAddlstm_4/lstm_cell_64/add:z:02lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#lstm_4/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
lstm_4/lstm_cell_64/splitSplit,lstm_4/lstm_cell_64/split/split_dim:output:0$lstm_4/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
lstm_4/lstm_cell_64/SigmoidSigmoid"lstm_4/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_4/lstm_cell_64/Sigmoid_1Sigmoid"lstm_4/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mulMul!lstm_4/lstm_cell_64/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
lstm_4/lstm_cell_64/SoftmaxSoftmax"lstm_4/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mul_1Mullstm_4/lstm_cell_64/Sigmoid:y:0%lstm_4/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/add_1AddV2lstm_4/lstm_cell_64/mul:z:0lstm_4/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_4/lstm_cell_64/Sigmoid_2Sigmoid"lstm_4/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_4/lstm_cell_64/Softmax_1Softmaxlstm_4/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mul_2Mul!lstm_4/lstm_cell_64/Sigmoid_2:y:0'lstm_4/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   e
#lstm_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0,lstm_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ц
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_4_lstm_cell_64_matmul_readvariableop_resource4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource3lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_4_while_body_1013813*%
condR
lstm_4_while_cond_1013812*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ы
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementso
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskl
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_4/MatMulMatMullstm_4/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp+^lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp*^lstm_4/lstm_cell_64/MatMul/ReadVariableOp,^lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp2V
)lstm_4/lstm_cell_64/MatMul/ReadVariableOp)lstm_4/lstm_cell_64/MatMul/ReadVariableOp2Z
+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
d
Ч
#__inference__traced_restore_1014967
file_prefix1
assignvariableop_dense_4_kernel:2-
assignvariableop_1_dense_4_bias:@
-assignvariableop_2_lstm_4_lstm_cell_64_kernel:	ШJ
7assignvariableop_3_lstm_4_lstm_cell_64_recurrent_kernel:	2Ш:
+assignvariableop_4_lstm_4_lstm_cell_64_bias:	Ш&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: G
4assignvariableop_7_adam_m_lstm_4_lstm_cell_64_kernel:	ШG
4assignvariableop_8_adam_v_lstm_4_lstm_cell_64_kernel:	ШQ
>assignvariableop_9_adam_m_lstm_4_lstm_cell_64_recurrent_kernel:	2ШR
?assignvariableop_10_adam_v_lstm_4_lstm_cell_64_recurrent_kernel:	2ШB
3assignvariableop_11_adam_m_lstm_4_lstm_cell_64_bias:	ШB
3assignvariableop_12_adam_v_lstm_4_lstm_cell_64_bias:	Ш;
)assignvariableop_13_adam_m_dense_4_kernel:2;
)assignvariableop_14_adam_v_dense_4_kernel:25
'assignvariableop_15_adam_m_dense_4_bias:5
'assignvariableop_16_adam_v_dense_4_bias:%
assignvariableop_17_total_2: %
assignvariableop_18_count_2: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: 
identity_24ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У	
valueЙ	BЖ	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_2AssignVariableOp-assignvariableop_2_lstm_4_lstm_cell_64_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_3AssignVariableOp7assignvariableop_3_lstm_4_lstm_cell_64_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp+assignvariableop_4_lstm_4_lstm_cell_64_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_7AssignVariableOp4assignvariableop_7_adam_m_lstm_4_lstm_cell_64_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_8AssignVariableOp4assignvariableop_8_adam_v_lstm_4_lstm_cell_64_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_9AssignVariableOp>assignvariableop_9_adam_m_lstm_4_lstm_cell_64_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_10AssignVariableOp?assignvariableop_10_adam_v_lstm_4_lstm_cell_64_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_11AssignVariableOp3assignvariableop_11_adam_m_lstm_4_lstm_cell_64_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_12AssignVariableOp3assignvariableop_12_adam_v_lstm_4_lstm_cell_64_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_m_dense_4_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_v_dense_4_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_m_dense_4_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_v_dense_4_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Щ
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_24IdentityIdentity_23:output:0^NoOp_1*
T0*
_output_shapes
: Ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_24Identity_24:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_22AssignVariableOp_222(
AssignVariableOp_3AssignVariableOp_32(
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
К
Ш
while_cond_1013516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1013516___redundant_placeholder05
1while_while_cond_1013516___redundant_placeholder15
1while_while_cond_1013516___redundant_placeholder25
1while_while_cond_1013516___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
нA
Б

lstm_4_while_body_1013813*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3)
%lstm_4_while_lstm_4_strided_slice_1_0e
alstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0:	ШO
<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШJ
;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
lstm_4_while_identity
lstm_4_while_identity_1
lstm_4_while_identity_2
lstm_4_while_identity_3
lstm_4_while_identity_4
lstm_4_while_identity_5'
#lstm_4_while_lstm_4_strided_slice_1c
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensorK
8lstm_4_while_lstm_cell_64_matmul_readvariableop_resource:	ШM
:lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШH
9lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpЂ/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpЂ1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp
>lstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Щ
0lstm_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0lstm_4_while_placeholderGlstm_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ћ
/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0Я
 lstm_4/while/lstm_cell_64/MatMulMatMul7lstm_4/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЏ
1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ж
"lstm_4/while/lstm_cell_64/MatMul_1MatMullstm_4_while_placeholder_29lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШГ
lstm_4/while/lstm_cell_64/addAddV2*lstm_4/while/lstm_cell_64/MatMul:product:0,lstm_4/while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЉ
0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0М
!lstm_4/while/lstm_cell_64/BiasAddBiasAdd!lstm_4/while/lstm_cell_64/add:z:08lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШk
)lstm_4/while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_4/while/lstm_cell_64/splitSplit2lstm_4/while/lstm_cell_64/split/split_dim:output:0*lstm_4/while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
!lstm_4/while/lstm_cell_64/SigmoidSigmoid(lstm_4/while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Sigmoid_1Sigmoid(lstm_4/while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/while/lstm_cell_64/mulMul'lstm_4/while/lstm_cell_64/Sigmoid_1:y:0lstm_4_while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2
!lstm_4/while/lstm_cell_64/SoftmaxSoftmax(lstm_4/while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2Ќ
lstm_4/while/lstm_cell_64/mul_1Mul%lstm_4/while/lstm_cell_64/Sigmoid:y:0+lstm_4/while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
lstm_4/while/lstm_cell_64/add_1AddV2!lstm_4/while/lstm_cell_64/mul:z:0#lstm_4/while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Sigmoid_2Sigmoid(lstm_4/while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
#lstm_4/while/lstm_cell_64/Softmax_1Softmax#lstm_4/while/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2А
lstm_4/while/lstm_cell_64/mul_2Mul'lstm_4/while/lstm_cell_64/Sigmoid_2:y:0-lstm_4/while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2y
7lstm_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
1lstm_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_4_while_placeholder_1@lstm_4/while/TensorArrayV2Write/TensorListSetItem/index:output:0#lstm_4/while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвT
lstm_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_4/while/addAddV2lstm_4_while_placeholderlstm_4/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_4/while/add_1AddV2&lstm_4_while_lstm_4_while_loop_counterlstm_4/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_4/while/IdentityIdentitylstm_4/while/add_1:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_1Identity,lstm_4_while_lstm_4_while_maximum_iterations^lstm_4/while/NoOp*
T0*
_output_shapes
: n
lstm_4/while/Identity_2Identitylstm_4/while/add:z:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_3IdentityAlstm_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_4/while/NoOp*
T0*
_output_shapes
: 
lstm_4/while/Identity_4Identity#lstm_4/while/lstm_cell_64/mul_2:z:0^lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/while/Identity_5Identity#lstm_4/while/lstm_cell_64/add_1:z:0^lstm_4/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2ь
lstm_4/while/NoOpNoOp1^lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp0^lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp2^lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_4_while_identitylstm_4/while/Identity:output:0";
lstm_4_while_identity_1 lstm_4/while/Identity_1:output:0";
lstm_4_while_identity_2 lstm_4/while/Identity_2:output:0";
lstm_4_while_identity_3 lstm_4/while/Identity_3:output:0";
lstm_4_while_identity_4 lstm_4/while/Identity_4:output:0";
lstm_4_while_identity_5 lstm_4/while/Identity_5:output:0"L
#lstm_4_while_lstm_4_strided_slice_1%lstm_4_while_lstm_4_strided_slice_1_0"x
9lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource;lstm_4_while_lstm_cell_64_biasadd_readvariableop_resource_0"z
:lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource<lstm_4_while_lstm_cell_64_matmul_1_readvariableop_resource_0"v
8lstm_4_while_lstm_cell_64_matmul_readvariableop_resource:lstm_4_while_lstm_cell_64_matmul_readvariableop_resource_0"Ф
_lstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensoralstm_4_while_tensorarrayv2read_tensorlistgetitem_lstm_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2d
0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp0lstm_4/while/lstm_cell_64/BiasAdd/ReadVariableOp2b
/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp/lstm_4/while/lstm_cell_64/MatMul/ReadVariableOp2f
1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp1lstm_4/while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_1012972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1012972___redundant_placeholder05
1while_while_cond_1012972___redundant_placeholder15
1while_while_cond_1012972___redundant_placeholder25
1while_while_cond_1012972___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
А[

I__inference_sequential_4_layer_call_and_return_conditional_losses_1014055

inputsE
2lstm_4_lstm_cell_64_matmul_readvariableop_resource:	ШG
4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource:	2ШB
3lstm_4_lstm_cell_64_biasadd_readvariableop_resource:	Ш8
&dense_4_matmul_readvariableop_resource:25
'dense_4_biasadd_readvariableop_resource:
identityЂdense_4/BiasAdd/ReadVariableOpЂdense_4/MatMul/ReadVariableOpЂ*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpЂ)lstm_4/lstm_cell_64/MatMul/ReadVariableOpЂ+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpЂlstm_4/whileB
lstm_4/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
lstm_4/strided_sliceStridedSlicelstm_4/Shape:output:0#lstm_4/strided_slice/stack:output:0%lstm_4/strided_slice/stack_1:output:0%lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/zeros/packedPacklstm_4/strided_slice:output:0lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_4/zerosFilllstm_4/zeros/packed:output:0lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Y
lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_4/zeros_1/packedPacklstm_4/strided_slice:output:0 lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_4/zeros_1Filllstm_4/zeros_1/packed:output:0lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2j
lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_4/transpose	Transposeinputslstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
lstm_4/Shape_1Shapelstm_4/transpose:y:0*
T0*
_output_shapes
:f
lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
lstm_4/strided_slice_1StridedSlicelstm_4/Shape_1:output:0%lstm_4/strided_slice_1/stack:output:0'lstm_4/strided_slice_1/stack_1:output:0'lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЩ
lstm_4/TensorArrayV2TensorListReserve+lstm_4/TensorArrayV2/element_shape:output:0lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ѕ
.lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_4/transpose:y:0Elstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_4/strided_slice_2StridedSlicelstm_4/transpose:y:0%lstm_4/strided_slice_2/stack:output:0'lstm_4/strided_slice_2/stack_1:output:0'lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
)lstm_4/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp2lstm_4_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0Ћ
lstm_4/lstm_cell_64/MatMulMatMullstm_4/strided_slice_2:output:01lstm_4/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ѕ
lstm_4/lstm_cell_64/MatMul_1MatMullstm_4/zeros:output:03lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
lstm_4/lstm_cell_64/addAddV2$lstm_4/lstm_cell_64/MatMul:product:0&lstm_4/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp3lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0Њ
lstm_4/lstm_cell_64/BiasAddBiasAddlstm_4/lstm_cell_64/add:z:02lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
#lstm_4/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ђ
lstm_4/lstm_cell_64/splitSplit,lstm_4/lstm_cell_64/split/split_dim:output:0$lstm_4/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split|
lstm_4/lstm_cell_64/SigmoidSigmoid"lstm_4/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_4/lstm_cell_64/Sigmoid_1Sigmoid"lstm_4/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mulMul!lstm_4/lstm_cell_64/Sigmoid_1:y:0lstm_4/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
lstm_4/lstm_cell_64/SoftmaxSoftmax"lstm_4/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mul_1Mullstm_4/lstm_cell_64/Sigmoid:y:0%lstm_4/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/add_1AddV2lstm_4/lstm_cell_64/mul:z:0lstm_4/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2~
lstm_4/lstm_cell_64/Sigmoid_2Sigmoid"lstm_4/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2y
lstm_4/lstm_cell_64/Softmax_1Softmaxlstm_4/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_4/lstm_cell_64/mul_2Mul!lstm_4/lstm_cell_64/Sigmoid_2:y:0'lstm_4/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2u
$lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   e
#lstm_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_4/TensorArrayV2_1TensorListReserve-lstm_4/TensorArrayV2_1/element_shape:output:0,lstm_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ[
lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ц
lstm_4/whileWhile"lstm_4/while/loop_counter:output:0(lstm_4/while/maximum_iterations:output:0lstm_4/time:output:0lstm_4/TensorArrayV2_1:handle:0lstm_4/zeros:output:0lstm_4/zeros_1:output:0lstm_4/strided_slice_1:output:0>lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_4_lstm_cell_64_matmul_readvariableop_resource4lstm_4_lstm_cell_64_matmul_1_readvariableop_resource3lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_4_while_body_1013964*%
condR
lstm_4_while_cond_1013963*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
7lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ы
)lstm_4/TensorArrayV2Stack/TensorListStackTensorListStacklstm_4/while:output:3@lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementso
lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_4/strided_slice_3StridedSlice2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_4/strided_slice_3/stack:output:0'lstm_4/strided_slice_3/stack_1:output:0'lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskl
lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_4/transpose_1	Transpose2lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_4/MatMulMatMullstm_4/strided_slice_3:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp+^lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp*^lstm_4/lstm_cell_64/MatMul/ReadVariableOp,^lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp^lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2X
*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp*lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp2V
)lstm_4/lstm_cell_64/MatMul/ReadVariableOp)lstm_4/lstm_cell_64/MatMul/ReadVariableOp2Z
+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp+lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp2
lstm_4/whilelstm_4/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ї
Е
(__inference_lstm_4_layer_call_fn_1014099

inputs
unknown:	Ш
	unknown_0:	2Ш
	unknown_1:	Ш
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013602o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
9

C__inference_lstm_4_layer_call_and_return_conditional_losses_1013043

inputs'
lstm_cell_64_1012959:	Ш'
lstm_cell_64_1012961:	2Ш#
lstm_cell_64_1012963:	Ш
identityЂ$lstm_cell_64/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskљ
$lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_64_1012959lstm_cell_64_1012961lstm_cell_64_1012963*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1012958n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : М
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_64_1012959lstm_cell_64_1012961lstm_cell_64_1012963*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1012973*
condR
while_cond_1012972*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2u
NoOpNoOp%^lstm_cell_64/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2L
$lstm_cell_64/StatefulPartitionedCall$lstm_cell_64/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
$
ъ
while_body_1013166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_64_1013190_0:	Ш/
while_lstm_cell_64_1013192_0:	2Ш+
while_lstm_cell_64_1013194_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_64_1013190:	Ш-
while_lstm_cell_64_1013192:	2Ш)
while_lstm_cell_64_1013194:	ШЂ*while/lstm_cell_64/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0З
*while/lstm_cell_64/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_64_1013190_0while_lstm_cell_64_1013192_0while_lstm_cell_64_1013194_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1013106r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_64/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity3while/lstm_cell_64/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
while/Identity_5Identity3while/lstm_cell_64/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y

while/NoOpNoOp+^while/lstm_cell_64/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_64_1013190while_lstm_cell_64_1013190_0":
while_lstm_cell_64_1013192while_lstm_cell_64_1013192_0":
while_lstm_cell_64_1013194while_lstm_cell_64_1013194_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2X
*while/lstm_cell_64/StatefulPartitionedCall*while/lstm_cell_64/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
К
Ш
while_cond_1014593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014593___redundant_placeholder05
1while_while_cond_1014593___redundant_placeholder15
1while_while_cond_1014593___redundant_placeholder25
1while_while_cond_1014593___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Г9
б
while_body_1013311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Ѕm
ђ
"__inference__wrapped_model_1012891
lstm_4_inputR
?sequential_4_lstm_4_lstm_cell_64_matmul_readvariableop_resource:	ШT
Asequential_4_lstm_4_lstm_cell_64_matmul_1_readvariableop_resource:	2ШO
@sequential_4_lstm_4_lstm_cell_64_biasadd_readvariableop_resource:	ШE
3sequential_4_dense_4_matmul_readvariableop_resource:2B
4sequential_4_dense_4_biasadd_readvariableop_resource:
identityЂ+sequential_4/dense_4/BiasAdd/ReadVariableOpЂ*sequential_4/dense_4/MatMul/ReadVariableOpЂ7sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpЂ6sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOpЂ8sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpЂsequential_4/lstm_4/whileU
sequential_4/lstm_4/ShapeShapelstm_4_input*
T0*
_output_shapes
:q
'sequential_4/lstm_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_4/lstm_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_4/lstm_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
!sequential_4/lstm_4/strided_sliceStridedSlice"sequential_4/lstm_4/Shape:output:00sequential_4/lstm_4/strided_slice/stack:output:02sequential_4/lstm_4/strided_slice/stack_1:output:02sequential_4/lstm_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_4/lstm_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Џ
 sequential_4/lstm_4/zeros/packedPack*sequential_4/lstm_4/strided_slice:output:0+sequential_4/lstm_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_4/lstm_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ј
sequential_4/lstm_4/zerosFill)sequential_4/lstm_4/zeros/packed:output:0(sequential_4/lstm_4/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2f
$sequential_4/lstm_4/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Г
"sequential_4/lstm_4/zeros_1/packedPack*sequential_4/lstm_4/strided_slice:output:0-sequential_4/lstm_4/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_4/lstm_4/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential_4/lstm_4/zeros_1Fill+sequential_4/lstm_4/zeros_1/packed:output:0*sequential_4/lstm_4/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2w
"sequential_4/lstm_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_4/lstm_4/transpose	Transposelstm_4_input+sequential_4/lstm_4/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџl
sequential_4/lstm_4/Shape_1Shape!sequential_4/lstm_4/transpose:y:0*
T0*
_output_shapes
:s
)sequential_4/lstm_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_4/lstm_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential_4/lstm_4/strided_slice_1StridedSlice$sequential_4/lstm_4/Shape_1:output:02sequential_4/lstm_4/strided_slice_1/stack:output:04sequential_4/lstm_4/strided_slice_1/stack_1:output:04sequential_4/lstm_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_4/lstm_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ№
!sequential_4/lstm_4/TensorArrayV2TensorListReserve8sequential_4/lstm_4/TensorArrayV2/element_shape:output:0,sequential_4/lstm_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Isequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
;sequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_4/transpose:y:0Rsequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвs
)sequential_4/lstm_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_4/lstm_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
#sequential_4/lstm_4/strided_slice_2StridedSlice!sequential_4/lstm_4/transpose:y:02sequential_4/lstm_4/strided_slice_2/stack:output:04sequential_4/lstm_4/strided_slice_2/stack_1:output:04sequential_4/lstm_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЗ
6sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp?sequential_4_lstm_4_lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0в
'sequential_4/lstm_4/lstm_cell_64/MatMulMatMul,sequential_4/lstm_4/strided_slice_2:output:0>sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЛ
8sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOpAsequential_4_lstm_4_lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0Ь
)sequential_4/lstm_4/lstm_cell_64/MatMul_1MatMul"sequential_4/lstm_4/zeros:output:0@sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШШ
$sequential_4/lstm_4/lstm_cell_64/addAddV21sequential_4/lstm_4/lstm_cell_64/MatMul:product:03sequential_4/lstm_4/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШЕ
7sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp@sequential_4_lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0б
(sequential_4/lstm_4/lstm_cell_64/BiasAddBiasAdd(sequential_4/lstm_4/lstm_cell_64/add:z:0?sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШr
0sequential_4/lstm_4/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&sequential_4/lstm_4/lstm_cell_64/splitSplit9sequential_4/lstm_4/lstm_cell_64/split/split_dim:output:01sequential_4/lstm_4/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split
(sequential_4/lstm_4/lstm_cell_64/SigmoidSigmoid/sequential_4/lstm_4/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_4/lstm_4/lstm_cell_64/Sigmoid_1Sigmoid/sequential_4/lstm_4/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2Г
$sequential_4/lstm_4/lstm_cell_64/mulMul.sequential_4/lstm_4/lstm_cell_64/Sigmoid_1:y:0$sequential_4/lstm_4/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
(sequential_4/lstm_4/lstm_cell_64/SoftmaxSoftmax/sequential_4/lstm_4/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2С
&sequential_4/lstm_4/lstm_cell_64/mul_1Mul,sequential_4/lstm_4/lstm_cell_64/Sigmoid:y:02sequential_4/lstm_4/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2З
&sequential_4/lstm_4/lstm_cell_64/add_1AddV2(sequential_4/lstm_4/lstm_cell_64/mul:z:0*sequential_4/lstm_4/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_4/lstm_4/lstm_cell_64/Sigmoid_2Sigmoid/sequential_4/lstm_4/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2
*sequential_4/lstm_4/lstm_cell_64/Softmax_1Softmax*sequential_4/lstm_4/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Х
&sequential_4/lstm_4/lstm_cell_64/mul_2Mul.sequential_4/lstm_4/lstm_cell_64/Sigmoid_2:y:04sequential_4/lstm_4/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
1sequential_4/lstm_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   r
0sequential_4/lstm_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
#sequential_4/lstm_4/TensorArrayV2_1TensorListReserve:sequential_4/lstm_4/TensorArrayV2_1/element_shape:output:09sequential_4/lstm_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвZ
sequential_4/lstm_4/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_4/lstm_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџh
&sequential_4/lstm_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_4/lstm_4/whileWhile/sequential_4/lstm_4/while/loop_counter:output:05sequential_4/lstm_4/while/maximum_iterations:output:0!sequential_4/lstm_4/time:output:0,sequential_4/lstm_4/TensorArrayV2_1:handle:0"sequential_4/lstm_4/zeros:output:0$sequential_4/lstm_4/zeros_1:output:0,sequential_4/lstm_4/strided_slice_1:output:0Ksequential_4/lstm_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_4_lstm_4_lstm_cell_64_matmul_readvariableop_resourceAsequential_4_lstm_4_lstm_cell_64_matmul_1_readvariableop_resource@sequential_4_lstm_4_lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_4_lstm_4_while_body_1012800*2
cond*R(
&sequential_4_lstm_4_while_cond_1012799*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
Dsequential_4/lstm_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
6sequential_4/lstm_4/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_4/while:output:3Msequential_4/lstm_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elements|
)sequential_4/lstm_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџu
+sequential_4/lstm_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_4/lstm_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
#sequential_4/lstm_4/strided_slice_3StridedSlice?sequential_4/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_4/strided_slice_3/stack:output:04sequential_4/lstm_4/strided_slice_3/stack_1:output:04sequential_4/lstm_4/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_masky
$sequential_4/lstm_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
sequential_4/lstm_4/transpose_1	Transpose?sequential_4/lstm_4/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_4/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2o
sequential_4/lstm_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Й
sequential_4/dense_4/MatMulMatMul,sequential_4/lstm_4/strided_slice_3:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџt
IdentityIdentity%sequential_4/dense_4/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџы
NoOpNoOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp8^sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp7^sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOp9^sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp^sequential_4/lstm_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp2r
7sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp7sequential_4/lstm_4/lstm_cell_64/BiasAdd/ReadVariableOp2p
6sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOp6sequential_4/lstm_4/lstm_cell_64/MatMul/ReadVariableOp2t
8sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp8sequential_4/lstm_4/lstm_cell_64/MatMul_1/ReadVariableOp26
sequential_4/lstm_4/whilesequential_4/lstm_4/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_4_input
Т

)__inference_dense_4_layer_call_fn_1014688

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ЕK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1013602

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1013517*
condR
while_cond_1013516*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Г9
б
while_body_1014594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_64_matmul_readvariableop_resource_0:	ШH
5while_lstm_cell_64_matmul_1_readvariableop_resource_0:	2ШC
4while_lstm_cell_64_biasadd_readvariableop_resource_0:	Ш
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_64_matmul_readvariableop_resource:	ШF
3while_lstm_cell_64_matmul_1_readvariableop_resource:	2ШA
2while_lstm_cell_64_biasadd_readvariableop_resource:	ШЂ)while/lstm_cell_64/BiasAdd/ReadVariableOpЂ(while/lstm_cell_64/MatMul/ReadVariableOpЂ*while/lstm_cell_64/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
(while/lstm_cell_64/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_64_matmul_readvariableop_resource_0*
_output_shapes
:	Ш*
dtype0К
while/lstm_cell_64/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШЁ
*while/lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_64_matmul_1_readvariableop_resource_0*
_output_shapes
:	2Ш*
dtype0Ё
while/lstm_cell_64/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
while/lstm_cell_64/addAddV2#while/lstm_cell_64/MatMul:product:0%while/lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
)while/lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_64_biasadd_readvariableop_resource_0*
_output_shapes	
:Ш*
dtype0Ї
while/lstm_cell_64/BiasAddBiasAddwhile/lstm_cell_64/add:z:01while/lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШd
"while/lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
while/lstm_cell_64/splitSplit+while/lstm_cell_64/split/split_dim:output:0#while/lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitz
while/lstm_cell_64/SigmoidSigmoid!while/lstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_1Sigmoid!while/lstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mulMul while/lstm_cell_64/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџ2z
while/lstm_cell_64/SoftmaxSoftmax!while/lstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_1Mulwhile/lstm_cell_64/Sigmoid:y:0$while/lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/add_1AddV2while/lstm_cell_64/mul:z:0while/lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2|
while/lstm_cell_64/Sigmoid_2Sigmoid!while/lstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2w
while/lstm_cell_64/Softmax_1Softmaxwhile/lstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
while/lstm_cell_64/mul_2Mul while/lstm_cell_64/Sigmoid_2:y:0&while/lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_64/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_64/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2y
while/Identity_5Identitywhile/lstm_cell_64/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2а

while/NoOpNoOp*^while/lstm_cell_64/BiasAdd/ReadVariableOp)^while/lstm_cell_64/MatMul/ReadVariableOp+^while/lstm_cell_64/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_64_biasadd_readvariableop_resource4while_lstm_cell_64_biasadd_readvariableop_resource_0"l
3while_lstm_cell_64_matmul_1_readvariableop_resource5while_lstm_cell_64_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_64_matmul_readvariableop_resource3while_lstm_cell_64_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : 2V
)while/lstm_cell_64/BiasAdd/ReadVariableOp)while/lstm_cell_64/BiasAdd/ReadVariableOp2T
(while/lstm_cell_64/MatMul/ReadVariableOp(while/lstm_cell_64/MatMul/ReadVariableOp2X
*while/lstm_cell_64/MatMul_1/ReadVariableOp*while/lstm_cell_64/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Є5
Ж

 __inference__traced_save_1014888
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop9
5savev2_lstm_4_lstm_cell_64_kernel_read_readvariableopC
?savev2_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableop7
3savev2_lstm_4_lstm_cell_64_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop@
<savev2_adam_m_lstm_4_lstm_cell_64_kernel_read_readvariableop@
<savev2_adam_v_lstm_4_lstm_cell_64_kernel_read_readvariableopJ
Fsavev2_adam_m_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableopJ
Fsavev2_adam_v_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableop>
:savev2_adam_m_lstm_4_lstm_cell_64_bias_read_readvariableop>
:savev2_adam_v_lstm_4_lstm_cell_64_bias_read_readvariableop4
0savev2_adam_m_dense_4_kernel_read_readvariableop4
0savev2_adam_v_dense_4_kernel_read_readvariableop2
.savev2_adam_m_dense_4_bias_read_readvariableop2
.savev2_adam_v_dense_4_bias_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*У	
valueЙ	BЖ	B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B м

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop5savev2_lstm_4_lstm_cell_64_kernel_read_readvariableop?savev2_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableop3savev2_lstm_4_lstm_cell_64_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop<savev2_adam_m_lstm_4_lstm_cell_64_kernel_read_readvariableop<savev2_adam_v_lstm_4_lstm_cell_64_kernel_read_readvariableopFsavev2_adam_m_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableopFsavev2_adam_v_lstm_4_lstm_cell_64_recurrent_kernel_read_readvariableop:savev2_adam_m_lstm_4_lstm_cell_64_bias_read_readvariableop:savev2_adam_v_lstm_4_lstm_cell_64_bias_read_readvariableop0savev2_adam_m_dense_4_kernel_read_readvariableop0savev2_adam_v_dense_4_kernel_read_readvariableop.savev2_adam_m_dense_4_bias_read_readvariableop.savev2_adam_v_dense_4_bias_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *&
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*А
_input_shapes
: :2::	Ш:	2Ш:Ш: : :	Ш:	Ш:	2Ш:	2Ш:Ш:Ш:2:2::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	Ш:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ш:%	!

_output_shapes
:	Ш:%
!

_output_shapes
:	2Ш:%!

_output_shapes
:	2Ш:!

_output_shapes	
:Ш:!

_output_shapes	
:Ш:$ 

_output_shapes

:2:$ 

_output_shapes

:2: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ы
и
&sequential_4_lstm_4_while_cond_1012799D
@sequential_4_lstm_4_while_sequential_4_lstm_4_while_loop_counterJ
Fsequential_4_lstm_4_while_sequential_4_lstm_4_while_maximum_iterations)
%sequential_4_lstm_4_while_placeholder+
'sequential_4_lstm_4_while_placeholder_1+
'sequential_4_lstm_4_while_placeholder_2+
'sequential_4_lstm_4_while_placeholder_3F
Bsequential_4_lstm_4_while_less_sequential_4_lstm_4_strided_slice_1]
Ysequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_1012799___redundant_placeholder0]
Ysequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_1012799___redundant_placeholder1]
Ysequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_1012799___redundant_placeholder2]
Ysequential_4_lstm_4_while_sequential_4_lstm_4_while_cond_1012799___redundant_placeholder3&
"sequential_4_lstm_4_while_identity
В
sequential_4/lstm_4/while/LessLess%sequential_4_lstm_4_while_placeholderBsequential_4_lstm_4_while_less_sequential_4_lstm_4_strided_slice_1*
T0*
_output_shapes
: s
"sequential_4/lstm_4/while/IdentityIdentity"sequential_4/lstm_4/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_4_lstm_4_while_identity+sequential_4/lstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ў	
д
lstm_4_while_cond_1013812*
&lstm_4_while_lstm_4_while_loop_counter0
,lstm_4_while_lstm_4_while_maximum_iterations
lstm_4_while_placeholder
lstm_4_while_placeholder_1
lstm_4_while_placeholder_2
lstm_4_while_placeholder_3,
(lstm_4_while_less_lstm_4_strided_slice_1C
?lstm_4_while_lstm_4_while_cond_1013812___redundant_placeholder0C
?lstm_4_while_lstm_4_while_cond_1013812___redundant_placeholder1C
?lstm_4_while_lstm_4_while_cond_1013812___redundant_placeholder2C
?lstm_4_while_lstm_4_while_cond_1013812___redundant_placeholder3
lstm_4_while_identity
~
lstm_4/while/LessLesslstm_4_while_placeholder(lstm_4_while_less_lstm_4_strided_slice_1*
T0*
_output_shapes
: Y
lstm_4/while/IdentityIdentitylstm_4/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_4_while_identitylstm_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ЕK

C__inference_lstm_4_layer_call_and_return_conditional_losses_1014679

inputs>
+lstm_cell_64_matmul_readvariableop_resource:	Ш@
-lstm_cell_64_matmul_1_readvariableop_resource:	2Ш;
,lstm_cell_64_biasadd_readvariableop_resource:	Ш
identityЂ#lstm_cell_64/BiasAdd/ReadVariableOpЂ"lstm_cell_64/MatMul/ReadVariableOpЂ$lstm_cell_64/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
"lstm_cell_64/MatMul/ReadVariableOpReadVariableOp+lstm_cell_64_matmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0
lstm_cell_64/MatMulMatMulstrided_slice_2:output:0*lstm_cell_64/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
$lstm_cell_64/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_64_matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0
lstm_cell_64/MatMul_1MatMulzeros:output:0,lstm_cell_64/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ
lstm_cell_64/addAddV2lstm_cell_64/MatMul:product:0lstm_cell_64/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШ
#lstm_cell_64/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_64_biasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0
lstm_cell_64/BiasAddBiasAddlstm_cell_64/add:z:0+lstm_cell_64/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШ^
lstm_cell_64/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :н
lstm_cell_64/splitSplit%lstm_cell_64/split/split_dim:output:0lstm_cell_64/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitn
lstm_cell_64/SigmoidSigmoidlstm_cell_64/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_1Sigmoidlstm_cell_64/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2w
lstm_cell_64/mulMullstm_cell_64/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
lstm_cell_64/SoftmaxSoftmaxlstm_cell_64/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_1Mullstm_cell_64/Sigmoid:y:0lstm_cell_64/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2{
lstm_cell_64/add_1AddV2lstm_cell_64/mul:z:0lstm_cell_64/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2p
lstm_cell_64/Sigmoid_2Sigmoidlstm_cell_64/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2k
lstm_cell_64/Softmax_1Softmaxlstm_cell_64/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
lstm_cell_64/mul_2Mullstm_cell_64/Sigmoid_2:y:0 lstm_cell_64/Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_64_matmul_readvariableop_resource-lstm_cell_64_matmul_1_readvariableop_resource,lstm_cell_64_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1014594*
condR
while_cond_1014593*K
output_shapes:
8: : : : :џџџџџџџџџ2:џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Р
NoOpNoOp$^lstm_cell_64/BiasAdd/ReadVariableOp#^lstm_cell_64/MatMul/ReadVariableOp%^lstm_cell_64/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2J
#lstm_cell_64/BiasAdd/ReadVariableOp#lstm_cell_64/BiasAdd/ReadVariableOp2H
"lstm_cell_64/MatMul/ReadVariableOp"lstm_cell_64/MatMul/ReadVariableOp2L
$lstm_cell_64/MatMul_1/ReadVariableOp$lstm_cell_64/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
Ш
while_cond_1014448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1014448___redundant_placeholder05
1while_while_cond_1014448___redundant_placeholder15
1while_while_cond_1014448___redundant_placeholder25
1while_while_cond_1014448___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :џџџџџџџџџ2:џџџџџџџџџ2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:-)
'
_output_shapes
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Ч
в
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013421

inputs!
lstm_4_1013397:	Ш!
lstm_4_1013399:	2Ш
lstm_4_1013401:	Ш!
dense_4_1013415:2
dense_4_1013417:
identityЂdense_4/StatefulPartitionedCallЂlstm_4/StatefulPartitionedCall§
lstm_4/StatefulPartitionedCallStatefulPartitionedCallinputslstm_4_1013397lstm_4_1013399lstm_4_1013401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_4_layer_call_and_return_conditional_losses_1013396
dense_4/StatefulPartitionedCallStatefulPartitionedCall'lstm_4/StatefulPartitionedCall:output:0dense_4_1013415dense_4_1013417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1013414w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_4/StatefulPartitionedCall^lstm_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџ: : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2@
lstm_4/StatefulPartitionedCalllstm_4/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р

I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1013106

inputs

states
states_11
matmul_readvariableop_resource:	Ш3
 matmul_1_readvariableop_resource:	2Ш.
biasadd_readvariableop_resource:	Ш
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ш*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2Ш*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџШs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ш*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџШQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџ2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџ2T
SoftmaxSoftmaxsplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџ2^
mul_1MulSigmoid:y:0Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџ2Q
	Softmax_1Softmax	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2b
mul_2MulSigmoid_2:y:0Softmax_1:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultЄ
I
lstm_4_input9
serving_default_lstm_4_input:0џџџџџџџџџ;
dense_40
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЮЁ
Д
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
%trace_0
&trace_1
'trace_2
(trace_32
.__inference_sequential_4_layer_call_fn_1013434
.__inference_sequential_4_layer_call_fn_1013738
.__inference_sequential_4_layer_call_fn_1013753
.__inference_sequential_4_layer_call_fn_1013672П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z%trace_0z&trace_1z'trace_2z(trace_3
й
)trace_0
*trace_1
+trace_2
,trace_32ю
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013904
I__inference_sequential_4_layer_call_and_return_conditional_losses_1014055
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013688
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013704П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z)trace_0z*trace_1z+trace_2z,trace_3
вBЯ
"__inference__wrapped_model_1012891lstm_4_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

-
_variables
._iterations
/_learning_rate
0_index_dict
1
_momentums
2_velocities
3_update_step_xla"
experimentalOptimizer
,
4serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

5states
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ъ
;trace_0
<trace_1
=trace_2
>trace_32џ
(__inference_lstm_4_layer_call_fn_1014066
(__inference_lstm_4_layer_call_fn_1014077
(__inference_lstm_4_layer_call_fn_1014088
(__inference_lstm_4_layer_call_fn_1014099д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z;trace_0z<trace_1z=trace_2z>trace_3
ж
?trace_0
@trace_1
Atrace_2
Btrace_32ы
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014244
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014389
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014534
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014679д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
"
_generic_user_object
ј
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_random_generator
J
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
Ptrace_02а
)__inference_dense_4_layer_call_fn_1014688Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zPtrace_0

Qtrace_02ы
D__inference_dense_4_layer_call_and_return_conditional_losses_1014698Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zQtrace_0
 :22dense_4/kernel
:2dense_4/bias
-:+	Ш2lstm_4/lstm_cell_64/kernel
7:5	2Ш2$lstm_4/lstm_cell_64/recurrent_kernel
':%Ш2lstm_4/lstm_cell_64/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
5
R0
S1
T2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_4_layer_call_fn_1013434lstm_4_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_4_layer_call_fn_1013738inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
.__inference_sequential_4_layer_call_fn_1013753inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_sequential_4_layer_call_fn_1013672lstm_4_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013904inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_4_layer_call_and_return_conditional_losses_1014055inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013688lstm_4_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 B
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013704lstm_4_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
n
.0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
U0
W1
Y2
[3
]4"
trackable_list_wrapper
C
V0
X1
Z2
\3
^4"
trackable_list_wrapper
П2МЙ
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
бBЮ
%__inference_signature_wrapper_1013723lstm_4_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
(__inference_lstm_4_layer_call_fn_1014066inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_4_layer_call_fn_1014077inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_4_layer_call_fn_1014088inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
(__inference_lstm_4_layer_call_fn_1014099inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014244inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЋBЈ
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014389inputs_0"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014534inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЉBІ
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014679inputs"д
ЫВЧ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
з
dtrace_0
etrace_12 
.__inference_lstm_cell_64_layer_call_fn_1014715
.__inference_lstm_cell_64_layer_call_fn_1014732Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zdtrace_0zetrace_1

ftrace_0
gtrace_12ж
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014764
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014796Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zftrace_0zgtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
нBк
)__inference_dense_4_layer_call_fn_1014688inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_4_layer_call_and_return_conditional_losses_1014698inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
N
h	variables
i	keras_api
	jtotal
	kcount"
_tf_keras_metric
^
l	variables
m	keras_api
	ntotal
	ocount
p
_fn_kwargs"
_tf_keras_metric
^
q	variables
r	keras_api
	stotal
	tcount
u
_fn_kwargs"
_tf_keras_metric
2:0	Ш2!Adam/m/lstm_4/lstm_cell_64/kernel
2:0	Ш2!Adam/v/lstm_4/lstm_cell_64/kernel
<::	2Ш2+Adam/m/lstm_4/lstm_cell_64/recurrent_kernel
<::	2Ш2+Adam/v/lstm_4/lstm_cell_64/recurrent_kernel
,:*Ш2Adam/m/lstm_4/lstm_cell_64/bias
,:*Ш2Adam/v/lstm_4/lstm_cell_64/bias
%:#22Adam/m/dense_4/kernel
%:#22Adam/v/dense_4/kernel
:2Adam/m/dense_4/bias
:2Adam/v/dense_4/bias
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
B
.__inference_lstm_cell_64_layer_call_fn_1014715inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_lstm_cell_64_layer_call_fn_1014732inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014764inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014796inputsstates_0states_1"Н
ДВА
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
j0
k1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
"__inference__wrapped_model_1012891u9Ђ6
/Ђ,
*'
lstm_4_inputџџџџџџџџџ
Њ "1Њ.
,
dense_4!
dense_4џџџџџџџџџЋ
D__inference_dense_4_layer_call_and_return_conditional_losses_1014698c/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dense_4_layer_call_fn_1014688X/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "!
unknownџџџџџџџџџЬ
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014244OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ь
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014389OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Л
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014534t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Л
C__inference_lstm_4_layer_call_and_return_conditional_losses_1014679t?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ѕ
(__inference_lstm_4_layer_call_fn_1014066yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ2Ѕ
(__inference_lstm_4_layer_call_fn_1014077yOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџ2
(__inference_lstm_4_layer_call_fn_1014088i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ2
(__inference_lstm_4_layer_call_fn_1014099i?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџ2т
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014764Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ2
"
states_1џџџџџџџџџ2
p 
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ2
SP
&#
tensor_0_1_0џџџџџџџџџ2
&#
tensor_0_1_1џџџџџџџџџ2
 т
I__inference_lstm_cell_64_layer_call_and_return_conditional_losses_1014796Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ2
"
states_1џџџџџџџџџ2
p
Њ "Ђ
~Ђ{
$!

tensor_0_0џџџџџџџџџ2
SP
&#
tensor_0_1_0џџџџџџџџџ2
&#
tensor_0_1_1џџџџџџџџџ2
 Е
.__inference_lstm_cell_64_layer_call_fn_1014715Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ2
"
states_1џџџџџџџџџ2
p 
Њ "xЂu
"
tensor_0џџџџџџџџџ2
OL
$!

tensor_1_0џџџџџџџџџ2
$!

tensor_1_1џџџџџџџџџ2Е
.__inference_lstm_cell_64_layer_call_fn_1014732Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states_0џџџџџџџџџ2
"
states_1џџџџџџџџџ2
p
Њ "xЂu
"
tensor_0џџџџџџџџџ2
OL
$!

tensor_1_0џџџџџџџџџ2
$!

tensor_1_1џџџџџџџџџ2Х
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013688xAЂ>
7Ђ4
*'
lstm_4_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Х
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013704xAЂ>
7Ђ4
*'
lstm_4_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
I__inference_sequential_4_layer_call_and_return_conditional_losses_1013904r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
I__inference_sequential_4_layer_call_and_return_conditional_losses_1014055r;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
.__inference_sequential_4_layer_call_fn_1013434mAЂ>
7Ђ4
*'
lstm_4_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
.__inference_sequential_4_layer_call_fn_1013672mAЂ>
7Ђ4
*'
lstm_4_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
.__inference_sequential_4_layer_call_fn_1013738g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
.__inference_sequential_4_layer_call_fn_1013753g;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЏ
%__inference_signature_wrapper_1013723IЂF
Ђ 
?Њ<
:
lstm_4_input*'
lstm_4_inputџџџџџџџџџ"1Њ.
,
dense_4!
dense_4џџџџџџџџџ