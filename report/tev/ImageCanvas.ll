Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext:bb.a
  store i8 %i.ot, ptr %20, align 8, !alias.scope !771
  %i.ou = getelementptr inbounds nuw i8, ptr %20, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.og, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.oo, %.noexc.i ], [ %i.ou, %bb.ar ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.oi, i64 %i.og, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.018.i.i.i.i = phi ptr [ %i.ou, %bb.ar ], [ %.017.i.i.i.i, %bb.as ]
  %i.ov = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.og
  store i8 0, ptr %i.ov, align 1, !tbaa !79
  %i.ow = load ptr, ptr %9, align 8, !tbaa !236, !noalias !769 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %i.ow, %i.ob
  br i1 %.not.i.i.i141, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef %i.ow) #47, !noalias !769
  br label %bb.ax

bb.av:                                            ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit140, %.thread.i.i.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  %i.oy = load ptr, ptr %9, align 8, !tbaa !236, !noalias !769 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.oy, %i.ob
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %i.oy) #47, !noalias !769
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #47
  br label %bb.bb

bb.ax:                                            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47, !noalias !769
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #47, !noalias !768
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.nu, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.dd unwind label %bb.ba

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIN7nanogui5ColorEEEEEDaRT_m.exit.i.i.i, %bb.y, %bb.z, %bb.ae, %._crit_edge, %bb.ac, %bb.ad, %bb.al, %bb.aj, %bb.ah, %bb.af
  %lpad.loopexit.split-lp445 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.bh, %bb.ao
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.087 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pb = load i8, ptr %20, align 8
  %i.pc = trunc i8 %i.pb to i1
  br i1 %i.pc, label %.split325, label %.body

.split325:                                        ; preds = %bb.ba
  %i.pd = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !79
  %i.pf = load i64, ptr %20, align 8
  %i.pg = and i64 %i.pf, -2
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pg) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #47
  br i1 %.087, label %bb.bb, label %bb.ct

.body:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #47
  br i1 %.087, label %bb.bb, label %bb.ct

bb.bb:                                            ; preds = %.split325, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, %.body
  %.pn96324 = phi { ptr, i32 } [ %i.ox, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.pa, %.body ], [ %i.pa, %.split325 ]
  call void @__cxa_free_exception(ptr %i.nu) #47
  br label %bb.ct

bb.bc:                                            ; preds = %bb.ap
  br i1 %i.ke, label %.preheader, label %bb.bh

.preheader:                                       ; preds = %bb.bc
  %.not349 = icmp eq ptr %i.mb, %i.ma
  br i1 %.not349, label %.loopexit, label %.lr.ph339

.lr.ph339:                                        ; preds = %.preheader
  %i.ph = add nsw i64 %i.no, -1                   ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ph
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph339, %bb.bg
  %.086338 = phi i64 [ 0, %.lr.ph339 ], [ %i.ra, %bb.bg ] ; 4 uses
  %i.pj = icmp eq i64 %.086338, %i.ph
  %or.cond327 = and i1 %i.ia, %i.pj
  br i1 %or.cond327, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pk = load float, ptr %i.pi, align 4, !tbaa !76
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.086338
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !76 ; 4 uses
  %i.pn = call noundef float @llvm.fabs.f32(float %i.pm) ; 3 uses
  %i.po = fmul float %i.pm, 1.292000e+01
  %i.pp = fcmp olt float %i.pn, f0x00800000
  %i.pq = bitcast float %i.pn to i32
  %i.pr = select i1 %i.pp, i32 8388608, i32 %i.pq ; 2 uses
  %i.ps = lshr i32 %i.pr, 23
  %i.pt = add nsw i32 %i.ps, -127
  %i.pu = sitofp i32 %i.pt to float
  %i.pv = and i32 %i.pr, 8388607
  %i.pw = or disjoint i32 %i.pv, 1065353216
  %i.px = bitcast i32 %i.pw to float
  %i.py = fadd float %i.px, -1.000000e+00         ; 5 uses
  %i.pz = call noundef float @llvm.fma.f32(float %i.py, float f0x3D3BF404, float f0xBE471796)
  %i.qa = call noundef float @llvm.fma.f32(float %i.pz, float %i.py, float f0x3ED4B281)
  %i.qb = call noundef float @llvm.fma.f32(float %i.qa, float %i.py, float f0xBF356C3D)
  %i.qc = call noundef float @llvm.fma.f32(float %i.qb, float %i.py, float f0x3FB88DC0)
  %i.qd = fmul float %i.py, %i.qc
  %i.qe = fadd float %i.qd, %i.pu
  %i.qf = fmul float %i.qe, f0x3ED55555           ; 2 uses
  %i.qg = call noundef float @llvm.rint.f32(float %i.qf) ; 2 uses
  %i.qh = fsub float %i.qf, %i.qg                 ; 6 uses
  %i.qi = call noundef float @llvm.fma.f32(float %i.qh, float f0x39222A61, float f0x3AAF931A)
  %i.qj = call noundef float @llvm.fma.f32(float %i.qi, float %i.qh, float 9.618040e-03)
  %i.qk = call noundef float @llvm.fma.f32(float %i.qj, float %i.qh, float f0x3D63578A)
  %i.ql = call noundef float @llvm.fma.f32(float %i.qk, float %i.qh, float f0x3E75FDF0)
  %i.qm = call noundef float @llvm.fma.f32(float %i.ql, float %i.qh, float f0x3F317218)
  %i.qn = call noundef float @llvm.fma.f32(float %i.qm, float %i.qh, float 1.000000e+00)
  %i.qo = fptosi float %i.qg to i32
  %i.qp = shl i32 %i.qo, 23
  %i.qq = add i32 %i.qp, 1065353216
  %i.qr = bitcast i32 %i.qq to float
  %i.qs = fmul float %i.qn, %i.qr
  %i.qt = fcmp oeq float %i.pm, 0.000000e+00
  %i.qu = call float @llvm.fmuladd.f32(float %i.qs, float 1.055000e+00, float -5.500000e-02)
  %i.qv = select i1 %i.qt, float -5.500000e-02, float %i.qu
  %i.qw = call noundef float @llvm.copysign.f32(float %i.qv, float %i.pm)
  %i.qx = fcmp ole float %i.pn, 3.130800e-03
  %.sroa.speculated.i = select i1 %i.qx, float %i.po, float %i.qw
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.qy = phi float [ %i.pk, %bb.be ], [ %.sroa.speculated.i, %bb.bf ]
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.086338
  store float %i.qy, ptr %i.qz, align 4, !tbaa !76
  %i.ra = add nuw i64 %.086338, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ra, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.bd, !llvm.loop !736

