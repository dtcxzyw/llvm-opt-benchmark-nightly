Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebuf?download=true
inline.NumInlined: 16785
inline.NumDeleted: 5500
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_ZN11OpenImageIO4v3_116getpixel_wrapperEiiiNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_:bb.a
  unreachable

scalar.ph146:                                     ; preds = %scalar.ph146.prol.loopexit, %scalar.ph146
  %.011.i105 = phi i64 [ %i.nb, %scalar.ph146 ], [ %.011.i105.unr, %scalar.ph146.prol.loopexit ] ; 4 uses
  %i.mm = shl i64 %.011.i105, 32
  %i.mn = ashr exact i64 %i.mm, 30
  %i.mo = getelementptr inbounds i8, ptr %i.ln, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !83
  %i.mq = uitofp i32 %i.mp to float
  %i.mr = fmul nnan float %i.mq, f0x2F800000
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011.i105
  store float %i.mr, ptr %i.ms, align 4, !tbaa !329
  %i.mt = add nuw i64 %.011.i105, 1               ; 2 uses
  %i.mu = shl i64 %i.mt, 32
  %i.mv = ashr exact i64 %i.mu, 30
  %i.mw = getelementptr inbounds i8, ptr %i.ln, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !83
  %i.my = uitofp i32 %i.mx to float
  %i.mz = fmul nnan float %i.my, f0x2F800000
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.mt
  store float %i.mz, ptr %i.na, align 4, !tbaa !329
  %i.nb = add nuw i64 %.011.i105, 2               ; 2 uses
  %exitcond.not.i106.1 = icmp eq i64 %i.nb, %4
  br i1 %exitcond.not.i106.1, label %._crit_edge.i107, label %scalar.ph146, !llvm.loop !1062

_ZN11OpenImageIO4v3_1L9getpixel_IjEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit: ; preds = %._crit_edge.i107, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.ak

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  store ptr %6, ptr %8, align 8, !tbaa !324
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  store ptr null, ptr %i.nd, align 8, !tbaa !325
  %i.ne = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  store ptr null, ptr %i.ne, align 8, !tbaa !326
  %i.nf = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i32 0, ptr %i.nc, align 8
  store i32 1, ptr %i.nf, align 8, !tbaa !327
  %i.ng = getelementptr inbounds nuw i8, ptr %8, i64 124
  store i8 0, ptr %i.ng, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %5, i1 zeroext poison)
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.nj = load <4 x i32>, ptr %i.nh, align 4, !tbaa !83
  store <4 x i32> %i.nj, ptr %i.ni, align 4, !tbaa !83
  %i.nk = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.nl = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.nm = load <2 x i32>, ptr %i.nk, align 4, !tbaa !83
  store <2 x i32> %i.nm, ptr %i.nl, align 4, !tbaa !83
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %8, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %.not.i109 = icmp eq i64 %4, 0
  br i1 %.not.i109, label %._crit_edge.i113, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.ad
  %i.nn = load ptr, ptr %i.ne, align 8, !tbaa !326 ; 4 uses
  %i.no = add i64 %4, -12
  %or.cond259 = icmp ult i64 %i.no, 2147483637
  br i1 %or.cond259, label %vector.ph132, label %scalar.ph130.preheader

vector.ph132:                                     ; preds = %.lr.ph.i110
  %n.vec133 = and i64 %4, 4294967288              ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.np = shl i64 %index135, 32
  %i.nq = ashr exact i64 %i.np, 30
  %i.nr = getelementptr inbounds i8, ptr %i.nn, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load136 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !83
  %wide.load137 = load <4 x i32>, ptr %i.ns, align 4, !tbaa !83
  %i.nt = sitofp <4 x i32> %wide.load136 to <4 x float>
  %i.nu = sitofp <4 x i32> %wide.load137 to <4 x float>
  %i.nv = fmul nnan <4 x float> %i.nt, splat (float f0x30000000)
  %i.nw = fmul nnan <4 x float> %i.nu, splat (float f0x30000000)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index135 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  store <4 x float> %i.nv, ptr %i.nx, align 4, !tbaa !329
  store <4 x float> %i.nw, ptr %i.ny, align 4, !tbaa !329
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %i.nz = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.nz, label %middle.block139, label %vector.body134, !llvm.loop !1063

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %4, %n.vec133
  br i1 %cmp.n140, label %._crit_edge.i113, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %.lr.ph.i110, %middle.block139
  %.011.i111.ph = phi i64 [ 0, %.lr.ph.i110 ], [ %n.vec133, %middle.block139 ] ; 5 uses
  %.neg275 = or disjoint i64 %.011.i111.ph, 1
  %xtraiter261 = and i64 %4, 1
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader
  %i.oa = shl nuw i64 %.011.i111.ph, 32
  %i.ob = ashr exact i64 %i.oa, 30
  %i.oc = getelementptr inbounds i8, ptr %i.nn, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !83
  %i.oe = sitofp i32 %i.od to float
  %i.of = fmul nnan float %i.oe, f0x30000000
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011.i111.ph
  store float %i.of, ptr %i.og, align 4, !tbaa !329
  %i.oh = or disjoint i64 %.011.i111.ph, 1
  br label %scalar.ph130.prol.loopexit

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %.011.i111.unr = phi i64 [ %.011.i111.ph, %scalar.ph130.preheader ], [ %i.oh, %scalar.ph130.prol ]
  %i.oi = icmp eq i64 %4, %.neg275
  br i1 %i.oi, label %._crit_edge.i113, label %scalar.ph130

._crit_edge.i113:                                 ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block139, %bb.ad
  %i.oj = load ptr, ptr %i.nd, align 8, !tbaa !325
  %.not.i.i114 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i114, label %_ZN11OpenImageIO4v3_1L9getpixel_IiEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i113
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %8)
          to label %_ZN11OpenImageIO4v3_1L9getpixel_IiEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ok = landingpad { ptr, i32 }
          catch ptr null
  %i.ol = extractvalue { ptr, i32 } %i.ok, 0
  tail call void @__clang_call_terminate(ptr %i.ol) #46
  unreachable

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %.011.i111 = phi i64 [ %i.pb, %scalar.ph130 ], [ %.011.i111.unr, %scalar.ph130.prol.loopexit ] ; 4 uses
  %i.om = shl i64 %.011.i111, 32
  %i.on = ashr exact i64 %i.om, 30
  %i.oo = getelementptr inbounds i8, ptr %i.nn, i64 %i.on
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !83
  %i.oq = sitofp i32 %i.op to float
  %i.or = fmul nnan float %i.oq, f0x30000000
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011.i111
  store float %i.or, ptr %i.os, align 4, !tbaa !329
  %i.ot = add nuw i64 %.011.i111, 1               ; 2 uses
  %i.ou = shl i64 %i.ot, 32
  %i.ov = ashr exact i64 %i.ou, 30
  %i.ow = getelementptr inbounds i8, ptr %i.nn, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !83
  %i.oy = sitofp i32 %i.ox to float
  %i.oz = fmul nnan float %i.oy, f0x30000000
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ot
  store float %i.oz, ptr %i.pa, align 4, !tbaa !329
  %i.pb = add nuw i64 %.011.i111, 2               ; 2 uses
  %exitcond.not.i112.1 = icmp eq i64 %i.pb, %4
  br i1 %exitcond.not.i112.1, label %._crit_edge.i113, label %scalar.ph130, !llvm.loop !1064

