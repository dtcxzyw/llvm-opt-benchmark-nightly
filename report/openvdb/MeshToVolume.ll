Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/MeshToVolume?download=true
inline.NumInlined: 61374
inline.NumDeleted: 19461
loop-unroll.NumCompletelyUnrolled: 235
loop-unroll.NumRuntimeUnrolled: 314
loop-unroll.NumUnrolled: 949
begin_hunk_0_@_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4clipERKNS0_4math9CoordBBoxEb:bb.a
  br i1 %.not.2.i.i, label %bb.e, label %._crit_edge100.split.thread

bb.e:                                             ; preds = %bb.d
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !791 ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.kk, -1
  br i1 %.not.3.i.i, label %bb.f, label %._crit_edge100.split.thread

bb.f:                                             ; preds = %bb.e
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !791 ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.km, -1
  br i1 %.not.4.i.i, label %bb.g, label %._crit_edge100.split.thread

bb.g:                                             ; preds = %bb.f
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !791 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.ko, -1
  br i1 %.not.5.i.i, label %bb.h, label %._crit_edge100.split.thread

bb.h:                                             ; preds = %bb.g
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !791 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.kq, -1
  br i1 %.not.6.i.i, label %bb.i, label %._crit_edge100.split.thread

bb.i:                                             ; preds = %bb.h
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !791 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.ks, -1
  br i1 %.not.7.i.i, label %._crit_edge105, label %._crit_edge100.split.thread

._crit_edge100.split.thread:                      ; preds = %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread, %.preheader84.lr.ph, %._crit_edge100.split, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.kt = phi i64 [ %.pre, %._crit_edge100.split ], [ %i.kg, %bb.c ], [ %i.ki, %bb.d ], [ %i.kk, %bb.e ], [ %i.km, %bb.f ], [ %i.ko, %bb.g ], [ %i.kq, %bb.h ], [ %i.ks, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %.0712.lcssa.i.i = phi i32 [ 0, %._crit_edge100.split ], [ 64, %bb.c ], [ 128, %bb.d ], [ 192, %bb.e ], [ 256, %bb.f ], [ 320, %bb.g ], [ 384, %bb.h ], [ 448, %bb.i ], [ 0, %.preheader84.lr.ph ], [ 0, %_ZNK7openvdb5v13_04math9CoordBBox8isInsideERKS2_.exit.thread ]
  %i.ku = xor i64 %i.kt, -1
  %i.kv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ku, i1 true)
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = or disjoint i32 %.0712.lcssa.i.i, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.j

._crit_edge105:                                   ; preds = %.lr.ph.6, %bb.j, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge100.split.thread, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit
  %.sroa.0.0103 = phi i32 [ %i.kx, %._crit_edge100.split.thread ], [ %.118.i.i.i, %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit ] ; 3 uses
  %i.kz = and i32 %.sroa.0.0103, 63
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw i64 1, %i.la                    ; 2 uses
  %i.lc = xor i64 %i.lb, -1                       ; 2 uses
  %i.ld = lshr i32 %.sroa.0.0103, 6
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.le ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !791
  %i.lh = and i64 %i.lg, %i.lc
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !791
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.le ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !791 ; 2 uses
  %i.lk = or i64 %i.lj, %i.lb
  %i.ll = and i64 %i.lj, %i.lc
  %.sink.i = select i1 %2, i64 %i.lk, i64 %i.ll
  store i64 %.sink.i, ptr %i.li, align 8, !tbaa !791
  %i.lm = add i32 %.sroa.0.0103, 1                ; 4 uses
  %i.ln = lshr i32 %i.lm, 6                       ; 3 uses
  %i.lo = icmp ugt i32 %i.lm, 511
  br i1 %i.lo, label %._crit_edge105, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lp = and i32 %i.lm, 63
  %i.lq = zext nneg i32 %i.ln to i64              ; 8 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !791 ; 2 uses
  %i.lt = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lu = shl nuw i64 1, %i.lt
  %i.lv = and i64 %i.ls, %i.lu
  %.not.not.i.i.i = icmp eq i64 %i.lv, 0
  br i1 %.not.not.i.i.i, label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.lw = xor i64 %i.ls, -1
  %i.lx = shl nsw i64 -1, %i.lt
  %i.ly = and i64 %i.lx, %i.lw                    ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not25.i.i.i, label %.lr.ph.i.i.i.preheader, label %.critedge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %exitcond.not.i.i.i161 = icmp eq i32 %i.ln, 7
  br i1 %exitcond.not.i.i.i161, label %._crit_edge105, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %._crit_edge105, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %i.lq, 2 ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.1
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ma, -1
  br i1 %.not.i.i.i.1, label %.lr.ph.i.i.i.1, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge105, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %i.lq, 3 ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.2
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.2 = icmp eq i64 %i.mc, -1
  br i1 %.not.i.i.i.2, label %.lr.ph.i.i.i.2, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge105, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.i.i.i.2
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %i.lq, 4 ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.3
  %i.me = load i64, ptr %i.md, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.me, -1
  br i1 %.not.i.i.i.3, label %.lr.ph.i.i.i.3, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.3
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge105, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.i.i.i.3
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %i.lq, 5 ; 3 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.4
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.4 = icmp eq i64 %i.mg, -1
  br i1 %.not.i.i.i.4, label %.lr.ph.i.i.i.4, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.4
  %exitcond.not.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.4, label %._crit_edge105, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.i.i.i.4
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %i.lq, 6 ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.5
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.5 = icmp eq i64 %i.mi, -1
  br i1 %.not.i.i.i.5, label %.lr.ph.i.i.i.5, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.5
  %exitcond.not.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.5, label %._crit_edge105, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.i.i.i.5
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %i.lq, 7 ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i.6
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i.6 = icmp eq i64 %i.mk, -1
  br i1 %.not.i.i.i.6, label %._crit_edge105, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i.i.i = add nuw nsw i64 %i.lq, 1 ; 3 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.i.i
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !791 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.mm, -1
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !114

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph.5 ], [ %indvars.iv.next.i.i.i.6, %.lr.ph.6 ]
  %.lcssa = phi i64 [ %i.mm, %.lr.ph ], [ %i.ma, %.lr.ph.1 ], [ %i.mc, %.lr.ph.2 ], [ %i.me, %.lr.ph.3 ], [ %i.mg, %.lr.ph.4 ], [ %i.mi, %.lr.ph.5 ], [ %i.mk, %.lr.ph.6 ]
  %i.mn = xor i64 %.lcssa, -1
  %i.mo = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.l
  %.016.lcssa.i.i.i = phi i32 [ %i.ln, %bb.l ], [ %i.mo, %.critedge.loopexit.i.i.i ]
  %.0.lcssa.i.i.i = phi i64 [ %i.ly, %bb.l ], [ %i.mn, %.critedge.loopexit.i.i.i ]
  %i.mp = shl nuw nsw i32 %.016.lcssa.i.i.i, 6
  %i.mq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i, i1 true)
  %i.mr = trunc nuw nsw i64 %i.mq to i32
  %i.ms = or disjoint i32 %i.mp, %i.mr
  br label %_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit

_ZN7openvdb5v13_04util15OffMaskIteratorINS1_8NodeMaskILj3EEEEppEv.exit: ; preds = %bb.k, %.critedge.i.i.i
  %.118.i.i.i = phi i32 [ %i.ms, %.critedge.i.i.i ], [ %i.lm, %bb.k ] ; 2 uses
  %.not78 = icmp eq i32 %.118.i.i.i, 512
  br i1 %.not78, label %._crit_edge105, label %bb.j

bb.m:                                             ; preds = %_ZN7openvdb5v13_04math5Coord8lessThanERKS2_S4_.exit.i22, %._crit_edge105
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIbLj3EEELj4EE4fillERKNS0_4math9CoordBBoxERKbb(ptr noundef nonnull align 8 dereferenceable(33808) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33792 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !543, !noalias !9476 ; 2 uses
  %i.c = add nsw i32 %i.b, 127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 33796 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !543, !noalias !9476 ; 2 uses
  %i.f = add nsw i32 %i.e, 127
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33800 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !543, !noalias !9476 ; 2 uses
  %i.i = add i32 %i.h, 127
  %i.j = load i32, ptr %1, align 4, !tbaa !543
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !543
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !543
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !543
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.c) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !543
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.f) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !543
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.i) ; 4 uses
  %i.aa = icmp sle i32 %i.k, %i.t
  %i.ab = icmp sle i32 %i.n, %i.w
  %or.cond.not129 = select i1 %i.aa, i1 %i.ab, i1 false
  %i.ac = icmp sle i32 %i.q, %i.z
  %or.cond121 = select i1 %or.cond.not129, i1 %i.ac, i1 false
  br i1 %or.cond121, label %.preheader137, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread

.preheader137:                                    ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 33280 ; 3 uses
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader137, %._crit_edge152.split
  %.0154 = phi i32 [ %i.an, %._crit_edge152.split ], [ %i.k, %.preheader137 ] ; 4 uses
  %i.af = shl i32 %.0154, 5
  %i.ag = and i32 %i.af, 3840                     ; 2 uses
  %i.ah = lshr exact i32 %i.ag, 5
  %i.ai = and i32 %.0154, -8                      ; 2 uses
  %.sroa.0.0.insert.ext.i.i49 = zext i32 %i.ai to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader136, %._crit_edge
  %.035151 = phi i32 [ %i.n, %.preheader136 ], [ %i.ao, %._crit_edge ] ; 5 uses
  %i.aj = shl i32 %.035151, 1
  %i.ak = and i32 %i.aj, 240
  %i.al = and i32 %.035151, 120
  %i.am = and i32 %.035151, -8
  %.sroa.2.0.insert.ext.i.i47 = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i.i48 = shl nuw i64 %.sroa.2.0.insert.ext.i.i47, 32
  %.sroa.0.0.insert.insert.i.i50 = or disjoint i64 %.sroa.2.0.insert.shift.i.i48, %.sroa.0.0.insert.ext.i.i49
  br label %bb.b

._crit_edge152.split:                             ; preds = %._crit_edge
  %i.an = add nsw i32 %i.av, 8                    ; 2 uses
  %.not = icmp sgt i32 %i.an, %i.t
  br i1 %.not, label %_ZNK7openvdb5v13_04math9CoordBBoxcvbEv.exit.thread, label %.preheader136, !llvm.loop !9460

._crit_edge:                                      ; preds = %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit
  %i.ao = add nsw i32 %i.ax, 8                    ; 2 uses
  %.not38 = icmp sgt i32 %i.ao, %i.w
  br i1 %.not38, label %._crit_edge152.split, label %.preheader, !llvm.loop !9461