bb.bh:                                            ; preds = %bb.bc
  invoke void @_ZN3tev11ImageCanvas25applyInspectionParametersERNSt3__16vectorIfNS1_9allocatorIfEEEEb(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(24) %19, i1 noundef zeroext %i.ia)
          to label %.loopexit unwind label %bb.az

.loopexit:                                        ; preds = %bb.bg, %.preheader, %bb.bh
  %.not350 = icmp eq ptr %i.mb, %i.ma
  br i1 %.not350, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %.loopexit
  %i.rb = sitofp <2 x i32> %i.na to <2 x float>   ; 2 uses
  %i.rc = extractelement <2 x float> %i.rb, i64 0
  %i.rd = extractelement <2 x float> %i.rb, i64 1
  br label %bb.bi

._crit_edge343:                                   ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181, %.loopexit
  %i.re = phi ptr [ %i.lz, %.loopexit ], [ %i.vo, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181 ] ; 4 uses
  %i.rf = phi ptr [ %i.ma, %.loopexit ], [ %i.vo, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181 ] ; 2 uses
  %i.rg = phi ptr [ %i.ma, %.loopexit ], [ %i.vn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181 ] ; 2 uses
  %i.rh = add i32 %.sroa.0238.0344, 1             ; 2 uses
  %exitcond356.not = icmp eq i32 %i.rh, %i.es
  br i1 %exitcond356.not, label %._crit_edge346, label %bb.ao, !llvm.loop !737

