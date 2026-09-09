Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/phasecorr_iterative?download=true
inline.NumInlined: 221
inline.NumDeleted: 73
begin_hunk_0_@_ZN2cv23phaseCorrelateIterativeERKNS_11_InputArrayES2_ii:bb.a
  %i.ew = icmp slt i64 %i.ev, 0
  %i.ex = or i1 %found.conflict447, %i.ew
  %bound0450 = icmp ult ptr %.val17.i, %scevgep444
  %bound1451 = icmp ult ptr %.val.i, %scevgep442
  %found.conflict452 = and i1 %bound0450, %bound1451
  %i.ey = or i64 %.val16.i, %.val18.i
  %i.ez = icmp slt i64 %i.ey, 0
  %i.fa = or i1 %found.conflict452, %i.ez
  %conflict.rdx455 = or i1 %i.ex, %i.fa
  %n.vec459 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n471 = icmp eq i64 %n.vec459, %wide.trip.count.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv11.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next12.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.fb = mul i64 %indvars.iv11.i.i, %.val18.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.val17.i, i64 %i.fb ; 2 uses
  %i.fd = mul i64 %indvars.iv11.i.i, %i.ek
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fd ; 2 uses
  %i.ff = mul i64 %indvars.iv11.i.i, %.val16.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ff ; 2 uses
  %brmerge = select i1 %min.iters.check457, i1 true, i1 %conflict.rdx455
  br i1 %brmerge, label %scalar.ph456.preheader, label %vector.body460

vector.body460:                                   ; preds = %.lr.ph.i.i, %vector.body460
  %index461 = phi i64 [ %index.next469, %vector.body460 ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %index461
  %wide.vec462 = load <8 x float>, ptr %i.fh, align 4, !tbaa !66, !alias.scope !67 ; 2 uses
  %strided.vec463 = shufflevector <8 x float> %wide.vec462, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec464 = shufflevector <8 x float> %wide.vec462, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %index461
  %wide.vec465 = load <8 x float>, ptr %i.fi, align 4, !tbaa !66, !alias.scope !68 ; 2 uses
  %strided.vec466 = shufflevector <8 x float> %wide.vec465, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec467 = shufflevector <8 x float> %wide.vec465, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.fj = fmul <4 x float> %strided.vec464, %strided.vec467
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec463, <4 x float> %strided.vec466, <4 x float> %i.fj) ; 3 uses
  %i.fl = fneg <4 x float> %strided.vec466
  %i.fm = fmul <4 x float> %strided.vec464, %i.fl
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec463, <4 x float> %strided.vec467, <4 x float> %i.fm) ; 3 uses
  %i.fo = fmul <4 x float> %i.fn, %i.fn
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fk, <4 x float> %i.fo)
  %i.fq = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.fp) ; 2 uses
  %i.fr = fdiv <4 x float> %i.fk, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index461
  %i.ft = fdiv <4 x float> %i.fn, %i.fq
  %interleaved.vec468 = shufflevector <4 x float> %i.fr, <4 x float> %i.ft, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec468, ptr %i.fs, align 4, !tbaa !66, !alias.scope !69, !noalias !70
  %index.next469 = add nuw i64 %index461, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next469, %n.vec459
  br i1 %i.fu, label %middle.block470, label %vector.body460, !llvm.loop !29

middle.block470:                                  ; preds = %vector.body460
  br i1 %cmp.n471, label %._crit_edge.i.i, label %scalar.ph456.preheader

scalar.ph456.preheader:                           ; preds = %.lr.ph.i.i, %middle.block470
  %indvars.iv.i.i.ph = phi i64 [ %n.vec459, %middle.block470 ], [ 0, %.lr.ph.i.i ]
  br label %scalar.ph456

._crit_edge.i.i:                                  ; preds = %scalar.ph456, %middle.block470
  %indvars.iv.next12.i.i = add nuw nsw i64 %indvars.iv11.i.i, 1 ; 2 uses
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next12.i.i, %wide.trip.count14.i.i
  br i1 %exitcond15.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !30

