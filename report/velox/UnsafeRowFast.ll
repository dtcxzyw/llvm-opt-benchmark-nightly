inline.NumInlined: 3109
inline.NumDeleted: 1191
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_115deserializeRowsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a

.lr.ph177.split.us:                               ; preds = %.lr.ph177.split.us.preheader, %.lr.ph177.split.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph177.split.us ], [ %indvars.iv200.ph, %.lr.ph177.split.us.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv200 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !97
  %i.gg = add i64 %i.gf, %i.fp
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !97
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.gh = icmp ugt i64 %i.fl, %indvars.iv.next201
  br i1 %i.gh, label %.lr.ph177.split.us, label %.preheader, !llvm.loop !215

.preheader.loopexit322.unr-lcssa:                 ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph177.split.epil.preheader

.lr.ph177.split.epil.preheader:                   ; preds = %.preheader.loopexit322.unr-lcssa, %.lr.ph177.split.preheader
  %indvars.iv197.epil.init = phi i64 [ 0, %.lr.ph177.split.preheader ], [ %indvars.iv.next198.1, %.preheader.loopexit322.unr-lcssa ] ; 3 uses
  %lcmp.mod326 = trunc i64 %i.fl to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.gi = lshr i64 %indvars.iv197.epil.init, 6
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !97
  %i.gl = and i64 %indvars.iv197.epil.init, 63
  %i.gm = shl nuw i64 1, %i.gl
  %i.gn = and i64 %i.gk, %i.gm
  %.not.i111.epil = icmp eq i64 %i.gn, 0
  br i1 %.not.i111.epil, label %.preheader, label %bb.x

bb.x:                                             ; preds = %.lr.ph177.split.epil.preheader
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv197.epil.init ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !97
  %i.gq = add i64 %i.gp, %i.fp
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !97
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit322.unr-lcssa, %bb.x, %.lr.ph177.split.epil.preheader, %.lr.ph177.split.us, %middle.block291, %vec.epilog.middle.block307, %._crit_edge174
  br i1 %.not161, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not = icmp eq ptr %i.s, null
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge184
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph177.split:                                  ; preds = %bb.ab, %.lr.ph177.split.preheader.new
  %indvars.iv197 = phi i64 [ 0, %.lr.ph177.split.preheader.new ], [ %indvars.iv.next198.1, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph177.split.preheader.new ], [ %niter.next.1, %bb.ab ]
  %i.ha = lshr i64 %indvars.iv197, 6
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !97
  %i.hd = and i64 %indvars.iv197, 62
  %i.he = shl nuw nsw i64 1, %i.hd
  %i.hf = and i64 %i.hc, %i.he
  %.not.i111 = icmp eq i64 %i.hf, 0
  br i1 %.not.i111, label %.lr.ph177.split.1, label %bb.z

bb.z:                                             ; preds = %.lr.ph177.split
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv197 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !97
  %i.hi = add i64 %i.hh, %i.fp
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !97
  br label %.lr.ph177.split.1

.lr.ph177.split.1:                                ; preds = %.lr.ph177.split, %bb.z
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 2 uses
  %i.hj = lshr i64 %indvars.iv197, 6
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !97
  %i.hm = and i64 %indvars.iv.next198, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = and i64 %i.hl, %i.hn
  %.not.i111.1 = icmp eq i64 %i.ho, 0
  br i1 %.not.i111.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177.split.1
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next198 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !97
  %i.hr = add i64 %i.hq, %i.fp
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !97
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph177.split.1
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit322.unr-lcssa, label %.lr.ph177.split, !llvm.loop !216

._crit_edge184:                                   ; preds = %bb.bp, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  store ptr null, ptr %0, align 8, !tbaa !24, !alias.scope !217
  %i.hs = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #30
          to label %.noexc112 unwind label %bb.y  ; 6 uses

.noexc112:                                        ; preds = %._crit_edge184
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i32 1, ptr %i.ht, align 8, !tbaa !124, !noalias !217
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 1, ptr %i.hu, align 4, !tbaa !126, !noalias !217
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hs, align 8, !tbaa !18, !noalias !217
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9RowVectorEJRPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEERKN5boost13intrusive_ptrINS1_6BufferEEERKmSt6vectorIS7_INS1_10BaseVectorEESaISN_EEEEvPT_DpOT0_(ptr noundef nonnull %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bq unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !217

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9RowVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc112
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 168) #27, !noalias !217
  br label %.body

bb.ac:                                            ; preds = %.lr.ph183, %bb.bp
  %indvars.iv209 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next210, %bb.bp ] ; 4 uses
  %i.hx = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = trunc nuw nsw i64 %indvars.iv209 to i32
  %i.ic = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, i32 noundef %i.ib)
          to label %bb.ad unwind label %bb.aj     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !15 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = invoke noundef zeroext i1 %i.ig(ptr noundef nonnull align 8 dereferenceable(18) %i.id)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ih, label %bb.bc, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ii = load i64, ptr %i.b, align 8, !tbaa !97  ; 11 uses
  %i.ij = icmp ugt i64 %i.ii, 1152921504606846975
  br i1 %i.ij, label %bb.ag, label %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #29
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.ag
  unreachable