bb.b:                                             ; preds = %.preheader, %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit
  %.036146 = phi i32 [ %i.q, %.preheader ], [ %i.kk, %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit ] ; 4 uses
  %i.ap = lshr i32 %.036146, 3
  %i.aq = and i32 %i.ap, 15                       ; 2 uses
  %i.ar = or disjoint i32 %i.aq, %i.ak            ; 2 uses
  %i.as = or disjoint i32 %i.ar, %i.ag            ; 4 uses
  %i.at = shl nuw nsw i32 %i.aq, 3
  %i.au = load i32, ptr %i.a, align 8, !tbaa !543
  %i.av = add nsw i32 %i.au, %i.ah                ; 3 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !543
  %i.ax = add nsw i32 %i.aw, %i.al                ; 3 uses
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !543
  %i.az = add i32 %i.ay, %i.at                    ; 3 uses
  %i.ba = add nsw i32 %i.av, 7                    ; 2 uses
  %i.bb = add nsw i32 %i.ax, 7                    ; 2 uses
  %i.bc = add i32 %i.az, 7                        ; 2 uses
  %i.bd = icmp ne i32 %.0154, %i.av
  %i.be = icmp ne i32 %.035151, %i.ax
  %or.cond122.not132 = or i1 %i.bd, %i.be
  %i.bf = icmp ne i32 %.036146, %i.az
  %or.cond123 = select i1 %or.cond122.not132, i1 true, i1 %i.bf
  %i.bg = icmp slt i32 %i.t, %i.ba
  %or.cond124 = select i1 %or.cond123, i1 true, i1 %i.bg
  %i.bh = icmp slt i32 %i.w, %i.bb
  %or.cond125 = select i1 %or.cond124, i1 true, i1 %i.bh
  %i.bi = icmp slt i32 %i.z, %i.bc
  %or.cond126 = select i1 %or.cond125, i1 true, i1 %i.bi
  %i.bj = lshr i32 %i.as, 6
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bk ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !791 ; 2 uses
  %i.bn = and i32 %i.ar, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo                    ; 7 uses
  %i.bq = and i64 %i.bm, %i.bp
  %.not.i.i = icmp eq i64 %i.bq, 0                ; 2 uses
  br i1 %or.cond126, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.b
  br i1 %.not.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.br = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30 ; 21 uses
  %i.bs = zext nneg i32 %i.as to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !673, !range !804, !noundef !805
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !791 ; 2 uses
  %i.by = and i64 %i.bx, %i.bp
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = sext i1 %i.bz to i64                    ; 8 uses
  store i64 %i.ca, ptr %i.br, align 8, !tbaa !791
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !791
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !791
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !791
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %i.ca, ptr %i.ce, align 8, !tbaa !791
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %i.ca, ptr %i.cf, align 8, !tbaa !791
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 %i.ca, ptr %i.cg, align 8, !tbaa !791
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store i64 %i.ca, ptr %i.ch, align 8, !tbaa !791
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.cj = sub nsw i64 0, %i.bv                    ; 8 uses
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !791
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !791
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !791
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !791
  %i.cn = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store i64 %i.cj, ptr %i.cn, align 8, !tbaa !791
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  store i64 %i.cj, ptr %i.co, align 8, !tbaa !791
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  store i64 %i.cj, ptr %i.cp, align 8, !tbaa !791
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  store i64 %i.cj, ptr %i.cq, align 8, !tbaa !791
  %i.cr = and i32 %.036146, -8                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  store i64 %.sroa.0.0.insert.insert.i.i50, ptr %i.cs, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  store i32 %i.cr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 140
  store i32 0, ptr %i.ct, align 4, !tbaa !3279
  %i.cu = load i64, ptr %i.bl, align 8, !tbaa !791
  %i.cv = or i64 %i.cu, %i.bp
  store i64 %i.cv, ptr %i.bl, align 8, !tbaa !791
  %i.cw = xor i64 %i.bp, -1
  %i.cx = and i64 %i.bx, %i.cw
  store i64 %i.cx, ptr %i.bw, align 8, !tbaa !791
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !570
  br label %bb.d

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cy = zext nneg i32 %i.as to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !570 ; 4 uses
  %.not40 = icmp eq ptr %i.da, null
  br i1 %.not40, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %._crit_edge172

._crit_edge172:                                   ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !543, !noalias !9477
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %.pre174 = load i32, ptr %.phi.trans.insert173, align 4, !tbaa !543, !noalias !9477
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge172, %.thread
  %i.db = phi i32 [ %i.cr, %.thread ], [ %.pre174, %._crit_edge172 ] ; 2 uses
  %i.dc = phi i32 [ %i.ai, %.thread ], [ %.pre, %._crit_edge172 ] ; 2 uses
  %.037120 = phi ptr [ %i.br, %.thread ], [ %i.da, %._crit_edge172 ] ; 6 uses
  %.sroa.speculated16.i = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.t)
  %.sroa.speculated11.i = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.w)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.z)
  %i.dd = load i8, ptr %2, align 1, !tbaa !673, !range !804, !noundef !805
  %i.de = trunc nuw i8 %i.dd to i1                ; 2 uses
  %i.df = add nsw i32 %i.dc, 7
  %i.dg = getelementptr inbounds nuw i8, ptr %.037120, i64 132
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !543, !noalias !9477 ; 2 uses
  %i.di = add i32 %i.dh, 7
  %i.dj = add i32 %i.db, 7
  %i.dk = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 %.0154) ; 5 uses
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 %.035151) ; 5 uses
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.db, i32 %.036146) ; 17 uses
  %i.dn = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated16.i, i32 %i.df) ; 5 uses
  %i.do = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated11.i, i32 %i.di) ; 5 uses
  %i.dp = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.i, i32 %i.dj) ; 9 uses
  %i.dq = icmp sle i32 %i.dk, %i.dn
  %i.dr = icmp sle i32 %i.dl, %i.do
  %or.cond.not42.i = select i1 %i.dq, i1 %i.dr, i1 false
  %i.ds = icmp sle i32 %i.dm, %i.dp
  %or.cond39.i = select i1 %or.cond.not42.i, i1 %i.ds, i1 false
  br i1 %or.cond39.i, label %.preheader.i, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit

.preheader.i:                                     ; preds = %bb.d
  %i.dt = getelementptr inbounds nuw i8, ptr %.037120, i64 64 ; 4 uses
  br i1 %3, label %.preheader.split.split.split.us.i, label %.preheader.split.split.split.i

.preheader.split.split.split.us.i:                ; preds = %.preheader.i
  br i1 %i.de, label %.lr.ph63.us.us.i.preheader, label %.lr.ph63.us.i.preheader

.lr.ph63.us.i.preheader:                          ; preds = %.preheader.split.split.split.us.i
  %i.du = add i32 %i.dp, 1
  %i.dv = sub i32 %i.du, %i.dm                    ; 3 uses
  %min.iters.check223 = icmp ult i32 %i.dv, 4
  %n.vec225 = and i32 %i.dv, -4                   ; 3 uses
  %i.dw = add i32 %i.dm, %n.vec225
  %broadcast.splatinsert228 = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat229 = shufflevector <2 x i32> %broadcast.splatinsert228, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction230 = add <2 x i32> %broadcast.splat229, <i32 0, i32 1>
  %cmp.n244 = icmp eq i32 %i.dv, %n.vec225
  br label %.lr.ph63.us.i

