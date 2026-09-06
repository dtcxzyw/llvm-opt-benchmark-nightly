Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/PartitionedMesh?download=true
inline.NumInlined: 248
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<IndexedBounds, std::allocator<IndexedBounds>>::_Vector_impl" }
%"struct.std::_Vector_base<IndexedBounds, std::allocator<IndexedBounds>>::_Vector_impl" = type { %"struct.std::_Vector_base<IndexedBounds, std::allocator<IndexedBounds>>::_Vector_impl_data" }
%"struct.std::_Vector_base<IndexedBounds, std::allocator<IndexedBounds>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorI13IndexedBoundsSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN15PartitionedMesh13PartitionMeshEPKfPKiii(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EE6resizeEm.exit

_ZNSt6vectorI13IndexedBoundsSaIS0_EE6resizeEm.exit: ; preds = %bb.a
  %i.d = sext i32 %3 to i64
  call void @_ZNSt6vectorI13IndexedBoundsSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.d)
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EE6resizeEm.exit
  %i.f = load ptr, ptr %5, align 8, !tbaa !15
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %bb.a, %_ZNSt6vectorI13IndexedBoundsSaIS0_EE6resizeEm.exit
  %i.g = sitofp i32 %3 to float
  %i.h = sitofp i32 %4 to float
  %i.i = fdiv float %i.g, %i.h
  %i.j = call float @llvm.ceil.f32(float %i.i)
  %i.k = fptosi float %i.j to i32
  %i.l = shl nsw i32 %i.k, 2                      ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24                  ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.m
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.v = sub nuw nsw i64 %i.m, %i.t
  call void @_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v)
  br label %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.w = icmp ugt i64 %i.t, %i.m
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.o, %i.x
  br i1 %.not.i.i47, label %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.x, ptr %i.n, align 8, !tbaa !18
  br label %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = mul nsw i32 %3, 3
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !23  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, %i.aa
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit
  %i.aj = sub nuw nsw i64 %i.aa, %i.ah
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.aj)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN15PartitionedMesh4NodeESaIS1_EE6resizeEm.exit
  %i.ak = icmp ugt i64 %i.ah, %i.aa
  br i1 %i.ak, label %bb.h, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aa ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.ac, %i.al
  br i1 %.not.i.i48, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !15    ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds i8, ptr null, i64 %i.aq ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.at, align 8, !tbaa !26
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.au = icmp ugt i64 %i.aq, 9223372036854775800
  br i1 %i.au, label %bb.k, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i, !prof !27

bb.k:                                             ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i: ; preds = %bb.j
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #12 ; 7 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !26
  %7 = icmp samesign ugt i64 %i.aq, 20
  br i1 %7, label %bb.l, label %bb.m, !prof !28

bb.l:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