_ZN11OpenImageIO4v3_1L9getpixel_IiEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit: ; preds = %._crit_edge.i113, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store ptr %6, ptr %7, align 8, !tbaa !324
  %i.pc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  store ptr null, ptr %i.pd, align 8, !tbaa !325
  %i.pe = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  store ptr null, ptr %i.pe, align 8, !tbaa !326
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i32 0, ptr %i.pc, align 8
  store i32 1, ptr %i.pf, align 8, !tbaa !327
  %i.pg = getelementptr inbounds nuw i8, ptr %7, i64 124
  store i8 0, ptr %i.pg, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %7, i32 noundef %5, i1 zeroext poison)
  %i.ph = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.pi = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.pj = load <4 x i32>, ptr %i.ph, align 4, !tbaa !83
  store <4 x i32> %i.pj, ptr %i.pi, align 4, !tbaa !83
  %i.pk = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.pm = load <2 x i32>, ptr %i.pk, align 4, !tbaa !83
  store <2 x i32> %i.pm, ptr %i.pl, align 4, !tbaa !83
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %7, i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %.not.i115 = icmp eq i64 %4, 0
  br i1 %.not.i115, label %._crit_edge.i119, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bb.ag
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !326 ; 4 uses
  %i.po = add i64 %4, -20
  %or.cond260 = icmp ult i64 %i.po, 2147483629
  br i1 %or.cond260, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i116
  %n.vec = and i64 %4, 4294967292                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.pp = shl i64 %index, 32
  %i.pq = ashr exact i64 %i.pp, 29
  %i.pr = getelementptr inbounds i8, ptr %i.pn, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load = load <2 x double>, ptr %i.pr, align 8, !tbaa !252
  %wide.load125 = load <2 x double>, ptr %i.ps, align 8, !tbaa !252
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %16 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load125, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = fptrunc <4 x double> %16 to <4 x float>
  store <4 x float> %17, ptr %i.pt, align 4, !tbaa !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !1065

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge.i119, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i116, %middle.block
  %.011.i117.ph = phi i64 [ 0, %.lr.ph.i116 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.011.i117.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.pv = shl nuw i64 %.011.i117.ph, 32
  %i.pw = ashr exact i64 %i.pv, 29
  %i.px = getelementptr inbounds i8, ptr %i.pn, i64 %i.pw
  %i.py = load double, ptr %i.px, align 8, !tbaa !252
  %i.pz = fptrunc double %i.py to float
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011.i117.ph
  store float %i.pz, ptr %i.qa, align 4, !tbaa !329
  %i.qb = or disjoint i64 %.011.i117.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.011.i117.unr = phi i64 [ %.011.i117.ph, %scalar.ph.preheader ], [ %i.qb, %scalar.ph.prol ]
  %i.qc = icmp eq i64 %4, %.neg
  br i1 %i.qc, label %._crit_edge.i119, label %scalar.ph

._crit_edge.i119:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ag
  %i.qd = load ptr, ptr %i.pd, align 8, !tbaa !325
  %.not.i.i120 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i120, label %_ZN11OpenImageIO4v3_1L9getpixel_IdEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i119
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %7)
          to label %_ZN11OpenImageIO4v3_1L9getpixel_IdEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  tail call void @__clang_call_terminate(ptr %i.qf) #46
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.011.i117 = phi i64 [ %i.qt, %scalar.ph ], [ %.011.i117.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.qg = shl i64 %.011.i117, 32
  %i.qh = ashr exact i64 %i.qg, 29
  %i.qi = getelementptr inbounds i8, ptr %i.pn, i64 %i.qh
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !252
  %i.qk = fptrunc double %i.qj to float
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011.i117
  store float %i.qk, ptr %i.ql, align 4, !tbaa !329
  %i.qm = add nuw i64 %.011.i117, 1               ; 2 uses
  %i.qn = shl i64 %i.qm, 32
  %i.qo = ashr exact i64 %i.qn, 29
  %i.qp = getelementptr inbounds i8, ptr %i.pn, i64 %i.qo
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !252
  %i.qr = fptrunc double %i.qq to float
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qm
  store float %i.qr, ptr %i.qs, align 4, !tbaa !329
  %i.qt = add nuw i64 %.011.i117, 2               ; 2 uses
  %exitcond.not.i118.1 = icmp eq i64 %i.qt, %4
  br i1 %exitcond.not.i118.1, label %._crit_edge.i119, label %scalar.ph, !llvm.loop !1066

_ZN11OpenImageIO4v3_1L9getpixel_IdEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit: ; preds = %._crit_edge.i119, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ak

bb.aj:                                            ; preds = %bb.a
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !229 ; 2 uses
  %i.qv = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.qu, i8 1) ; 0 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 112
  tail call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA9_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(39) @.str.55, ptr noundef nonnull align 1 dereferenceable(9) @.str.121, ptr noundef nonnull align 4 dereferenceable(8) %i.qw)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11OpenImageIO4v3_1L9getpixel_IdEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IiEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IjEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IsEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IcEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_ItEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IhEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L9getpixel_IfEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit
  %.0 = phi i1 [ false, %bb.aj ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IfEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IhEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_ItEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IcEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IsEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IjEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IiEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L9getpixel_IdEEbRKNS0_8ImageBufEiiiNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ImageBuf11interppixelEffNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_119interppixel_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_119interppixel_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i8 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load i8, ptr %i.d, align 8, !tbaa !304
  switch i8 %i.e, label %bb.k [
    i8 11, label %bb.b
    i8 2, label %bb.c
    i8 10, label %bb.d
    i8 4, label %bb.e
    i8 3, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 12, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IfEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IhEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_ItEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IcEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IsEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IjEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %i.g = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.f, i8 1) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  tail call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA12_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(39) @.str.55, ptr noundef nonnull align 1 dereferenceable(12) @.str.122, ptr noundef nonnull align 4 dereferenceable(8) %i.h)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ImageBuf15interppixel_NDCEffNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i8 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !83
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = load <2 x i32>, ptr %i.e, align 4, !tbaa !83
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = insertelement <2 x float> poison, float %1, i64 0
  %i.k = insertelement <2 x float> %i.j, float %2, i64 1
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.i, <2 x float> %i.g) ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = extractelement <2 x float> %i.l, i64 1
  %i.o = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_119interppixel_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %i.m, float noundef %i.n, ptr %3, i64 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #23

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ImageBuf19interppixel_bicubicEffNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_127interppixel_bicubic_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_127interppixel_bicubic_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %0, float noundef %1, ptr %2, i64 %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 7 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.198", align 8 ; 37 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %7 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.195", align 8 ; 37 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_127interppixel_bicubic_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_:bb.a
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit37.i294 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ayg = landingpad { ptr, i32 }
          catch ptr null
  %i.ayh = extractvalue { ptr, i32 } %i.ayg, 0
  tail call void @__clang_call_terminate(ptr %i.ayh) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit37.i294: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %common.resume

_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit: ; preds = %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.gy