scalar.ph456:                                     ; preds = %scalar.ph456.preheader, %scalar.ph456
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph456 ], [ %indvars.iv.i.i.ph, %scalar.ph456.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv.i.i
  %i.fz = load float, ptr %i.fx, align 4, !tbaa !66 ; 2 uses
  %i.ga = load <1 x float>, ptr %i.fv, align 4, !tbaa !66
  %i.gb = load <2 x float>, ptr %i.fw, align 4, !tbaa !66 ; 3 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 0
  %i.gd = fneg float %i.gc
  %i.ge = fmul float %i.fz, %i.gd
  %i.gf = extractelement <2 x float> %i.gb, i64 1
  %i.gg = fmul float %i.fz, %i.gf
  %i.gh = shufflevector <1 x float> %i.ga, <1 x float> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.ge, i64 1
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gb, <2 x float> %i.gj) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.gk, %i.gk
  %i.gl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gm = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  %i.gn = call float @llvm.fmuladd.f32(float %i.gm, float %i.gm, float %i.gl)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.gn)
  %i.go = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fdiv <2 x float> %i.gk, %i.gp
  store <2 x float> %i.gq, ptr %i.fy, align 4, !tbaa !66
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph456, !llvm.loop !31

bb.bd:                                            ; preds = %.noexc195
  %i.gr = getelementptr inbounds nuw i8, ptr %45, i64 24
  %.val19.i = load ptr, ptr %i.gr, align 8, !noalias !61 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %45, i64 128
  %.val20.i = load i64, ptr %i.gs, align 8, !noalias !61 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %54, i64 24
  %.val21.i = load ptr, ptr %i.gt, align 8, !alias.scope !61 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %54, i64 128
  %.val22.i = load i64, ptr %i.gu, align 8, !alias.scope !61 ; 4 uses
  %i.gv = load i32, ptr %i.dt, align 8, !tbaa !62, !noalias !61 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph8.i23.i, label %.loopexit

.lr.ph8.i23.i:                                    ; preds = %bb.bd
  %i.gx = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !64, !noalias !61 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !15, !noalias !61 ; 3 uses
  %i.hb = load i32, ptr %i.dv, align 4, !tbaa !63, !noalias !61 ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.preheader.i24.i, label %.loopexit

