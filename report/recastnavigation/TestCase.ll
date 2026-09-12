Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/TestCase?download=true
inline.NumInlined: 320
inline.NumDeleted: 167
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AppState = type { ptr, ptr, [16 x double], [4 x i32], i32, i32, i32, i32, %class.BuildContext, %"class.std::unique_ptr", %"class.std::unique_ptr.20", %"class.std::unique_ptr.28", float, i32, [2 x i32], [2 x i32], [2 x float], [3 x float], float, [2 x float], float, float, float, float, float, float, float, i8, i8, i8, [3 x float], [3 x float], i32, %"class.std::__cxx11::basic_string", i8, i8, i8, i8, i32, %"class.std::vector.13", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.BuildContext = type { %class.rcContext.base, %"struct.std::array", %"struct.std::array", %"class.std::vector.13" }
%class.rcContext.base = type <{ ptr, i8, i8 }>
%"struct.std::array" = type { [28 x i64] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.std::unique_ptr.20" = type { %"struct.std::__uniq_ptr_data.21" }
%"struct.std::__uniq_ptr_data.21" = type { %"class.std::__uniq_ptr_impl.22" }
%"class.std::__uniq_ptr_impl.22" = type { %"class.std::tuple.23" }
%"class.std::tuple.23" = type { %"struct.std::_Tuple_impl.24" }
%"struct.std::_Tuple_impl.24" = type { %"struct.std::_Head_base.27" }
%"struct.std::_Head_base.27" = type { ptr }
%"class.std::unique_ptr.28" = type { %"struct.std::__uniq_ptr_data.29" }
%"struct.std::__uniq_ptr_data.29" = type { %"class.std::__uniq_ptr_impl.30" }
%"class.std::__uniq_ptr_impl.30" = type { %"class.std::tuple.31" }
%"class.std::tuple.31" = type { %"struct.std::_Tuple_impl.32" }
%"struct.std::_Tuple_impl.32" = type { %"struct.std::_Head_base.35" }
%"struct.std::_Head_base.35" = type { ptr }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.FileIO = type <{ %struct.duFileIO, ptr, i32, [4 x i8] }>
%struct.duFileIO = type { ptr }
%"struct.TestCase::Test" = type <{ i8, [3 x i8], [3 x float], [3 x float], [3 x float], [3 x float], float, i16, i16, i8, [3 x i8], %"class.std::vector.3", %"class.std::vector.8", i32, i32, i32, [4 x i8] }>
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<unsigned int *, std::allocator<unsigned int *>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int *, std::allocator<unsigned int *>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int *, std::allocator<unsigned int *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int *, std::allocator<unsigned int *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.dtQueryFilter = type { [64 x float], i16, i16 }
%struct.ImVec2 = type { float, float }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorIN8TestCase4TestESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIPjSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"%f %f %f %f %f %f %hx %hx\00", align 1
@__const._ZN8TestCase7doTestsEP9dtNavMeshP14dtNavMeshQuery.polyPickExt = private unnamed_addr constant [3 x float] [float 2.000000e+00, float 4.000000e+00, float 2.000000e+00], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c" - Path %02d:     %.4f ms\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"    - poly:     %.4f ms\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"    - path:     %.4f ms\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"    - straight: %.4f ms\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Path %d\0A\00", align 1
@app = external global %struct.AppState, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"Test Results\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Path %d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Total: %.4f ms\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Poly: %.4f ms\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Path: %.4f ms\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Straight: %.4f ms\00", align 1
@_ZTV6FileIO = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@str = private unnamed_addr constant [14 x i8] c"Test Results:\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN8TestCase4loadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.FileIO, align 8              ; 9 uses
  %i.a = alloca [512 x i8], align 16              ; 8 uses
  %3 = alloca %"struct.TestCase::Test", align 8   ; 18 uses
  %4 = alloca %"struct.TestCase::Test", align 8   ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV6FileIO, i64 16), ptr %2, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = load ptr, ptr %1, align 8, !tbaa !17
  %i.e = call noundef zeroext i1 @_ZN6FileIO11openForReadEPKc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.d) #18
  br i1 %i.e, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef i64 @_ZNK6FileIO11getFileSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18 ; 4 uses
  %i.g = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #19 ; 4 uses
  %i.h = call noundef zeroext i1 @_ZN6FileIO4readEPvm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.g, i64 noundef %i.f) #18
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %scevgep.i34 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 112
  %scevgep.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %.042 = phi ptr [ %i.g, %.lr.ph ], [ %i.ar, %bb.u ]
  store i8 0, ptr %i.a, align 16, !tbaa !18
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.027.i = phi i32 [ %.1.i, %bb.h ], [ 0, %bb.d ] ; 6 uses
  %.01725.i = phi i8 [ %.118.i, %bb.h ], [ 1, %bb.d ] ; 4 uses
  %.01924.i = phi ptr [ %i.ar, %bb.h ], [ %.042, %bb.d ] ; 2 uses
  %i.aq = load i8, ptr %.01924.i, align 1, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1 ; 4 uses
  switch i8 %i.aq, label %bb.g [
    i8 10, label %bb.e
    i8 13, label %bb.h
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.i
  %i.as = trunc nuw i8 %.01725.i to i1
  %not..i = xor i1 %i.as, true
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.at = trunc nuw i8 %.01725.i to i1
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.au = add nsw i32 %.027.i, 1
  %i.av = sext i32 %.027.i to i64
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %i.av
  store i8 %i.aq, ptr %i.aw, align 1, !tbaa !18
  %i.ax = icmp sgt i32 %.027.i, 509
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %.lr.ph.i
  %.118.i = phi i8 [ %.01725.i, %.lr.ph.i ], [ 0, %bb.g ], [ %.01725.i, %bb.e ], [ 1, %bb.f ]
  %.116.i = phi i1 [ false, %.lr.ph.i ], [ %i.ax, %bb.g ], [ %not..i, %bb.e ], [ false, %bb.f ]
  %.1.i = phi i32 [ %.027.i, %.lr.ph.i ], [ %i.au, %bb.g ], [ %.027.i, %bb.e ], [ %.027.i, %bb.f ] ; 2 uses
  %i.ay = icmp uge ptr %i.ar, %i.i
  %.not22.i = select i1 %.116.i, i1 true, i1 %i.ay
  br i1 %.not22.i, label %_ZL8parseRowPcS_S_i.exit, label %.lr.ph.i, !llvm.loop !59

_ZL8parseRowPcS_S_i.exit:                         ; preds = %bb.h
  %i.az = sext i32 %.1.i to i64
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  %i.bb = load i8, ptr %i.a, align 16, !tbaa !18  ; 3 uses
  switch i8 %i.bb, label %bb.m [
    i8 115, label %bb.i
    i8 102, label %bb.k
  ]

bb.i:                                             ; preds = %_ZL8parseRowPcS_S_i.exit
  %i.bc = load i8, ptr %i.k, align 1, !tbaa !18   ; 2 uses
  %.not7.i = icmp eq i8 %i.bc, 0
  br i1 %.not7.i, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.i, %bb.j
  %i.bd = phi i8 [ %i.bh, %bb.j ], [ %i.bc, %bb.i ]
  %.08.i = phi ptr [ %i.bg, %bb.j ], [ %i.k, %bb.i ] ; 2 uses
  %i.be = sext i8 %i.bd to i32
  %i.bf = call i32 @isspace(i32 noundef %i.be) #20
  %.not6.i = icmp eq i32 %i.bf, 0
  br i1 %.not6.i, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i23
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18  ; 2 uses
  %.not.i24 = icmp eq i8 %i.bh, 0
  br i1 %.not.i24, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %.lr.ph.i23, !llvm.loop !60

_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %.lr.ph.i23, %bb.j, %bb.i
  %.0.lcssa.i25 = phi ptr [ %i.k, %bb.i ], [ %.08.i, %.lr.ph.i23 ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bi = load i64, ptr %i.n, align 8, !tbaa !20
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i25) #18
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, i64 noundef %i.bi, ptr noundef nonnull %.0.lcssa.i25, i64 noundef %i.bj) ; 0 uses
  br label %bb.u