bb.gb:                                            ; preds = %bb.a
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.ayj = trunc i64 %3 to i32
  %i.ayk = load i32, ptr %i.ayi, align 4, !tbaa !83
  %.sroa.speculated.i309 = tail call i32 @llvm.smin.i32(i32 %i.ayk, i32 %i.ayj) ; 4 uses
  %i.ayl = insertelement <2 x float> poison, float %0, i64 0
  %i.aym = insertelement <2 x float> %i.ayl, float %1, i64 1
  %i.ayn = fadd <2 x float> %i.aym, splat (float -5.000000e-01) ; 3 uses
  %i.ayo = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ayn) ; 3 uses
  %foldExtExtBinop547 = fsub <2 x float> %i.ayn, %i.ayo ; 2 uses
  %i.ayp = extractelement <2 x float> %foldExtExtBinop547, i64 0 ; 4 uses
  %i.ayq = shufflevector <2 x float> %i.ayo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ayr = fptosi <4 x float> %i.ayq to <4 x i32>
  %foldExtExtBinop549 = fsub <2 x float> %i.ayn, %i.ayo
  %i.ays = extractelement <2 x float> %foldExtExtBinop549, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ayt = fsub float 1.000000e+00, %i.ayp        ; 4 uses
  %i.ayu = fmul float %i.ayt, f0x3E2AAAAB
  %i.ayv = fmul float %i.ayt, %i.ayu
  %i.ayw = fmul float %i.ayt, %i.ayv
  store float %i.ayw, ptr %i.a, align 16, !tbaa !329
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ayy = insertelement <2 x float> %foldExtExtBinop547, float %i.ayt, i64 1 ; 3 uses
  %i.ayz = fmul <2 x float> %i.ayy, splat (float 5.000000e-01)
  %i.aza = fsub <2 x float> splat (float 2.000000e+00), %i.ayy
  %i.azb = fneg <2 x float> %i.ayy
  %i.azc = fmul <2 x float> %i.ayz, %i.azb
  %i.azd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azc, <2 x float> %i.aza, <2 x float> splat (float f0x3F2AAAAB))
  store <2 x float> %i.azd, ptr %i.ayx, align 4, !tbaa !329
  %i.aze = fmul float %i.ayp, f0x3E2AAAAB
  %i.azf = fmul float %i.ayp, %i.aze
  %i.azg = fmul float %i.ayp, %i.azf
  %i.azh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.azg, ptr %i.azh, align 4, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.azi = fsub float 1.000000e+00, %i.ays        ; 4 uses
  %i.azj = fmul float %i.azi, f0x3E2AAAAB
  %i.azk = fmul float %i.azi, %i.azj
  %i.azl = fmul float %i.azi, %i.azk
  store float %i.azl, ptr %i.b, align 16, !tbaa !329
  %i.azm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.azn = insertelement <2 x float> poison, float %i.ays, i64 0
  %i.azo = insertelement <2 x float> %i.azn, float %i.azi, i64 1 ; 3 uses
  %i.azp = fmul <2 x float> %i.azo, splat (float 5.000000e-01)
  %i.azq = fsub <2 x float> splat (float 2.000000e+00), %i.azo
  %i.azr = fneg <2 x float> %i.azo
  %i.azs = fmul <2 x float> %i.azp, %i.azr
  %i.azt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.azs, <2 x float> %i.azq, <2 x float> splat (float f0x3F2AAAAB))
  store <2 x float> %i.azt, ptr %i.azm, align 4, !tbaa !329
  %i.azu = fmul float %i.ays, f0x3E2AAAAB
  %i.azv = fmul float %i.ays, %i.azu
  %i.azw = fmul float %i.ays, %i.azv
  %i.azx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.azw, ptr %i.azx, align 4, !tbaa !329
  %i.azy = icmp sgt i32 %.sroa.speculated.i309, 0 ; 2 uses
  br i1 %i.azy, label %.lr.ph.preheader.i343, label %._crit_edge.i310

.lr.ph.preheader.i343:                            ; preds = %bb.gb
  %i.azz = zext nneg i32 %.sroa.speculated.i309 to i64
  %i.baa = shl nuw nsw i64 %i.azz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.baa, i1 false), !tbaa !329
  br label %._crit_edge.i310

._crit_edge.i310:                                 ; preds = %.lr.ph.preheader.i343, %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bab = add nsw <4 x i32> %i.ayr, <i32 -1, i32 3, i32 -1, i32 3> ; 3 uses
  store ptr %5, ptr %6, align 8, !tbaa !324
  %i.bac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 5 uses
  store ptr null, ptr %i.bad, align 8, !tbaa !325
  %i.bae = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 7 uses
  store ptr null, ptr %i.bae, align 8, !tbaa !326
  %i.baf = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  store i32 0, ptr %i.bac, align 8
  store i32 1, ptr %i.baf, align 8, !tbaa !327
  %i.bag = getelementptr inbounds nuw i8, ptr %6, i64 124 ; 2 uses
  store i8 0, ptr %i.bag, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %4, i1 zeroext poison)
  %i.bah = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store <4 x i32> %i.bab, ptr %i.bah, align 4, !tbaa !83
  %i.bal = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.bal, align 4, !tbaa !336
  %i.bam = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  store i32 1, ptr %i.bam, align 8, !tbaa !337
  %i.ban = extractelement <4 x i32> %i.bab, i64 0
  %i.bao = extractelement <4 x i32> %i.bab, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ban, i32 noundef %i.bao, i32 noundef 0)
  %i.bap = load i32, ptr %i.bah, align 4, !tbaa !338 ; 2 uses
  %i.baq = load i32, ptr %i.bai, align 8, !tbaa !339
  %i.bar = icmp eq i32 %i.bap, %i.baq
  %.pre.i.i.i311 = load i32, ptr %i.baj, align 4, !tbaa !340 ; 2 uses
  br i1 %i.bar, label %._crit_edge.i.i.i341, label %bb.gc

._crit_edge.i.i.i341:                             ; preds = %._crit_edge.i310
  %.pre9.i.i.i342 = load i32, ptr %i.bam, align 8, !tbaa !337
  br label %bb.gd

bb.gc:                                            ; preds = %._crit_edge.i310
  %i.bas = load i32, ptr %i.bak, align 8, !tbaa !341
  %i.bat = icmp eq i32 %.pre.i.i.i311, %i.bas
  %.pre10.i.i.i312 = load i32, ptr %i.bam, align 8, !tbaa !337 ; 2 uses
  %i.bau = load i32, ptr %i.bal, align 4
  %i.bav = icmp eq i32 %i.bau, %.pre10.i.i.i312
  %or.cond.i313 = select i1 %i.bat, i1 true, i1 %i.bav
  br i1 %or.cond.i313, label %bb.gd, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.i

bb.gd:                                            ; preds = %bb.gc, %._crit_edge.i.i.i341
  %i.baw = phi i32 [ %.pre9.i.i.i342, %._crit_edge.i.i.i341 ], [ %.pre10.i.i.i312, %bb.gc ]
  store i8 0, ptr %i.bac, align 8, !tbaa !342
  %i.bax = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.bap, ptr %i.bax, align 4, !tbaa !343
  %i.bay = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i.i311, ptr %i.bay, align 8, !tbaa !344
  %i.baz = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.baw, ptr %i.baz, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.i: ; preds = %bb.gd, %bb.gc
  %i.bba = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 5 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %6, i64 9 ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %6, i64 11
  %i.bbf = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bbg = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %6, i64 92 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bbk = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.bbl = getelementptr inbounds nuw i8, ptr %6, i64 88
  %wide.trip.count.i314 = zext i32 %.sroa.speculated.i309 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i309, 4
  %n.vec = and i64 %wide.trip.count.i314, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i314
  br label %.preheader.i315

