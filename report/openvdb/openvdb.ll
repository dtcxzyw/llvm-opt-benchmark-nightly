Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/openvdb?download=true
inline.NumInlined: 112558
inline.NumDeleted: 36881
loop-unroll.NumCompletelyUnrolled: 380
loop-unroll.NumRuntimeUnrolled: 183
loop-unroll.NumUnrolled: 1352
begin_hunk_0_@_ZN7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE4clipERKNS0_4math9CoordBBoxERKS4_:bb.a
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1156 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.cp, -1
  br i1 %.not.5.i.i, label %bb.h, label %._crit_edge88.split.thread

bb.h:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !1156 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.cr, -1
  br i1 %.not.6.i.i, label %bb.i, label %._crit_edge88.split.thread

bb.i:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !1156 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.ct, -1
  br i1 %.not.7.i.i, label %._crit_edge93, label %._crit_edge88.split.thread

._crit_edge88.split.thread:                       ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, %.preheader77.lr.ph, %._crit_edge88.split, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.cu = phi i64 [ %.pre102, %._crit_edge88.split ], [ %i.ch, %bb.c ], [ %i.cj, %bb.d ], [ %i.cl, %bb.e ], [ %i.cn, %bb.f ], [ %i.cp, %bb.g ], [ %i.cr, %bb.h ], [ %i.ct, %bb.i ], [ 0, %.preheader77.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %.0712.lcssa.i.i = phi i32 [ 0, %._crit_edge88.split ], [ 64, %bb.c ], [ 128, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 320, %bb.g ], [ 384, %bb.h ], [ 448, %bb.i ], [ 0, %.preheader77.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %i.cv = xor i64 %i.cu, -1
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = or disjoint i32 %.0712.lcssa.i.i, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

._crit_edge93:                                    ; preds = %.lr.ph.6, %bb.m, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.j:                                             ; preds = %._crit_edge88.split.thread, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit
  %.sroa.0.091 = phi i32 [ %i.cy, %._crit_edge88.split.thread ], [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ] ; 4 uses
  %i.db = load atomic i32, ptr %i.cz seq_cst, align 8
  %.not.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i, label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE10loadValuesEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE10loadValuesEv.exit.i.i

_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE10loadValuesEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.dc = load ptr, ptr %0, align 8, !tbaa !1126  ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE10loadValuesEv.exit.i.i
  %i.dd = zext i32 %.sroa.0.091 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i32, ptr %2, align 4, !tbaa !1131
  store i32 %i.df, ptr %i.de, align 4, !tbaa !1131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK7openvdb5v13_04tree10LeafBufferINS0_10PointIndexIjLj0EEELj3EE10loadValuesEv.exit.i.i
  %i.dg = and i32 %.sroa.0.091, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = xor i64 %i.di, -1
  %i.dk = lshr i32 %.sroa.0.091, 6
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1156
  %i.do = and i64 %i.dn, %i.dj
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !1156
  %i.dp = add i32 %.sroa.0.091, 1                 ; 4 uses
  %i.dq = lshr i32 %i.dp, 6                       ; 3 uses
  %i.dr = icmp ugt i32 %i.dp, 511
  br i1 %i.dr, label %._crit_edge93, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = and i32 %i.dp, 63
  %i.dt = zext nneg i32 %i.dq to i64              ; 8 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !1156 ; 2 uses
  %i.dw = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dv, %i.dx
  %.not.not.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = xor i64 %i.dv, -1
  %i.ea = shl nsw i64 -1, %i.dw
  %i.eb = and i64 %i.ea, %i.dz                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.o
  %exitcond.not.i.i.i145 = icmp eq i32 %i.dq, 7
  br i1 %exitcond.not.i.i.i145, label %._crit_edge93, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %._crit_edge93, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %i.dt, 2 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.1
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.1 = icmp eq i64 %i.ed, -1
  br i1 %.not.i.i.i25.1, label %.lr.ph.i.i.i.1, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge93, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %i.dt, 3 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.2
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.2 = icmp eq i64 %i.ef, -1
  br i1 %.not.i.i.i25.2, label %.lr.ph.i.i.i.2, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge93, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %i.dt, 4 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.3
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.3 = icmp eq i64 %i.eh, -1
  br i1 %.not.i.i.i25.3, label %.lr.ph.i.i.i.3, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.3
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge93, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i.3
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %i.dt, 5 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.4
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.4 = icmp eq i64 %i.ej, -1
  br i1 %.not.i.i.i25.4, label %.lr.ph.i.i.i.4, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.4
  %exitcond.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.4, label %._crit_edge93, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i.4
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %i.dt, 6 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.5
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.5 = icmp eq i64 %i.el, -1
  br i1 %.not.i.i.i25.5, label %.lr.ph.i.i.i.5, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.5
  %exitcond.not.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.5, label %._crit_edge93, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i.5
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %i.dt, 7 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.6
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25.6 = icmp eq i64 %i.en, -1
  br i1 %.not.i.i.i25.6, label %._crit_edge93, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i = add nuw nsw i64 %i.dt, 1 ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !1156 ; 2 uses
  %.not.i.i.i25 = icmp eq i64 %i.ep, -1
  br i1 %.not.i.i.i25, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !124

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph.5 ], [ %indvars.iv.next.i.i.i.6, %.lr.ph.6 ]
  %.lcssa = phi i64 [ %i.ep, %.lr.ph ], [ %i.ed, %.lr.ph.1 ], [ %i.ef, %.lr.ph.2 ], [ %i.eh, %.lr.ph.3 ], [ %i.ej, %.lr.ph.4 ], [ %i.el, %.lr.ph.5 ], [ %i.en, %.lr.ph.6 ]
  %i.eq = xor i64 %.lcssa, -1
  %i.er = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.o
  %.016.lcssa.i.i.i = phi i32 [ %i.dq, %bb.o ], [ %i.er, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.eb, %bb.o ], [ %i.eq, %.critedge.loopexit.i.i.i ]
  %i.es = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.et = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit: ; preds = %bb.n, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.ev, %.critedge.i.i.i ], [ %i.dp, %bb.n ] ; 2 uses
  %.not71 = icmp eq i32 %.118.i.i.i, 512
  br i1 %.not71, label %._crit_edge93, label %bb.j