bb.bi:                                            ; preds = %.lr.ph342, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181
  %.085340 = phi i64 [ 0, %.lr.ph342 ], [ %i.wf, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit181 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br i1 %i.ke, label %bb.bj, label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  %i.ri = load ptr, ptr %19, align 8, !tbaa !232
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %.085340
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !76 ; 3 uses
  %i.rl = fcmp olt float %i.rk, 0.000000e+00
  br i1 %i.rl, label %.cont, label %.else

.else:                                            ; preds = %bb.bj
  %i.rm = fcmp ogt float %i.rk, 1.000000e+00
  br i1 %i.rm, label %.cont, label %.else.else

.else.else:                                       ; preds = %.else
  %i.rn = call float @llvm.fmuladd.f32(float %i.rk, float 2.550000e+02, float 5.000000e-01)
  %i.ro = fptosi float %i.rn to i8
  %i.rp = zext nneg i8 %i.ro to i32
  br label %.cont

.cont:                                            ; preds = %.else.else, %.else, %bb.bj
  %i.rq = phi i32 [ 0, %bb.bj ], [ poison, %.else ], [ %i.rp, %.else.else ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #47, !noalias !772
  store i32 %i.rq, ptr %12, align 16, !tbaa !79, !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47, !noalias !773
  store i64 0, ptr %i.lg, align 8, !noalias !773
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.lf, align 8, !tbaa !235, !noalias !773
  store ptr %i.lh, ptr %8, align 8, !tbaa !236, !noalias !773
  store i64 500, ptr %i.le, align 8, !tbaa !237, !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !773
  store ptr @.str.10, ptr %4, align 8, !tbaa !218, !noalias !773
  store i64 6, ptr %.sroa.2.0..sroa_idx.i16.i195, align 8, !tbaa !216, !noalias !773
  store i32 0, ptr %i.li, align 8, !tbaa !240, !noalias !773
  store ptr %8, ptr %i.lj, align 8, !tbaa !242, !noalias !773
  store i64 2, ptr %i.lk, align 8, !tbaa !244, !noalias !773
  store ptr %12, ptr %.sroa.2.0..sroa_idx.i17.i196, align 8, !tbaa !79, !noalias !773
  store ptr null, ptr %i.ll, align 8, !tbaa !245, !noalias !773
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 6, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %.cont
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47, !noalias !773
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.rr = load i64, ptr %i.lg, align 8, !tbaa !246, !noalias !775 ; 8 uses
  %i.rs = icmp ult i64 %i.rr, -9
  call void @llvm.assume(i1 %i.rs)
  %i.rt = load ptr, ptr %8, align 8, !tbaa !236, !noalias !775
  %i.ru = icmp ult i64 %i.rr, 23
  br i1 %i.ru, label %bb.bl, label %.thread.i.i.i.i145

.thread.i.i.i.i145:                               ; preds = %bb.bk
  %i.rv = or i64 %i.rr, 7                         ; 2 uses
  %i.rw = icmp eq i64 %i.rv, 23
  %i.rx = add nuw i64 %i.rv, 1
  %i.ry = select i1 %i.rw, i64 25, i64 %i.rx      ; 2 uses
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #48
          to label %.noexc.i146 unwind label %bb.bp, !noalias !773 ; 2 uses

.noexc.i146:                                      ; preds = %.thread.i.i.i.i145
  store ptr %i.rz, ptr %i.lm, align 8, !tbaa !79, !alias.scope !775
  %i.sa = or i64 %i.ry, 1
  store i64 %i.sa, ptr %22, align 8, !alias.scope !775
  store i64 %i.rr, ptr %i.ln, align 8, !tbaa !79, !alias.scope !775
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.sb = trunc nuw nsw i64 %i.rr to i8
  %i.sc = shl nuw nsw i8 %i.sb, 1
  store i8 %i.sc, ptr %22, align 8, !alias.scope !775
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i150 = icmp eq i64 %i.rr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i150, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.noexc.i146
  %.017.i.i.i.i147 = phi ptr [ %i.rz, %.noexc.i146 ], [ %i.lo, %bb.bl ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i147, ptr align 1 %i.rt, i64 %i.rr, i1 false)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.018.i.i.i.i148 = phi ptr [ %i.lo, %bb.bl ], [ %.017.i.i.i.i147, %bb.bm ]
  %i.sd = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i148, i64 %i.rr
  store i8 0, ptr %i.sd, align 1, !tbaa !79
  %i.se = load ptr, ptr %8, align 8, !tbaa !236, !noalias !773 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.se, %i.lh
  br i1 %.not.i.i.i149, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef %i.se) #47, !noalias !773
  br label %bb.br

bb.bp:                                            ; preds = %.cont, %.thread.i.i.i.i145
  %i.sf = landingpad { ptr, i32 }
          cleanup
  %i.sg = load ptr, ptr %8, align 8, !tbaa !236, !noalias !773 ; 2 uses
  %.not.i.i7.i143 = icmp eq ptr %i.sg, %i.lh
  br i1 %.not.i.i7.i143, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i144, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @free(ptr noundef %i.sg) #47, !noalias !773
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i144

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i144: ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #47
  br label %bb.cr

bb.br:                                            ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47, !noalias !772
  %i.sh = load i8, ptr %21, align 8
  %i.si = trunc i8 %i.sh to i1
  br i1 %i.si, label %bb.bs, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit154

bb.bs:                                            ; preds = %bb.br
  %i.sj = load ptr, ptr %i.lb, align 8, !tbaa !79
  %i.sk = load i64, ptr %21, align 8
  %i.sl = and i64 %i.sk, -2
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sl) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit154

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit154: ; preds = %bb.bs, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i64 24, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #47
  %i.sm = load i32, ptr %i.lc, align 8, !tbaa !204
  %i.sn = add nsw i32 %i.sm, %i.nc
  %i.so = sitofp i32 %i.sn to float
  %i.sp = uitofp i64 %.085340 to float
  %i.sq = load ptr, ptr %i.ie, align 8, !tbaa !226 ; 2 uses
  %i.sr = load ptr, ptr %18, align 8, !tbaa !224  ; 2 uses
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = ashr exact i64 %i.su, 4
  %i.sw = add nsw i64 %i.sv, -1
  %i.sx = uitofp i64 %i.sw to float
  %i.sy = call nnan float @llvm.fmuladd.f32(float %i.sx, float -5.000000e-01, float %i.sp)
  %i.sz = fmul float %.084, %i.sy
  %i.ta = call float @llvm.fmuladd.f32(float %i.sz, float f0x3F6147AE, float %i.so)
  %i.tb = load i32, ptr %i.ld, align 4, !tbaa !204
  %i.tc = sitofp i32 %i.tb to float
  %i.td = fadd float %i.rd, %i.tc
  br label %bb.cm

