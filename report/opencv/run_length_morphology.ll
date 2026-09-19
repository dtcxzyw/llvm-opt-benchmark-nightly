Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/run_length_morphology?download=true
inline.NumInlined: 945
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8ximgproc2rlL23erode_with_boundary_rleERSt6vectorINS1_6rlTypeESaIS3_EEiiS6_S6_:bb.a

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZN2cv8ximgproc2rlL11addBoundaryERSt6vectorINS1_6rlTypeESaIS3_EEiiiiiiS6_.exit, %bb.aq, %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ap, %.body.i
  %.pn = phi { ptr, i32 } [ %.pn35.i, %bb.ap ], [ %.pn35.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lh = load ptr, ptr %8, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit51, label %bb.bh

bb.bh:                                            ; preds = %.body
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !33
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.lh to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.lm) #17
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit51

_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit51: ; preds = %.body, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ln = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit53, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit51
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !33
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.ls) #17
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit53

_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit53: ; preds = %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit51, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.lt = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit55, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit53
  %i.lu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !33
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lt to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.ly) #17
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit55

_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit55: ; preds = %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EED2Ev.exit53, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv8ximgproc2rlL9erode_rleERSt6vectorINS1_6rlTypeESaIS3_EES6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv8ximgproc2rl6rlTypeES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8ximgproc2rl6rlTypeES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !38
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE5clearEv.exit

_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN2cv8ximgproc2rl6rlTypeES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.u, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 4 uses
  %i.l = sub nsw i32 %i.k, %i.i                   ; 4 uses
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 6 uses
  %i.o = icmp slt i32 %i.l, -1
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp ne i32 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #19 ; 8 uses
  store i32 0, ptr %i.q, align 4, !tbaa !41
  %i.r = add nsw i64 %i.n, -1                     ; 3 uses
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  br i1 %i.s, label %bb.c, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #19
          to label %.noexc144 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit166.thread ; 10 uses

.noexc144:                                        ; preds = %bb.c
  store i32 0, ptr %i.u, align 4, !tbaa !41
  br i1 %i.s, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit145, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139: ; preds = %.noexc144
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.idx.i.i.i.i.i.i.i140 = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %.idx.i.i.i.i.i.i.i140, i1 false), !tbaa !41
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit145

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit145:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i139, %.noexc144
  %.not247 = icmp eq i32 %i.k, %i.i
  br i1 %.not247, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit145
  %scevgep = getelementptr i8, ptr %i.q, i64 4
  %i.w = zext nneg i32 %i.l to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.x, i1 false), !tbaa !41
  %scevgep287 = getelementptr i8, ptr %i.u, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep287, i8 -1, i64 %i.x, i1 false), !tbaa !41
  br label %._crit_edge

_ZNSt6vectorIiSaIiEED2Ev.exit166.thread:          ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit145
  store i32 0, ptr %i.q, align 4, !tbaa !41
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.aa = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12                ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = sext i32 %i.l to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !41
  %i.ai = icmp sgt i32 %i.af, 1
  br i1 %i.ai, label %.lr.ph251.preheader, label %._crit_edge252

