inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjmEEvRKNS_6TensorEPT_PT0_l:bb.a
  %i.fv = getelementptr i8, ptr %.01839, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 2
  %next.gep49 = getelementptr i8, ptr %.01839, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i32>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i32>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 8
  store <2 x i32> %i.fz, ptr %next.gep49, align 4, !tbaa !3
  store <2 x i32> %i.ga, ptr %i.gb, align 4, !tbaa !3
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !511

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01737 = phi i64 [ %i.gh, %.lr.ph ], [ %.01737.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.136 = phi ptr [ %i.gg, %.lr.ph ], [ %.136.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.136, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.136, align 4, !tbaa !3
  %i.gh = add nuw nsw i64 %.01737, 1              ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph, !llvm.loop !512

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.040, -1
  %i.gx = icmp sgt i64 %.040, 1
  br i1 %i.gx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !504

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 14 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 38 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64         ; 3 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check26 = icmp ult i64 %i.t, 4
  %n.vec29 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n39 = icmp eq i64 %i.t, %n.vec29
  %min.iters.check11 = icmp ult i64 %i.h, 4
  %n.vec14 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec14, 3
  %cmp.n22 = icmp eq i64 %i.h, %n.vec14
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 6 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.01838.us8 = ptrtoaddr ptr %.01838.us to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check26, label %scalar.ph25.preheader, label %vector.body30

vector.body30:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body30
  %index31 = phi i64 [ %index.next37, %vector.body30 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body30 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi32 = phi <2 x i64> [ %i.ah, %vector.body30 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index31 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load33 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load34 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load35 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load36 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load35, %wide.load33
  %i.af = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi32         ; 2 uses
  %index.next37 = add nuw i64 %index31, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next37, %n.vec29
  br i1 %i.ai, label %middle.block38, label %vector.body30, !llvm.loop !513

middle.block38:                                   ; preds = %vector.body30
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n39, label %.loopexit34.us, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block38
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec29, %middle.block38 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block38 ]
  br label %scalar.ph25

scalar.ph25:                                      ; preds = %scalar.ph25.preheader, %scalar.ph25
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph25 ], [ %.011.i.i.i.us.ph, %scalar.ph25.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph25 ], [ %.0910.i.i.i.us.ph, %scalar.ph25.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph25, !llvm.loop !514

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 1 ; 4 uses
  store i8 %i.do, ptr %.01937.us, align 1, !tbaa !7
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.as = sub i64 %i.r, %.01838.us8
  %diff.check9 = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check11, i1 true, i1 %diff.check9
  br i1 %or.cond, label %.lr.ph.us.preheader42, label %vector.ph12

vector.ph12:                                      ; preds = %.lr.ph.us.preheader
  %i.at = getelementptr i8, ptr %.01838.us, i64 %i.y ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph12
  %index16 = phi i64 [ 0, %vector.ph12 ], [ %index.next20, %vector.body15 ] ; 3 uses
  %i.au = shl i64 %index16, 3
  %next.gep17 = getelementptr i8, ptr %.01838.us, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.av, align 8, !tbaa !10
  %wide.load19 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !10
  %i.ax = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x i64> %wide.load18, ptr %next.gep17, align 8, !tbaa !10
  store <2 x i64> %wide.load19, ptr %i.ax, align 8, !tbaa !10
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next20, %n.vec14
  br i1 %i.ay, label %middle.block21, label %vector.body15, !llvm.loop !515

middle.block21:                                   ; preds = %vector.body15
  br i1 %cmp.n22, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %.lr.ph.us.preheader, %middle.block21
  %.01736.us.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec14, %middle.block21 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.01838.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block21 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01736.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.bd, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bc, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 8 ; 3 uses
  store i64 %i.bb, ptr %.135.us.prol, align 8, !tbaa !10
  %i.bd = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !516

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bc, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader42 ], [ %i.bc, %.lr.ph.us.prol ]
  %i.be = sub nsw i64 %.01736.us.ph, %i.x
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cl, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ck, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %.135.us, i64 8
  store i64 %i.bh, ptr %.135.us, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.135.us, i64 16
  store i64 %i.bl, ptr %i.bi, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.135.us, i64 24
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 32
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.135.us, i64 40
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %.135.us, i64 48
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %.135.us, i64 56
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.135.us, i64 64 ; 2 uses
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !10
  %i.cl = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.h, %i.cl
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !517

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block21, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block21 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.at, %middle.block21 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ck, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cm = ptrtoint ptr %.val25.us to i64
  %i.cn = ptrtoint ptr %.val24.us to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = add nsw i64 %i.cp, -1                   ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = add nsw i64 %i.cs, 1                    ; 3 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cq
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !10
  %i.cw = icmp eq i64 %i.ct, %i.cv
  %i.cx = icmp sgt i64 %i.cp, 1
  %or.cond.i.us = and i1 %i.cw, %i.cx
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.cy = phi i64 [ %i.dg, %bb.c ], [ %i.ct, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dd, %bb.c ], [ %i.cq, %.loopexit.us ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !10
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dc, align 8, !tbaa !10
  %i.dd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dd ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  %i.dg = add nsw i64 %i.df, 1                    ; 2 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !10
  %i.dh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.di = add nsw i64 %.039.us, -1
  %i.dj = icmp sgt i64 %.039.us, 1
  br i1 %i.dj, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !518

.loopexit34.us:                                   ; preds = %scalar.ph25, %middle.block38
  %.lcssa = phi i64 [ %i.aj, %middle.block38 ], [ %i.ap, %scalar.ph25 ]
  %i.dk = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.lcssa
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !7   ; 2 uses
  %.not.us = icmp eq i8 %i.do, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dp = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.gl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 5 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.dq = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !7   ; 2 uses
  %.not.us44 = icmp eq i8 %i.dt, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  %.01838.us424 = ptrtoaddr ptr %.01838.us42 to i64
  store i8 %i.dt, ptr %.01937.us43, align 1, !tbaa !7
  %i.du = sub i64 %i.r, %.01838.us424
  %diff.check = icmp ugt i64 %i.du, -32
  %or.cond41 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond41, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us59
  %i.dv = getelementptr i8, ptr %.01838.us42, i64 %i.dp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %i.dw ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <2 x i64>, ptr %i.dx, align 8, !tbaa !10
  %wide.load5 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !10
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load5, ptr %i.dz, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us46.ph = phi ptr [ %.01838.us42, %.lr.ph.us59 ], [ %i.dv, %middle.block ] ; 2 uses
  %i.eb = sub nsw i64 %i.h, %.01736.us45.ph
  %xtraiter = and i64 %i.eb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us45.prol = phi i64 [ %i.ef, %scalar.ph.prol ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46.prol = phi ptr [ %i.ee, %scalar.ph.prol ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45.prol
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %.135.us46.prol, i64 8 ; 3 uses
  store i64 %i.ed, ptr %.135.us46.prol, align 8, !tbaa !10
  %i.ef = add nuw nsw i64 %.01736.us45.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !520

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ee, %scalar.ph.prol ]
  %.01736.us45.unr = phi i64 [ %.01736.us45.ph, %scalar.ph.preheader ], [ %i.ef, %scalar.ph.prol ]
  %.135.us46.unr = phi ptr [ %.135.us46.ph, %scalar.ph.preheader ], [ %i.ee, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %.01736.us45.ph, %i.h
  %i.eh = icmp ugt i64 %i.eg, -8
  br i1 %i.eh, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us45 = phi i64 [ %i.fn, %scalar.ph ], [ %.01736.us45.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us46 = phi ptr [ %i.fm, %scalar.ph ], [ %.135.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %.135.us46, i64 8
  store i64 %i.ej, ptr %.135.us46, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !10
  %i.eo = getelementptr inbounds nuw i8, ptr %.135.us46, i64 16
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %.135.us46, i64 24
  store i64 %i.er, ptr %i.eo, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %.135.us46, i64 32
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %.135.us46, i64 40
  store i64 %i.ez, ptr %i.ew, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %.135.us46, i64 48
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %.135.us46, i64 56
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %.135.us46, i64 64 ; 2 uses
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !10
  %i.fn = add nuw nsw i64 %.01736.us45, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fn, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !521

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.dv, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.fm, %scalar.ph ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 1
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.fo, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.fp = ptrtoint ptr %.val25.us50 to i64
  %i.fq = ptrtoint ptr %.val24.us49 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1                   ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ft ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !10
  %i.fw = add nsw i64 %i.fv, 1                    ; 3 uses
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.ft
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !10
  %i.fz = icmp eq i64 %i.fw, %i.fy
  %i.ga = icmp sgt i64 %i.fs, 1
  %or.cond.i.us51 = and i1 %i.fz, %i.ga
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.gb = phi i64 [ %i.gj, %bb.d ], [ %i.fw, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.gg, %bb.d ], [ %i.ft, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.gf, align 8, !tbaa !10
  %i.gg = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 2 uses
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !10
  %i.gk = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.gk, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.gl = add nsw i64 %.039.us41, -1
  %i.gm = icmp sgt i64 %.039.us41, 1
  br i1 %i.gm, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !518

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.gn = ptrtoint ptr %.sroa.029.0 to i64
  %i.go = sub i64 %.sroa.13.0, %i.gn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.go) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gq = ptrtoint ptr %.sroa.029.0 to i64
  %i.gr = sub i64 %.sroa.13.0, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.gr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ht, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.gv, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.gw = getelementptr inbounds nuw i8, ptr %.01937, i64 1
  store i8 %i.gv, ptr %.01937, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.gw, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gx = ptrtoint ptr %.val25 to i64
  %i.gy = ptrtoint ptr %.val24 to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr exact i64 %i.gz, 3                 ; 2 uses
  %i.hb = add nsw i64 %i.ha, -1                   ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hb ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !10
  %i.he = add nsw i64 %i.hd, 1                    ; 3 uses
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.hb
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !10
  %i.hh = icmp eq i64 %i.he, %i.hg
  %i.hi = icmp sgt i64 %i.ha, 1
  %or.cond.i = and i1 %i.hh, %i.hi
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.hj = phi i64 [ %i.hr, %bb.h ], [ %i.he, %bb.g ]
  %.03.i = phi i64 [ %i.ho, %bb.h ], [ %i.hb, %bb.g ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !10
  %i.hm = icmp eq i64 %i.hj, %i.hl
  br i1 %i.hm, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.hn, align 8, !tbaa !10
  %i.ho = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !10
  %i.hr = add nsw i64 %i.hq, 1                    ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !10
  %i.hs = icmp sgt i64 %.03.i, 1
  br i1 %i.hs, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ht = add nsw i64 %.039, -1
  %i.hu = icmp sgt i64 %.039, 1
  br i1 %i.hu, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !518

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.gp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr79 = freeze i64 %i.g
  %sext = shl i64 %.fr79, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val25 to i64
  %i.aa = ptrtoint ptr %.val24 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph40.split, label %.lr.ph40.split.us

.lr.ph40.split.us:                                ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.us.split.us, label %.lr.ph40.split.us.split

.lr.ph40.split.us.split.us:                       ; preds = %.lr.ph40.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph40.split.us.split.us
  %.039.us.us = phi i64 [ %i.p, %.lr.ph40.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01838.us.us = phi ptr [ %1, %.lr.ph40.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01937.us.us = phi ptr [ %2, %.lr.ph40.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01838.us.us13 = ptrtoaddr ptr %.01838.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !522

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit34.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit34.us.us, label %scalar.ph30, !llvm.loop !523

bb.b:                                             ; preds = %.loopexit34.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01937.us.us, i64 2 ; 4 uses
  store i16 %i.dc, ptr %.01937.us.us, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01838.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01838.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01838.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !524

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01736.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.135.us.us.ph = phi ptr [ %.01838.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01736.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01736.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01736.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.135.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.135.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.135.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.135.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01736.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !525

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01736.us.us.unr = phi i64 [ %.01736.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.135.us.us.unr = phi ptr [ %.135.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01736.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01736.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01736.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.135.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.135.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 8
  store i64 %i.br, ptr %.135.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01736.us.us, 8        ; 2 uses
  %exitcond91.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond91.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !526

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit34.us.us
  %.120.us.us = phi ptr [ %.01937.us.us, %.loopexit34.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01838.us.us, %.loopexit34.us.us ], [ %.01838.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.039.us.us, -1
  %i.cz = icmp sgt i64 %.039.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !527

.loopexit34.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !8  ; 2 uses
  %.not.us.us = icmp eq i16 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph40.split.us.split:                          ; preds = %.lr.ph40.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.us.split.split.preheader, label %.lr.ph40.split.us.split.split.us.preheader

.lr.ph40.split.us.split.split.us.preheader:       ; preds = %.lr.ph40.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.us.split.split.us

.lr.ph40.split.us.split.split.preheader:          ; preds = %.lr.ph40.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph40.split.us.split.split.prol.loopexit, label %.lr.ph40.split.us.split.split.prol

.lr.ph40.split.us.split.split.prol:               ; preds = %.lr.ph40.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i16, ptr %i.de, align 2, !tbaa !8  ; 2 uses
  %.not.us.prol = icmp eq i16 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph40.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.df, ptr %2, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph40.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph40.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph40.split.us.split.split.prol.loopexit

.lr.ph40.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph40.split.us.split.split.preheader
  %.039.us.unr = phi i64 [ %i.p, %.lr.ph40.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01937.us.unr = phi ptr [ %2, %.lr.ph40.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph40.split.us.split.split

.lr.ph40.split.us.split.split.us:                 ; preds = %.lr.ph40.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68
  %.039.us.us62 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %i.p, %.lr.ph40.split.us.split.split.us.preheader ] ; 2 uses
  %.01838.us.us63 = phi ptr [ %.2.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %1, %.lr.ph40.split.us.split.split.us.preheader ] ; 5 uses
  %.01937.us.us64 = phi ptr [ %.120.us.us69, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %2, %.lr.ph40.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !8  ; 2 uses
  %.not.us.us65 = icmp eq i16 %i.dm, 0
  br i1 %.not.us.us65, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, label %.lr.ph.us.us73, !prof !54

.lr.ph.us.us73:                                   ; preds = %.lr.ph40.split.us.split.split.us
  %.01838.us.us639 = ptrtoaddr ptr %.01838.us.us63 to i64
  store i16 %i.dm, ptr %.01937.us.us64, align 2, !tbaa !8
  %i.dn = sub i64 %i.r, %.01838.us.us639
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us73
  %i.do = getelementptr i8, ptr %.01838.us.us63, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01838.us.us63, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us73, %middle.block
  %.01736.us.us66.ph = phi i64 [ 0, %.lr.ph.us.us73 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us.us67.ph = phi ptr [ %.01838.us.us63, %.lr.ph.us.us73 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01736.us.us66.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us.us66.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01736.us.us66.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us.us67.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.135.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.135.us.us67.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.135.us.us67.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01736.us.us66.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !529

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01736.us.us66.unr = phi i64 [ %.01736.us.us66.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.135.us.us67.unr = phi ptr [ %.135.us.us67.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01736.us.us66.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us.us66 = phi i64 [ %i.fg, %scalar.ph ], [ %.01736.us.us66.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us.us67 = phi ptr [ %i.ff, %scalar.ph ], [ %.135.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 8
  store i64 %i.ec, ptr %.135.us.us67, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01736.us.us66, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph, !llvm.loop !530

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01937.us.us64, i64 2
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, %.lr.ph40.split.us.split.split.us
  %.120.us.us69 = phi ptr [ %.01937.us.us64, %.lr.ph40.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %.2.us.us70 = phi ptr [ %.01838.us.us63, %.lr.ph40.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.039.us.us62, -1
  %i.fl = icmp sgt i64 %.039.us.us62, 1
  br i1 %i.fl, label %.lr.ph40.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !527

.lr.ph40.split.us.split.split:                    ; preds = %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.039.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.039.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01937.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01937.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !8  ; 2 uses
  %.not.us = icmp eq i16 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph40.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01937.us, i64 2
  store i16 %i.fn, ptr %.01937.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph40.split.us.split.split
  %.120.us = phi ptr [ %.01937.us, %.lr.ph40.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !8  ; 2 uses
  %.not.us.1 = icmp eq i16 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 2
  store i16 %i.fs, ptr %.120.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.039.us, -2
  %i.fx = icmp sgt i64 %.039.us, 2
  br i1 %i.fx, label %.lr.ph40.split.us.split.split, label %._crit_edge.thread, !llvm.loop !527

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.split.us, label %.lr.ph40.split.split.preheader

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us44

.lr.ph.i.i.i.us44:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %.lr.ph40.split.split.us
  %.039.us41 = phi i64 [ %i.p, %.lr.ph40.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 2 uses
  %.01838.us42 = phi ptr [ %1, %.lr.ph40.split.split.us ], [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 6 uses
  %.01937.us43 = phi ptr [ %2, %.lr.ph40.split.split.us ], [ %.120.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 3 uses
  %.01838.us4265 = ptrtoaddr ptr %.01838.us42 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us44, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us44 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !531

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit34.us57, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us44, %middle.block96
  %.011.i.i.i.us45.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us45 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us45.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us46 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us46.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us45
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us45
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us46    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us45, 1     ; 2 uses
  %exitcond.not.i.i.i.us47 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us47, label %.loopexit34.us57, label %scalar.ph82, !llvm.loop !532

bb.c:                                             ; preds = %.loopexit34.us57
  %i.gu = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 2 ; 4 uses
  store i16 %i.jh, ptr %.01937.us43, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit.us55, label %.lr.ph.us59.preheader

.lr.ph.us59.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01838.us4265
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us59.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us59.preheader
  %i.gw = getelementptr i8, ptr %.01838.us42, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01838.us42, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !533

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us55, label %.lr.ph.us59.preheader104

.lr.ph.us59.preheader104:                         ; preds = %.lr.ph.us59.preheader, %middle.block78
  %.01736.us50.ph = phi i64 [ 0, %.lr.ph.us59.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.135.us51.ph = phi ptr [ %.01838.us42, %.lr.ph.us59.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01736.us50.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us59.prol.loopexit, label %.lr.ph.us59.prol

.lr.ph.us59.prol:                                 ; preds = %.lr.ph.us59.preheader104, %.lr.ph.us59.prol
  %.01736.us50.prol = phi i64 [ %i.hg, %.lr.ph.us59.prol ], [ %.01736.us50.ph, %.lr.ph.us59.preheader104 ] ; 2 uses
  %.135.us51.prol = phi ptr [ %i.hf, %.lr.ph.us59.prol ], [ %.135.us51.ph, %.lr.ph.us59.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us59.prol ], [ 0, %.lr.ph.us59.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.135.us51.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.135.us51.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01736.us50.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us59.prol.loopexit, label %.lr.ph.us59.prol, !llvm.loop !534

.lr.ph.us59.prol.loopexit:                        ; preds = %.lr.ph.us59.prol, %.lr.ph.us59.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us59.preheader104 ], [ %i.hf, %.lr.ph.us59.prol ]
  %.01736.us50.unr = phi i64 [ %.01736.us50.ph, %.lr.ph.us59.preheader104 ], [ %i.hg, %.lr.ph.us59.prol ]
  %.135.us51.unr = phi ptr [ %.135.us51.ph, %.lr.ph.us59.preheader104 ], [ %i.hf, %.lr.ph.us59.prol ]
  %i.hh = sub nsw i64 %.01736.us50.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us55, label %.lr.ph.us59

.lr.ph.us59:                                      ; preds = %.lr.ph.us59.prol.loopexit, %.lr.ph.us59
  %.01736.us50 = phi i64 [ %i.io, %.lr.ph.us59 ], [ %.01736.us50.unr, %.lr.ph.us59.prol.loopexit ] ; 9 uses
  %.135.us51 = phi ptr [ %i.in, %.lr.ph.us59 ], [ %.135.us51.unr, %.lr.ph.us59.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.135.us51, i64 8
  store i64 %i.hk, ptr %.135.us51, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.135.us51, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.135.us51, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.135.us51, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.135.us51, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.135.us51, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.135.us51, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.135.us51, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01736.us50, 8         ; 2 uses
  %exitcond95.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond95.not.7, label %.loopexit.us55, label %.lr.ph.us59, !llvm.loop !535

.loopexit.us55:                                   ; preds = %.lr.ph.us59.prol.loopexit, %.lr.ph.us59, %middle.block78, %bb.c, %.loopexit34.us57
  %.120.us52 = phi ptr [ %.01937.us43, %.loopexit34.us57 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us59 ], [ %i.gu, %.lr.ph.us59.prol.loopexit ]
  %.2.us53 = phi ptr [ %.01838.us42, %.loopexit34.us57 ], [ %.01838.us42, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us59.prol.loopexit ], [ %i.in, %.lr.ph.us59 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us:                                      ; preds = %.loopexit.us55, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us55 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us55 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us55
  %i.jd = add nsw i64 %.039.us41, -1
  %i.je = icmp sgt i64 %.039.us41, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us44, label %._crit_edge.thread, !llvm.loop !527

.loopexit34.us57:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !8  ; 2 uses
  %.not.us49 = icmp eq i16 %i.jh, 0
  br i1 %.not.us49, label %.loopexit.us55, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.029.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.029.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.01838 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph40.split.split.preheader ] ; 6 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %.0183847 = ptrtoaddr ptr %.01838 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !8  ; 2 uses
  %.not = icmp eq i16 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph40.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01937, i64 2 ; 4 uses
  store i16 %i.jo, ptr %.01937, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183847
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01838, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01838, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !536

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01736.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.135.ph = phi ptr [ %.01838, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01736.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01736.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01736.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.135.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.135.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.135.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.135.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01736.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !537

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01736.unr = phi i64 [ %.01736.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.135.unr = phi ptr [ %.135.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01736.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01736 = phi i64 [ %i.lj, %.lr.ph ], [ %.01736.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.135 = phi ptr [ %i.li, %.lr.ph ], [ %.135.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.135, i64 8
  store i64 %i.kf, ptr %.135, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.135, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.135, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.135, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.135, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.135, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.135, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.135, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01736, 8              ; 2 uses
  %exitcond93.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond93.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !538

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01838, %.lr.ph40.split.split ], [ %.01838, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.039, -1
  %i.lz = icmp sgt i64 %.039, 1
  br i1 %i.lz, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !527

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01839.us.us13 = ptrtoaddr ptr %.01839.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !539

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit35.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph30, !llvm.loop !540

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 4 ; 4 uses
  store i32 %i.dc, ptr %.01938.us.us, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01839.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01839.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !541

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01737.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01737.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.136.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.136.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.136.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01737.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !542

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01737.us.us.unr = phi i64 [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.136.us.us.unr = phi ptr [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01737.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01737.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.136.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.136.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 8
  store i64 %i.br, ptr %.136.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01737.us.us, 8        ; 2 uses
  %exitcond92.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond92.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !543

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.040.us.us, -1
  %i.cz = icmp sgt i64 %.040.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !544

.loopexit35.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3  ; 2 uses
  %.not.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %.not.us.prol = icmp eq i32 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.df, ptr %2, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 5 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3  ; 2 uses
  %.not.us.us66 = icmp eq i32 %i.dm, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  %.01839.us.us649 = ptrtoaddr ptr %.01839.us.us64 to i64
  store i32 %i.dm, ptr %.01938.us.us65, align 4, !tbaa !3
  %i.dn = sub i64 %i.r, %.01839.us.us649
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.do = getelementptr i8, ptr %.01839.us.us64, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01737.us.us67.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us.us67.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.136.us.us68.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.136.us.us68.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01737.us.us67.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !546

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01737.us.us67.unr = phi i64 [ %.01737.us.us67.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.136.us.us68.unr = phi ptr [ %.136.us.us68.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01737.us.us67.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.fg, %scalar.ph ], [ %.01737.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us.us68 = phi ptr [ %i.ff, %scalar.ph ], [ %.136.us.us68.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 8
  store i64 %i.ec, ptr %.136.us.us68, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01737.us.us67, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !547

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 4
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.040.us.us63, -1
  %i.fl = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.fl, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !544

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 2 uses
  %.not.us = icmp eq i32 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01938.us, i64 4
  store i32 %i.fn, ptr %.01938.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 2 uses
  %.not.us.1 = icmp eq i32 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 4
  store i32 %i.fs, ptr %.120.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.040.us, -2
  %i.fx = icmp sgt i64 %.040.us, 2
  br i1 %i.fx, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !544

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 6 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  %.01839.us4365 = ptrtoaddr ptr %.01839.us43 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !548

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit35.us58, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block96
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us46 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us46.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us47.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us46
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us47    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph82, !llvm.loop !549

bb.c:                                             ; preds = %.loopexit35.us58
  %i.gu = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 4 ; 4 uses
  store i32 %i.jh, ptr %.01938.us44, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01839.us4365
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us60.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us60.preheader
  %i.gw = getelementptr i8, ptr %.01839.us43, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01839.us43, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !550

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us56, label %.lr.ph.us60.preheader104

.lr.ph.us60.preheader104:                         ; preds = %.lr.ph.us60.preheader, %middle.block78
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01737.us51.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol

.lr.ph.us60.prol:                                 ; preds = %.lr.ph.us60.preheader104, %.lr.ph.us60.prol
  %.01737.us51.prol = phi i64 [ %i.hg, %.lr.ph.us60.prol ], [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %.136.us52.prol = phi ptr [ %i.hf, %.lr.ph.us60.prol ], [ %.136.us52.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us60.prol ], [ 0, %.lr.ph.us60.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.136.us52.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.136.us52.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01737.us51.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol, !llvm.loop !551

.lr.ph.us60.prol.loopexit:                        ; preds = %.lr.ph.us60.prol, %.lr.ph.us60.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %.01737.us51.unr = phi i64 [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ], [ %i.hg, %.lr.ph.us60.prol ]
  %.136.us52.unr = phi ptr [ %.136.us52.ph, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %i.hh = sub nsw i64 %.01737.us51.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us56, label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.io, %.lr.ph.us60 ], [ %.01737.us51.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %.136.us52 = phi ptr [ %i.in, %.lr.ph.us60 ], [ %.136.us52.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.136.us52, i64 8
  store i64 %i.hk, ptr %.136.us52, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.136.us52, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.136.us52, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.136.us52, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.136.us52, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.136.us52, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.136.us52, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.136.us52, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01737.us51, 8         ; 2 uses
  %exitcond96.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond96.not.7, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !552

.loopexit.us56:                                   ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60, %middle.block78, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us60 ], [ %i.gu, %.lr.ph.us60.prol.loopexit ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us60.prol.loopexit ], [ %i.in, %.lr.ph.us60 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.jd = add nsw i64 %.040.us42, -1
  %i.je = icmp sgt i64 %.040.us42, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !544

.loopexit35.us58:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !3  ; 2 uses
  %.not.us50 = icmp eq i32 %i.jh, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.030.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.030.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 6 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %.0183947 = ptrtoaddr ptr %.01839 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01938, i64 4 ; 4 uses
  store i32 %i.jo, ptr %.01938, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183947
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01839, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01839, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !553

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01737.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01737.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01737.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.136.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.136.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.136.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01737.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !554

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01737.unr = phi i64 [ %.01737.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.136.unr = phi ptr [ %.136.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01737.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01737 = phi i64 [ %i.lj, %.lr.ph ], [ %.01737.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.136 = phi ptr [ %i.li, %.lr.ph ], [ %.136.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.136, i64 8
  store i64 %i.kf, ptr %.136, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.136, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.136, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.136, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.136, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.136, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.136, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.136, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01737, 8              ; 2 uses
  %exitcond94.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond94.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !555

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.040, -1
  %i.lz = icmp sgt i64 %.040, 1
  br i1 %i.lz, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !544

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01839.us.us13 = ptrtoaddr ptr %.01839.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !556

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit35.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph30, !llvm.loop !557

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 8 ; 4 uses
  store i64 %i.dc, ptr %.01938.us.us, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01839.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01839.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !558

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01737.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01737.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.136.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.136.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.136.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01737.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !559

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01737.us.us.unr = phi i64 [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.136.us.us.unr = phi ptr [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01737.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01737.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.136.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.136.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 8
  store i64 %i.br, ptr %.136.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01737.us.us, 8        ; 2 uses
  %exitcond92.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond92.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !560

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.040.us.us, -1
  %i.cz = icmp sgt i64 %.040.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !561

.loopexit35.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !10 ; 2 uses
  %.not.us.us = icmp eq i64 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10 ; 2 uses
  %.not.us.prol = icmp eq i64 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.df, ptr %2, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 5 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10 ; 2 uses
  %.not.us.us66 = icmp eq i64 %i.dm, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  %.01839.us.us649 = ptrtoaddr ptr %.01839.us.us64 to i64
  store i64 %i.dm, ptr %.01938.us.us65, align 8, !tbaa !10
  %i.dn = sub i64 %i.r, %.01839.us.us649
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.do = getelementptr i8, ptr %.01839.us.us64, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01737.us.us67.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us.us67.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.136.us.us68.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.136.us.us68.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01737.us.us67.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !563

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01737.us.us67.unr = phi i64 [ %.01737.us.us67.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.136.us.us68.unr = phi ptr [ %.136.us.us68.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01737.us.us67.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.fg, %scalar.ph ], [ %.01737.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us.us68 = phi ptr [ %i.ff, %scalar.ph ], [ %.136.us.us68.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 8
  store i64 %i.ec, ptr %.136.us.us68, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01737.us.us67, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !564

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.040.us.us63, -1
  %i.fl = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.fl, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !561

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !10 ; 2 uses
  %.not.us = icmp eq i64 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01938.us, i64 8
  store i64 %i.fn, ptr %.01938.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 8
  store i64 %i.fs, ptr %.120.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.040.us, -2
  %i.fx = icmp sgt i64 %.040.us, 2
  br i1 %i.fx, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !561

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 6 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  %.01839.us4365 = ptrtoaddr ptr %.01839.us43 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !565

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit35.us58, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block96
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us46 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us46.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us47.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us46
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us47    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph82, !llvm.loop !566

bb.c:                                             ; preds = %.loopexit35.us58
  %i.gu = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 8 ; 4 uses
  store i64 %i.jh, ptr %.01938.us44, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01839.us4365
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us60.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us60.preheader
  %i.gw = getelementptr i8, ptr %.01839.us43, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01839.us43, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !567

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us56, label %.lr.ph.us60.preheader104

.lr.ph.us60.preheader104:                         ; preds = %.lr.ph.us60.preheader, %middle.block78
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01737.us51.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol

.lr.ph.us60.prol:                                 ; preds = %.lr.ph.us60.preheader104, %.lr.ph.us60.prol
  %.01737.us51.prol = phi i64 [ %i.hg, %.lr.ph.us60.prol ], [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %.136.us52.prol = phi ptr [ %i.hf, %.lr.ph.us60.prol ], [ %.136.us52.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us60.prol ], [ 0, %.lr.ph.us60.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.136.us52.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.136.us52.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01737.us51.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol, !llvm.loop !568

.lr.ph.us60.prol.loopexit:                        ; preds = %.lr.ph.us60.prol, %.lr.ph.us60.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %.01737.us51.unr = phi i64 [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ], [ %i.hg, %.lr.ph.us60.prol ]
  %.136.us52.unr = phi ptr [ %.136.us52.ph, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %i.hh = sub nsw i64 %.01737.us51.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us56, label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.io, %.lr.ph.us60 ], [ %.01737.us51.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %.136.us52 = phi ptr [ %i.in, %.lr.ph.us60 ], [ %.136.us52.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.136.us52, i64 8
  store i64 %i.hk, ptr %.136.us52, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.136.us52, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.136.us52, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.136.us52, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.136.us52, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.136.us52, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.136.us52, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.136.us52, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01737.us51, 8         ; 2 uses
  %exitcond96.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond96.not.7, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !569

.loopexit.us56:                                   ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60, %middle.block78, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us60 ], [ %i.gu, %.lr.ph.us60.prol.loopexit ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us60.prol.loopexit ], [ %i.in, %.lr.ph.us60 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.jd = add nsw i64 %.040.us42, -1
  %i.je = icmp sgt i64 %.040.us42, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !561

.loopexit35.us58:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !10 ; 2 uses
  %.not.us50 = icmp eq i64 %i.jh, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.030.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.030.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 6 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %.0183947 = ptrtoaddr ptr %.01839 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01938, i64 8 ; 4 uses
  store i64 %i.jo, ptr %.01938, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183947
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01839, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01839, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !570

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01737.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01737.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01737.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.136.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.136.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.136.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01737.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !571

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01737.unr = phi i64 [ %.01737.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.136.unr = phi ptr [ %.136.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01737.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01737 = phi i64 [ %i.lj, %.lr.ph ], [ %.01737.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.136 = phi ptr [ %i.li, %.lr.ph ], [ %.136.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.136, i64 8
  store i64 %i.kf, ptr %.136, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.136, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.136, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.136, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.136, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.136, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.136, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.136, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01737, 8              ; 2 uses
  %exitcond94.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond94.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !572

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.040, -1
  %i.lz = icmp sgt i64 %.040, 1
  br i1 %i.lz, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !561

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

declare void @_ZN5arrow14SparseCOOIndex4MakeERKSt10shared_ptrINS_6TensorEEb(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
end_hunk_0