.preheader.i315:                                  ; preds = %bb.gh, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.i
  %indvars.iv56.i316 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.i ], [ %indvars.iv.next57.i325, %bb.gh ] ; 2 uses
  %i.bbm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv56.i316
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !329
  br label %bb.gi

bb.ge:                                            ; preds = %bb.gh
  %i.bbo = load ptr, ptr %i.bad, align 8, !tbaa !325
  %.not.i.i327 = icmp eq ptr %i.bbo, null
  br i1 %.not.i.i327, label %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bbp = landingpad { ptr, i32 }
          catch ptr null
  %i.bbq = extractvalue { ptr, i32 } %i.bbp, 0
  tail call void @__clang_call_terminate(ptr %i.bbq) #46
  unreachable

bb.gh:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323
  %indvars.iv.next57.i325 = add nuw nsw i64 %indvars.iv56.i316, 1 ; 2 uses
  %exitcond59.not.i326 = icmp eq i64 %indvars.iv.next57.i325, 4
  br i1 %exitcond59.not.i326, label %bb.ge, label %.preheader.i315, !llvm.loop !1104

bb.gi:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323, %.preheader.i315
  %indvars.iv52.i317 = phi i64 [ 0, %.preheader.i315 ], [ %indvars.iv.next53.i319, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323 ] ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv52.i317
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !329
  %i.bbt = fmul float %i.bbn, %i.bbs              ; 2 uses
  br i1 %i.azy, label %.lr.ph46.i337, label %._crit_edge47.i318

.lr.ph46.i337:                                    ; preds = %bb.gi
  %i.bbu = load ptr, ptr %i.bae, align 8, !tbaa !326 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i337
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.bbt, i64 0
  %15 = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %index ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 16
  %wide.load = load <2 x double>, ptr %i.bbv, align 8, !tbaa !252
  %wide.load372 = load <2 x double>, ptr %i.bbw, align 8, !tbaa !252
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8
  %wide.load373 = load <2 x float>, ptr %i.bbx, align 4, !tbaa !329
  %wide.load374 = load <2 x float>, ptr %i.bby, align 4, !tbaa !329
  %16 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load372, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = fptrunc <4 x double> %16 to <4 x float>
  %18 = shufflevector <2 x float> %wide.load373, <2 x float> %wide.load374, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> %17, <4 x float> %18)
  store <4 x float> %19, ptr %i.bbx, align 4, !tbaa !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bbz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bbz, label %middle.block, label %vector.body, !llvm.loop !1105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge47.i318, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph46.i337, %middle.block
  %indvars.iv.i338.ph = phi i64 [ 0, %.lr.ph46.i337 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge47.i318:                               ; preds = %scalar.ph, %middle.block, %bb.gi
  %indvars.iv.next53.i319 = add nuw nsw i64 %indvars.iv52.i317, 1 ; 2 uses
  %i.bca = load i32, ptr %i.bba, align 4, !tbaa !343
  %i.bcb = add nsw i32 %i.bca, 1                  ; 7 uses
  store i32 %i.bcb, ptr %i.bba, align 4, !tbaa !343
  %i.bcc = load i32, ptr %i.bai, align 8, !tbaa !339
  %i.bcd = icmp slt i32 %i.bcb, %i.bcc
  br i1 %i.bcd, label %bb.gj, label %bb.gq

bb.gj:                                            ; preds = %._crit_edge47.i318
  %i.bce = load i8, ptr %i.bbd, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bcf = trunc nuw i8 %i.bce to i1
  br i1 %i.bcf, label %bb.gk, label %._crit_edge.i.i330

._crit_edge.i.i330:                               ; preds = %bb.gj
  %.pre.i.i331 = load i32, ptr %i.bbb, align 8, !tbaa !344
  %.pre.i332 = load i32, ptr %i.bbc, align 4, !tbaa !345
  br label %bb.gt

bb.gk:                                            ; preds = %bb.gj
  %i.bcg = load i8, ptr %i.bbe, align 1, !tbaa !347, !range !209, !noundef !210
  %i.bch = trunc nuw i8 %i.bcg to i1
  br i1 %i.bch, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %bb.gk
  %i.bci = load i64, ptr %i.bbg, align 8, !tbaa !348
  %i.bcj = load ptr, ptr %i.bae, align 8, !tbaa !326
  %i.bck = getelementptr inbounds i8, ptr %i.bcj, i64 %i.bci
  store ptr %i.bck, ptr %i.bae, align 8, !tbaa !326
  %i.bcl = load i32, ptr %i.bbh, align 8, !tbaa !349
  %.not.i.i.i336 = icmp slt i32 %i.bcb, %i.bcl
  br i1 %.not.i.i.i336, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323, label %bb.gm, !prof !212

bb.gm:                                            ; preds = %bb.gl
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323 unwind label %bb.gu

bb.gn:                                            ; preds = %bb.gk
  %i.bcm = load i8, ptr %i.bbf, align 2, !tbaa !350, !range !209, !noundef !210
  %i.bcn = trunc nuw i8 %i.bcm to i1
  br i1 %i.bcn, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.bco = load i64, ptr %i.bbg, align 8, !tbaa !348
  %i.bcp = load ptr, ptr %i.bae, align 8, !tbaa !326
  %i.bcq = getelementptr inbounds i8, ptr %i.bcp, i64 %i.bco
  store ptr %i.bcq, ptr %i.bae, align 8, !tbaa !326
  %i.bcr = load i32, ptr %i.bbh, align 8, !tbaa !349
  %i.bcs = icmp slt i32 %i.bcb, %i.bcr            ; 3 uses
  %i.bct = load i32, ptr %i.bbi, align 4
  %i.bcu = icmp sge i32 %i.bcb, %i.bct
  %not..i.i.i333 = xor i1 %i.bcs, true
  %or.cond.i.i.i334 = select i1 %not..i.i.i333, i1 true, i1 %i.bcu, !prof !351
  %i.bcv = load ptr, ptr %i.bad, align 8
  %i.bcw = icmp eq ptr %i.bcv, null
  %i.bcx = select i1 %or.cond.i.i.i334, i1 true, i1 %i.bcw, !prof !351
  br i1 %i.bcx, label %bb.gp, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323, !prof !189

bb.gp:                                            ; preds = %bb.go
  %i.bcy = load ptr, ptr %6, align 8, !tbaa !324
  %i.bcz = load i32, ptr %i.bbb, align 8, !tbaa !344
  %i.bda = load i32, ptr %i.bbc, align 4, !tbaa !345
  %i.bdb = load i32, ptr %i.baf, align 8, !tbaa !327
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcy, i64 8
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !229
  %i.bde = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.bdd, i32 noundef %i.bcb, i32 noundef %i.bcz, i32 noundef %i.bda, ptr noundef nonnull align 8 dereferenceable(8) %i.bad, ptr noundef nonnull align 4 dereferenceable(4) %i.bbj, ptr noundef nonnull align 4 dereferenceable(4) %i.bbk, ptr noundef nonnull align 4 dereferenceable(4) %i.bbl, ptr noundef nonnull align 4 dereferenceable(4) %i.bbi, ptr noundef nonnull align 1 dereferenceable(1) %i.bag, i1 noundef zeroext %i.bcs, i32 noundef %i.bdb)
          to label %.noexc34.i335 unwind label %bb.gu