.lr.ph63.us.us.i.preheader:                       ; preds = %.preheader.split.split.split.us.i
  %i.dx = add i32 %i.dp, 1
  %i.dy = sub i32 %i.dx, %i.dm                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.dy, 4
  %n.vec = and i32 %i.dy, -4                      ; 3 uses
  %i.dz = add i32 %i.dm, %n.vec
  %broadcast.splatinsert215 = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat216 = shufflevector <2 x i32> %broadcast.splatinsert215, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat216, <i32 0, i32 1>
  %cmp.n = icmp eq i32 %i.dy, %n.vec
  br label %.lr.ph63.us.us.i

.lr.ph63.us.us.i:                                 ; preds = %.lr.ph63.us.us.i.preheader, %._crit_edge64.split72.us.split.us.us.us.i
  %.01788.us.us.i = phi i32 [ %i.fh, %._crit_edge64.split72.us.split.us.us.us.i ], [ %i.dk, %.lr.ph63.us.us.i.preheader ] ; 3 uses
  %i.ea = and i32 %.01788.us.us.i, 7
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb ; 2 uses
  %.promoted82.us.us.i = load i64, ptr %i.ec, align 8, !tbaa !791
  %.promoted86.us.us.i = load i64, ptr %i.ed, align 8, !tbaa !791
  br label %.lr.ph.us.us.us.us.i

