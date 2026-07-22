inline.NumInlined: 482
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::__detail::_Scratch_list" = type { %"struct.std::__detail::_List_node_base" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.timeval = type { i64, i64 }

$_ZNSt7__cxx114listIiSaIiEE4sortEv = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@measure_type = dso_local local_unnamed_addr global i32 0, align 4
@meas_count = dso_local local_unnamed_addr global i32 0, align 4
@meas_sum_average = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@_ZZN4Mesh17partition_measureEvE13offtile_ratio = internal unnamed_addr global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Average surface area to volume ratio  \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"with duplicates\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"without duplicates\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Partition Quality Avg C value     \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Partition Quality Avg C* value     \00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"The MPI surface area to volume ratio \00", align 1
@initial_order = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Initial order is naive.\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Initial order is Hilbert sort.\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Initial order is Hilbert partitionr.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Initial order is Z order.\00", align 1
@cycle_reorder = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"   No cycle reorder.\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"   Cycle reorder is Hilbert sort.\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"   Cycle reorder is Hilbert partition.\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"   Cycle reorder is Z order.\00", align 1
@localStencil = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@str = private unnamed_addr constant [21 x i8] c"No Partition Measure\00", align 1
@str.1 = private unnamed_addr constant [24 x i8] c"   Local Stencil is on.\00", align 1
@switch.table._ZN4Mesh20print_partition_typeEv = private unnamed_addr constant [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 8
@switch.table._ZN4Mesh20print_partition_typeEv.2 = private unnamed_addr constant [4 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh17partition_measureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %6 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %7 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %8 = alloca %"class.std::__cxx11::list", align 8 ; 27 uses
  %i.a = load i32, ptr @measure_type, align 4, !tbaa !4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.eg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = add i64 %i.c, 127
  %i.e = lshr i64 %i.d, 7
  %i.f = trunc i64 %i.e to i32                    ; 9 uses
  switch i32 %i.a, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader529
    i32 3, label %.preheader531
    i32 4, label %.preheader533
  ]

.preheader533:                                    ; preds = %bb.b
  %.not566 = icmp eq i32 %i.f, 0
  br i1 %.not566, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader533
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.by

.preheader531:                                    ; preds = %bb.b
  %.not567 = icmp eq i32 %i.f, 0
  br i1 %.not567, label %.loopexit, label %.lr.ph554

.lr.ph554:                                        ; preds = %.preheader531
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.at

.preheader529:                                    ; preds = %bb.b
  %.not568 = icmp eq i32 %i.f, 0
  br i1 %.not568, label %.loopexit, label %.lr.ph559

.lr.ph559:                                        ; preds = %.preheader529
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.o

.preheader:                                       ; preds = %bb.b
  %.not569 = icmp eq i32 %i.f, 0
  br i1 %.not569, label %.loopexit, label %.lr.ph565

.lr.ph565:                                        ; preds = %.preheader
  %_ZZN4Mesh17partition_measureEvE13offtile_ratio.promoted = load double, ptr @_ZZN4Mesh17partition_measureEvE13offtile_ratio, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1384
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph565, %bb.d
  %indvars.iv593 = phi i32 [ 128, %.lr.ph565 ], [ %indvars.iv.next594, %bb.d ] ; 2 uses
  %.0564 = phi i64 [ 0, %.lr.ph565 ], [ %9, %bb.d ] ; 2 uses
  %.0264563 = phi i32 [ 0, %.lr.ph565 ], [ %i.as, %bb.d ] ; 2 uses
  %i.aq = phi double [ %_ZZN4Mesh17partition_measureEvE13offtile_ratio.promoted, %.lr.ph565 ], [ %i.aw, %bb.d ]
  %i.ar = shl i32 %.0264563, 7                    ; 8 uses
  %i.as = add nuw i32 %.0264563, 1                ; 3 uses
  %i.at = shl i32 %i.as, 7                        ; 8 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.n
  %9 = add nuw nsw i64 %.0564, 128
  %i.au = sitofp i32 %.8 to double
  %i.av = fmul nnan double %i.au, 7.812500e-03
  %i.aw = fadd double %i.av, %i.aq                ; 2 uses
  %indvars.iv.next594 = add i32 %indvars.iv593, 128
  %exitcond597.not = icmp eq i32 %i.as, %i.f
  br i1 %exitcond597.not, label %..loopexit_crit_edge, label %bb.c, !llvm.loop !44

bb.e:                                             ; preds = %bb.c, %bb.n
  %indvars.iv590.a = phi i64 [ %.0564, %bb.c ], [ %indvars.iv.next591.a, %bb.n ] ; 7 uses
  %.0265561 = phi i32 [ 0, %bb.c ], [ %.8, %bb.n ] ; 2 uses
  %.not361 = icmp ugt i64 %i.c, %indvars.iv590.a
  br i1 %.not361, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv590.a
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4  ; 3 uses
  %i.ba = icmp slt i32 %i.az, %i.ar
  %.not362 = icmp sge i32 %i.az, %i.at
  %or.cond.not = or i1 %i.ba, %.not362
  %i.bb = zext i1 %or.cond.not to i32
  %.1266 = add nsw i32 %.0265561, %i.bb           ; 2 uses
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !47 ; 5 uses
  %i.bd = sext i32 %i.az to i64                   ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv590.a
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4  ; 4 uses
  %i.bi = icmp sgt i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bd
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4  ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.ar
  %.not363 = icmp sge i32 %i.bl, %i.at
  %or.cond370.not = or i1 %i.bm, %.not363
  %i.bn = zext i1 %or.cond370.not to i32
  %spec.select = add nsw i32 %.1266, %i.bn
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %.1266, %bb.f ], [ %spec.select, %bb.g ]
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv590.a
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %i.br = icmp slt i32 %i.bq, %i.ar
  %.not364 = icmp sge i32 %i.bq, %i.at
  %or.cond371.not = or i1 %i.br, %.not364
  %i.bs = zext i1 %or.cond371.not to i32
  %.3 = add nsw i32 %.2, %i.bs                    ; 2 uses
  %i.bt = sext i32 %i.bq to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = icmp sgt i32 %i.bv, %i.bh
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bt
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %i.ar
  %.not365 = icmp sge i32 %i.bz, %i.at
  %or.cond372.not = or i1 %i.ca, %.not365
  %i.cb = zext i1 %or.cond372.not to i32
  %spec.select401 = add nsw i32 %.3, %i.cb
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4 = phi i32 [ %.3, %bb.h ], [ %spec.select401, %bb.i ]
  %i.cc = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv590.a
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 3 uses
  %i.cf = icmp slt i32 %i.ce, %i.ar
  %.not366 = icmp sge i32 %i.ce, %i.at
  %or.cond373.not = or i1 %i.cf, %.not366
  %i.cg = zext i1 %or.cond373.not to i32
  %.5 = add nsw i32 %.4, %i.cg                    ; 2 uses
  %i.ch = sext i32 %i.ce to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = icmp sgt i32 %i.cj, %i.bh
  br i1 %i.ck, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.ch
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ar
  %.not367 = icmp sge i32 %i.cm, %i.at
  %or.cond374.not = or i1 %i.cn, %.not367
  %i.co = zext i1 %or.cond374.not to i32
  %spec.select402 = add nsw i32 %.5, %i.co
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6 = phi i32 [ %.5, %bb.j ], [ %spec.select402, %bb.k ]
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv590.a
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 3 uses
  %i.cs = icmp slt i32 %i.cr, %i.ar
  %.not368 = icmp sge i32 %i.cr, %i.at
  %or.cond375.not = or i1 %i.cs, %.not368
  %i.ct = zext i1 %or.cond375.not to i32
  %.7 = add nsw i32 %.6, %i.ct                    ; 2 uses
  %i.cu = sext i32 %i.cr to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = icmp sgt i32 %i.cw, %i.bh
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cu
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.ar
  %.not369 = icmp sge i32 %i.cz, %i.at
  %or.cond376.not = or i1 %i.da, %.not369
  %i.db = zext i1 %or.cond376.not to i32
  %spec.select403 = add nsw i32 %.7, %i.db
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.e
  %.8 = phi i32 [ %.0265561, %bb.e ], [ %.7, %bb.l ], [ %spec.select403, %bb.m ] ; 2 uses
  %indvars.iv.next591.a = add nuw nsw i64 %indvars.iv590.a, 1 ; 2 uses
  %lftr.wideiv595 = trunc i64 %indvars.iv.next591.a to i32
  %exitcond596.not = icmp eq i32 %indvars.iv593, %lftr.wideiv595
  br i1 %exitcond596.not, label %bb.d, label %bb.e, !llvm.loop !51