.lr.ph.preheader.i24.i:                           ; preds = %.lr.ph8.i23.i
  %wide.trip.count14.i25.i = zext nneg i32 %i.gv to i64 ; 2 uses
  %wide.trip.count.i26.i = zext nneg i32 %i.hb to i64 ; 4 uses
  %i.hd = add nsw i64 %wide.trip.count14.i25.i, -1 ; 3 uses
  %i.he = mul i64 %.val22.i, %i.hd
  %i.hf = shl nuw nsw i64 %wide.trip.count.i26.i, 4 ; 3 uses
  %i.hg = getelementptr i8, ptr %.val21.i, i64 %i.he
  %scevgep = getelementptr i8, ptr %i.hg, i64 %i.hf ; 2 uses
  %i.hh = mul i64 %i.ha, %i.hd
  %i.hi = getelementptr i8, ptr %i.gy, i64 %i.hh
  %scevgep429 = getelementptr i8, ptr %i.hi, i64 %i.hf
  %i.hj = mul i64 %.val20.i, %i.hd
  %i.hk = getelementptr i8, ptr %.val19.i, i64 %i.hj
  %scevgep430 = getelementptr i8, ptr %i.hk, i64 %i.hf
  %min.iters.check = icmp eq i32 %i.hb, 1
  %bound0 = icmp ult ptr %.val21.i, %scevgep429
  %bound1 = icmp ult ptr %i.gy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.hl = or i64 %i.ha, %.val22.i
  %i.hm = icmp slt i64 %i.hl, 0
  %i.hn = or i1 %found.conflict, %i.hm
  %bound0432 = icmp ult ptr %.val21.i, %scevgep430
  %bound1433 = icmp ult ptr %.val19.i, %scevgep
  %found.conflict434 = and i1 %bound0432, %bound1433
  %i.ho = or i64 %.val20.i, %.val22.i
  %i.hp = icmp slt i64 %i.ho, 0
  %i.hq = or i1 %found.conflict434, %i.hp
  %conflict.rdx = or i1 %i.hn, %i.hq
  %n.vec = and i64 %wide.trip.count.i26.i, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i26.i
  br label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %._crit_edge.i33.i, %.lr.ph.preheader.i24.i
  %indvars.iv11.i28.i = phi i64 [ 0, %.lr.ph.preheader.i24.i ], [ %indvars.iv.next12.i34.i, %._crit_edge.i33.i ] ; 4 uses
  %i.hr = mul i64 %indvars.iv11.i28.i, %.val22.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %i.hr ; 2 uses
  %i.ht = mul i64 %indvars.iv11.i28.i, %i.ha
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ht ; 2 uses
  %i.hv = mul i64 %indvars.iv11.i28.i, %.val20.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.val19.i, i64 %i.hv ; 2 uses
  %brmerge604 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge604, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i27.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i27.i ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %index
  %wide.vec = load <4 x double>, ptr %i.hx, align 8, !tbaa !75, !alias.scope !76 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec437 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %index
  %wide.vec438 = load <4 x double>, ptr %i.hy, align 8, !tbaa !75, !alias.scope !77 ; 2 uses
  %strided.vec439 = shufflevector <4 x double> %wide.vec438, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec440 = shufflevector <4 x double> %wide.vec438, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hz = fmul <2 x double> %strided.vec437, %strided.vec440
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec439, <2 x double> %i.hz) ; 3 uses
  %i.ib = fneg <2 x double> %strided.vec439
  %i.ic = fmul <2 x double> %strided.vec437, %i.ib
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec440, <2 x double> %i.ic) ; 3 uses
  %i.ie = fmul <2 x double> %i.id, %i.id
  %i.if = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.ia, <2 x double> %i.ie)
  %i.ig = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.if) ; 2 uses
  %i.ih = fdiv <2 x double> %i.ia, %i.ig
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %index
  %i.ij = fdiv <2 x double> %i.id, %i.ig
  %interleaved.vec = shufflevector <2 x double> %i.ih, <2 x double> %i.ij, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ii, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i33.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i27.i, %middle.block
  %indvars.iv.i29.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i27.i ]
  br label %scalar.ph

._crit_edge.i33.i:                                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next12.i34.i = add nuw nsw i64 %indvars.iv11.i28.i, 1 ; 2 uses
  %exitcond15.not.i35.i = icmp eq i64 %indvars.iv.next12.i34.i, %wide.trip.count14.i25.i
  br i1 %exitcond15.not.i35.i, label %.loopexit, label %.lr.ph.i27.i, !llvm.loop !37

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i29.i = phi i64 [ %indvars.iv.next.i31.i, %scalar.ph ], [ %indvars.iv.i29.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %indvars.iv.i29.i
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %indvars.iv.i29.i
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv.i29.i
  %i.io = load <2 x double>, ptr %i.il, align 8, !tbaa !75 ; 2 uses
  %66 = load <2 x double>, ptr %i.im, align 8, !tbaa !75 ; 3 uses
  %67 = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ip = fneg <2 x double> %66
  %i.iq = shufflevector <2 x double> %66, <2 x double> %i.ip, <2 x i32> <i32 1, i32 2>
  %i.ir = fmul <2 x double> %67, %i.iq
  %i.is = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %66, <2 x double> %i.ir) ; 4 uses
  %foldExtExtBinop538 = fmul <2 x double> %i.it, %i.it
  %i.iu = extractelement <2 x double> %foldExtExtBinop538, i64 1
  %i.iv = extractelement <2 x double> %i.it, i64 0 ; 2 uses
  %i.iw = call double @llvm.fmuladd.f64(double %i.iv, double %i.iv, double %i.iu)
  %sqrt.i30.i = call double @llvm.sqrt.f64(double %i.iw)
  %i.ix = insertelement <2 x double> poison, double %sqrt.i30.i, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fdiv <2 x double> %i.it, %i.iy
  store <2 x double> %i.iz, ptr %i.in, align 8, !tbaa !75
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.i29.i, 1 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %indvars.iv.next.i31.i, %wide.trip.count.i26.i
  br i1 %exitcond.not.i32.i, label %._crit_edge.i33.i, label %scalar.ph, !llvm.loop !38