bb.bt:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #47
  %i.te = load ptr, ptr %19, align 8, !tbaa !232
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %.085340 ; 3 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !76
  %i.th = call noundef float @llvm.fabs.f32(float %i.tg)
  %i.ti = fcmp ogt float %i.th, 1.000000e+05
  br i1 %i.ti, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47, !noalias !776
  %i.tj = load float, ptr %i.tf, align 4, !tbaa !76, !noalias !776
  store float %i.tj, ptr %10, align 16, !tbaa !79, !noalias !776
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !777
  store i64 0, ptr %i.kv, align 8, !noalias !777
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ku, align 8, !tbaa !235, !noalias !777
  store ptr %i.kw, ptr %7, align 8, !tbaa !236, !noalias !777
  store i64 500, ptr %i.kt, align 8, !tbaa !237, !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47, !noalias !777
  store ptr @.str.11, ptr %3, align 8, !tbaa !218, !noalias !777
  store i64 5, ptr %.sroa.2.0..sroa_idx.i16.i199, align 8, !tbaa !216, !noalias !777
  store i32 0, ptr %i.kx, align 8, !tbaa !240, !noalias !777
  store ptr %7, ptr %i.ky, align 8, !tbaa !242, !noalias !777
  store i64 9, ptr %i.kz, align 8, !tbaa !244, !noalias !777
  store ptr %10, ptr %.sroa.2.0..sroa_idx.i17.i200, align 8, !tbaa !79, !noalias !777
  store ptr null, ptr %i.la, align 8, !tbaa !245, !noalias !777
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.11, i64 5, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47, !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.tk = load i64, ptr %i.kv, align 8, !tbaa !246, !noalias !779 ; 8 uses
  %i.tl = icmp ult i64 %i.tk, -9
  call void @llvm.assume(i1 %i.tl)
  %i.tm = load ptr, ptr %7, align 8, !tbaa !236, !noalias !779
  %i.tn = icmp ult i64 %i.tk, 23
  br i1 %i.tn, label %bb.bw, label %.thread.i.i.i.i157

.thread.i.i.i.i157:                               ; preds = %bb.bv
  %i.to = or i64 %i.tk, 7                         ; 2 uses
  %i.tp = icmp eq i64 %i.to, 23
  %i.tq = add nuw i64 %i.to, 1
  %i.tr = select i1 %i.tp, i64 25, i64 %i.tq      ; 2 uses
  %i.ts = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #48
          to label %.noexc.i158 unwind label %bb.ca, !noalias !777 ; 2 uses

.noexc.i158:                                      ; preds = %.thread.i.i.i.i157
  store ptr %i.ts, ptr %i.kq, align 8, !tbaa !79, !alias.scope !779
  %i.tt = or i64 %i.tr, 1
  store i64 %i.tt, ptr %23, align 8, !alias.scope !779
  store i64 %i.tk, ptr %i.kr, align 8, !tbaa !79, !alias.scope !779
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.tu = trunc nuw nsw i64 %i.tk to i8
  %i.tv = shl nuw nsw i8 %i.tu, 1
  store i8 %i.tv, ptr %23, align 8, !alias.scope !779
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i162 = icmp eq i64 %i.tk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i162, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.noexc.i158
  %.017.i.i.i.i159 = phi ptr [ %i.ts, %.noexc.i158 ], [ %i.ks, %bb.bw ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i159, ptr align 1 %i.tm, i64 %i.tk, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.018.i.i.i.i160 = phi ptr [ %i.ks, %bb.bw ], [ %.017.i.i.i.i159, %bb.bx ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i160, i64 %i.tk
  store i8 0, ptr %i.tw, align 1, !tbaa !79
  %i.tx = load ptr, ptr %7, align 8, !tbaa !236, !noalias !777 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.tx, %i.kw
  br i1 %.not.i.i.i161, label %_ZN3fmt3v126formatIJRfEEENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS0_7fstringIJDpT_EE1tEDpOSB_.exit113, label %bb.bz
end_hunk_0