_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.af
  %.not.i.i.i.i113 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i.i.i113, label %.loopexit.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.ik = shl nuw nsw i64 %i.ii, 3                ; 4 uses
  %i.il = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #30
          to label %.noexc115 unwind label %.loopexit164 ; 8 uses

.noexc115:                                        ; preds = %bb.ah
  %i.im = ptrtoaddr ptr %i.il to i64
  store ptr %i.il, ptr %10, align 8, !tbaa !166
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ii
  store ptr %i.in, ptr %i.gr, align 8, !tbaa !220
  store ptr null, ptr %i.il, align 8, !tbaa !210
  %i.io = getelementptr i8, ptr %i.il, i64 8      ; 3 uses
  %i.ip = add nsw i64 %i.ii, -1                   ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.ai, label %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc115
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ip, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.io, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !210
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.ai

.loopexit.thread:                                 ; preds = %_ZNSt6vectorIPcSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %._crit_edge181

bb.ai:                                            ; preds = %.noexc115, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ir, %_ZSt6fill_nIPPcmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.io, %.noexc115 ]
  store ptr %.0.i.i.i.i.i.ph, ptr %i.gs, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.is = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #30
          to label %.lr.ph180 unwind label %bb.ak ; 4 uses

.lr.ph180:                                        ; preds = %bb.ai
  store ptr %i.is, ptr %11, align 8, !tbaa !93
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ii
  store ptr %i.it, ptr %i.gt, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.is, i8 0, i64 %i.ik, i1 false), !tbaa !97
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ik
  store ptr %i.iu, ptr %i.gu, align 8, !tbaa !167
  %i.iv = load ptr, ptr %2, align 8               ; 4 uses
  %i.iw = load ptr, ptr %4, align 8               ; 5 uses
  br i1 %.not, label %.critedge.us.preheader, label %.lr.ph180.split

.critedge.us.preheader:                           ; preds = %.lr.ph180
  %i.ix = ptrtoaddr ptr %i.iv to i64
  %min.iters.check310 = icmp ult i64 %i.ii, 4
  %i.iy = sub i64 %i.im, %i.ix
  %diff.check = icmp ult i64 %i.iy, 32
  %or.cond = select i1 %min.iters.check310, i1 true, i1 %diff.check
  br i1 %or.cond, label %.critedge.us.preheader320, label %vector.ph311

vector.ph311:                                     ; preds = %.critedge.us.preheader
  %n.vec313 = and i64 %i.ii, 1152921504606846972  ; 3 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph311
  %index315 = phi i64 [ 0, %vector.ph311 ], [ %index.next316, %vector.body314 ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index315
  %14 = load <4 x ptr>, ptr %i.iz, align 8, !tbaa !210 ; 5 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %index315 ; 2 uses
  %15 = load <4 x i64>, ptr %i.ja, align 8, !tbaa !97 ; 5 uses
  %16 = extractelement <4 x i64> %15, i64 0
  %17 = extractelement <4 x ptr> %14, i64 0
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %16
  %19 = extractelement <4 x i64> %15, i64 1
  %20 = extractelement <4 x ptr> %14, i64 1
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %19
  %22 = extractelement <4 x i64> %15, i64 2
  %23 = extractelement <4 x ptr> %14, i64 2
  %i.jb = getelementptr inbounds nuw i8, ptr %23, i64 %22
  %24 = extractelement <4 x i64> %15, i64 3
  %25 = extractelement <4 x ptr> %14, i64 3
  %i.jc = getelementptr inbounds nuw i8, ptr %25, i64 %24
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jh = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.ji = load i32, ptr %i.je, align 4, !tbaa !3
  %i.jj = load i32, ptr %i.jf, align 4, !tbaa !3
  %i.jk = load i32, ptr %i.jg, align 4, !tbaa !3
  %i.jl = insertelement <4 x i32> poison, i32 %i.jh, i64 0
  %i.jm = insertelement <4 x i32> %i.jl, i32 %i.ji, i64 1
  %i.jn = insertelement <4 x i32> %i.jm, i32 %i.jj, i64 2
  %i.jo = insertelement <4 x i32> %i.jn, i32 %i.jk, i64 3
  %i.jp = sext <4 x i32> %i.jo to <4 x i64>
  %i.jq = getelementptr inbounds i8, <4 x ptr> %14, <4 x i64> %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %index315
  store <4 x ptr> %i.jq, ptr %i.jr, align 8, !tbaa !210
  %i.js = add <4 x i64> %15, splat (i64 8)
  store <4 x i64> %i.js, ptr %i.ja, align 8, !tbaa !97
  %index.next316 = add nuw i64 %index315, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next316, %n.vec313
  br i1 %i.jt, label %middle.block317, label %vector.body314, !llvm.loop !221

middle.block317:                                  ; preds = %vector.body314
  %cmp.n318 = icmp eq i64 %i.ii, %n.vec313
  br i1 %cmp.n318, label %._crit_edge181, label %.critedge.us.preheader320

.critedge.us.preheader320:                        ; preds = %.critedge.us.preheader, %middle.block317
  %indvars.iv206.ph = phi i64 [ 0, %.critedge.us.preheader ], [ %n.vec313, %middle.block317 ]
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us.preheader320, %.critedge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %.critedge.us ], [ %indvars.iv206.ph, %.critedge.us.preheader320 ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv206
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !210 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv206 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !97 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %.val.us = load i32, ptr %i.jz, align 4, !tbaa !3
  %i.ka = sext i32 %.val.us to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jv, i64 %i.ka
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv206
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !210
  %i.kd = add i64 %i.jx, 8
  store i64 %i.kd, ptr %i.jw, align 8, !tbaa !97
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ke = icmp samesign ugt i64 %i.ii, %indvars.iv.next207
  br i1 %i.ke, label %.critedge.us, label %._crit_edge181, !llvm.loop !222

._crit_edge181:                                   ; preds = %bb.al, %.critedge.us, %middle.block317, %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.kf = load ptr, ptr %8, align 8, !tbaa !179
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv209
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !177
  invoke fastcc void @_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorIPcSaISA_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.kh)
          to label %bb.am unwind label %bb.ax

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit164:                                     ; preds = %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit129

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit129