bb.be:                                            ; preds = %.noexc195
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !61
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_127calculateCrossPowerSpectrumERKN2cv3MatES3_, ptr noundef nonnull @.str.1, i32 noundef 33) #16
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

bb.bi:                                            ; preds = %bb.bf
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %25, align 8, !tbaa !13, !noalias !61 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193: ; preds = %bb.bi
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !14, !noalias !61
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193, %bb.bh
  %.pn.i = phi { ptr, i32 } [ %i.ja, %bb.bh ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193 ], [ %i.jb, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !61
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #15
  br label %.body196

.loopexit:                                        ; preds = %._crit_edge.i33.i, %._crit_edge.i.i, %.lr.ph8.i23.i, %bb.bd, %.lr.ph8.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  %i.jh = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i32 0, ptr %i.jh, align 8, !tbaa !59
  %i.ji = getelementptr inbounds nuw i8, ptr %55, i64 20
  store i32 0, ptr %i.ji, align 4, !tbaa !60
  store i32 16842752, ptr %55, align 8, !tbaa !58
  %i.jj = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %54, ptr %i.jj, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  %i.jk = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %56, i64 16
  store i64 0, ptr %i.jl, align 8
  store i32 33619968, ptr %56, align 8, !tbaa !58
  store ptr %54, ptr %i.jk, align 8, !tbaa !47
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %56, i32 noundef 35, i32 noundef 0)
          to label %bb.bj unwind label %bb.cp

bb.bj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  %i.jm = getelementptr inbounds nuw i8, ptr %54, i64 12 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 4 uses
  %i.jo = load <2 x i32>, ptr %i.jn, align 8, !tbaa !80
  %i.jp = sdiv <2 x i32> %i.jo, splat (i32 2)     ; 2 uses
  %i.jq = shufflevector <2 x i32> %i.jp, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.jr = shufflevector <2 x i32> %i.jp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.js = shufflevector <4 x i32> %i.jr, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  store <4 x i32> %i.js, ptr %11, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %.noexc198 unwind label %bb.cq

.noexc198:                                        ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.jt = shufflevector <4 x i32> %i.jr, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 0>
  store <4 x i32> %i.jt, ptr %13, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %13)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %.noexc198
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.ju = shufflevector <4 x i32> %i.jr, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 0>
  store <4 x i32> %i.ju, ptr %15, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.bl unwind label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store <4 x i32> %i.jq, ptr %17, align 16, !tbaa !80
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %54, ptr noundef nonnull align 4 dereferenceable(16) %17)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.jv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.jw, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !58
  store ptr %18, ptr %i.jv, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.bn unwind label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.jx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 0, ptr %i.jy, align 8
  store i32 33619968, ptr %20, align 8, !tbaa !58
  store ptr %10, ptr %i.jx, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.jz = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.ka, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !58
  store ptr %16, ptr %i.jz, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %bb.bp unwind label %bb.bx

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.kb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.kc, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !58
  store ptr %18, ptr %i.kb, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.kd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 0, ptr %i.ke, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !58
  store ptr %12, ptr %i.kd, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.kf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.kg, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !58
  store ptr %14, ptr %i.kf, align 8, !tbaa !47
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.cf unwind label %bb.ca

bb.bs:                                            ; preds = %.noexc198
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ce

bb.bt:                                            ; preds = %bb.bk
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.cd

bb.bu:                                            ; preds = %bb.bl
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bm
  %i.kk = landingpad { ptr, i32 }
end_hunk_0
