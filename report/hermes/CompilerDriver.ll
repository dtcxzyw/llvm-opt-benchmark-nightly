begin_hunk_0
@.str.269 = private unnamed_addr constant [21 x i8] c"    Contiguous Heap\0A\00", align 1
@.str.270 = private unnamed_addr constant [37 x i8] c"    Unicode RegExp Property Escapes\0A\00", align 1
@.str.271 = private unnamed_addr constant [20 x i8] c"    Zip file input\0A\00", align 1
@.str.274 = private unnamed_addr constant [47 x i8] c"Error! Cannot use both -strict and -non-strict\00", align 1
@.str.275 = private unnamed_addr constant [85 x i8] c"Refusing to write binary bundle to terminal.\0ASpecify output file with -out filename.\00", align 1
@.str.276 = private unnamed_addr constant [36 x i8] c"Can't specify both -lazy and -eager\00", align 1
end_hunk_0
begin_hunk_1

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.d
  %i.aw = extractvalue { ptr, i64 } %i.at, 0
  %114 = load i32, ptr %i.aw, align 1
  %115 = icmp ne i32 %114, 1667393582
  %116 = zext i1 %115 to i32
  %i.ax = icmp eq i32 %116, 0
  br i1 %i.ax, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread7.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread7.i:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i
end_hunk_1
begin_hunk_2

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !323 ; 2 uses
  %14 = load i64, ptr %i.cc, align 1
  %15 = icmp ne i64 %14, 3271695199665087080
  %16 = zext i1 %15 to i32
  %i.cd = icmp eq i32 %16, 0
  br i1 %i.cd, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread.i, label %.critedge65.i

.critedge65.i:                                    ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, %bb.p, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i
end_hunk_2