.noexc34.i335:                                    ; preds = %bb.gp
  %i.bdf = zext i1 %i.bcs to i8
  store ptr %i.bde, ptr %i.bae, align 8, !tbaa !326
  store i8 %i.bdf, ptr %i.bbd, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323

bb.gq:                                            ; preds = %._crit_edge47.i318
  %i.bdg = load i32, ptr %i.bah, align 4, !tbaa !338 ; 3 uses
  store i32 %i.bdg, ptr %i.bba, align 4, !tbaa !343
  %i.bdh = load i32, ptr %i.bbb, align 8, !tbaa !344
  %i.bdi = add nsw i32 %i.bdh, 1                  ; 3 uses
  store i32 %i.bdi, ptr %i.bbb, align 8, !tbaa !344
  %i.bdj = load i32, ptr %i.bak, align 8, !tbaa !341
  %.not.i33.i320 = icmp slt i32 %i.bdi, %i.bdj
  %.pre60.i321 = load i32, ptr %i.bbc, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i33.i320, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bdk = load i32, ptr %i.baj, align 4, !tbaa !340 ; 2 uses
  store i32 %i.bdk, ptr %i.bbb, align 8, !tbaa !344
  %i.bdl = add nsw i32 %.pre60.i321, 1            ; 3 uses
  store i32 %i.bdl, ptr %i.bbc, align 4, !tbaa !345
  %i.bdm = load i32, ptr %i.bam, align 8, !tbaa !337
  %.not1.i.i322 = icmp slt i32 %i.bdl, %i.bdm
  br i1 %.not1.i.i322, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i8 0, ptr %i.bac, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323

bb.gt:                                            ; preds = %bb.gr, %bb.gq, %._crit_edge.i.i330
  %i.bdn = phi i32 [ %.pre60.i321, %bb.gq ], [ %i.bdl, %bb.gr ], [ %.pre.i332, %._crit_edge.i.i330 ]
  %i.bdo = phi i32 [ %i.bdi, %bb.gq ], [ %i.bdk, %bb.gr ], [ %.pre.i.i331, %._crit_edge.i.i330 ]
  %i.bdp = phi i32 [ %i.bdg, %bb.gq ], [ %i.bdg, %bb.gr ], [ %i.bcb, %._crit_edge.i.i330 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.bdp, i32 noundef %i.bdo, i32 noundef %i.bdn)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323 unwind label %bb.gu

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i323: ; preds = %bb.gt, %bb.gs, %.noexc34.i335, %bb.go, %bb.gn, %bb.gm, %bb.gl
  %exitcond55.not.i324 = icmp eq i64 %indvars.iv.next53.i319, 4
  br i1 %exitcond55.not.i324, label %bb.gh, label %bb.gi

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i338 = phi i64 [ %indvars.iv.next.i339, %scalar.ph ], [ %indvars.iv.i338.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bdq = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %indvars.iv.i338
  %i.bdr = load double, ptr %i.bdq, align 8, !tbaa !252
  %i.bds = fptrunc double %i.bdr to float
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i338 ; 2 uses
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !329
  %i.bdv = tail call float @llvm.fmuladd.f32(float %i.bbt, float %i.bds, float %i.bdu)
  store float %i.bdv, ptr %i.bdt, align 4, !tbaa !329
  %indvars.iv.next.i339 = add nuw nsw i64 %indvars.iv.i338, 1 ; 2 uses
  %exitcond.not.i340 = icmp eq i64 %indvars.iv.next.i339, %wide.trip.count.i314
  br i1 %exitcond.not.i340, label %._crit_edge47.i318, label %scalar.ph, !llvm.loop !1106

bb.gu:                                            ; preds = %bb.gt, %bb.gp, %bb.gm
  %i.bdw = landingpad { ptr, i32 }
          cleanup
  %i.bdx = load ptr, ptr %i.bad, align 8, !tbaa !325
  %.not.i36.i328 = icmp eq ptr %i.bdx, null
  br i1 %.not.i36.i328, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit37.i329, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit37.i329 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bdy = landingpad { ptr, i32 }
          catch ptr null
  %i.bdz = extractvalue { ptr, i32 } %i.bdy, 0
  tail call void @__clang_call_terminate(ptr %i.bdz) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit37.i329: ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %common.resume

_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit: ; preds = %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.gy

bb.gx:                                            ; preds = %bb.a
  %i.bea = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  tail call void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA39_cJRA20_KcRKNS0_8TypeDescEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(39) @.str.55, ptr noundef nonnull align 1 dereferenceable(20) @.str.123, ptr noundef nonnull align 4 dereferenceable(8) %i.bea)
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IjEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IsEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IcEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_ItEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IhEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IfEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit
  %.0 = phi i1 [ false, %bb.gx ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IfEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IhEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_ItEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IcEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IsEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IjEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ], [ true, %_ZN11OpenImageIO4v3_1L20interppixel_bicubic_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_18ImageBuf23interppixel_bicubic_NDCEffNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr %3, i64 %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i8 1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !83
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = load <2 x i32>, ptr %i.e, align 4, !tbaa !83
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = insertelement <2 x float> poison, float %1, i64 0
  %i.k = insertelement <2 x float> %i.j, float %2, i64 1
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.i, <2 x float> %i.g) ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 0
  %i.n = extractelement <2 x float> %i.l, i64 1
  %i.o = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_127interppixel_bicubic_wrapperEffNS0_4spanIfLm18446744073709551615EEENS0_8ImageBuf8WrapModeERKS3_(float noundef %i.m, float noundef %i.n, ptr %3, i64 %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr %4, i64 %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.b, i8 1) ; 0 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L12interppixel_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.dq, align 4, !tbaa !329
  %i.dr = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.dr)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.dt, align 8, !tbaa !329
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.du, align 4, !tbaa !329
  %i.dv = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.dw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.dv)
  %i.dx = fmul <4 x float> %broadcast.splat13, %i.dw
  %i.dy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.ds, <4 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.dy, ptr %i.dz, align 4, !tbaa !329
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.ea, label %middle.block23, label %vector.body16, !llvm.loop !2023

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !329
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !329
  %i.ef = fmul float %i.ai, %i.ee
  %i.eg = call float @llvm.fmuladd.f32(float %i.ec, float %i.dn, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !329
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !329
  %i.el = fmul float %i.ai, %i.ek
  %i.em = call float @llvm.fmuladd.f32(float %i.ei, float %i.dn, float %i.el)
  %i.en = fmul float %i.am, %i.em
  %i.eo = call float @llvm.fmuladd.f32(float %i.do, float %i.eg, float %i.en)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.eo, ptr %i.ep, align 4, !tbaa !329
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !2024

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.eq = load ptr, ptr %i.x, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.us, %._crit_edge.us.1, %._crit_edge.us.2, %._crit_edge.us.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr nofree writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.198", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !229  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = insertelement <2 x float> poison, float %1, i64 0
  %i.u = insertelement <2 x float> %i.t, float %2, i64 1
  %i.v = fadd <2 x float> %i.u, splat (float -5.000000e-01) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !325
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.y, align 8, !tbaa !326
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.w, align 8
  store i32 1, ptr %i.z, align 8, !tbaa !327
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.aa, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ae = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.v) ; 3 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = extractelement <2 x float> %i.v, i64 0
  %i.ai = fsub float %i.ah, %i.ag                 ; 4 uses
  %i.aj = fptosi <4 x float> %i.af to <4 x i32>   ; 3 uses
  %i.ak = extractelement <2 x float> %i.ae, i64 1
  %i.al = extractelement <2 x float> %i.v, i64 1
  %i.am = fsub float %i.al, %i.ak                 ; 3 uses
  %i.an = add nsw <4 x i32> %i.aj, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.an, ptr %i.ab, align 4, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !336
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.ap, align 8, !tbaa !337
  %i.aq = extractelement <4 x i32> %i.aj, i64 0
  %i.ar = extractelement <4 x i32> %i.aj, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef 0)
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !338 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 8, !tbaa !339
  %i.au = icmp eq i32 %i.as, %i.at
  %.pre.i.i = load i32, ptr %i.ad, align 4, !tbaa !340 ; 2 uses
  br i1 %i.au, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.ap, align 8, !tbaa !337
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !341
  %i.ax = icmp eq i32 %.pre.i.i, %i.aw
  %.pre10.i.i = load i32, ptr %i.ap, align 8, !tbaa !337 ; 2 uses
  %i.ay = load i32, ptr %i.ao, align 4
  %i.az = icmp eq i32 %i.ay, %.pre10.i.i
  %or.cond = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %or.cond, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ba = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.w, align 8, !tbaa !342
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !343
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.bc, align 8, !tbaa !344
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.be = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.be, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !326 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !326 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index.1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.bh, align 8, !tbaa !252
  %wide.load5.1 = load <2 x double>, ptr %i.bi, align 8, !tbaa !252
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1
  %7 = shufflevector <2 x double> %wide.load.1, <2 x double> %wide.load5.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = fptrunc <4 x double> %7 to <4 x float>
  store <4 x float> %8, ptr %i.bj, align 4, !tbaa !329
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bk, label %middle.block.1, label %vector.body.1, !llvm.loop !2025

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.1
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !252
  %i.bn = fptrunc double %i.bm to float
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.bn, ptr %i.bo, align 4, !tbaa !329
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond42.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond42.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !2026

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !326 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index.2 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load.2 = load <2 x double>, ptr %i.bq, align 8, !tbaa !252
  %wide.load5.2 = load <2 x double>, ptr %i.br, align 8, !tbaa !252
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2
  %9 = shufflevector <2 x double> %wide.load.2, <2 x double> %wide.load5.2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = fptrunc <4 x double> %9 to <4 x float>
  store <4 x float> %10, ptr %i.bs, align 8, !tbaa !329
  %index.next.2 = add nuw i64 %index.2, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.bt, label %middle.block.2, label %vector.body.2, !llvm.loop !2025

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.2
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !252
  %i.bw = fptrunc double %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.bw, ptr %i.bx, align 4, !tbaa !329
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond42.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond42.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !2026

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !326 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index.3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load.3 = load <2 x double>, ptr %i.bz, align 8, !tbaa !252
  %wide.load5.3 = load <2 x double>, ptr %i.ca, align 8, !tbaa !252
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3
  %11 = shufflevector <2 x double> %wide.load.3, <2 x double> %wide.load5.3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = fptrunc <4 x double> %11 to <4 x float>
  store <4 x float> %12, ptr %i.cb, align 4, !tbaa !329
  %index.next.3 = add nuw i64 %index.3, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cc, label %middle.block.3, label %vector.body.3, !llvm.loop !2025

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.3
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !252
  %i.cf = fptrunc double %i.ce to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cf, ptr %i.cg, align 4, !tbaa !329
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond42.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond42.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !2026

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !252
  %i.cj = fptrunc double %i.ci to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.cj, ptr %i.ck, align 4, !tbaa !329
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond42.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !2026