bb.k:                                             ; preds = %_ZL8parseRowPcS_S_i.exit
  %i.bl = load i8, ptr %i.k, align 1, !tbaa !18   ; 2 uses
  %.not7.i26 = icmp eq i8 %i.bl, 0
  br i1 %.not7.i26, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit32, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.k, %bb.l
  %i.bm = phi i8 [ %i.bq, %bb.l ], [ %i.bl, %bb.k ]
  %.08.i28 = phi ptr [ %i.bp, %bb.l ], [ %i.k, %bb.k ] ; 2 uses
  %i.bn = sext i8 %i.bm to i32
  %i.bo = call i32 @isspace(i32 noundef %i.bn) #20
  %.not6.i29 = icmp eq i32 %i.bo, 0
  br i1 %.not6.i29, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit32, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i27
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i28, i64 1 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18  ; 2 uses
  %.not.i30 = icmp eq i8 %i.bq, 0
  br i1 %.not.i30, label %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit32, label %.lr.ph.i27, !llvm.loop !60

_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit32: ; preds = %.lr.ph.i27, %bb.l, %bb.k
  %.0.lcssa.i31 = phi ptr [ %i.k, %bb.k ], [ %.08.i28, %.lr.ph.i27 ], [ %i.bp, %bb.l ] ; 2 uses
  %i.br = load i64, ptr %i.l, align 8, !tbaa !20
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i31) #18
  %i.bt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, i64 noundef %i.br, ptr noundef nonnull %.0.lcssa.i31, i64 noundef %i.bs) ; 0 uses
  br label %bb.u