.lr.ph.us.us.us.us.i:                             ; preds = %._crit_edge.split.us.split.us.us.us.us.us.i, %.lr.ph63.us.us.i
  %.lcssa59.us.us87.us.us.i = phi i64 [ %.promoted86.us.us.i, %.lr.ph63.us.us.i ], [ %.lcssa211, %._crit_edge.split.us.split.us.us.us.us.us.i ] ; 2 uses
  %.us-phi55.us83.us.us.us.i = phi i64 [ %.promoted82.us.us.i, %.lr.ph63.us.us.i ], [ %.lcssa212, %._crit_edge.split.us.split.us.us.us.us.us.i ] ; 2 uses
  %.01661.us.us.us.us.i = phi i32 [ %i.dl, %.lr.ph63.us.us.i ], [ %i.fg, %._crit_edge.split.us.split.us.us.us.us.us.i ] ; 3 uses
  %i.ee = shl i32 %.01661.us.us.us.us.i, 3
  %i.ef = and i32 %i.ee, 56                       ; 2 uses
  br i1 %min.iters.check, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us.us.i
  %i.eg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa59.us.us87.us.us.i, i64 0
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.us-phi55.us83.us.us.us.i, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.eg, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi218 = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi219 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ei = and <2 x i32> %vec.ind, splat (i32 7)
  %i.ej = and <2 x i32> %step.add, splat (i32 7)
  %i.ek = or disjoint <2 x i32> %i.ei, %broadcast.splat
  %i.el = or disjoint <2 x i32> %i.ej, %broadcast.splat
  %i.em = zext nneg <2 x i32> %i.ek to <2 x i64>
  %i.en = zext nneg <2 x i32> %i.el to <2 x i64>
  %i.eo = shl nuw <2 x i64> splat (i64 1), %i.em  ; 2 uses
  %i.ep = shl nuw <2 x i64> splat (i64 1), %i.en  ; 2 uses
  %i.eq = or <2 x i64> %i.eo, %vec.phi218         ; 2 uses
  %i.er = or <2 x i64> %i.ep, %vec.phi219         ; 2 uses
  %i.es = or <2 x i64> %i.eo, %vec.phi            ; 2 uses
  %i.et = or <2 x i64> %i.ep, %vec.phi217         ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.eu = icmp eq i32 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !9466

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.et, %i.es
  %i.ev = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx220 = or <2 x i64> %i.er, %i.eq
  %i.ew = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx220) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.split.us.split.us.us.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.us.us.us.us.i, %middle.block
  %.ph = phi i64 [ %.lcssa59.us.us87.us.us.i, %.lr.ph.us.us.us.us.i ], [ %i.ev, %middle.block ]
  %.ph300 = phi i64 [ %.us-phi55.us83.us.us.us.i, %.lr.ph.us.us.us.us.i ], [ %i.ew, %middle.block ]
  %.044.us.us.us.us.us.us.i.ph = phi i32 [ %i.dm, %.lr.ph.us.us.us.us.i ], [ %i.dz, %middle.block ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i
  %i.ex = phi i64 [ %i.fe, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i ], [ %.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader ]
  %i.ey = phi i64 [ %i.fd, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i ], [ %.ph300, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader ]
  %.044.us.us.us.us.us.us.i = phi i32 [ %i.ff, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i ], [ %.044.us.us.us.us.us.us.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %i.ez = and i32 %.044.us.us.us.us.us.us.i, 7
  %i.fa = or disjoint i32 %i.ez, %i.ef
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb                    ; 2 uses
  %i.fd = or i64 %i.fc, %i.ey                     ; 2 uses
  %i.fe = or i64 %i.fc, %i.ex                     ; 2 uses
  %i.ff = add i32 %.044.us.us.us.us.us.us.i, 1
  %exitcond120.not.i = icmp eq i32 %.044.us.us.us.us.us.us.i, %i.dp
  br i1 %exitcond120.not.i, label %._crit_edge.split.us.split.us.us.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i, !llvm.loop !9467

._crit_edge.split.us.split.us.us.us.us.us.i:      ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i, %middle.block
  %.lcssa212 = phi i64 [ %i.ew, %middle.block ], [ %i.fd, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i ] ; 2 uses
  %.lcssa211 = phi i64 [ %i.ev, %middle.block ], [ %i.fe, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us.us.us.us.us.i ] ; 2 uses
  %i.fg = add i32 %.01661.us.us.us.us.i, 1
  %exitcond121.not.i = icmp eq i32 %.01661.us.us.us.us.i, %i.do
  br i1 %exitcond121.not.i, label %._crit_edge64.split72.us.split.us.us.us.i, label %.lr.ph.us.us.us.us.i, !llvm.loop !9468

._crit_edge64.split72.us.split.us.us.us.i:        ; preds = %._crit_edge.split.us.split.us.us.us.us.us.i
  store i64 %.lcssa211, ptr %i.ed, align 8, !tbaa !791
  store i64 %.lcssa212, ptr %i.ec, align 8, !tbaa !791
  %i.fh = add i32 %.01788.us.us.i, 1
  %exitcond122.not.i = icmp eq i32 %.01788.us.us.i, %i.dn
  br i1 %exitcond122.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph63.us.us.i, !llvm.loop !379

.lr.ph63.us.i:                                    ; preds = %.lr.ph63.us.i.preheader, %._crit_edge64.split72.us.split.us95.i
  %.01788.us.i = phi i32 [ %i.gs, %._crit_edge64.split72.us.split.us95.i ], [ %i.dk, %.lr.ph63.us.i.preheader ] ; 3 uses
  %i.fi = and i32 %.01788.us.i, 7
  %i.fj = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.fj ; 2 uses
  %.promoted82.us.i = load i64, ptr %i.fk, align 8, !tbaa !791
  %.promoted84.us.i = load i64, ptr %i.fl, align 8, !tbaa !791
  br label %.lr.ph.us.us91.i

.lr.ph.us.us91.i:                                 ; preds = %._crit_edge.split.us.split.us69.us.i, %.lr.ph63.us.i
  %.lcssa57.us85.us.i = phi i64 [ %.promoted84.us.i, %.lr.ph63.us.i ], [ %.lcssa209, %._crit_edge.split.us.split.us69.us.i ] ; 2 uses
  %.us-phi55.us83.us92.i = phi i64 [ %.promoted82.us.i, %.lr.ph63.us.i ], [ %.lcssa210, %._crit_edge.split.us.split.us69.us.i ] ; 2 uses
  %.01661.us.us93.i = phi i32 [ %i.dl, %.lr.ph63.us.i ], [ %i.gr, %._crit_edge.split.us.split.us69.us.i ] ; 3 uses
  %i.fm = shl i32 %.01661.us.us93.i, 3
  %i.fn = and i32 %i.fm, 56                       ; 2 uses
  br i1 %min.iters.check223, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph.us.us91.i
  %i.fo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.lcssa57.us85.us.i, i64 0
  %i.fp = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.us-phi55.us83.us92.i, i64 0
  %broadcast.splatinsert226 = insertelement <2 x i32> poison, i32 %i.fn, i64 0
  %broadcast.splat227 = shufflevector <2 x i32> %broadcast.splatinsert226, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body231

vector.body231:                                   ; preds = %vector.body231, %vector.ph224
  %index232 = phi i32 [ 0, %vector.ph224 ], [ %index.next239, %vector.body231 ]
  %vec.phi233 = phi <2 x i64> [ %i.fo, %vector.ph224 ], [ %i.gc, %vector.body231 ]
  %vec.phi234 = phi <2 x i64> [ splat (i64 -1), %vector.ph224 ], [ %i.gd, %vector.body231 ]
  %vec.phi235 = phi <2 x i64> [ %i.fp, %vector.ph224 ], [ %i.fy, %vector.body231 ]
  %vec.phi236 = phi <2 x i64> [ zeroinitializer, %vector.ph224 ], [ %i.fz, %vector.body231 ]
  %vec.ind237 = phi <2 x i32> [ %induction230, %vector.ph224 ], [ %vec.ind.next240, %vector.body231 ] ; 3 uses
  %step.add238 = add <2 x i32> %vec.ind237, splat (i32 2)
  %i.fq = and <2 x i32> %vec.ind237, splat (i32 7)
  %i.fr = and <2 x i32> %step.add238, splat (i32 7)
  %i.fs = or disjoint <2 x i32> %i.fq, %broadcast.splat227
  %i.ft = or disjoint <2 x i32> %i.fr, %broadcast.splat227
  %i.fu = zext nneg <2 x i32> %i.fs to <2 x i64>
  %i.fv = zext nneg <2 x i32> %i.ft to <2 x i64>
  %i.fw = shl nuw <2 x i64> splat (i64 1), %i.fu  ; 2 uses
  %i.fx = shl nuw <2 x i64> splat (i64 1), %i.fv  ; 2 uses
  %i.fy = or <2 x i64> %i.fw, %vec.phi235         ; 2 uses
  %i.fz = or <2 x i64> %i.fx, %vec.phi236         ; 2 uses
  %i.ga = xor <2 x i64> %i.fw, splat (i64 -1)
  %i.gb = xor <2 x i64> %i.fx, splat (i64 -1)
  %i.gc = and <2 x i64> %vec.phi233, %i.ga        ; 2 uses
  %i.gd = and <2 x i64> %vec.phi234, %i.gb        ; 2 uses
  %index.next239 = add nuw i32 %index232, 4       ; 2 uses
  %vec.ind.next240 = add <2 x i32> %vec.ind237, splat (i32 4)
  %i.ge = icmp eq i32 %index.next239, %n.vec225
  br i1 %i.ge, label %middle.block241, label %vector.body231, !llvm.loop !9469

middle.block241:                                  ; preds = %vector.body231
  %bin.rdx242 = and <2 x i64> %i.gd, %i.gc
  %i.gf = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx242) ; 2 uses
  %bin.rdx243 = or <2 x i64> %i.fz, %i.fy
  %i.gg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx243) ; 2 uses
  br i1 %cmp.n244, label %._crit_edge.split.us.split.us69.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader: ; preds = %.lr.ph.us.us91.i, %middle.block241
  %.ph301 = phi i64 [ %.lcssa57.us85.us.i, %.lr.ph.us.us91.i ], [ %i.gf, %middle.block241 ]
  %.ph302 = phi i64 [ %.us-phi55.us83.us92.i, %.lr.ph.us.us91.i ], [ %i.gg, %middle.block241 ]
  %.044.us.us67.us.i.ph = phi i32 [ %i.dm, %.lr.ph.us.us91.i ], [ %i.dw, %middle.block241 ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i
  %i.gh = phi i64 [ %i.gp, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i ], [ %.ph301, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader ]
  %i.gi = phi i64 [ %i.gn, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i ], [ %.ph302, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader ]
  %.044.us.us67.us.i = phi i32 [ %i.gq, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i ], [ %.044.us.us67.us.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i.preheader ] ; 3 uses
  %i.gj = and i32 %.044.us.us67.us.i, 7
  %i.gk = or disjoint i32 %i.gj, %i.fn
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = shl nuw i64 1, %i.gl                    ; 2 uses
  %i.gn = or i64 %i.gm, %i.gi                     ; 2 uses
  %i.go = xor i64 %i.gm, -1
  %i.gp = and i64 %i.gh, %i.go                    ; 2 uses
  %i.gq = add i32 %.044.us.us67.us.i, 1
  %exitcond117.not.i = icmp eq i32 %.044.us.us67.us.i, %i.dp
  br i1 %exitcond117.not.i, label %._crit_edge.split.us.split.us69.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i, !llvm.loop !9470

._crit_edge.split.us.split.us69.us.i:             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i, %middle.block241
  %.lcssa210 = phi i64 [ %i.gg, %middle.block241 ], [ %i.gn, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i ] ; 2 uses
  %.lcssa209 = phi i64 [ %i.gf, %middle.block241 ], [ %i.gp, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us.us66.us.i ] ; 2 uses
  %i.gr = add i32 %.01661.us.us93.i, 1
  %exitcond118.not.i = icmp eq i32 %.01661.us.us93.i, %i.do
  br i1 %exitcond118.not.i, label %._crit_edge64.split72.us.split.us95.i, label %.lr.ph.us.us91.i, !llvm.loop !9468

._crit_edge64.split72.us.split.us95.i:            ; preds = %._crit_edge.split.us.split.us69.us.i
  store i64 %.lcssa209, ptr %i.fl, align 8, !tbaa !791
  store i64 %.lcssa210, ptr %i.fk, align 8, !tbaa !791
  %i.gs = add i32 %.01788.us.i, 1
  %exitcond119.not.i = icmp eq i32 %.01788.us.i, %i.dn
  br i1 %exitcond119.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph63.us.i, !llvm.loop !379

.preheader.split.split.split.i:                   ; preds = %.preheader.i
  br i1 %i.de, label %.lr.ph63.us99.i.preheader, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %.preheader.split.split.split.i
  %i.gt = add i32 %i.dp, 1
  %i.gu = sub i32 %i.gt, %i.dm                    ; 3 uses
  %min.iters.check275 = icmp ult i32 %i.gu, 4
  %n.vec277 = and i32 %i.gu, -4                   ; 3 uses
  %i.gv = add i32 %i.dm, %n.vec277
  %broadcast.splatinsert280 = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat281 = shufflevector <2 x i32> %broadcast.splatinsert280, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction282 = add <2 x i32> %broadcast.splat281, <i32 0, i32 1>
  %cmp.n296 = icmp eq i32 %i.gu, %n.vec277
  br label %.lr.ph63.i

.lr.ph63.us99.i.preheader:                        ; preds = %.preheader.split.split.split.i
  %i.gw = add i32 %i.dp, 1
  %i.gx = sub i32 %i.gw, %i.dm                    ; 3 uses
  %min.iters.check249 = icmp ult i32 %i.gx, 4
  %n.vec251 = and i32 %i.gx, -4                   ; 3 uses
  %i.gy = add i32 %i.dm, %n.vec251
  %broadcast.splatinsert254 = insertelement <2 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat255 = shufflevector <2 x i32> %broadcast.splatinsert254, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction256 = add <2 x i32> %broadcast.splat255, <i32 0, i32 1>
  %cmp.n270 = icmp eq i32 %i.gx, %n.vec251
  br label %.lr.ph63.us99.i

.lr.ph63.us99.i:                                  ; preds = %.lr.ph63.us99.i.preheader, %._crit_edge64.split72.split.us.us.i
  %.01788.us100.i = phi i32 [ %i.ij, %._crit_edge64.split72.split.us.us.i ], [ %i.dk, %.lr.ph63.us99.i.preheader ] ; 3 uses
  %i.gz = and i32 %.01788.us100.i, 7
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ha ; 2 uses
  %.promoted73.us.i = load i64, ptr %i.hb, align 8, !tbaa !791
  %.promoted80.us.i = load i64, ptr %i.hc, align 8, !tbaa !791
  br label %.lr.ph.us75.us.i

.lr.ph.us75.us.i:                                 ; preds = %._crit_edge.split.split.us.us.us.i, %.lr.ph63.us99.i
  %.lcssa52.us81.us.i = phi i64 [ %.promoted80.us.i, %.lr.ph63.us99.i ], [ %.lcssa207, %._crit_edge.split.split.us.us.us.i ] ; 2 uses
  %.us-phi74.us.us.i = phi i64 [ %.promoted73.us.i, %.lr.ph63.us99.i ], [ %.lcssa208, %._crit_edge.split.split.us.us.us.i ] ; 2 uses
  %.01661.us76.us.i = phi i32 [ %i.dl, %.lr.ph63.us99.i ], [ %i.ii, %._crit_edge.split.split.us.us.us.i ] ; 3 uses
  %i.hd = shl i32 %.01661.us76.us.i, 3
  %i.he = and i32 %i.hd, 56                       ; 2 uses
  br i1 %min.iters.check249, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph.us75.us.i
  %i.hf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa52.us81.us.i, i64 0
  %i.hg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.us-phi74.us.us.i, i64 0
  %broadcast.splatinsert252 = insertelement <2 x i32> poison, i32 %i.he, i64 0
  %broadcast.splat253 = shufflevector <2 x i32> %broadcast.splatinsert252, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph250
  %index258 = phi i32 [ 0, %vector.ph250 ], [ %index.next265, %vector.body257 ]
  %vec.phi259 = phi <2 x i64> [ %i.hf, %vector.ph250 ], [ %i.ht, %vector.body257 ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph250 ], [ %i.hu, %vector.body257 ]
  %vec.phi261 = phi <2 x i64> [ %i.hg, %vector.ph250 ], [ %i.hr, %vector.body257 ]
  %vec.phi262 = phi <2 x i64> [ splat (i64 -1), %vector.ph250 ], [ %i.hs, %vector.body257 ]
  %vec.ind263 = phi <2 x i32> [ %induction256, %vector.ph250 ], [ %vec.ind.next266, %vector.body257 ] ; 3 uses
  %step.add264 = add <2 x i32> %vec.ind263, splat (i32 2)
  %i.hh = and <2 x i32> %vec.ind263, splat (i32 7)
  %i.hi = and <2 x i32> %step.add264, splat (i32 7)
  %i.hj = or disjoint <2 x i32> %i.hh, %broadcast.splat253
  %i.hk = or disjoint <2 x i32> %i.hi, %broadcast.splat253
  %i.hl = zext nneg <2 x i32> %i.hj to <2 x i64>
  %i.hm = zext nneg <2 x i32> %i.hk to <2 x i64>
  %i.hn = shl nuw <2 x i64> splat (i64 1), %i.hl  ; 2 uses
  %i.ho = shl nuw <2 x i64> splat (i64 1), %i.hm  ; 2 uses
  %i.hp = xor <2 x i64> %i.hn, splat (i64 -1)
  %i.hq = xor <2 x i64> %i.ho, splat (i64 -1)
  %i.hr = and <2 x i64> %vec.phi261, %i.hp        ; 2 uses
  %i.hs = and <2 x i64> %vec.phi262, %i.hq        ; 2 uses
  %i.ht = or <2 x i64> %i.hn, %vec.phi259         ; 2 uses
  %i.hu = or <2 x i64> %i.ho, %vec.phi260         ; 2 uses
  %index.next265 = add nuw i32 %index258, 4       ; 2 uses
  %vec.ind.next266 = add <2 x i32> %vec.ind263, splat (i32 4)
  %i.hv = icmp eq i32 %index.next265, %n.vec251
  br i1 %i.hv, label %middle.block267, label %vector.body257, !llvm.loop !9471

middle.block267:                                  ; preds = %vector.body257
  %bin.rdx268 = or <2 x i64> %i.hu, %i.ht
  %i.hw = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx268) ; 2 uses
  %bin.rdx269 = and <2 x i64> %i.hs, %i.hr
  %i.hx = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx269) ; 2 uses
  br i1 %cmp.n270, label %._crit_edge.split.split.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader: ; preds = %.lr.ph.us75.us.i, %middle.block267
  %.ph303 = phi i64 [ %.lcssa52.us81.us.i, %.lr.ph.us75.us.i ], [ %i.hw, %middle.block267 ]
  %.ph304 = phi i64 [ %.us-phi74.us.us.i, %.lr.ph.us75.us.i ], [ %i.hx, %middle.block267 ]
  %.044.us46.us.us.i.ph = phi i32 [ %i.dm, %.lr.ph.us75.us.i ], [ %i.gy, %middle.block267 ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i
  %i.hy = phi i64 [ %i.ig, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i ], [ %.ph303, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader ]
  %i.hz = phi i64 [ %i.if, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i ], [ %.ph304, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader ]
  %.044.us46.us.us.i = phi i32 [ %i.ih, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i ], [ %.044.us46.us.us.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i.preheader ] ; 3 uses
  %i.ia = and i32 %.044.us46.us.us.i, 7
  %i.ib = or disjoint i32 %i.ia, %i.he
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = shl nuw i64 1, %i.ic                    ; 2 uses
  %i.ie = xor i64 %i.id, -1
  %i.if = and i64 %i.hz, %i.ie                    ; 2 uses
  %i.ig = or i64 %i.id, %i.hy                     ; 2 uses
  %i.ih = add i32 %.044.us46.us.us.i, 1
  %exitcond114.not.i = icmp eq i32 %.044.us46.us.us.i, %i.dp
  br i1 %exitcond114.not.i, label %._crit_edge.split.split.us.us.us.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i, !llvm.loop !9472

._crit_edge.split.split.us.us.us.i:               ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i, %middle.block267
  %.lcssa208 = phi i64 [ %i.hx, %middle.block267 ], [ %i.if, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i ] ; 2 uses
  %.lcssa207 = phi i64 [ %i.hw, %middle.block267 ], [ %i.ig, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.us45.us.us.i ] ; 2 uses
  %i.ii = add i32 %.01661.us76.us.i, 1
  %exitcond115.not.i = icmp eq i32 %.01661.us76.us.i, %i.do
  br i1 %exitcond115.not.i, label %._crit_edge64.split72.split.us.us.i, label %.lr.ph.us75.us.i, !llvm.loop !9468

._crit_edge64.split72.split.us.us.i:              ; preds = %._crit_edge.split.split.us.us.us.i
  store i64 %.lcssa207, ptr %i.hc, align 8, !tbaa !791
  store i64 %.lcssa208, ptr %i.hb, align 8, !tbaa !791
  %i.ij = add i32 %.01788.us100.i, 1
  %exitcond116.not.i = icmp eq i32 %.01788.us100.i, %i.dn
  br i1 %exitcond116.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph63.us99.i, !llvm.loop !379

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader, %._crit_edge64.split72.split.i
  %.01788.i = phi i32 [ %i.io, %._crit_edge64.split72.split.i ], [ %i.dk, %.lr.ph63.i.preheader ] ; 3 uses
  %i.ik = and i32 %.01788.i, 7
  %i.il = zext nneg i32 %i.ik to i64              ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.037120, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.il ; 2 uses
  %.promoted73.i = load i64, ptr %i.im, align 8, !tbaa !791
  %.promoted.i = load i64, ptr %i.in, align 8, !tbaa !791
  br label %.lr.ph.i

._crit_edge64.split72.split.i:                    ; preds = %._crit_edge.split.split.i
  store i64 %.lcssa, ptr %i.in, align 8, !tbaa !791
  store i64 %.lcssa206, ptr %i.im, align 8, !tbaa !791
  %i.io = add i32 %.01788.i, 1
  %exitcond113.not.i = icmp eq i32 %.01788.i, %i.dn
  br i1 %exitcond113.not.i, label %_ZN7openvdb5v13_04tree8LeafNodeIbLj3EE4fillERKNS0_4math9CoordBBoxEbb.exit, label %.lr.ph63.i, !llvm.loop !379

.lr.ph.i:                                         ; preds = %._crit_edge.split.split.i, %.lr.ph63.i
  %.lcssa5079.i = phi i64 [ %.promoted.i, %.lr.ph63.i ], [ %.lcssa, %._crit_edge.split.split.i ] ; 2 uses
  %.us-phi74.i = phi i64 [ %.promoted73.i, %.lr.ph63.i ], [ %.lcssa206, %._crit_edge.split.split.i ] ; 2 uses
  %.01661.i = phi i32 [ %i.dl, %.lr.ph63.i ], [ %i.jk, %._crit_edge.split.split.i ] ; 3 uses
  %i.ip = shl i32 %.01661.i, 3
  %i.iq = and i32 %i.ip, 56                       ; 2 uses
  br i1 %min.iters.check275, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i
  %i.ir = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.lcssa5079.i, i64 0
  %i.is = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %.us-phi74.i, i64 0
  %broadcast.splatinsert278 = insertelement <2 x i32> poison, i32 %i.iq, i64 0
  %broadcast.splat279 = shufflevector <2 x i32> %broadcast.splatinsert278, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph276
  %index284 = phi i32 [ 0, %vector.ph276 ], [ %index.next291, %vector.body283 ]
  %vec.phi285 = phi <2 x i64> [ %i.ir, %vector.ph276 ], [ %i.jf, %vector.body283 ]
  %vec.phi286 = phi <2 x i64> [ splat (i64 -1), %vector.ph276 ], [ %i.jg, %vector.body283 ]
  %vec.phi287 = phi <2 x i64> [ %i.is, %vector.ph276 ], [ %i.jd, %vector.body283 ]
  %vec.phi288 = phi <2 x i64> [ splat (i64 -1), %vector.ph276 ], [ %i.je, %vector.body283 ]
  %vec.ind289 = phi <2 x i32> [ %induction282, %vector.ph276 ], [ %vec.ind.next292, %vector.body283 ] ; 3 uses
  %step.add290 = add <2 x i32> %vec.ind289, splat (i32 2)
  %i.it = and <2 x i32> %vec.ind289, splat (i32 7)
  %i.iu = and <2 x i32> %step.add290, splat (i32 7)
  %i.iv = or disjoint <2 x i32> %i.it, %broadcast.splat279
  %i.iw = or disjoint <2 x i32> %i.iu, %broadcast.splat279
  %i.ix = zext nneg <2 x i32> %i.iv to <2 x i64>
  %i.iy = zext nneg <2 x i32> %i.iw to <2 x i64>
  %i.iz = shl nuw <2 x i64> splat (i64 1), %i.ix
  %i.ja = shl nuw <2 x i64> splat (i64 1), %i.iy
  %i.jb = xor <2 x i64> %i.iz, splat (i64 -1)     ; 2 uses
  %i.jc = xor <2 x i64> %i.ja, splat (i64 -1)     ; 2 uses
  %i.jd = and <2 x i64> %vec.phi287, %i.jb        ; 2 uses
  %i.je = and <2 x i64> %vec.phi288, %i.jc        ; 2 uses
  %i.jf = and <2 x i64> %vec.phi285, %i.jb        ; 2 uses
  %i.jg = and <2 x i64> %vec.phi286, %i.jc        ; 2 uses
  %index.next291 = add nuw i32 %index284, 4       ; 2 uses
  %vec.ind.next292 = add <2 x i32> %vec.ind289, splat (i32 4)
  %i.jh = icmp eq i32 %index.next291, %n.vec277
  br i1 %i.jh, label %middle.block293, label %vector.body283, !llvm.loop !9473

middle.block293:                                  ; preds = %vector.body283
  %bin.rdx294 = and <2 x i64> %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx294) ; 2 uses
  %bin.rdx295 = and <2 x i64> %i.je, %i.jd
  %i.jj = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx295) ; 2 uses
  br i1 %cmp.n296, label %._crit_edge.split.split.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader: ; preds = %.lr.ph.i, %middle.block293
  %.ph305 = phi i64 [ %.lcssa5079.i, %.lr.ph.i ], [ %i.ji, %middle.block293 ]
  %.ph306 = phi i64 [ %.us-phi74.i, %.lr.ph.i ], [ %i.jj, %middle.block293 ]
  %.044.i.ph = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.gv, %middle.block293 ]
  br label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i