vector.ph:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load = load <2 x double>, ptr %i.cl, align 8, !tbaa !252
  %wide.load5 = load <2 x double>, ptr %i.cm, align 8, !tbaa !252
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %13 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = fptrunc <4 x double> %13 to <4 x float>
  store <4 x float> %14, ptr %i.cn, align 16, !tbaa !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !2025

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2027

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.cp = fsub float 1.000000e+00, %i.ai          ; 3 uses
  %i.cq = fsub float 1.000000e+00, %i.am          ; 2 uses
  br i1 %i.be, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check7 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check7, label %.lr.ph.i.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph8
  %index17 = phi i64 [ 0, %vector.ph8 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.cr, align 16, !tbaa !329
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.cs, align 4, !tbaa !329
  %i.ct = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.cu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.ct)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.cv, align 8, !tbaa !329
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.cw, align 4, !tbaa !329
  %i.cx = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.cy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.cx)
  %i.cz = fmul <4 x float> %broadcast.splat13, %i.cy
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.cu, <4 x float> %i.cz)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.da, ptr %i.db, align 4, !tbaa !329
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.dc, label %middle.block23, label %vector.body16, !llvm.loop !2028

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !329
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !329
  %i.dh = fmul float %i.ai, %i.dg
  %i.di = call float @llvm.fmuladd.f32(float %i.de, float %i.cp, float %i.dh)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !329
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !329
  %i.dn = fmul float %i.ai, %i.dm
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.cp, float %i.dn)
  %i.dp = fmul float %i.am, %i.do
  %i.dq = call float @llvm.fmuladd.f32(float %i.cq, float %i.di, float %i.dp)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.dq, ptr %i.dr, align 4, !tbaa !329
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !2029

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.ds = load ptr, ptr %i.x, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.us, %._crit_edge.us.1, %._crit_edge.us.2, %._crit_edge.us.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !343
  %i.c = add nsw i32 %i.b, 1                      ; 7 uses
  store i32 %i.c, ptr %i.a, align 4, !tbaa !343
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !339
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !346, !range !209, !noundef !210
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !344
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !347, !range !209, !noundef !210
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i64, ptr %i.m, align 8, !tbaa !348
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !326
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.n
  store ptr %i.q, ptr %i.o, align 8, !tbaa !326
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !349
  %.not.i = icmp slt i32 %i.c, %i.s
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.e, !prof !212

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !350, !range !209, !noundef !210
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase9pos_xincrEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !348
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !326
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.x
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !326
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !349
  %i.ad = icmp slt i32 %i.c, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sge i32 %i.c, %i.af
  %not..i = xor i1 %i.ad, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.ag, !prof !351
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_116copy_pixels_implIfdEEbRNS1_8ImageBufERKS6_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %i.ac = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.d ]
  store i8 0, ptr %i.d, align 8, !tbaa !342
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.v, ptr %i.ad, align 4, !tbaa !343
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !344
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ag = load ptr, ptr %.val, align 8, !tbaa !2603, !nonnull !210, !align !429
  store ptr %i.ag, ptr %3, align 8, !tbaa !324
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !325
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 13 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !326
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  store i32 0, ptr %i.ah, align 8
  store i32 1, ptr %i.ak, align 8, !tbaa !327
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 124 ; 4 uses
  store i8 0, ptr %i.al, align 4, !tbaa !328
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef 0, i1 zeroext poison)
          to label %.noexc.i.i.i unwind label %bb.av

