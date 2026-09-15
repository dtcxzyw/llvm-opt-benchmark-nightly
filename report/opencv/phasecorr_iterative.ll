Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/phasecorr_iterative?download=true
inline.NumInlined: 221
inline.NumDeleted: 73
begin_hunk_0_@_ZN2cv23phaseCorrelateIterativeERKNS_11_InputArrayES2_ii:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i64 0, ptr %i.dd, align 8
  store i32 33619968, ptr %47, align 8, !tbaa !58
  store ptr %44, ptr %i.dc, align 8, !tbaa !47
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.ay unwind label %bb.ck

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  %i.de = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.de, align 8, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.df, align 4, !tbaa !60
  store i32 16842752, ptr %48, align 8, !tbaa !58
  %i.dg = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %42, ptr %i.dg, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  %i.dh = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 0, ptr %i.di, align 8
  store i32 33619968, ptr %49, align 8, !tbaa !58
  store ptr %45, ptr %i.dh, align 8, !tbaa !47
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %49, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.az unwind label %bb.cl

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  %i.dj = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 0, ptr %i.dj, align 8, !tbaa !59
  %i.dk = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.dk, align 4, !tbaa !60
  store i32 16842752, ptr %50, align 8, !tbaa !58
  %i.dl = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %44, ptr %i.dl, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  %i.dm = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i64 0, ptr %i.dn, align 8
  store i32 33619968, ptr %51, align 8, !tbaa !58
  store ptr %44, ptr %i.dm, align 8, !tbaa !47
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef 16, i32 noundef 0)
          to label %bb.ba unwind label %bb.cm

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  %i.do = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i32 0, ptr %i.do, align 8, !tbaa !59
  %i.dp = getelementptr inbounds nuw i8, ptr %52, i64 20
  store i32 0, ptr %i.dp, align 4, !tbaa !60
  store i32 16842752, ptr %52, align 8, !tbaa !58
  %i.dq = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %45, ptr %i.dq, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #15
  %i.dr = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %53, align 8, !tbaa !58
  store ptr %45, ptr %i.dr, align 8, !tbaa !47
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, i32 noundef 16, i32 noundef 0)
          to label %bb.bb unwind label %bb.cn

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.dt = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !62, !noalias !61
  %i.dv = getelementptr inbounds nuw i8, ptr %44, i64 12 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !63, !noalias !61
  %i.dx = load i32, ptr %44, align 8, !tbaa !56, !noalias !61
  %i.dy = and i32 %i.dx, 4095
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %54, i32 noundef %i.du, i32 noundef %i.dw, i32 noundef %i.dy)
          to label %.noexc195 unwind label %bb.co

.noexc195:                                        ; preds = %bb.bb
  %i.dz = load i32, ptr %44, align 8, !tbaa !56, !noalias !61
  %i.ea = and i32 %i.dz, 4095
  switch i32 %i.ea, label %bb.be [
    i32 37, label %bb.bc
    i32 38, label %bb.bd
  ]

bb.bc:                                            ; preds = %.noexc195
  %i.eb = getelementptr inbounds nuw i8, ptr %45, i64 24
  %.val.i = load ptr, ptr %i.eb, align 8, !noalias !61 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %45, i64 128
  %.val16.i = load i64, ptr %i.ec, align 8, !noalias !61 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %54, i64 24
  %.val17.i = load ptr, ptr %i.ed, align 8, !alias.scope !61 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %54, i64 128
  %.val18.i = load i64, ptr %i.ee, align 8, !alias.scope !61 ; 4 uses
  %i.ef = load i32, ptr %i.dt, align 8, !tbaa !62, !noalias !61 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph8.i.i, label %.loopexit