bb.p:                                             ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22, %._crit_edge93
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6496 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !6444   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6445
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN7openvdb5v13_010PointIndexIjLj0EEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN7openvdb5v13_010PointIndexIjLj0EEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !6423
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !6496
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #33
  unreachable

_ZNKSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #32 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !6423
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -4
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20476)
  %i.af = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !1131, !alias.scope !20476, !noalias !20475
  %wide.load41 = load <4 x i32>, ptr %i.af, align 4, !tbaa !1131, !alias.scope !20476, !noalias !20475
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !1131, !alias.scope !20475, !noalias !20476
  store <4 x i32> %wide.load41, ptr %i.ag, align 4, !tbaa !1131, !alias.scope !20475, !noalias !20476
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !20473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader43

.lr.ph.i.i.i.preheader43:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader43, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20476)
  %i.ai = load i32, ptr %.0911.i.i.i, align 4, !tbaa !1131, !alias.scope !20476, !noalias !20475
  store i32 %i.ai, ptr %.012.i.i.i, align 4, !tbaa !1131, !alias.scope !20475, !noalias !20476
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !20474

_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !6445
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #35
  br label %_ZNSt12_Vector_baseIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !6444
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %1
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !6496
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.h, align 8, !tbaa !6445
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7openvdb5v13_010PointIndexIjLj0EEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7openvdb5v13_010PointIndexIjLj0EEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE11readBuffersERSiRKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tools::PointIndexLeafNode<openvdb::v13_0::PointIndex<unsigned int, 0>, 3>, 4>, 5>::ChildIter", align 8 ; 6 uses
  %5 = alloca %"struct.openvdb::v13_0::PointIndex", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20480)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i.i.i = phi ptr [ %i.a, %bb.a ], [ %i.i, %bb.f ] ; 5 uses
  %.0712.i.i.i = phi i32 [ 0, %bb.a ], [ %i.j, %bb.f ] ; 5 uses
  %i.b = load i64, ptr %.013.i.i.i, align 8, !tbaa !1156, !noalias !20480 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1156, !noalias !20480 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.1, label %bb.d, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit49

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1156, !noalias !20480 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.2, label %bb.e, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit46

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1156, !noalias !20480 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.3, label %bb.f, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.j = add nuw nsw i32 %.0712.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i32 %i.j, 512
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge, label %bb.b, !llvm.loop !40

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit: ; preds = %bb.e
  %i.k = or disjoint i32 %.0712.i.i.i, 3
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit46: ; preds = %bb.d
  %i.l = or disjoint i32 %.0712.i.i.i, 2
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit49: ; preds = %bb.c
  %i.m = or disjoint i32 %.0712.i.i.i, 1
  br label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit: ; preds = %bb.b, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit49, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit46, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit
  %.0712.i.i.i.lcssa = phi i32 [ %i.m, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit49 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit46 ], [ %i.k, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %.0712.i.i.i, %bb.b ]
  %.lcssa41 = phi i64 [ %i.d, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit49 ], [ %i.f, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit46 ], [ %i.h, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit.split.loop.exit ], [ %i.b, %bb.b ]
  %i.n = shl nuw nsw i32 %.0712.i.i.i.lcssa, 6
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa41, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 3 uses
  store ptr %0, ptr %4, align 8, !tbaa !6466, !alias.scope !20480
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !alias.scope !20480
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !20480
  %.not711 = icmp eq i32 %i.q, 32768
  br i1 %.not711, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 0, ptr %5, align 4
  %i.s = load ptr, ptr %1, align 8, !tbaa !1113
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.v) ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit
  %i.x = phi i32 [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit ], [ %i.q, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv.exit ]
  %i.y = call noundef nonnull align 8 dereferenceable(270352) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1126
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE11readBuffersERSiRKNS0_4math9CoordBBoxEb(ptr noundef nonnull align 8 dereferenceable(33808) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i1 noundef zeroext %3)
  %i.ac = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !1359 ; 2 uses
  %i.ad = load i32, ptr %i.r, align 8, !tbaa !1360
  %i.ae = add i32 %i.ad, 1                        ; 4 uses
  %i.af = lshr i32 %i.ae, 6                       ; 3 uses
  %i.ag = icmp ugt i32 %i.ae, 32767
  br i1 %i.ag, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ah = and i32 %i.ae, 63
  %i.ai = zext nneg i32 %i.af to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1156 ; 2 uses
  %i.al = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.ak, %i.am
  %.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEppEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = shl nsw i64 -1, %i.al
  %i.ap = and i64 %i.ak, %i.ao                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %exitcond.not.i.i.i.i34 = icmp eq i32 %i.af, 511
  br i1 %exitcond.not.i.i.i.i34, label %._crit_edge, label %.lr.ph36

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph36
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 511
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph36, !llvm.loop !41