bb.m:                                             ; preds = %_ZL8parseRowPcS_S_i.exit
  %i.bu = icmp eq i8 %i.bb, 112
  %i.bv = load i8, ptr %i.k, align 1              ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 102
  %or.cond = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.ae, i8 0, i64 60, i1 false)
  store i8 0, ptr %3, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(57) %scevgep.i, i8 0, i64 57, i1 false)
  %i.bx = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, ptr noundef nonnull %scevgep.i, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) #18 ; 0 uses
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !40  ; 8 uses
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !41
  %.not.i33 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i33, label %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread

_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %i.by, ptr noundef nonnull align 8 dereferenceable(124) %3, i64 61, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.cb = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !42
  store <2 x ptr> %i.cb, ptr %i.ca, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !43
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.cf = load <2 x ptr>, ptr %i.an, align 8, !tbaa !44
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !45
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 8 dereferenceable(12) %i.ap, i64 12, i1 false)
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store ptr %i.ck, ptr %i.y, align 8, !tbaa !40
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i

_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.n
  call void @_ZNSt6vectorIN8TestCase4TestESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(124) %3)
  %.pre43 = load ptr, ptr %i.an, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre43, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.cl = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %.pre43 to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %.pre43, i64 noundef %i.co) #21
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i

_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i:               ; preds = %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit.thread, %bb.o, %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i1.i, label %_ZN8TestCase4TestD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #21
  br label %_ZN8TestCase4TestD2Ev.exit

_ZN8TestCase4TestD2Ev.exit:                       ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.cu = icmp eq i8 %i.bb, 114
  %i.cv = icmp eq i8 %i.bv, 99
  %or.cond7 = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond7, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(57) %scevgep.i34, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.o, i8 0, i64 60, i1 false)
  store i8 1, ptr %4, align 8, !tbaa !37
  store i8 0, ptr %i.p, align 4, !tbaa !48
  %i.cw = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.q, ptr noundef nonnull @.str, ptr noundef nonnull %scevgep.i34, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x) #18 ; 0 uses
  %i.cx = load ptr, ptr %i.y, align 8, !tbaa !40  ; 8 uses
  %i.cy = load ptr, ptr %i.z, align 8, !tbaa !41
  %.not.i35 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i35, label %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37, label %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37.thread

_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37.thread: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %i.cx, ptr noundef nonnull align 8 dereferenceable(124) %4, i64 61, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.da = load <2 x ptr>, ptr %i.o, align 8, !tbaa !42
  store <2 x ptr> %i.da, ptr %i.cz, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dc = load ptr, ptr %i.aa, align 8, !tbaa !43
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.de = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !44
  store <2 x ptr> %i.de, ptr %i.dd, align 8, !tbaa !44
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !45
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.ad, i64 12, i1 false)
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  store ptr %i.dj, ptr %i.y, align 8, !tbaa !40
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39

_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37: ; preds = %bb.r
  call void @_ZNSt6vectorIN8TestCase4TestESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.cx, ptr noundef nonnull align 8 dereferenceable(124) %4)
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i38 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i38, label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37
  %i.dk = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %.pre to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.dn) #21
  br label %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39

_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39:             ; preds = %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37.thread, %bb.s, %_ZNSt6vectorIN8TestCase4TestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit37
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %.not.i.i.i1.i40 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i1.i40, label %_ZN8TestCase4TestD2Ev.exit41, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39
  %i.dp = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.ds) #21
  br label %_ZN8TestCase4TestD2Ev.exit41