.lr.ph251.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = and i64 %i.ae, 2147483647
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph251.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.aj = getelementptr [12 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !43 ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %.not133 = icmp eq i32 %i.al, %i.an
  br i1 %.not133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph251
  %i.ao = sub nsw i32 %i.al, %i.i
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !41
  %i.as = load i32, ptr %i.am, align 4, !tbaa !43
  %i.at = sub nsw i32 %i.as, %i.i
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.au
  store i32 %i.ar, ptr %i.av, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph251, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge252, label %.lr.ph251, !llvm.loop !138

._crit_edge252:                                   ; preds = %bb.e, %._crit_edge
  %i.aw = load ptr, ptr %2, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43 ; 4 uses
  %i.bd = sub nsw i32 %i.bc, %i.ay                ; 3 uses
  %i.be = add i32 %i.bd, 1                        ; 3 uses
  %i.bf = sext i32 %i.be to i64                   ; 3 uses
  %i.bg = icmp slt i32 %i.bd, -1
  br i1 %i.bg, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i146

bb.f:                                             ; preds = %._crit_edge252
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
          to label %.noexc152 unwind label %bb.i

.noexc152:                                        ; preds = %bb.f
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i146: ; preds = %._crit_edge252
  %.not.i.i.i.i147 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i147, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i146
  %i.bh = shl nuw nsw i64 %i.bf, 2
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #19
          to label %.noexc153 unwind label %bb.i  ; 5 uses

.noexc153:                                        ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !41
  %i.bk = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i148

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i148: ; preds = %.noexc153
  %i.bm = getelementptr i8, ptr %i.bi, i64 4
  %.idx.i.i.i.i.i.i.i149 = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %.idx.i.i.i.i.i.i.i149, i1 false), !tbaa !41
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i148, %.noexc153
  %i.bn = sub nsw i32 %i.i, %i.ay                 ; 2 uses
  %i.bo = sub nsw i32 %i.k, %i.bc                 ; 2 uses
  %.not124282 = icmp sgt i32 %i.bn, %i.bo
  br i1 %.not124282, label %._crit_edge284, label %.preheader237.lr.ph

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread:     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i146
  %i.bp = sub nsw i32 %i.i, %i.ay                 ; 2 uses
  %i.bq = sub nsw i32 %i.k, %i.bc                 ; 2 uses
  %.not124282356 = icmp sgt i32 %i.bp, %i.bq
  br i1 %.not124282356, label %_ZNSt6vectorIiSaIiEED2Ev.exit160, label %.preheader237.lr.ph

.preheader237.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154
  %i.br = phi i32 [ %i.bq, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread ], [ %i.bo, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154 ]
  %i.bs = phi i32 [ %i.bp, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread ], [ %i.bn, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154 ]
  %.sroa.20.0361 = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread ], [ %i.bj, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154 ] ; 2 uses
  %.sroa.0181.0358 = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154.thread ], [ %i.bi, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit154 ] ; 10 uses
  %.not125253 = icmp slt i32 %i.bd, 0             ; 2 uses
  %i.bt = sub i32 %i.ay, %i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %3 = add i32 %i.bc, 1
  %4 = sub i32 %3, %i.ay                          ; 3 uses
  %wide.trip.count293 = zext i32 %4 to i64        ; 3 uses
  %wide.trip.count305 = zext i32 %i.be to i64
  %xtraiter = and i64 %wide.trip.count293, 1
  %i.bv = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count293, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod396 = trunc i32 %4 to i1
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.lr.ph, %.thread
  %.2115283 = phi i32 [ %i.bs, %.preheader237.lr.ph ], [ %i.fx, %.thread ] ; 5 uses
  %.pre = add i32 %i.bt, %.2115283                ; 3 uses
  br i1 %.not125253, label %._crit_edge277.thread, label %.lr.ph255

bb.h:                                             ; preds = %.lr.ph255
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %.preheader235, label %.lr.ph255, !llvm.loop !139

.lr.ph255:                                        ; preds = %.preheader237, %bb.h
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.h ], [ 0, %.preheader237 ] ; 3 uses
  %i.bw = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.bx = add i32 %.pre, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0358, i64 %indvars.iv290
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !41
  %i.cc = icmp eq i32 %i.ca, -1
  br i1 %i.cc, label %.thread, label %bb.h

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.preheader235:                                    ; preds = %bb.h, %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE9push_backEOS3_.exit
  br i1 %.not125253, label %._crit_edge277.thread, label %.lr.ph259.preheader

.lr.ph259.preheader:                              ; preds = %.preheader235
  %i.ce = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !32    ; 3 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ch = load ptr, ptr %2, align 8, !tbaa !32
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %._crit_edge277
  br i1 %i.bv, label %.epil.preheader, label %.lr.ph259.new