.lr.ph36:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i35 = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i35, 1 ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1156 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !41

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph36
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

end_hunk_0
begin_hunk_1_@llvm.vector.reduce.and.v2i64
!20274 = distinct !{!20274, !20273, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE9nodeRangeEm: argument 0"}
!20275 = !{!20274}
!20276 = distinct !{!20276, !1203, !1379, !1380}
!20277 = distinct !{!20277, !1203}
!20278 = distinct !{!20278, !1474}
!20279 = distinct !{!20279, !1203}
!20280 = distinct !{!20280, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20281 = distinct !{!20281, !20280, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20282 = distinct !{!20282, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20283 = distinct !{!20283, !20282, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20284 = distinct !{!20284, !1203}
!20285 = !{!20281}
!20286 = !{!20283}
!20287 = !{!20283, !20281}
!20288 = distinct !{!20288, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEE9nodeRangeEm"}
!20289 = distinct !{!20289, !20288, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEE9nodeRangeEm: argument 0"}
!20290 = !{!20289}
!20291 = distinct !{!20291, !1203, !1379, !1380}
!20292 = distinct !{!20292, !1203}
!20293 = distinct !{!20293, !1474}
!20294 = distinct !{!20294, !1203}
!20295 = distinct !{!20295, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20296 = distinct !{!20296, !20295, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20297 = distinct !{!20297, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv"}
!20298 = distinct !{!20298, !20297, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv: argument 0"}
!20299 = distinct !{!20299, !1203}
!20300 = !{!20296}
!20301 = !{!20298}
!20302 = !{!20298, !20296}
!20303 = distinct !{!20303, !"_ZNK7openvdb5v13_04tree8NodeListIKNS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEEE9nodeRangeEm"}
!20304 = distinct !{!20304, !20303, !"_ZNK7openvdb5v13_04tree8NodeListIKNS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEEE9nodeRangeEm: argument 0"}
!20305 = !{!20304}
!20306 = distinct !{!20306, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20307 = distinct !{!20307, !20306, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20308 = distinct !{!20308, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20309 = distinct !{!20309, !20308, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20310 = !{!20307}
!20311 = !{!20309}
!20312 = !{!20309, !20307}
!20313 = distinct !{null, null, null}
!20314 = distinct !{null, null}
!20315 = distinct !{!20315, !1203}
!20316 = distinct !{null}
!20317 = distinct !{!20317, !1203}
!20318 = !{!6903, !6897, i64 48}
!20319 = distinct !{null, null, null}
!20320 = distinct !{null, null}
!20321 = distinct !{!20321, !1203}
!20322 = distinct !{!20322, !1203, !1379, !1380}
!20323 = distinct !{!20323, !1203}
!20324 = distinct !{null}
!20325 = distinct !{!20325, !1203, !1379, !1380}
!20326 = distinct !{!20326, !1203}
!20327 = !{!6907, !6878, i64 0}
!20328 = distinct !{null, null, null}
!20329 = distinct !{null, null}
!20330 = distinct !{!20330, !1203}
!20331 = distinct !{null}
!20332 = distinct !{!20332, !1203}
!20333 = distinct !{!20333, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20334 = distinct !{!20334, !20333, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20335 = distinct !{!20335, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20336 = distinct !{!20336, !20335, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20337 = distinct !{!20337, !1203}
!20338 = distinct !{!20338, !1203}
!20339 = !{!6889, !1639, i64 8}
!20340 = !{!6889, !6878, i64 16}
!20341 = !{!6889, !6670, i64 24}
!20342 = !{!20334}
!20343 = !{!20336}
!20344 = !{!20336, !20334}
!20345 = distinct !{!20345, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20346 = distinct !{!20346, !20345, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal10MemUsageOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20347 = distinct !{!20347, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20348 = distinct !{!20348, !20347, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20349 = !{!20346}
!20350 = !{!20348}
!20351 = !{!20348, !20346}
!20352 = distinct !{null, null, null}
!20353 = distinct !{null, null}
!20354 = distinct !{!20354, !1203}
!20355 = distinct !{null}
!20356 = distinct !{!20356, !1203}
!20357 = !{!6919, !6913, i64 48}
!20358 = distinct !{null, null, null}
!20359 = distinct !{null, null}
!20360 = distinct !{!20360, !1203}
!20361 = distinct !{!20361, !1203, !1379, !1380}
!20362 = distinct !{!20362, !1203}
!20363 = distinct !{null}
!20364 = distinct !{!20364, !1203, !1379, !1380}
!20365 = distinct !{!20365, !1203}
!20366 = !{!6923, !6878, i64 0}
!20367 = distinct !{null, null, null}
!20368 = distinct !{null, null}
!20369 = distinct !{!20369, !1203}
!20370 = distinct !{null}
!20371 = distinct !{!20371, !1203}
!20372 = distinct !{!20372, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20373 = distinct !{!20373, !20372, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20374 = distinct !{!20374, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv"}
!20375 = distinct !{!20375, !20374, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv: argument 0"}
!20376 = distinct !{!20376, !1203}
!20377 = distinct !{!20377, !1203}
!20378 = !{!6893, !1639, i64 8}
!20379 = !{!6893, !6878, i64 16}
!20380 = !{!6893, !6680, i64 24}
!20381 = !{!20373}
!20382 = !{!20375}
!20383 = !{!20375, !20373}
!20384 = distinct !{!20384, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20385 = distinct !{!20385, !20384, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal10MemUsageOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20386 = !{!20385}
!20387 = distinct !{null, null, null}
!20388 = distinct !{null, null}
!20389 = distinct !{!20389, !1203}
!20390 = distinct !{null}
!20391 = distinct !{!20391, !1203}
!20392 = !{!6935, !6929, i64 48}
!20393 = distinct !{!20393, !1203}
!20394 = distinct !{!20394, !1203}
!20395 = distinct !{!20395, !1203}
!20396 = distinct !{!20396, !1203, !1379, !1380}
!20397 = distinct !{!20397, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv"}
!20398 = distinct !{!20398, !20397, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv: argument 0"}
!20399 = distinct !{!20399, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv"}
!20400 = distinct !{!20400, !20399, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13beginValueAllEv: argument 0"}
!20401 = distinct !{!20401, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20402 = distinct !{!20402, !20401, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20403 = distinct !{!20403, !1203}
!20404 = distinct !{!20404, !1203}
!20405 = !{!20398}
!20406 = !{!20400}
!20407 = !{!20402}
!20408 = distinct !{!20408, !1203, !1379, !1380}
!20409 = distinct !{!20409, !1203}
!20410 = distinct !{!20410, !1203, !1379, !1380}
!20411 = distinct !{!20411, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20412 = distinct !{!20412, !20411, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20413 = distinct !{!20413, !1203}
!20414 = !{!20412}
!20415 = distinct !{!20415, !1203, !1379, !1380}
!20416 = distinct !{!20416, !1203}
!20417 = distinct !{!20417, !1203}
!20418 = distinct !{!20418, !1203}
!20419 = distinct !{!20419, !1203}
!20420 = distinct !{!20420, !1203}
!20421 = distinct !{!20421, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20422 = distinct !{!20422, !20421, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20423 = distinct !{!20423, !1203}
!20424 = !{!20422}
!20425 = distinct !{!20425, !1203}
!20426 = distinct !{!20426, !1203}
!20427 = distinct !{!20427, !1203}
!20428 = distinct !{!20428, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv"}
!20429 = distinct !{!20429, !20428, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv: argument 0"}
!20430 = distinct !{!20430, !1203}
!20431 = !{!20429}
!20432 = distinct !{!20432, !1203}
!20433 = distinct !{!20433, !1203}
!20434 = distinct !{!20434, !1203}
!20435 = distinct !{!20435, !1203}
!20436 = distinct !{!20436, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20437 = distinct !{!20437, !20436, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20438 = distinct !{!20438, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20439 = distinct !{!20439, !20438, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20440 = distinct !{!20440, !"_ZN7openvdb5v13_04math9CoordBBox3infEv"}
!20441 = distinct !{!20441, !20440, !"_ZN7openvdb5v13_04math9CoordBBox3infEv: argument 0"}
!20442 = distinct !{!20442, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!20443 = distinct !{!20443, !20442, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!20444 = distinct !{!20444, !20442, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!20445 = distinct !{!20445, !1203, !1379, !1380}
!20446 = distinct !{!20446, !1203, !1379}
!20447 = distinct !{!20447, !1203}
!20448 = distinct !{!20448, !1203}
!20449 = !{!20437}
!20450 = !{!20439}
!20451 = !{!20441}
!20452 = !{!20443}
!20453 = !{!20444}
!20454 = distinct !{!20454, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv"}
!20455 = distinct !{!20455, !20454, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv: argument 0"}
!20456 = distinct !{!20456, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20457 = distinct !{!20457, !20456, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20458 = distinct !{!20458, !1203}
!20459 = !{!20457, !20455}
!20460 = distinct !{!20460, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv"}
!20461 = distinct !{!20461, !20460, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv: argument 0"}
!20462 = distinct !{!20462, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20463 = distinct !{!20463, !20462, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20464 = distinct !{!20464, !1203, !1379, !1380}
!20465 = distinct !{!20465, !1203, !1379, !1380}
!20466 = distinct !{!20466, !1203, !1380, !1379}
!20467 = distinct !{!20467, !1203}
!20468 = distinct !{!20468, !1203}
!20469 = !{!20463, !20461}
!20470 = distinct !{!20470, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_"}
!20471 = distinct !{!20471, !20470, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!20472 = distinct !{!20472, !20470, !"_ZSt19__relocate_object_aIN7openvdb5v13_010PointIndexIjLj0EEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!20473 = distinct !{!20473, !1203, !1379, !1380}
!20474 = distinct !{!20474, !1203, !1380, !1379}
!20475 = !{!20471}
!20476 = !{!20472}
!20477 = distinct !{!20477, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20478 = distinct !{!20478, !20477, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20479 = distinct !{!20479, !1203}
!20480 = !{!20478}
!20481 = distinct !{!20481, !1203}
!20482 = !{!"p1 _ZTSSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS1_5tools18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISI_ESt4lessIS3_ESaISI_EE", !1105, i64 0}
!20483 = !{!20482, !20482, i64 0}
!20484 = distinct !{!20484, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20485 = distinct !{!20485, !20484, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20486 = distinct !{!20486, !1203}
!20487 = !{!20485}
!20488 = distinct !{!20488, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE18getNodeBoundingBoxEv"}
!20489 = distinct !{!20489, !20488, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE18getNodeBoundingBoxEv: argument 0"}
!20490 = distinct !{!20490, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20491 = distinct !{!20491, !20490, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20492 = distinct !{!20492, !1203}
!20493 = !{!20489}
!20494 = !{!20491}
!20495 = !{!20491, !20489}
!20496 = distinct !{!20496, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv"}
!20497 = distinct !{!20497, !20496, !"_ZNK7openvdb5v13_04tree8LeafNodeINS0_10PointIndexIjLj0EEELj3EE18getNodeBoundingBoxEv: argument 0"}
!20498 = distinct !{!20498, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20499 = distinct !{!20499, !20498, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20500 = !{!20499, !20497}
!20501 = distinct !{!20501, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE18getNodeBoundingBoxEv"}
!20502 = distinct !{!20502, !20501, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE18getNodeBoundingBoxEv: argument 0"}
!20503 = distinct !{!20503, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20504 = distinct !{!20504, !20503, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20505 = distinct !{!20505, !1203}
!20506 = !{!20502}
!20507 = !{!20504}
!20508 = !{!20504, !20502}
!20509 = distinct !{!20509, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE18getNodeBoundingBoxEv"}
!20510 = distinct !{!20510, !20509, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE18getNodeBoundingBoxEv: argument 0"}
!20511 = distinct !{!20511, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20512 = distinct !{!20512, !20511, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20513 = distinct !{!20513, !1203}
!20514 = distinct !{!20514, !1203}
!20515 = distinct !{!20515, !1203, !1379, !1380}
!20516 = distinct !{!20516, !1203}
!20517 = !{!20512, !20510}
!20518 = distinct !{!20518, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE18getNodeBoundingBoxEv"}
!20519 = distinct !{!20519, !20518, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE18getNodeBoundingBoxEv: argument 0"}
!20520 = distinct !{!20520, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi"}
!20521 = distinct !{!20521, !20520, !"_ZN7openvdb5v13_04math9CoordBBox10createCubeERKNS1_5CoordEi: argument 0"}
!20522 = distinct !{!20522, !1203}
!20523 = distinct !{!20523, !1203}
!20524 = distinct !{!20524, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20525 = distinct !{!20525, !20524, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20526 = distinct !{!20526, !1203}
!20527 = !{!20521, !20519}
!20528 = !{!20525}
!20529 = distinct !{!20529, !1203}
!20530 = distinct !{!20530, !1203}
!20531 = distinct !{!20531, !1203}
!20532 = distinct !{!20532, !1203}
!20533 = distinct !{!20533, !1203, !1965}
!20534 = distinct !{!20534, !1203, !1965}
!20535 = distinct !{!20535, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20536 = distinct !{!20536, !20535, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20537 = distinct !{!20537, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20538 = distinct !{!20538, !20537, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20539 = distinct !{!20539, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20540 = distinct !{!20540, !20539, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20541 = distinct !{!20541, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20542 = distinct !{!20542, !20541, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20543 = distinct !{!20543, !1203}
!20544 = !{!20536}
!20545 = !{!20538}
!20546 = !{!20540}
!20547 = !{!20542}
!20548 = distinct !{!20548, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20549 = distinct !{!20549, !20548, !"_ZN7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20550 = distinct !{!20550, !1203}
!20551 = distinct !{!20551, !1203}
!20552 = !{!20549}
!20553 = distinct !{!20553, !1203}
!20554 = distinct !{!20554, !1203}
!20555 = distinct !{!20555, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20556 = distinct !{!20556, !20555, !"_ZN7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20557 = distinct !{!20557, !1203}
!20558 = !{!20556}
!20559 = distinct !{!20559, !1203}
!20560 = distinct !{!20560, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20561 = distinct !{!20561, !20560, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20562 = distinct !{!20562, !1203}
!20563 = distinct !{!20563, !1203}
!20564 = !{!20561}
!20565 = distinct !{!20565, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv"}
!20566 = distinct !{!20566, !20565, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv: argument 0"}
!20567 = distinct !{!20567, !1203}
!20568 = !{!20566}
!20569 = distinct !{!20569, !1203}
!20570 = distinct !{!20570, !1203}
!20571 = distinct !{!20571, !1203}
!20572 = distinct !{!20572, !"_ZSt11make_uniqueIA_bENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!20573 = distinct !{!20573, !20572, !"_ZSt11make_uniqueIA_bENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!20574 = distinct !{!20574, !"_ZSt11make_uniqueIA_bENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!20575 = distinct !{!20575, !20574, !"_ZSt11make_uniqueIA_bENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!20576 = !{!20573}
!20577 = !{!20575}
!20578 = distinct !{!20578, !1203}
!20579 = distinct !{!20579, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE9nodeRangeEm"}
!20580 = distinct !{!20580, !20579, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS3_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEE9nodeRangeEm: argument 0"}
!20581 = !{!20580}
!20582 = distinct !{!20582, !1203, !1379, !1380}
!20583 = distinct !{!20583, !1203}
!20584 = distinct !{!20584, !1474}
!20585 = distinct !{!20585, !1203}
!20586 = distinct !{!20586, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20587 = distinct !{!20587, !20586, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20588 = distinct !{!20588, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20589 = distinct !{!20589, !20588, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20590 = distinct !{!20590, !1203}
!20591 = !{!20587}
!20592 = !{!20589}
!20593 = !{!20589, !20587}
!20594 = distinct !{!20594, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEE9nodeRangeEm"}
!20595 = distinct !{!20595, !20594, !"_ZNK7openvdb5v13_04tree8NodeListIKNS1_12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEEE9nodeRangeEm: argument 0"}
!20596 = !{!20595}
!20597 = distinct !{!20597, !1203, !1379, !1380}
!20598 = distinct !{!20598, !1203}
!20599 = distinct !{!20599, !1474}
!20600 = distinct !{!20600, !1203}
!20601 = distinct !{!20601, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv"}
!20602 = distinct !{!20602, !20601, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE12beginChildOnEv: argument 0"}
!20603 = distinct !{!20603, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv"}
!20604 = distinct !{!20604, !20603, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginChildOnEv: argument 0"}
!20605 = distinct !{!20605, !1203}
!20606 = !{!20602}
!20607 = !{!20604}
!20608 = !{!20604, !20602}
!20609 = distinct !{!20609, !"_ZNK7openvdb5v13_04tree8NodeListIKNS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEEE9nodeRangeEm"}
!20610 = distinct !{!20610, !20609, !"_ZNK7openvdb5v13_04tree8NodeListIKNS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEEE9nodeRangeEm: argument 0"}
!20611 = !{!20610}
!20612 = distinct !{!20612, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20613 = distinct !{!20613, !20612, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20614 = distinct !{!20614, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20615 = distinct !{!20615, !20614, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20616 = !{!20613}
!20617 = !{!20615}
!20618 = !{!20615, !20613}
!20619 = distinct !{null, null, null}
!20620 = distinct !{null, null}
!20621 = distinct !{!20621, !1203}
!20622 = distinct !{null}
!20623 = distinct !{!20623, !1203}
!20624 = !{!6983, !6977, i64 48}
!20625 = distinct !{!20625, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginValueOnEv"}
!20626 = distinct !{!20626, !20625, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginValueOnEv: argument 0"}
!20627 = distinct !{!20627, !1203}
!20628 = !{!20626}
!20629 = distinct !{null, null, null}
!20630 = distinct !{null, null}
!20631 = distinct !{!20631, !1203}
!20632 = distinct !{!20632, !1203, !1379, !1380}
!20633 = distinct !{!20633, !1203}
!20634 = distinct !{null}
!20635 = distinct !{!20635, !1203, !1379, !1380}
!20636 = distinct !{!20636, !1203}
!20637 = !{!6987, !6958, i64 0}
!20638 = distinct !{null, null, null}
!20639 = distinct !{null, null}
!20640 = distinct !{!20640, !1203}
!20641 = distinct !{null}
!20642 = distinct !{!20642, !1203}
!20643 = distinct !{!20643, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv"}
!20644 = distinct !{!20644, !20643, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE12beginChildOnEv: argument 0"}
!20645 = distinct !{!20645, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv"}
!20646 = distinct !{!20646, !20645, !"_ZNK7openvdb5v13_04tree12InternalNodeINS2_INS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EEELj5EE13cbeginChildOnEv: argument 0"}
!20647 = distinct !{!20647, !1203}
!20648 = distinct !{!20648, !1203}
!20649 = !{!6969, !1639, i64 8}
!20650 = !{!6969, !6958, i64 16}
!20651 = !{!6969, !6670, i64 24}
!20652 = !{!20644}
!20653 = !{!20646}
!20654 = !{!20646, !20644}
!20655 = distinct !{!20655, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20656 = distinct !{!20656, !20655, !"_ZSt11make_uniqueIN7openvdb5v13_04tree14ReduceFilterOpINS1_5tools14count_internal14MinMaxValuesOpINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS9_INS4_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEEEJRSJ_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20657 = distinct !{!20657, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!20658 = distinct !{!20658, !20657, !"_ZSt11make_uniqueIN7openvdb5v13_05tools14count_internal14MinMaxValuesOpINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS2_18PointIndexLeafNodeINS1_10PointIndexIjLj0EEELj3EEELj4EEELj5EEEEEEEEEJRSH_N3tbb6detail2d05splitEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20659 = !{!20656}
!20660 = !{!20658}
!20661 = !{!20658, !20656}
!20662 = distinct !{null, null, null}
!20663 = distinct !{null, null}
!20664 = distinct !{!20664, !1203}
!20665 = distinct !{null}
!20666 = distinct !{!20666, !1203}
!20667 = !{!6999, !6993, i64 48}
!20668 = distinct !{!20668, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginValueOnEv"}
!20669 = distinct !{!20669, !20668, !"_ZNK7openvdb5v13_04tree12InternalNodeINS0_5tools18PointIndexLeafNodeINS0_10PointIndexIjLj0EEELj3EEELj4EE13cbeginValueOnEv: argument 0"}
!20670 = distinct !{!20670, !1203}
!20671 = !{!20669}
!20672 = distinct !{null, null, null}
!20673 = distinct !{null, null}
!20674 = distinct !{!20674, !1203}
end_hunk_1