.noexc.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !353
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sink.in.i.i20.i.sroa.speculate.load..i.i = load i32, ptr %i.as, align 8, !tbaa !83
  %.sink10.in.i.i19.i.sroa.speculate.load..i.i = load i32, ptr %i.ar, align 4, !tbaa !83
  %.sink11.in.i.i18.i.sroa.speculate.load..i.i = load i32, ptr %i.aq, align 8, !tbaa !83
  %.sink12.in.i.i17.i.sroa.speculate.load..i.i = load i32, ptr %i.ap, align 4, !tbaa !83
  %.sink13.in.i.i16.i.sroa.speculate.load..i.i = load i32, ptr %i.ao, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc.i.i.i
  %.sink14.i.i15.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.sroa.056.0.copyload.i.i, %.noexc.i.i.i ] ; 2 uses
  %.sink13.in.i.i16.i.sroa.speculated.i.i = phi i32 [ %.sink13.in.i.i16.i.sroa.speculate.load..i.i, %bb.f ], [ %.sroa.2.0.copyload.i.i, %.noexc.i.i.i ]
  %.sink12.in.i.i17.i.sroa.speculated.i.i = phi i32 [ %.sink12.in.i.i17.i.sroa.speculate.load..i.i, %bb.f ], [ %.sroa.3.0.copyload.i.i, %.noexc.i.i.i ] ; 2 uses
  %.sink11.in.i.i18.i.sroa.speculated.i.i = phi i32 [ %.sink11.in.i.i18.i.sroa.speculate.load..i.i, %bb.f ], [ %.sroa.457.0.copyload.i.i, %.noexc.i.i.i ]
  %.sink10.in.i.i19.i.sroa.speculated.i.i = phi i32 [ %.sink10.in.i.i19.i.sroa.speculate.load..i.i, %bb.f ], [ %.sroa.5.0.copyload.i.i, %.noexc.i.i.i ] ; 2 uses
  %.sink.in.i.i20.i.sroa.speculated.i.i = phi i32 [ %.sink.in.i.i20.i.sroa.speculate.load..i.i, %bb.f ], [ %.sroa.658.0.copyload.i.i, %.noexc.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  store i32 %.sink14.i.i15.i.i.i, ptr %i.at, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store i32 %.sink13.in.i.i16.i.sroa.speculated.i.i, ptr %i.au, align 8, !tbaa !339
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  store i32 %.sink12.in.i.i17.i.sroa.speculated.i.i, ptr %i.av, align 4, !tbaa !340
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  store i32 %.sink11.in.i.i18.i.sroa.speculated.i.i, ptr %i.aw, align 8, !tbaa !341
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  store i32 %.sink10.in.i.i19.i.sroa.speculated.i.i, ptr %i.ax, align 4, !tbaa !336
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  store i32 %.sink.in.i.i20.i.sroa.speculated.i.i, ptr %i.ay, align 8, !tbaa !337
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %.sink14.i.i15.i.i.i, i32 noundef %.sink12.in.i.i17.i.sroa.speculated.i.i, i32 noundef %.sink10.in.i.i19.i.sroa.speculated.i.i)
          to label %.noexc30.i.i.i unwind label %bb.av

.noexc30.i.i.i:                                   ; preds = %bb.g
  %i.az = load i32, ptr %i.at, align 4, !tbaa !338 ; 2 uses
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !339
  %i.bb = icmp eq i32 %i.az, %i.ba
  %.pre.i.i26.i.i.i = load i32, ptr %i.av, align 4, !tbaa !340 ; 2 uses
  br i1 %i.bb, label %._crit_edge.i.i28.i.i.i, label %bb.h

._crit_edge.i.i28.i.i.i:                          ; preds = %.noexc30.i.i.i
  %.pre15.i.i29.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !337
  br label %bb.i

bb.h:                                             ; preds = %.noexc30.i.i.i
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !341
  %i.bd = icmp eq i32 %.pre.i.i26.i.i.i, %i.bc
  %.pre16.i.i27.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !337 ; 2 uses
  %i.be = load i32, ptr %i.ax, align 4
  %i.bf = icmp eq i32 %i.be, %.pre16.i.i27.i.i.i
  %or.cond36.i.i.i = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond36.i.i.i, label %bb.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i28.i.i.i
  %i.bg = phi i32 [ %.pre15.i.i29.i.i.i, %._crit_edge.i.i28.i.i.i ], [ %.pre16.i.i27.i.i.i, %bb.h ]
  store i8 0, ptr %i.ah, align 8, !tbaa !342
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %i.az, ptr %i.bh, align 4, !tbaa !343
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %.pre.i.i26.i.i.i, ptr %i.bi, align 8, !tbaa !344
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.bn = icmp sgt i32 %.fr44.i.i.i, 0
  br i1 %i.bn, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.fr44.i.i.i to i64 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 88
  %min.iters.check = icmp ult i32 %.fr44.i.i.i, 4
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.de = load i8, ptr %i.d, align 8, !tbaa !342, !range !209, !noundef !210
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.j, label %.preheader.us.i.i.i

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.dg = load i32, ptr %i.bk, align 4, !tbaa !343
  %i.dh = load i32, ptr %i.p, align 4, !tbaa !338
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.k, label %.preheader.us.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.dj = load i32, ptr %i.bl, align 8, !tbaa !344
  %i.dk = load i32, ptr %i.r, align 4, !tbaa !340
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br i1 %i.dl, label %.split.us.i.i.i, label %.preheader.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.k
  %i.dm = load i32, ptr %i.bm, align 4, !tbaa !345
  %i.dn = load i32, ptr %i.u, align 8, !tbaa !337
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %.split42.us.i.i.i, label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %.split.us.i.i.i, %bb.k, %bb.j, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !324
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !147
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %.lr.ph.split.us38.i.i.i, label %.lr.ph.split.us.us.i.i.i, !prof !189

.lr.ph.split.us.us.i.i.i:                         ; preds = %.preheader.us.i.i.i
  %i.du = load ptr, ptr %i.aj, align 8, !tbaa !326 ; 2 uses
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !326 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.us.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.us.i.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !252
  %wide.load30 = load <2 x double>, ptr %i.dx, align 8, !tbaa !252
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index
  %4 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load30, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = fptrunc <4 x double> %4 to <4 x float>
  store <4 x float> %5, ptr %i.dy, align 4, !tbaa !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !2598

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.split.us.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !252
  %i.ec = fptrunc double %i.eb to float
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.i.i
  store float %i.ec, ptr %i.ed, align 4, !tbaa !329
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !2599

.lr.ph.split.us38.i.i.i:                          ; preds = %.preheader.us.i.i.i, %bb.m
  %indvars.iv51.i.i.i = phi i64 [ %indvars.iv.next52.i.i.i, %bb.m ], [ 0, %.preheader.us.i.i.i ] ; 3 uses
  %i.ee = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv51.i.i.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !252
  %i.eh = fptrunc double %i.eg to float
  %i.ei = load ptr, ptr %2, align 8, !tbaa !324
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !229
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !147
  %i.em = icmp eq i32 %i.el, 3
  br i1 %i.em, label %bb.l, label %bb.m, !prof !189