.lr.ph8.i.i:                                      ; preds = %bb.bc
  %i.eh = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !64, !noalias !61 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !15, !noalias !61 ; 3 uses
  %i.el = load i32, ptr %i.dv, align 4, !tbaa !63, !noalias !61 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph8.i.i
  %wide.trip.count14.i.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.el to i64 ; 4 uses
  %i.en = add nsw i64 %wide.trip.count14.i.i, -1  ; 3 uses
  %i.eo = mul i64 %.val18.i, %i.en
  %i.ep = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.eq = getelementptr i8, ptr %.val17.i, i64 %i.eo
  %scevgep442 = getelementptr i8, ptr %i.eq, i64 %i.ep ; 2 uses
  %i.er = mul i64 %i.ek, %i.en
  %i.es = getelementptr i8, ptr %i.ei, i64 %i.er
  %scevgep443 = getelementptr i8, ptr %i.es, i64 %i.ep
  %i.et = mul i64 %.val16.i, %i.en
  %i.eu = getelementptr i8, ptr %.val.i, i64 %i.et
  %scevgep444 = getelementptr i8, ptr %i.eu, i64 %i.ep
  %min.iters.check457 = icmp ult i32 %i.el, 4
  %bound0445 = icmp ult ptr %.val17.i, %scevgep443
  %bound1446 = icmp ult ptr %i.ei, %scevgep442
  %found.conflict447 = and i1 %bound0445, %bound1446
  %i.ev = or i64 %i.ek, %.val18.i
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
  %66 = load <1 x float>, ptr %i.fv, align 4, !tbaa !66
  %i.ga = load <2 x float>, ptr %i.fw, align 4, !tbaa !66 ; 3 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 0
  %i.gc = fneg float %i.gb
  %i.gd = fmul float %i.fz, %i.gc
  %i.ge = extractelement <2 x float> %i.ga, i64 1
  %i.gf = fmul float %i.fz, %i.ge
  %i.gg = shufflevector <1 x float> %66, <1 x float> poison, <2 x i32> zeroinitializer
  %i.gh = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.gd, i64 1
  %i.gj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.ga, <2 x float> %i.gi) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.gj, %i.gj
  %i.gk = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gl = extractelement <2 x float> %i.gj, i64 0 ; 2 uses
  %i.gm = call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gk)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.gm)
  %i.gn = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fdiv <2 x float> %i.gj, %i.go
  store <2 x float> %i.gp, ptr %i.fy, align 4, !tbaa !66
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph456, !llvm.loop !31

bb.bd:                                            ; preds = %.noexc195
  %i.gq = getelementptr inbounds nuw i8, ptr %45, i64 24
  %.val19.i = load ptr, ptr %i.gq, align 8, !noalias !61 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %45, i64 128
  %.val20.i = load i64, ptr %i.gr, align 8, !noalias !61 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %54, i64 24
  %.val21.i = load ptr, ptr %i.gs, align 8, !alias.scope !61 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %54, i64 128
  %.val22.i = load i64, ptr %i.gt, align 8, !alias.scope !61 ; 4 uses
  %i.gu = load i32, ptr %i.dt, align 8, !tbaa !62, !noalias !61 ; 2 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph8.i23.i, label %.loopexit

.lr.ph8.i23.i:                                    ; preds = %bb.bd
  %i.gw = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !64, !noalias !61 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15, !noalias !61 ; 3 uses
  %i.ha = load i32, ptr %i.dv, align 4, !tbaa !63, !noalias !61 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.preheader.i24.i, label %.loopexit