bb.m:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i
  %i.az = icmp eq i64 %i.aq, 20
  br i1 %i.az, label %bb.n, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.av, ptr noundef nonnull align 4 dereferenceable(20) %i.an, i64 20, i1 false), !tbaa.struct !30
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit: ; preds = %.thread, %bb.l, %bb.m, %bb.n
  %i.ba = phi ptr [ %i.ax, %bb.l ], [ %i.ax, %bb.m ], [ %i.ax, %bb.n ], [ %i.as, %.thread ] ; 2 uses
  %i.bb = phi ptr [ %i.aw, %bb.l ], [ %i.aw, %bb.m ], [ %i.aw, %bb.n ], [ %i.ar, %.thread ]
  %i.bc = phi ptr [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.av, %bb.n ], [ null, %.thread ] ; 3 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !25
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !23
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %6, i32 noundef 0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef %i.bd, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.be, ptr noundef %2)
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit:    ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit, %bb.o
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !48
  %i.bl = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %._crit_edge78, label %.lr.ph77

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.bp = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !40
  %i.bs = load i32, ptr %i.bo, align 4, !tbaa !24
  %i.bt = mul nsw i32 %i.bs, 3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !42 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  store float %i.bw, ptr %i.bx, align 4, !tbaa !42
  store float %i.bw, ptr %i.bp, align 4, !tbaa !42
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !42 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 3 uses
  store float %i.bz, ptr %i.ca, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 3 uses
  store float %i.bz, ptr %i.cb, align 4, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ce = mul nsw i32 %i.cd, 3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !42 ; 4 uses
  %i.ci = fcmp olt float %i.bw, %i.ch
  %.sroa.speculated67 = select i1 %i.ci, float %i.bw, float %i.ch ; 3 uses
  store float %.sroa.speculated67, ptr %i.bp, align 4, !tbaa !42
  %i.cj = fcmp olt float %i.ch, %i.bw
  %.sroa.speculated64 = select i1 %i.cj, float %i.bw, float %i.ch ; 3 uses
  store float %.sroa.speculated64, ptr %i.bx, align 4, !tbaa !42
  %i.ck = getelementptr i8, ptr %i.cg, i64 8
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !42 ; 4 uses
  %i.cm = fcmp olt float %i.bz, %i.cl
  %.sroa.speculated61 = select i1 %i.cm, float %i.bz, float %i.cl ; 3 uses
  store float %.sroa.speculated61, ptr %i.cb, align 4, !tbaa !42
  %i.cn = fcmp olt float %i.cl, %i.bz
  %.sroa.speculated = select i1 %i.cn, float %i.bz, float %i.cl ; 3 uses
  store float %.sroa.speculated, ptr %i.ca, align 4, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !24
  %i.cq = mul nsw i32 %i.cp, 3
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !42 ; 4 uses
  %i.cu = fcmp olt float %.sroa.speculated67, %i.ct
  %.sroa.speculated67.1 = select i1 %i.cu, float %.sroa.speculated67, float %i.ct
  store float %.sroa.speculated67.1, ptr %i.bp, align 4, !tbaa !42
  %i.cv = fcmp olt float %i.ct, %.sroa.speculated64
  %.sroa.speculated64.1 = select i1 %i.cv, float %.sroa.speculated64, float %i.ct
  store float %.sroa.speculated64.1, ptr %i.bx, align 4, !tbaa !42
  %i.cw = getelementptr i8, ptr %i.cs, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !42 ; 4 uses
  %i.cy = fcmp olt float %.sroa.speculated61, %i.cx
  %.sroa.speculated61.1 = select i1 %i.cy, float %.sroa.speculated61, float %i.cx
  store float %.sroa.speculated61.1, ptr %i.cb, align 4, !tbaa !42
  %i.cz = fcmp olt float %i.cx, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.cz, float %.sroa.speculated, float %i.cx
  store float %.sroa.speculated.1, ptr %i.ca, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !47

._crit_edge78:                                    ; preds = %bb.s, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.da = load ptr, ptr %5, align 8, !tbaa !15    ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit53, label %bb.q

bb.q:                                             ; preds = %._crit_edge78
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit53

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit53:  ; preds = %._crit_edge78, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