_ZN8TestCase4TestD2Ev.exit41:                     ; preds = %_ZNSt6vectorIPjSaIS0_EED2Ev.exit.i39, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit32, %bb.q, %_ZN8TestCase4TestD2Ev.exit41, %_ZN8TestCase4TestD2Ev.exit, %_ZL8copyNameRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  %5 = icmp ult ptr %i.ar, %i.i
  br i1 %5, label %bb.d, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.u, %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %._crit_edge ]
  call void @_ZN6FileIOD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(24) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN6FileIO11openForReadEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK6FileIO11getFileSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6FileIO4readEPvm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6FileIOD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8TestCase10resetTimesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 112
  store i32 0, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 116
  store i32 0, ptr %i.f, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 120
  store i32 0, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c
  br i1 %i.i, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8TestCase7doTestsEP9dtNavMeshP14dtNavMeshQuery(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 9 uses
  %i.b = alloca [768 x float], align 16           ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 7 uses
  %3 = alloca %class.dtQueryFilter, align 4       ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = alloca [3 x float], align 4              ; 3 uses
  %i.j = alloca [3 x float], align 8              ; 8 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca float, align 4                    ; 5 uses
  %i.m = icmp ne ptr %1, null
  %i.n = icmp ne ptr %2, null
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 3 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZN8TestCase10resetTimesEv.exit.thread, label %.lr.ph.i

_ZN8TestCase10resetTimesEv.exit.thread:           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN8TestCase7doTestsEP9dtNavMeshP14dtNavMeshQuery.polyPickExt, i64 12, i1 false)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.06.09.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.o, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 112
  store i32 0, ptr %i.s, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 116
  store i32 0, ptr %i.t, align 4, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 120
  store i32 0, ptr %i.u, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 128 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.q
  br i1 %i.w, label %.lr.ph, label %.lr.ph.i

.lr.ph:                                           ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN8TestCase7doTestsEP9dtNavMeshP14dtNavMeshQuery.polyPickExt, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.aj, %_ZN8TestCase10resetTimesEv.exit.thread
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !49  ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %._crit_edge103, label %.lr.ph102

bb.c:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.090.097 = phi ptr [ %i.o, %.lr.ph ], [ %i.fy, %bb.aj ] ; 19 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 88 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 96 ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %.not.i.i = icmp eq ptr %i.ag, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIPjSaIS0_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !53
  br label %_ZNSt6vectorIPjSaIS0_EE5clearEv.exit

_ZNSt6vectorIPjSaIS0_EE5clearEv.exit:             ; preds = %bb.c, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 64 ; 8 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 72 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54
  %.not.i.i79 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i79, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPjSaIS0_EE5clearEv.exit
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZNSt6vectorIPjSaIS0_EE5clearEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN13dtQueryFilterC1Ev(ptr noundef nonnull align 4 dereferenceable(260) %3) #18
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 56
  %i.am = load <2 x i16>, ptr %i.al, align 8, !tbaa !70
  store <2 x i16> %i.am, ptr %i.x, align 4, !tbaa !70
  %i.an = call noundef i64 @_Z11getPerfTimev() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 4 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 28
  %i.aq = call noundef i32 @_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPf(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ap) #18 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 40
  %i.at = call noundef i32 @_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPf(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.as) #18 ; 0 uses
  %i.au = call noundef i64 @_Z11getPerfTimev() #18
  %i.av = sub nsw i64 %i.au, %i.an
  %i.aw = call noundef i32 @_Z15getPerfTimeUsecl(i64 noundef %i.av) #18
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 112 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !50
  %i.az = add nsw i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !50
  %i.ba = load i32, ptr %i.d, align 4, !tbaa !55
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = load i32, ptr %i.e, align 4
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond3 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.be = load i8, ptr %.sroa.090.097, align 8, !tbaa !37
  switch i8 %i.be, label %bb.aj [
    i8 0, label %bb.g
    i8 1, label %bb.t
  ]

bb.g:                                             ; preds = %bb.f
  %i.bf = call noundef i64 @_Z11getPerfTimev() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !55
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !55
  %i.bi = call noundef i32 @_ZNK14dtNavMeshQuery8findPathEjjPKfS1_PK13dtQueryFilterPjPii(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ar, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, i32 noundef 256) #18 ; 0 uses
  %i.bj = call noundef i64 @_Z11getPerfTimev() #18
  %i.bk = sub nsw i64 %i.bj, %i.bf
  %i.bl = call noundef i32 @_Z15getPerfTimeUsecl(i64 noundef %i.bk) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.090.097, i64 116 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51
  %i.bo = add nsw i32 %i.bn, %i.bl
end_hunk_0