.lr.ph.preheader.i24.i:                           ; preds = %.lr.ph8.i23.i
  %wide.trip.count14.i25.i = zext nneg i32 %i.gu to i64 ; 2 uses
  %wide.trip.count.i26.i = zext nneg i32 %i.ha to i64 ; 4 uses
  %i.hc = add nsw i64 %wide.trip.count14.i25.i, -1 ; 3 uses
  %i.hd = mul i64 %.val22.i, %i.hc
  %i.he = shl nuw nsw i64 %wide.trip.count.i26.i, 4 ; 3 uses
  %i.hf = getelementptr i8, ptr %.val21.i, i64 %i.hd
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.he ; 2 uses
  %i.hg = mul i64 %i.gz, %i.hc
  %i.hh = getelementptr i8, ptr %i.gx, i64 %i.hg
  %scevgep429 = getelementptr i8, ptr %i.hh, i64 %i.he
  %i.hi = mul i64 %.val20.i, %i.hc
  %i.hj = getelementptr i8, ptr %.val19.i, i64 %i.hi
  %scevgep430 = getelementptr i8, ptr %i.hj, i64 %i.he
  %min.iters.check = icmp eq i32 %i.ha, 1
  %bound0 = icmp ult ptr %.val21.i, %scevgep429
  %bound1 = icmp ult ptr %i.gx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.hk = or i64 %i.gz, %.val22.i
  %i.hl = icmp slt i64 %i.hk, 0
  %i.hm = or i1 %found.conflict, %i.hl
  %bound0432 = icmp ult ptr %.val21.i, %scevgep430
  %bound1433 = icmp ult ptr %.val19.i, %scevgep
  %found.conflict434 = and i1 %bound0432, %bound1433
  %i.hn = or i64 %.val20.i, %.val22.i
  %i.ho = icmp slt i64 %i.hn, 0
  %i.hp = or i1 %found.conflict434, %i.ho
  %conflict.rdx = or i1 %i.hm, %i.hp
  %n.vec = and i64 %wide.trip.count.i26.i, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i26.i
  br label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %._crit_edge.i33.i, %.lr.ph.preheader.i24.i
  %indvars.iv11.i28.i = phi i64 [ 0, %.lr.ph.preheader.i24.i ], [ %indvars.iv.next12.i34.i, %._crit_edge.i33.i ] ; 4 uses
  %i.hq = mul i64 %indvars.iv11.i28.i, %.val22.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %i.hq ; 2 uses
  %i.hs = mul i64 %indvars.iv11.i28.i, %i.gz
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hs ; 2 uses
  %i.hu = mul i64 %indvars.iv11.i28.i, %.val20.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.val19.i, i64 %i.hu ; 2 uses
  %brmerge604 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge604, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i27.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i27.i ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %index
  %wide.vec = load <4 x double>, ptr %i.hw, align 8, !tbaa !75, !alias.scope !76 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec437 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %index
  %wide.vec438 = load <4 x double>, ptr %i.hx, align 8, !tbaa !75, !alias.scope !77 ; 2 uses
  %strided.vec439 = shufflevector <4 x double> %wide.vec438, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec440 = shufflevector <4 x double> %wide.vec438, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hy = fmul <2 x double> %strided.vec437, %strided.vec440
  %i.hz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec439, <2 x double> %i.hy) ; 3 uses
  %i.ia = fneg <2 x double> %strided.vec439
  %i.ib = fmul <2 x double> %strided.vec437, %i.ia
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec440, <2 x double> %i.ib) ; 3 uses
  %i.id = fmul <2 x double> %i.ic, %i.ic
  %i.ie = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.hz, <2 x double> %i.id)
  %i.if = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ie) ; 2 uses
  %i.ig = fdiv <2 x double> %i.hz, %i.if
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %index
  %i.ii = fdiv <2 x double> %i.ic, %i.if
  %interleaved.vec = shufflevector <2 x double> %i.ig, <2 x double> %i.ii, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ih, align 8, !tbaa !75, !alias.scope !78, !noalias !79
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !36

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
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv.i29.i ; 2 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %indvars.iv.i29.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.hr, i64 %indvars.iv.i29.i
  %i.io = load double, ptr %i.im, align 8, !tbaa !75
  %i.ip = load double, ptr %i.ik, align 8, !tbaa !75
  %i.iq = load <2 x double>, ptr %i.il, align 8, !tbaa !75 ; 3 uses
  %i.ir = insertelement <2 x double> poison, double %i.io, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = fneg <2 x double> %i.iq
  %i.iu = shufflevector <2 x double> %i.iq, <2 x double> %i.it, <2 x i32> <i32 1, i32 2>
  %i.iv = fmul <2 x double> %i.is, %i.iu
  %i.iw = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.iq, <2 x double> %i.iv) ; 4 uses
  %foldExtExtBinop538 = fmul <2 x double> %i.iy, %i.iy
  %i.iz = extractelement <2 x double> %foldExtExtBinop538, i64 1
  %i.ja = extractelement <2 x double> %i.iy, i64 0 ; 2 uses
  %i.jb = call double @llvm.fmuladd.f64(double %i.ja, double %i.ja, double %i.iz)
  %sqrt.i30.i = call double @llvm.sqrt.f64(double %i.jb)
  %i.jc = insertelement <2 x double> poison, double %sqrt.i30.i, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fdiv <2 x double> %i.iy, %i.jd
  store <2 x double> %i.je, ptr %i.in, align 8, !tbaa !75
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
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

bb.bi:                                            ; preds = %bb.bf
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = load ptr, ptr %25, align 8, !tbaa !13, !noalias !61 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193: ; preds = %bb.bi
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !14, !noalias !61
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193, %bb.bh
  %.pn.i = phi { ptr, i32 } [ %i.jf, %bb.bh ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193 ], [ %i.jg, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !61
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %54) #15
  br label %.body196

.loopexit:                                        ; preds = %._crit_edge.i33.i, %._crit_edge.i.i, %.lr.ph8.i23.i, %bb.bd, %.lr.ph8.i.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  %i.jm = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i32 0, ptr %i.jm, align 8, !tbaa !59
  %i.jn = getelementptr inbounds nuw i8, ptr %55, i64 20
  store i32 0, ptr %i.jn, align 4, !tbaa !60
  store i32 16842752, ptr %55, align 8, !tbaa !58
  %i.jo = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr %54, ptr %i.jo, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  %i.jp = getelementptr inbounds nuw i8, ptr %56, i64 8
end_hunk_0