.lr.ph77:                                         ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit, %bb.s
  %i.dg = phi i32 [ %i.dn, %bb.s ], [ 0, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit ] ; 2 uses
  %.sroa.055.076 = phi ptr [ %i.do, %bb.s ], [ %i.bl, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !45
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph77
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !24
  %i.dm = call i32 @llvm.smax.i32(i32 %i.dg, i32 %i.dl) ; 2 uses
  store i32 %i.dm, ptr %i.bk, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph77, %bb.r
  %i.dn = phi i32 [ %i.dg, %.lr.ph77 ], [ %i.dm, %bb.r ]
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 24 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bm
  br i1 %i.dp, label %._crit_edge78, label %.lr.ph77
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %"class.std::vector", align 8      ; 9 uses
  %11 = alloca %"class.std::vector", align 8      ; 9 uses
  %i.a = sub nsw i32 %2, %1                       ; 4 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !24     ; 4 uses
  %.not = icmp slt i32 %i.b, %6
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [24 x i8], ptr %5, i64 %i.c ; 9 uses
  %i.e = add nsw i32 %i.b, 1
  store i32 %i.e, ptr %4, align 4, !tbaa !24
  %.not71 = icmp sgt i32 %i.a, %3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 11 uses
  %.not.i.i.i.i73 = icmp ne ptr %i.g, %i.h
  tail call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.l = icmp ugt i64 %i.k, 9223372036854775800   ; 2 uses
  br i1 %.not71, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.d, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #12 ; 7 uses
  %12 = icmp samesign ugt i64 %i.k, 20
  br i1 %12, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i
  %i.n = icmp eq i64 %i.k, 20
  br i1 %i.n, label %bb.g, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !30
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.o = sext i32 %1 to i64                       ; 4 uses
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %i.o
  %i.q = load <4 x float>, ptr %i.p, align 4, !tbaa !42 ; 5 uses
  store <4 x float> %i.q, ptr %i.d, align 4, !tbaa !42
  %.05.i = add nsw i32 %1, 1
  %i.r = icmp slt i32 %.05.i, %2
  br i1 %i.r, label %.lr.ph.preheader.i, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit

.lr.ph.preheader.i:                               ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit
  %i.s = add nsw i64 %i.o, 1                      ; 2 uses
  %i.t = add i32 %2, -2
  %i.u = sub i32 %1, %2
  %i.v = and i32 %i.u, 1
  %lcmp.mod.not.not = icmp eq i32 %i.v, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.w = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %i.s
  %i.x = load <4 x float>, ptr %i.w, align 4, !tbaa !42 ; 3 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = fcmp olt <4 x float> %i.y, %i.z
  %i.ab = select <4 x i1> %i.aa, <4 x float> %i.q, <4 x float> %i.x ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.o, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa158.unr = phi <4 x float> [ poison, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.s, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi <4 x float> [ %i.q, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.prol ]
  %i.ac = icmp eq i32 %i.t, %1
  br i1 %i.ac, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ad = phi <4 x float> [ %i.aq, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.af = load <4 x float>, ptr %i.ae, align 4, !tbaa !42 ; 3 uses
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ah = shufflevector <4 x float> %i.af, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = fcmp olt <4 x float> %i.ag, %i.ah
  %i.aj = select <4 x i1> %i.ai, <4 x float> %i.ad, <4 x float> %i.af ; 3 uses
  %i.ak = getelementptr [20 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 20
  %i.am = load <4 x float>, ptr %i.al, align 4, !tbaa !42 ; 3 uses
  %i.an = shufflevector <4 x float> %i.aj, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = fcmp olt <4 x float> %i.an, %i.ao
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.aj, <4 x float> %i.am ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %2, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit.loopexit, label %.lr.ph.i, !llvm.loop !50

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa158 = phi <4 x float> [ %.lcssa158.unr, %.lr.ph.i.prol.loopexit ], [ %i.aq, %.lr.ph.i ]
  store <4 x float> %.lcssa158, ptr %i.d, align 4, !tbaa !42
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit:    ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit.loopexit, %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.k) #13
  %i.ar = load i32, ptr %7, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %i.a, ptr %i.at, align 4, !tbaa !52
  %i.au = icmp slt i32 %1, %2
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !15
  %wide.trip.count = sext i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [20 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = mul nsw i32 %i.ay, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ba ; 3 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !24    ; 2 uses
  %i.bd = mul nsw i32 %i.bc, 3
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %8, i64 %i.be ; 3 uses
  %i.bg = add nsw i32 %i.bc, 1
  store i32 %i.bg, ptr %7, align 4, !tbaa !24
  %i.bh = load i32, ptr %i.bb, align 4, !tbaa !24
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !51

bb.i:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.j, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i75, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i75: ; preds = %bb.i
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #12 ; 7 uses
  %13 = icmp samesign ugt i64 %i.k, 20
  br i1 %13, label %bb.k, label %bb.l, !prof !28

bb.k:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76

bb.l:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i75
  %i.bp = icmp eq i64 %i.k, 20
  br i1 %i.bp, label %bb.m, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bo, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !30
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76: ; preds = %bb.k, %bb.l, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = sext i32 %1 to i64                      ; 4 uses
  %i.bs = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load <4 x float>, ptr %i.bs, align 4, !tbaa !42 ; 5 uses
  store <4 x float> %i.bt, ptr %i.d, align 4, !tbaa !42
  %.05.i78 = add nsw i32 %1, 1
  %i.bu = icmp slt i32 %.05.i78, %2
  br i1 %i.bu, label %.lr.ph.preheader.i79, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88

.lr.ph.preheader.i79:                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76
  %i.bv = add nsw i64 %i.br, 1                    ; 2 uses
  %i.bw = add i32 %2, -2
  %i.bx = sub i32 %1, %2
  %i.by = and i32 %i.bx, 1
  %lcmp.mod160.not.not = icmp eq i32 %i.by, 0
  br i1 %lcmp.mod160.not.not, label %.lr.ph.i80.prol, label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.preheader.i79
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %i.bv
  %i.ca = load <4 x float>, ptr %i.bz, align 4, !tbaa !42 ; 3 uses
  %i.cb = shufflevector <4 x float> %i.bt, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = fcmp olt <4 x float> %i.cb, %i.cc
  %i.ce = select <4 x i1> %i.cd, <4 x float> %i.bt, <4 x float> %i.ca ; 2 uses
  %indvars.iv.next.i83.prol = add nsw i64 %i.br, 2
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.preheader.i79
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.preheader.i79 ], [ %i.ce, %.lr.ph.i80.prol ]
  %indvars.iv.i81.unr = phi i64 [ %i.bv, %.lr.ph.preheader.i79 ], [ %indvars.iv.next.i83.prol, %.lr.ph.i80.prol ]
  %.unr161 = phi <4 x float> [ %i.bt, %.lr.ph.preheader.i79 ], [ %i.ce, %.lr.ph.i80.prol ]
  %i.cf = icmp eq i32 %i.bw, %1
  br i1 %i.cf, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i83.1, %.lr.ph.i80 ], [ %indvars.iv.i81.unr, %.lr.ph.i80.prol.loopexit ] ; 3 uses
  %i.cg = phi <4 x float> [ %i.ct, %.lr.ph.i80 ], [ %.unr161, %.lr.ph.i80.prol.loopexit ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.ci = load <4 x float>, ptr %i.ch, align 4, !tbaa !42 ; 3 uses
  %i.cj = shufflevector <4 x float> %i.cg, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = fcmp olt <4 x float> %i.cj, %i.ck
  %i.cm = select <4 x i1> %i.cl, <4 x float> %i.cg, <4 x float> %i.ci ; 3 uses
  %i.cn = getelementptr [20 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.co = getelementptr i8, ptr %i.cn, i64 20
  %i.cp = load <4 x float>, ptr %i.co, align 4, !tbaa !42 ; 3 uses
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cs = fcmp olt <4 x float> %i.cq, %i.cr
  %i.ct = select <4 x i1> %i.cs, <4 x float> %i.cm, <4 x float> %i.cp ; 2 uses
  %indvars.iv.next.i83.1 = add nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %lftr.wideiv.i84.1 = trunc i64 %indvars.iv.next.i83.1 to i32
  %exitcond.not.i85.1 = icmp eq i32 %2, %lftr.wideiv.i84.1
  br i1 %exitcond.not.i85.1, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, label %.lr.ph.i80, !llvm.loop !50

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit: ; preds = %.lr.ph.i80, %.lr.ph.i80.prol.loopexit
  %.lcssa = phi <4 x float> [ %.lcssa.unr, %.lr.ph.i80.prol.loopexit ], [ %i.ct, %.lr.ph.i80 ]
  store <4 x float> %.lcssa, ptr %i.d, align 4, !tbaa !42
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88:  ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.k) #13
  %i.cu = load <2 x float>, ptr %i.bq, align 4, !tbaa !42
  %i.cv = load <2 x float>, ptr %i.d, align 4, !tbaa !42
  %i.cw = fsub <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !15
  %i.cy = getelementptr inbounds [20 x i8], ptr %i.cx, i64 %i.br
  %i.cz = sext i32 %i.a to i64
  %i.da = extractelement <2 x float> %i.cw, i64 0
  %i.db = extractelement <2 x float> %i.cw, i64 1
  %i.dc = fcmp oge float %i.da, %i.db
  %_ZN12_GLOBAL__N_111compareMinXEPKvS1_._ZN12_GLOBAL__N_111compareMinYEPKvS1_ = select i1 %i.dc, ptr @_ZN12_GLOBAL__N_111compareMinXEPKvS1_, ptr @_ZN12_GLOBAL__N_111compareMinYEPKvS1_
  tail call void @qsort(ptr noundef %i.cy, i64 noundef %i.cz, i64 noundef 20, ptr noundef nonnull %_ZN12_GLOBAL__N_111compareMinXEPKvS1_._ZN12_GLOBAL__N_111compareMinYEPKvS1_) #10
  %i.dd = sdiv i32 %i.a, 2
  %i.de = add nsw i32 %i.dd, %1                   ; 4 uses
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i89 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i89, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88
  %i.dk = icmp ugt i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.o, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91: ; preds = %bb.n
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #12 ; 5 uses
  store ptr %i.dl, ptr %10, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !26
  %14 = icmp samesign ugt i64 %i.dj, 20
  br i1 %14, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.dg, i64 %i.dj, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91
  %i.dp = icmp eq i64 %i.dj, 20
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dl, ptr noundef nonnull align 4 dereferenceable(20) %i.dg, i64 20, i1 false), !tbaa.struct !30
  br label %bb.s

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dr = getelementptr inbounds i8, ptr null, i64 %i.dj ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %10, align 8
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !26
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %i.de, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %i.de, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dj) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94:  ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92, %bb.s
  %i.dt = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i95 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94
  %i.dy = icmp ugt i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.u, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97: ; preds = %bb.t
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #12 ; 5 uses
  store ptr %i.dz, ptr %11, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !26
  %15 = icmp samesign ugt i64 %i.dx, 20
  br i1 %15, label %bb.v, label %bb.w, !prof !28

bb.v:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr align 4 %i.du, i64 %i.dx, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97
  %i.ed = icmp eq i64 %i.dx, 20
  br i1 %i.ed, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dz, ptr noundef nonnull align 4 dereferenceable(20) %i.du, i64 20, i1 false), !tbaa.struct !30
  br label %bb.y

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ef = getelementptr inbounds i8, ptr null, i64 %i.dx ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %11, align 8
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !26
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %11, i32 noundef %i.de, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %11, i32 noundef %i.de, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.dx) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98, %bb.y
  %i.eh = load i32, ptr %4, align 4, !tbaa !24
  %i.ei = sub nsw i32 %i.b, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK15PartitionedMesh23GetNodesOverlappingRectEPfS0_RSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %storemerge1423 = phi i32 [ 0, %.lr.ph ], [ %storemerge, %bb.l ] ; 5 uses
  %i.h = sext i32 %storemerge1423 to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.val15 = load float, ptr %i.l, align 4
  %.val16 = load float, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr i8, ptr %i.j, i64 12
  %.val17 = load float, ptr %i.m, align 4
  %i.n = load float, ptr %1, align 4, !tbaa !42
  %i.o = fcmp ugt float %i.n, %.val16
  br i1 %i.o, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load float, ptr %i.j, align 4
  %i.p = load float, ptr %2, align 4, !tbaa !42
  %i.q = fcmp ult float %i.p, %.val
  br i1 %i.q, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load float, ptr %i.d, align 4, !tbaa !42
  %i.s = fcmp ugt float %i.r, %.val17
  br i1 %i.s, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit

_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = icmp sgt i32 %i.u, -1
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit: ; preds = %bb.d
  %i.w = load float, ptr %i.e, align 4, !tbaa !42
  %i.x = fcmp oge float %i.w, %.val15             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = icmp sgt i32 %i.z, -1                   ; 2 uses
  %or.cond = and i1 %i.x, %i.aa
  br i1 %or.cond, label %bb.e, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !22  ; 4 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %storemerge1423, ptr %i.ab, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %3, align 8, !tbaa !23    ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #12 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i32 %storemerge1423, ptr %i.aq, align 4, !tbaa !24
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ap, ptr %3, align 8, !tbaa !23
  store ptr %i.as, ptr %i.f, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit
  %i.au = phi i1 [ %i.v, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.aa, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %i.av = phi ptr [ %i.t, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.y, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %i.aw = phi i1 [ false, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.x, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %or.cond3 = or i1 %i.au, %i.aw
  br i1 %or.cond3, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread, label %bb.k

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.ax = add nsw i32 %storemerge1423, 1
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !45
  %i.az = sub nsw i32 %storemerge1423, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread
  %storemerge = phi i32 [ %i.az, %bb.k ], [ %i.ax, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread ] ; 2 uses
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !38
  %i.bb = icmp slt i32 %storemerge, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !53
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK15PartitionedMesh26GetNodesOverlappingSegmentEPfS0_RSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.q, %bb.a
  ret void

end_hunk_0