.preheader.lr.ph.unr-lcssa:                       ; preds = %.lr.ph259.new
  br i1 %lcmp.mod.not, label %.preheader.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.lr.ph.unr-lcssa, %.lr.ph259
  %indvars.iv295.epil.init = phi i64 [ 0, %.lr.ph259 ], [ %indvars.iv.next296.1, %.preheader.lr.ph.unr-lcssa ] ; 2 uses
  %.0213257.epil.init = phi i32 [ -2147483648, %.lr.ph259 ], [ %.sroa.speculated.1, %.preheader.lr.ph.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod396)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0358, i64 %indvars.iv295.epil.init
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !47
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %indvars.iv295.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !47
  %i.cp = sub nsw i32 %i.cm, %i.co
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.0213257.epil.init, i32 %i.cp)
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.unr-lcssa, %.epil.preheader
  %.sroa.speculated.lcssa = phi i32 [ %.sroa.speculated.1, %.preheader.lr.ph.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader ] ; 4 uses
  br label %.preheader

.lr.ph259.new:                                    ; preds = %.lr.ph259, %.lr.ph259.new
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.1, %.lr.ph259.new ], [ 0, %.lr.ph259 ] ; 4 uses
  %.0213257 = phi i32 [ %.sroa.speculated.1, %.lr.ph259.new ], [ -2147483648, %.lr.ph259 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph259.new ], [ 0, %.lr.ph259 ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0358, i64 %indvars.iv295
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !47
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %indvars.iv295
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !47
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0213257, i32 %i.cx)
  %indvars.iv.next296 = or disjoint i64 %indvars.iv295, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0358, i64 %indvars.iv.next296
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %indvars.iv.next296
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !47
  %i.df = sub nsw i32 %i.dc, %i.de
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.df) ; 3 uses
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.lr.ph.unr-lcssa, label %.lr.ph259.new, !llvm.loop !140

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %indvars.iv303 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next304, %bb.n ] ; 4 uses
  %.0276 = phi i32 [ 2147483647, %.preheader.lr.ph ], [ %.2, %bb.n ] ; 4 uses
  %.0101275 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2103, %bb.n ] ; 3 uses
  %.0104274 = phi i8 [ 1, %.preheader.lr.ph ], [ %.1105, %bb.n ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0181.0358, i64 %indvars.iv303 ; 2 uses
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %indvars.iv303 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.dg, align 4, !tbaa !41 ; 3 uses
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !48 ; 3 uses
  %i.do = load i32, ptr %i.di, align 4, !tbaa !48 ; 3 uses
  %i.dp = add nsw i32 %i.do, %.sroa.speculated.lcssa
  %i.dq = icmp slt i32 %i.dn, %i.dp
  %i.dr = trunc nuw nsw i64 %indvars.iv303 to i32 ; 2 uses
  %i.ds = add i32 %.pre, %i.dr
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  br i1 %i.dq, label %.lr.ph260, label %.critedge

.lr.ph260:                                        ; preds = %.preheader
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !41 ; 4 uses
  %sext = sext i32 %i.dv to i64
  %i.dw = icmp eq i32 %i.dj, %i.dv
  br i1 %i.dw, label %.critedge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.dx = icmp eq i64 %indvars.iv.next301, %sext
  br i1 %i.dx, label %.critedge, label %.lr.ph, !llvm.loop !141

.lr.ph:                                           ; preds = %.lr.ph260, %bb.j
  %indvars.iv300376 = phi i64 [ %indvars.iv.next301, %bb.j ], [ %i.dk, %.lr.ph260 ]
  %indvars.iv.next301 = add nsw i64 %indvars.iv300376, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next301 to i32 ; 2 uses
  store i32 %indvars, ptr %i.dg, align 4, !tbaa !41
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %indvars.iv.next301 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !48 ; 3 uses
  %i.eb = load i32, ptr %i.di, align 4, !tbaa !48 ; 3 uses
  %i.ec = add nsw i32 %i.eb, %.sroa.speculated.lcssa
  %i.ed = icmp slt i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.j, label %..critedge.loopexit_crit_edge, !llvm.loop !141

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !141

.critedge:                                        ; preds = %bb.j, %.lr.ph260, %..critedge.loopexit_crit_edge, %.preheader
  %.lcssa242 = phi i32 [ %i.dj, %.preheader ], [ %i.dv, %.lr.ph260 ], [ %indvars, %..critedge.loopexit_crit_edge ], [ %i.dv, %bb.j ]
  %.lcssa241 = phi ptr [ %i.dl, %.preheader ], [ %i.dl, %.lr.ph260 ], [ %i.dy, %..critedge.loopexit_crit_edge ], [ %i.dy, %bb.j ]
  %.lcssa240 = phi i32 [ %i.dn, %.preheader ], [ %i.dn, %.lr.ph260 ], [ %i.ea, %..critedge.loopexit_crit_edge ], [ %i.ea, %bb.j ]
  %.lcssa = phi i32 [ %i.do, %.preheader ], [ %i.do, %.lr.ph260 ], [ %i.eb, %..critedge.loopexit_crit_edge ], [ %i.eb, %bb.j ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dt
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !41
  %i.eg = icmp eq i32 %.lcssa242, %i.ef
  br i1 %i.eg, label %.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.eh = trunc nuw i8 %.0104274 to i1
  br i1 %i.eh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ei = load i32, ptr %.lcssa241, align 4, !tbaa !47
  %i.ej = load i32, ptr %i.dh, align 4, !tbaa !47
  %i.ek = sub nsw i32 %i.ei, %i.ej
  %.not129 = icmp sgt i32 %i.ek, %.sroa.speculated.lcssa
  br i1 %.not129, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = sub nsw i32 %.lcssa240, %.lcssa         ; 2 uses
  %i.em = icmp slt i32 %i.el, %.0276
  %spec.select = select i1 %i.em, i32 %i.dr, i32 %.0101275
  %spec.select134 = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %.0276)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.1105 = phi i8 [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %bb.l ] ; 2 uses
  %.2103 = phi i32 [ %spec.select, %bb.m ], [ %.0101275, %bb.k ], [ %.0101275, %bb.l ] ; 2 uses
  %.2 = phi i32 [ %spec.select134, %bb.m ], [ %.0276, %bb.k ], [ %.0276, %bb.l ] ; 2 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge277, label %.preheader, !llvm.loop !142

._crit_edge277:                                   ; preds = %bb.n
  %i.en = trunc nuw i8 %.1105 to i1
  br i1 %i.en, label %._crit_edge277.thread, label %.lr.ph259, !llvm.loop !143

._crit_edge277.thread:                            ; preds = %._crit_edge277, %.preheader237, %.preheader235
  %.0.lcssa351 = phi i32 [ 2147483647, %.preheader237 ], [ 2147483647, %.preheader235 ], [ %.2, %._crit_edge277 ] ; 2 uses
  %.0101.lcssa350 = phi i32 [ 0, %.preheader237 ], [ 0, %.preheader235 ], [ %.2103, %._crit_edge277 ] ; 2 uses
  %.0213.lcssa344349 = phi i32 [ -2147483648, %.preheader237 ], [ -2147483648, %.preheader235 ], [ %.sroa.speculated.lcssa, %._crit_edge277 ] ; 2 uses
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !38  ; 8 uses
  %i.ep = load ptr, ptr %i.bu, align 8, !tbaa !33
  %.not.i.i155 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i155, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge277.thread
  store i32 %.0213.lcssa344349, ptr %i.eo, align 4, !tbaa !41
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %.0.lcssa351, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !41
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 %.2115283, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store ptr %i.eq, ptr %i.b, align 8, !tbaa !38
  br label %_ZNSt6vectorIN2cv8ximgproc2rl6rlTypeESaIS3_EE9push_backEOS3_.exit

bb.p:                                             ; preds = %._crit_edge277.thread
end_hunk_0
