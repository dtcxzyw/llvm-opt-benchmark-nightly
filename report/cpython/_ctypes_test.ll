Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_ctypes_test?download=true
inline.NumInlined: 4132
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
%struct.Example_gh_84039_good_a = type { i8 }
%struct.Example_gh_84039_good = type <{ %struct.anon.5, i16 }>
%struct.anon.5 = type { i8 }
%struct.Example_gh_73939 = type { i16, i16, i32 }
%struct.Example_gh_86098 = type { i32 }
%struct.Example_gh_86098_pack = type <{ i8, i8, i32 }>
%struct.AnonBitfields = type { %struct.anon.6, i8 }
%struct.anon.6 = type { i8 }

@last_tfrsuv_arg = hidden thread_local local_unnamed_addr global %struct.TestReg zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"testfunc_array %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"testfunc_Ddd(%p, %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"testfunc_Ddd(%g, %g)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"testfunc_DDD(%p, %p)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"testfunc_DDD(%Lg, %Lg)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"testfunc_iii(%p, %p)\0A\00", align 1
@__const._testfunc_callback_with_pointer.table = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"name1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"value1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"value2\00", align 1
@my_spams = hidden global [2 x %struct.SPAM] [%struct.SPAM { ptr @.str.6, ptr @.str.7 }, %struct.SPAM { ptr @.str.8, ptr @.str.9 }], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c"first egg\00", align 1
@my_eggs = hidden global [1 x { ptr, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], ptr } { ptr @.str.10, i32 1, [4 x i8] zeroinitializer, ptr @my_spams }], align 16
@an_integer = local_unnamed_addr global i32 42, align 4
@_xxx_lib = hidden global %struct.xxx_library { ptr @_xxx_init }, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@last_tf_arg_s = hidden thread_local local_unnamed_addr global i64 0, align 8
@last_tf_arg_u = hidden thread_local local_unnamed_addr global i64 0, align 8
@left = local_unnamed_addr global i64 10, align 8
@top = local_unnamed_addr global i64 20, align 8
@right = local_unnamed_addr global i64 30, align 8
@bottom = local_unnamed_addr global i64 40, align 8
@_ctypes_testmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str.15, ptr null, i64 0, ptr @module_methods, ptr @_ctypes_test_slots, ptr null, ptr null, ptr null }, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"_xxx_init got %p %p\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"calls done, ptr was %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"_ctypes_test\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"get_last_tf_arg_s\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"get_last_tf_arg_u\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"func_si\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"get_generated_test_data\00", align 1
@module_methods = internal global [6 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @get_last_tf_arg_s, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @get_last_tf_arg_u, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.18, ptr @py_func_si, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.19, ptr @py_func, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.20, ptr @get_generated_test_data, i32 8, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"need a string\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"SingleInt\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"SingleInt_Union\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"SingleU32\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SimpleStruct\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"SimpleUnion\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ManyTypes\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"ManyTypesU\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Nested\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Packed1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Packed2\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Packed3\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Packed4\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"X86_32EdgeCase\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"MSBitFieldExample\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"MSStraddlingExample\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"IntBits\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Bits\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"IntBits_MSVC\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"Bits_MSVC\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"I64Bits\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"U64Bits\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Struct331_8\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Struct1x1_8\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Struct1nx1_8\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"Struct3xx_8\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Struct331_u8\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"Struct1x1_u8\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Struct1nx1_u8\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"Struct3xx_u8\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Struct331_16\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Struct1x1_16\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Struct1nx1_16\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Struct3xx_16\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Struct331_u16\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"Struct1x1_u16\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Struct1nx1_u16\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Struct3xx_u16\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"Struct331_32\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"Struct1x1_32\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Struct1nx1_32\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"Struct3xx_32\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Struct331_u32\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Struct1x1_u32\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"Struct1nx1_u32\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"Struct3xx_u32\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Struct331_64\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"Struct1x1_64\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Struct1nx1_64\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"Struct3xx_64\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Struct331_u64\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"Struct1x1_u64\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Struct1nx1_u64\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"Struct3xx_u64\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Mixed1\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"Mixed2\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Mixed3\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"Mixed4\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Mixed5\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Mixed6\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Mixed7\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Mixed8_a\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"Mixed8_b\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Mixed9\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Mixed10\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"Example_gh_95496\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"Example_gh_84039_bad\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Example_gh_84039_good_a\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Example_gh_84039_good\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"Example_gh_73939\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"Example_gh_86098\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Example_gh_86098_pack\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"AnonBitfields\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.95 = private unnamed_addr constant [20 x i8] c"unknown testcase %R\00", align 1
@_ctypes_test_slots = internal global [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@str = private unnamed_addr constant [8 x i8] c"calling\00", align 1

; Function Attrs: nounwind uwtable
define i32 @_testfunc_cbk_reg_int(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %0, %0
  %i.b = mul i32 %1, %1
  %i.c = mul i32 %2, %2
  %i.d = mul i32 %3, %3
  %i.e = mul i32 %4, %4
  %i.f = tail call i32 %5(i32 noundef %i.a, i32 noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e) #33
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define double @_testfunc_cbk_reg_double(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %0, %0
  %i.b = fmul double %1, %1
  %i.c = fmul double %2, %2
  %i.d = fmul double %3, %3
  %i.e = fmul double %4, %4
  %i.f = tail call double %5(double noundef %i.a, double noundef %i.b, double noundef %i.c, double noundef %i.d, double noundef %i.e) #33
  ret double %i.f
}

; Function Attrs: nounwind uwtable
define void @_testfunc_cbk_large_struct(ptr nofree noundef readonly byval(%struct.Test) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void %1(ptr noundef nonnull byval(%struct.Test) align 8 %0) #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_testfunc_large_struct_update_value(ptr nofree noundef byval(%struct.Test) align 8 captures(address) %0) local_unnamed_addr #1 {
bb.a:
  store volatile i64 195948557, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store volatile i64 195948557, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store volatile i64 195948557, ptr %i.b, align 8, !tbaa !29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_testfunc_reg_struct_update_value(i64 %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca i32, align 4
  %.sroa.3 = alloca i32, align 4
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @last_tfrsuv_arg)
  store i64 %0, ptr %i.a, align 4
  store volatile i32 195948557, ptr %.sroa.0, align 4, !tbaa !31
  store volatile i32 195948557, ptr %.sroa.3, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 4081) i32 @_testfunc_array_in_struct2(i64 %0, i64 %1) local_unnamed_addr #5 {
bb.a:
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %i.a = trunc i64 %0 to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = trunc i64 %0 to i32
  %i.d = lshr i32 %i.c, 16
  %i.e = trunc i64 %0 to i32
  %i.f = lshr i32 %i.e, 24
  %.sroa.0.sroa.6.0.extract.shift = lshr i64 %0, 32
  %.sroa.0.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift to i32
  %.sroa.0.sroa.7.0.extract.shift = lshr i64 %0, 40
  %.sroa.0.sroa.7.0.extract.trunc = trunc nuw nsw i64 %.sroa.0.sroa.7.0.extract.shift to i32
  %.sroa.0.sroa.8.0.extract.shift = lshr i64 %0, 48
  %.sroa.0.sroa.8.0.extract.trunc = trunc nuw nsw i64 %.sroa.0.sroa.8.0.extract.shift to i32
  %.sroa.0.sroa.9.0.extract.shift = lshr i64 %0, 56
  %.sroa.0.sroa.9.0.extract.trunc = trunc nuw nsw i64 %.sroa.0.sroa.9.0.extract.shift to i32
  %i.g = and i32 %.sroa.0.sroa.0.0.extract.trunc, 255
  %i.h = and i32 %i.b, 255
  %i.i = add nuw nsw i32 %i.g, %i.h
  %i.j = and i32 %i.d, 255
  %i.k = add nuw nsw i32 %i.i, %i.j
  %i.l = add nuw nsw i32 %i.k, %i.f
  %i.m = and i32 %.sroa.0.sroa.6.0.extract.trunc, 255
  %i.n = add nuw nsw i32 %i.l, %i.m
  %i.o = and i32 %.sroa.0.sroa.7.0.extract.trunc, 255
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = and i32 %.sroa.0.sroa.8.0.extract.trunc, 255
  %i.r = add nuw nsw i32 %i.p, %i.q
  %i.s = add nuw nsw i32 %i.r, %.sroa.0.sroa.9.0.extract.trunc
  %.sroa.10.8.extract.trunc = trunc i64 %1 to i32
  %i.t = and i32 %.sroa.10.8.extract.trunc, 255
  %i.u = add nuw nsw i32 %i.s, %i.t
  %i.v = trunc i64 %1 to i32
  %i.w = lshr i32 %i.v, 8
  %i.x = and i32 %i.w, 255
  %i.y = add nuw nsw i32 %i.u, %i.x
  %i.z = trunc i64 %1 to i32
  %i.aa = lshr i32 %i.z, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = add nuw nsw i32 %i.y, %i.ab
  %i.ad = trunc i64 %1 to i32
  %i.ae = lshr i32 %i.ad, 24
  %i.af = add nuw nsw i32 %i.ac, %i.ae
  %.sroa.10.12.extract.shift = lshr i64 %1, 32
  %.sroa.10.12.extract.trunc = trunc nuw i64 %.sroa.10.12.extract.shift to i32
  %i.ag = and i32 %.sroa.10.12.extract.trunc, 255
  %i.ah = add nuw nsw i32 %i.af, %i.ag
  %.sroa.10.13.extract.shift = lshr i64 %1, 40
  %.sroa.10.13.extract.trunc = trunc nuw nsw i64 %.sroa.10.13.extract.shift to i32
  %i.ai = and i32 %.sroa.10.13.extract.trunc, 255
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.sroa.10.14.extract.shift = lshr i64 %1, 48
  %.sroa.10.14.extract.trunc = trunc nuw nsw i64 %.sroa.10.14.extract.shift to i32
  %i.ak = and i32 %.sroa.10.14.extract.trunc, 255
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %.sroa.10.15.extract.shift = lshr i64 %1, 56
  %.sroa.10.15.extract.trunc = trunc nuw nsw i64 %.sroa.10.15.extract.shift to i32
  %i.am = add nuw nsw i32 %i.al, %.sroa.10.15.extract.trunc
  ret i32 %i.am
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @_testfunc_array_in_struct3A(<2 x float> %0, <2 x float> %1) local_unnamed_addr #7 {
.preheader.preheader:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = fpext float %.sroa.0.0.vec.extract to double
  %i.b = fadd double %i.a, 0.000000e+00
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.c = fpext float %.sroa.0.4.vec.extract to double
  %i.d = fadd double %i.b, %i.c
  %.sroa.4.8.vec.extract = extractelement <2 x float> %1, i64 0
  %i.e = fpext float %.sroa.4.8.vec.extract to double
  %i.f = fadd double %i.d, %i.e
  %.sroa.4.12.vec.extract = extractelement <2 x float> %1, i64 1
  %i.g = fpext float %.sroa.4.12.vec.extract to double
  %i.h = fadd double %i.f, %i.g
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @_testfunc_array_in_struct3B(double %0, double %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fadd double %0, 0.000000e+00
  %i.b = fadd double %i.a, %1
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { double, double } @_testfunc_array_in_struct3B_set_defaults() local_unnamed_addr #5 {
bb.a:
  ret { double, double } { double 1.000000e+00, double 2.000000e+00 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_testfunc_array_in_struct3C(ptr nofree noundef readonly byval(%struct.Test3C) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = fadd double %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = fadd double %i.h, %i.j
  ret double %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_testfunc_array_in_struct3C_set_defaults(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Test3C) align 8 captures(none) initializes((0, 32)) %0) local_unnamed_addr #9 {
bb.a:
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, ptr %i.a, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_testfunc_array_in_struct3D(ptr nofree noundef readonly byval(%struct.Test3D) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = fadd double %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !12
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !12
  %i.t = fadd double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  %i.w = fadd double %i.t, %i.v
  ret double %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_testfunc_array_in_struct3D_set_defaults(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Test3D) align 8 captures(none) initializes((0, 64)) %0) local_unnamed_addr #9 {
bb.a:
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double 5.000000e+00, double 6.000000e+00>, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 7.000000e+00, double 8.000000e+00>, ptr %i.c, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_testfunc_array_in_struct3E(ptr nofree noundef readonly byval(%struct.Test3E) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = fadd double %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12
  %i.h = fadd double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = fadd double %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = fadd double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !12
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !12
  %i.t = fadd double %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !12
  %i.w = fadd double %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = fadd double %i.w, %i.y
  ret double %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_testfunc_array_in_struct3E_set_defaults(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Test3E) align 8 captures(none) initializes((0, 72)) %0) local_unnamed_addr #9 {
bb.a:
  store <2 x double> <double 1.000000e+00, double 2.000000e+00>, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 3.000000e+00, double 4.000000e+00>, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> <double 5.000000e+00, double 6.000000e+00>, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> <double 7.000000e+00, double 8.000000e+00>, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 9.000000e+00, ptr %i.d, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @_testfunc_union_by_value1(i64 %0) local_unnamed_addr #5 {
bb.a:
  %sext = shl i64 %0, 32
  %i.a = ashr exact i64 %sext, 32
  %i.b = ashr i64 %0, 32
  %i.c = add i64 %i.b, %0
  %i.d = add i64 %i.c, %i.a
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
end_hunk_0