bb.o:                                             ; preds = %.lr.ph559, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit
  %.0269558 = phi i32 [ 0, %.lr.ph559 ], [ %i.dg, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit ] ; 2 uses
  %.0271557 = phi i32 [ 0, %.lr.ph559 ], [ %i.dd, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %5, ptr %i.ac, align 8, !tbaa !52
  store ptr %5, ptr %5, align 8, !tbaa !55
  store i64 0, ptr %i.ad, align 8, !tbaa !56
  %i.dc = shl i32 %.0271557, 7                    ; 8 uses
  %i.dd = add nuw i32 %.0271557, 1                ; 3 uses
  %i.de = shl i32 %i.dd, 7                        ; 8 uses
  %i.df = sext i32 %.0269558 to i64
  %i.dg = add i32 %.0269558, 128                  ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.am
  invoke void @_ZNSt7__cxx114listIiSaIiEE4sortEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.an unwind label %bb.ar

bb.q:                                             ; preds = %bb.o, %bb.am
  %indvars.iv584 = phi i64 [ %i.df, %bb.o ], [ %indvars.iv.next585, %bb.am ] ; 14 uses
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !8
  %.not349 = icmp ugt i64 %i.dh, %indvars.iv584
  br i1 %.not349, label %bb.r, label %bb.am

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv584 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4  ; 3 uses
  %i.dl = icmp sge i32 %i.dk, %i.dc
  %.not350 = icmp slt i32 %i.dk, %i.de
  %or.cond377 = and i1 %i.dl, %.not350
  br i1 %or.cond377, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit unwind label %bb.t ; 2 uses

_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit:    ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.dj, align 4, !tbaa !4
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %i.dp = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.ad, align 8, !tbaa !58
  %.pre622.a = load ptr, ptr %i.ae, align 8, !tbaa !46
  %.phi.trans.insert623 = getelementptr inbounds [4 x i8], ptr %.pre622.a, i64 %indvars.iv584
  %.pre624 = load i32, ptr %.phi.trans.insert623, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.al, %bb.ai, %bb.ag, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.s
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.u:                                             ; preds = %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit, %bb.r
  %i.ds = phi i32 [ %.pre624, %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit ], [ %i.dk, %bb.r ]
  %i.dt = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.du = sext i32 %i.ds to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv584
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4
  %i.dz = icmp sgt i32 %i.dw, %i.dy
  br i1 %i.dz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ea = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.du ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %i.ed = icmp sge i32 %i.ec, %i.dc
  %.not351 = icmp slt i32 %i.ec, %i.de
  %or.cond378 = and i1 %i.ed, %.not351
  br i1 %or.cond378, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit404 unwind label %bb.t ; 2 uses

_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit404: ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i32, ptr %i.eb, align 4, !tbaa !4
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %i.eh = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.ad, align 8, !tbaa !58
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit404, %bb.v, %bb.u
  %i.ej = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv584 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 3 uses
  %i.em = icmp sge i32 %i.el, %i.dc
  %.not352 = icmp slt i32 %i.el, %i.de
  %or.cond379 = and i1 %i.em, %.not352
  br i1 %or.cond379, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.en = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405 unwind label %bb.t ; 2 uses

_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405: ; preds = %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i32, ptr %i.ek, align 4, !tbaa !4
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %i.eq = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.er = add i64 %i.eq, 1
  store i64 %i.er, ptr %i.ad, align 8, !tbaa !58
  %.pre625 = load ptr, ptr %i.ah, align 8, !tbaa !49
  %.phi.trans.insert626 = getelementptr inbounds [4 x i8], ptr %.pre625, i64 %indvars.iv584
  %.pre627 = load i32, ptr %.phi.trans.insert626, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405, %bb.x
  %i.es = phi i32 [ %.pre627, %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit405 ], [ %i.el, %bb.x ]
  %i.et = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.eu = sext i32 %i.es to i64                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.et, i64 %indvars.iv584
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.eu ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %i.fd = icmp sge i32 %i.fc, %i.dc
  %.not353 = icmp slt i32 %i.fc, %i.de
  %or.cond380 = and i1 %i.fd, %.not353
  br i1 %or.cond380, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit406 unwind label %bb.t ; 2 uses

_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit406: ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i32, ptr %i.fb, align 4, !tbaa !4
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %i.fh = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.ad, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit406, %bb.aa, %bb.z
  %i.fj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %indvars.iv584 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 3 uses
  %i.fm = icmp sge i32 %i.fl, %i.dc
  %.not354 = icmp slt i32 %i.fl, %i.de
  %or.cond381 = and i1 %i.fm, %.not354
  br i1 %or.cond381, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407 unwind label %bb.t ; 2 uses

_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407: ; preds = %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i32, ptr %i.fk, align 4, !tbaa !4
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !4
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %i.fq = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.ad, align 8, !tbaa !58
  %.pre628 = load ptr, ptr %i.ai, align 8, !tbaa !50
  %.phi.trans.insert629 = getelementptr inbounds [4 x i8], ptr %.pre628, i64 %indvars.iv584
  %.pre630 = load i32, ptr %.phi.trans.insert629, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407, %bb.ac
  %i.fs = phi i32 [ %.pre630, %_ZNSt7__cxx114listIiSaIiEE9push_backERKi.exit407 ], [ %i.fl, %bb.ac ]
  %i.ft = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.fu = sext i32 %i.fs to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv584
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.fz = icmp sgt i32 %i.fw, %i.fy
  br i1 %i.fz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ga = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.fu ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4  ; 2 uses
  %i.gd = icmp sge i32 %i.gc, %i.dc
  %.not355 = icmp slt i32 %i.gc, %i.de
  %or.cond382 = and i1 %i.gd, %.not355
  br i1 %or.cond382, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
end_hunk_0