bb.ak:                                            ; preds = %bb.ai
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit127

.lr.ph180.split:                                  ; preds = %.lr.ph180, %bb.al
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %bb.al ], [ 0, %.lr.ph180 ] ; 8 uses
  %i.kk = lshr i64 %indvars.iv203, 6
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !97
  %i.kn = and i64 %indvars.iv203, 63
  %i.ko = shl nuw i64 1, %i.kn
  %i.kp = and i64 %i.km, %i.ko
  %.not.i119 = icmp eq i64 %i.kp, 0
  br i1 %.not.i119, label %.lr.ph180.split._crit_edge, label %.critedge

.lr.ph180.split._crit_edge:                       ; preds = %.lr.ph180.split
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv203
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !97
  br label %bb.al

.critedge:                                        ; preds = %.lr.ph180.split
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv203
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !210 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv203
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !97 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %.val = load i32, ptr %i.kv, align 4, !tbaa !3
  %i.kw = sext i32 %.val to i64
  %i.kx = getelementptr inbounds i8, ptr %i.kr, i64 %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv203
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !210
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph180.split._crit_edge, %.critedge
  %i.kz = phi i64 [ %.pre, %.lr.ph180.split._crit_edge ], [ %i.kt, %.critedge ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv203
  %i.lb = add i64 %i.kz, 8
  store i64 %i.lb, ptr %i.la, align 8, !tbaa !97
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.lc = icmp ugt i64 %i.ii, %indvars.iv.next204
  br i1 %i.lc, label %.lr.ph180.split, label %._crit_edge181, !llvm.loop !223

bb.am:                                            ; preds = %._crit_edge181
  %i.ld = load ptr, ptr %i.gv, align 8, !tbaa !224 ; 5 uses
  %i.le = load ptr, ptr %i.gw, align 8, !tbaa !226
  %.not.i120 = icmp eq ptr %i.ld, %i.le
  br i1 %.not.i120, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr null, ptr %i.lf, align 8, !tbaa !122
  %i.lg = load <2 x ptr>, ptr %12, align 16, !tbaa !168
  store ptr null, ptr %i.gx, align 8, !tbaa !122
  store <2 x ptr> %i.lg, ptr %i.ld, align 8, !tbaa !168
  store ptr null, ptr %12, align 16, !tbaa !95
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store ptr %i.lh, ptr %i.gv, align 8, !tbaa !224
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ld, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit unwind label %bb.ay

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit: ; preds = %bb.ao, %bb.an
  %i.li = load ptr, ptr %i.gx, align 8, !tbaa !122 ; 8 uses
  %.not.i.i123 = icmp eq ptr %i.li, null
  br i1 %.not.i.i123, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 4 uses
  %i.lk = load atomic i64, ptr %i.lj acquire, align 8 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 4294967297
  %i.lm = trunc i64 %i.lk to i32                  ; 2 uses
  br i1 %i.ll, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.lj, align 8, !tbaa !124
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i32 0, ptr %i.ln, align 4, !tbaa !126
  %i.lo = load ptr, ptr %i.li, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #28, !inline_history !227
  %i.lr = load ptr, ptr %i.li, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #28, !inline_history !227
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lv = add nsw i32 %i.lm, -1
  store i32 %i.lv, ptr %i.lj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.lw = atomicrmw volatile add ptr %i.lj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i = phi i32 [ %i.lm, %bb.as ], [ %i.lw, %bb.at ]
  %i.lx = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.lx, label %bb.au, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_.exit, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ly = load ptr, ptr %11, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.lz = load ptr, ptr %i.gt, align 8, !tbaa !83
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mc) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.md = load ptr, ptr %10, align 8, !tbaa !166  ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.me = load ptr, ptr %i.gr, align 8, !tbaa !220
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #27
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bp

end_hunk_0