bb.l:                                             ; preds = %.lr.ph.split.us38.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.m unwind label %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us38.i.i.i
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !326 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv51.i.i.i
  store float %i.eh, ptr %i.eo, align 4, !tbaa !329
  %indvars.iv.next52.i.i.i = add nuw nsw i64 %indvars.iv51.i.i.i, 1 ; 2 uses
  %exitcond55.not.i.i.i = icmp eq i64 %indvars.iv.next52.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond55.not.i.i.i, label %._crit_edge.us.i.i.i, label %.lr.ph.split.us38.i.i.i, !llvm.loop !2600

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph, %bb.m, %middle.block
  %i.ep = phi ptr [ %i.dv, %middle.block ], [ %i.en, %bb.m ], [ %i.dv, %scalar.ph ] ; 2 uses
  %i.eq = load i32, ptr %i.bk, align 4, !tbaa !343
  %i.er = add nsw i32 %i.eq, 1                    ; 7 uses
  store i32 %i.er, ptr %i.bk, align 4, !tbaa !343
  %i.es = load i32, ptr %i.q, align 8, !tbaa !339
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %bb.n, label %bb.u

bb.n:                                             ; preds = %._crit_edge.us.i.i.i
  %i.eu = load i8, ptr %i.cj, align 1, !tbaa !346, !range !209, !noundef !210
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.o, label %._crit_edge.i31.i.i

._crit_edge.i31.i.i:                              ; preds = %bb.n
  %.pre.i33.i.i = load i32, ptr %i.bl, align 8, !tbaa !344
  %.pre74.i.i = load i32, ptr %i.bm, align 4, !tbaa !345
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.ew = load i8, ptr %i.ck, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ey = load i64, ptr %i.cm, align 8, !tbaa !348
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 %i.ey
  store ptr %i.ez, ptr %i.f, align 8, !tbaa !326
  %i.fa = load i32, ptr %i.cn, align 8, !tbaa !349
  %.not.i.i36.i.i = icmp slt i32 %i.er, %i.fa
  br i1 %.not.i.i36.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i, label %bb.q, !prof !212

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i unwind label %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.o
  %i.fb = load i8, ptr %i.cl, align 2, !tbaa !350, !range !209, !noundef !210
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fd = load i64, ptr %i.cm, align 8, !tbaa !348
  %i.fe = getelementptr inbounds i8, ptr %i.ep, i64 %i.fd
  store ptr %i.fe, ptr %i.f, align 8, !tbaa !326
  %i.ff = load i32, ptr %i.cn, align 8, !tbaa !349
  %i.fg = icmp slt i32 %i.er, %i.ff               ; 3 uses
  %i.fh = load i32, ptr %i.co, align 4
  %i.fi = icmp sge i32 %i.er, %i.fh
  %not..i.i34.i.i = xor i1 %i.fg, true
  %or.cond.i.i35.i.i = select i1 %not..i.i34.i.i, i1 true, i1 %i.fi, !prof !351
  %i.fj = load ptr, ptr %i.e, align 8
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = select i1 %or.cond.i.i35.i.i, i1 true, i1 %i.fk, !prof !351
  br i1 %i.fl, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i, !prof !189

bb.t:                                             ; preds = %bb.s
  %i.fm = load ptr, ptr %2, align 8, !tbaa !324
  %i.fn = load i32, ptr %i.bl, align 8, !tbaa !344
  %i.fo = load i32, ptr %i.bm, align 4, !tbaa !345
  %i.fp = load i32, ptr %i.g, align 8, !tbaa !327
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !229
  %i.fs = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.fr, i32 noundef %i.er, i32 noundef %i.fn, i32 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %i.co, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i1 noundef zeroext %i.fg, i32 noundef %i.fp)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38.i.i:                                     ; preds = %bb.t
  %i.ft = zext i1 %i.fg to i8
  store ptr %i.fs, ptr %i.f, align 8, !tbaa !326
  store i8 %i.ft, ptr %i.cj, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i

bb.u:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fu = load i32, ptr %i.p, align 4, !tbaa !338 ; 3 uses
  store i32 %i.fu, ptr %i.bk, align 4, !tbaa !343
  %i.fv = load i32, ptr %i.bl, align 8, !tbaa !344
  %i.fw = add nsw i32 %i.fv, 1                    ; 3 uses
  store i32 %i.fw, ptr %i.bl, align 8, !tbaa !344
  %i.fx = load i32, ptr %i.s, align 8, !tbaa !341
  %.not.i29.i.i = icmp slt i32 %i.fw, %i.fx
  %.pre75.i.i = load i32, ptr %i.bm, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i29.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = load i32, ptr %i.r, align 4, !tbaa !340 ; 2 uses
  store i32 %i.fy, ptr %i.bl, align 8, !tbaa !344
  %i.fz = add nsw i32 %.pre75.i.i, 1              ; 3 uses
  store i32 %i.fz, ptr %i.bm, align 4, !tbaa !345
  %i.ga = load i32, ptr %i.u, align 8, !tbaa !337
  %.not1.i30.i.i = icmp slt i32 %i.fz, %i.ga
  br i1 %.not1.i30.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i31.i.i
  %i.gb = phi i32 [ %.pre75.i.i, %bb.u ], [ %i.fz, %bb.v ], [ %.pre74.i.i, %._crit_edge.i31.i.i ]
  %i.gc = phi i32 [ %i.fw, %bb.u ], [ %i.fy, %bb.v ], [ %.pre.i33.i.i, %._crit_edge.i31.i.i ]
  %i.gd = phi i32 [ %i.fu, %bb.u ], [ %i.fu, %bb.v ], [ %i.er, %._crit_edge.i31.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gd, i32 noundef %i.gc, i32 noundef %i.gb)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i unwind label %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i: ; preds = %bb.x, %bb.w, %.noexc38.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ge = load i32, ptr %i.cs, align 4, !tbaa !343
  %i.gf = add nsw i32 %i.ge, 1                    ; 7 uses
  store i32 %i.gf, ptr %i.cs, align 4, !tbaa !343
  %i.gg = load i32, ptr %i.au, align 8, !tbaa !339
  %i.gh = icmp slt i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit40.i.i
  %i.gi = load i8, ptr %i.cv, align 1, !tbaa !346, !range !209, !noundef !210
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.z, label %._crit_edge.i19.i.i

._crit_edge.i19.i.i:                              ; preds = %bb.y
  %.pre.i21.i.i = load i32, ptr %i.ct, align 8, !tbaa !344
  %.pre76.i.i = load i32, ptr %i.cu, align 4, !tbaa !345
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.gk = load i8, ptr %i.cw, align 1, !tbaa !347, !range !209, !noundef !210
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gm = load i64, ptr %i.cy, align 8, !tbaa !348
  %i.gn = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gm
  store ptr %i.go, ptr %i.aj, align 8, !tbaa !326
  %i.gp = load i32, ptr %i.cz, align 8, !tbaa !349
  %.not.i.i24.i.i = icmp slt i32 %i.gf, %i.gp
  br i1 %.not.i.i24.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.ab, !prof !212

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.loopexit.split-lp.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.z
  %i.gq = load i8, ptr %i.cx, align 2, !tbaa !350, !range !209, !noundef !210
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = load i64, ptr %i.cy, align 8, !tbaa !348
  %i.gt = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gs
  store ptr %i.gu, ptr %i.aj, align 8, !tbaa !326
  %i.gv = load i32, ptr %i.cz, align 8, !tbaa !349
  %i.gw = icmp slt i32 %i.gf, %i.gv               ; 3 uses
  %i.gx = load i32, ptr %i.da, align 4
  %i.gy = icmp sge i32 %i.gf, %i.gx
end_hunk_3