._crit_edge.split.split.i:                        ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i, %middle.block293
  %.lcssa206 = phi i64 [ %i.jj, %middle.block293 ], [ %i.js, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ] ; 2 uses
  %.lcssa = phi i64 [ %i.ji, %middle.block293 ], [ %i.jt, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ] ; 2 uses
  %i.jk = add i32 %.01661.i, 1
  %exitcond112.not.i = icmp eq i32 %.01661.i, %i.do
  br i1 %exitcond112.not.i, label %._crit_edge64.split72.split.i, label %.lr.ph.i, !llvm.loop !9468

_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i: ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i
  %i.jl = phi i64 [ %i.jt, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ], [ %.ph305, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader ]
  %i.jm = phi i64 [ %i.js, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ], [ %.ph306, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader ]
  %.044.i = phi i32 [ %i.ju, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i ], [ %.044.i.ph, %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i.preheader ] ; 3 uses
  %i.jn = and i32 %.044.i, 7
  %i.jo = or disjoint i32 %i.jn, %i.iq
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl nuw i64 1, %i.jp
  %i.jr = xor i64 %i.jq, -1                       ; 2 uses
  %i.js = and i64 %i.jm, %i.jr                    ; 2 uses
  %i.jt = and i64 %i.jl, %i.jr                    ; 2 uses
  %i.ju = add i32 %.044.i, 1
  %exitcond.not.i = icmp eq i32 %.044.i, %i.dp
  br i1 %exitcond.not.i, label %._crit_edge.split.split.i, label %_ZN7openvdb5v13_04util8NodeMaskILj3EE3setEjb.exit.i, !llvm.loop !9474

bb.e:                                             ; preds = %bb.b
  %i.jv = zext nneg i32 %i.as to i64
end_hunk_0
