Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/LSDDetector?download=true
inline.NumInlined: 414
inline.NumDeleted: 225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK2cv15line_descriptor11LSDDetector10detectImplERKNS_3MatERSt6vectorINS0_7KeyLineESaIS6_EEiiS4_:bb.a
  %i.hp = sitofp i32 %i.ho to float
  %i.hq = fdiv float %i.gl, %i.hp                 ; 2 uses
  %i.hr = fadd <2 x float> %i.gc, %i.gb
  %i.hs = fmul <2 x float> %i.hr, splat (float 5.000000e-01) ; 2 uses
  %i.ht = load ptr, ptr %i.bi, align 8, !tbaa !111 ; 15 uses
  %i.hu = load ptr, ptr %i.bj, align 8, !tbaa !112
  %.not.i111 = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i111, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store float %i.hf, ptr %i.ht, align 4, !tbaa !69
  %.sroa.6.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 %i.hg, ptr %.sroa.6.0..sroa_idx147, align 4, !tbaa !40
  %.sroa.7.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 %i.dm, ptr %.sroa.7.0..sroa_idx151, align 4, !tbaa !40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store <2 x float> %i.hs, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !69
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store float %i.hq, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !69
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store float %i.hh, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !69
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.hv = shufflevector <2 x float> %i.gb, <2 x float> %i.gc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.hv, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !69
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  %i.hw = shufflevector <2 x float> %i.fx, <2 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.hw, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !69
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 60
  store float %i.gl, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !69
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  store i32 %i.gy, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 68
  store ptr %i.hx, ptr %i.bi, align 8, !tbaa !111
  br label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE9push_backERKS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.hy = load ptr, ptr %2, align 8, !tbaa !113   ; 5 uses
  %i.hz = ptrtoint ptr %i.ht to i64
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775748
  br i1 %i.ic, label %bb.as, label %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
          to label %.noexc114 unwind label %.loopexit.split-lp

.noexc114:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.id = sdiv exact i64 %i.ib, 68                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 135637824071393761)
  %i.ih = select i1 %i.if, i64 135637824071393761, i64 %i.ig ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.ii = mul nuw nsw i64 %i.ih, 68
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #20
          to label %.noexc115 unwind label %.loopexit193 ; 5 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ib ; 16 uses
  store float %i.hf, ptr %i.ik, align 4, !tbaa !69
  %.sroa.6.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 %i.hg, ptr %.sroa.6.0..sroa_idx149, align 4, !tbaa !40
  %.sroa.7.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 %i.dm, ptr %.sroa.7.0..sroa_idx153, align 4, !tbaa !40
  %.sroa.8.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store <2 x float> %i.hs, ptr %.sroa.8.0..sroa_idx155, align 4, !tbaa !69
  %.sroa.12.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  store float %i.hq, ptr %.sroa.12.0..sroa_idx160, align 4, !tbaa !69
  %.sroa.13.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store float %i.hh, ptr %.sroa.13.0..sroa_idx162, align 4, !tbaa !69
  %.sroa.14.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  store float %i.hd, ptr %.sroa.14.0..sroa_idx164, align 4, !tbaa !69
  %.sroa.18.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store float %i.ha, ptr %.sroa.18.0..sroa_idx168, align 4, !tbaa !69
  %.sroa.22.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.ik, i64 36
  store float %i.hc, ptr %.sroa.22.0..sroa_idx172, align 4, !tbaa !69
  %.sroa.26.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  store float %i.gz, ptr %.sroa.26.0..sroa_idx176, align 4, !tbaa !69
  %.sroa.30.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.il = extractelement <2 x float> %i.fx, i64 0
  store float %i.il, ptr %.sroa.30.0..sroa_idx180, align 4, !tbaa !69
  %.sroa.31.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  %i.im = extractelement <2 x float> %i.fx, i64 1
  store float %i.im, ptr %.sroa.31.0..sroa_idx182, align 4, !tbaa !69
  %.sroa.32.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.ik, i64 52
  %i.in = extractelement <2 x float> %i.ga, i64 0
  store float %i.in, ptr %.sroa.32.0..sroa_idx184, align 4, !tbaa !69
  %.sroa.33.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.io = extractelement <2 x float> %i.ga, i64 1
  store float %i.io, ptr %.sroa.33.0..sroa_idx186, align 4, !tbaa !69
  %.sroa.34.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.ik, i64 60
  store float %i.gl, ptr %.sroa.34.0..sroa_idx188, align 4, !tbaa !69
  %.sroa.36.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  store i32 %i.gy, ptr %.sroa.36.0..sroa_idx190, align 4, !tbaa !40
  %.not10.i.i.i.i.i = icmp eq ptr %i.hy, %i.ht
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc115, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i ], [ %i.ij, %.noexc115 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i ], [ %i.hy, %.noexc115 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.0911.i.i.i.i.i, i64 68, i1 false), !tbaa.struct !114, !alias.scope !115
  %i.ip = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 68 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 68 ; 2 uses
  %.not.i.i.i.i.i113 = icmp eq ptr %i.ip, %i.ht
  br i1 %.not.i.i.i.i.i113, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc115
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ij, %.noexc115 ], [ %i.iq, %.lr.ph.i.i.i.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 68
  %.not.i23.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.is = load ptr, ptr %i.bj, align 8, !tbaa !112
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.iu) #24
  br label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.at, %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ij, ptr %2, align 8, !tbaa !113
  store ptr %i.ir, ptr %i.bi, align 8, !tbaa !111
  %i.iv = getelementptr inbounds nuw [68 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.iv, ptr %i.bj, align 8, !tbaa !112
  br label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.iw = load ptr, ptr %15, align 8, !tbaa !59   ; 2 uses
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %indvars.iv229 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !63
  %i.ja = load ptr, ptr %i.ix, align 8, !tbaa !64 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = shl i64 %i.jd, 28
  %i.jf = ashr i64 %i.je, 32
  %i.jg = icmp slt i64 %indvars.iv.next227, %i.jf
  br i1 %i.jg, label %.lr.ph213, label %._crit_edge.loopexit, !llvm.loop !82

bb.au:                                            ; preds = %bb.ai
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %bb.ao
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit193:                                     ; preds = %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit193, %.loopexit.split-lp, %bb.av
  %.pn81 = phi { ptr, i32 } [ %i.ji, %bb.av ], [ %lpad.loopexit, %.loopexit193 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %.body

bb.ax:                                            ; preds = %._crit_edge217
  br i1 %i.dj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !111 ; 3 uses
  %i.jl = load ptr, ptr %2, align 8, !tbaa !113   ; 2 uses
  %.not220 = icmp eq ptr %i.jk, %i.jl
  br i1 %.not220, label %.loopexit, label %.lr.ph219

.lr.ph219:                                        ; preds = %.preheader
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge217
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.lr.ph219, %bb.bh
  %i.jr = phi ptr [ %i.jl, %.lr.ph219 ], [ %i.kt, %bb.bh ] ; 3 uses
  %i.js = phi ptr [ %i.jk, %.lr.ph219 ], [ %i.ku, %bb.bh ] ; 3 uses
  %i.jt = phi i64 [ %i.jm, %.lr.ph219 ], [ %i.kw, %bb.bh ]
  %.048218 = phi i64 [ 0, %.lr.ph219 ], [ %i.kv, %bb.bh ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [68 x i8], ptr %i.jr, i64 %.048218 ; 7 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 28
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %.sroa.5.0.copyload = load float, ptr %.sroa.4.0..sroa_idx.a, align 4, !tbaa !69
  %20 = fptosi float %.sroa.5.0.copyload to i32
  %21 = fptosi float %.sroa.4.0.copyload to i32
  %i.jv = load i32, ptr %i.jn, align 4, !tbaa !116
  %i.jw = icmp slt i32 %i.jv, 2                   ; 2 uses
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !48 ; 2 uses
  %i.jy = load i64, ptr %i.jp, align 8            ; 2 uses
  %i.jz = sext i32 %20 to i64
  %i.ka = mul i64 %i.jy, %i.jz
  %.sink.idx.i = select i1 %i.jw, i64 0, i64 %i.ka
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sink.idx.i
  %i.kb = sext i32 %21 to i64
  %i.kc = getelementptr inbounds i8, ptr %.sink.i, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !54
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !69
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ju, i64 36
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !69
  %22 = fptosi float %.sroa.7.0.copyload to i32
  %23 = fptosi float %.sroa.6.0.copyload to i32
  %i.kf = sext i32 %22 to i64
  %i.kg = mul i64 %i.jy, %i.kf
  %.sink.idx.i116 = select i1 %i.jw, i64 0, i64 %i.kg
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.sink.idx.i116
  %i.kh = sext i32 %23 to i64
  %i.ki = getelementptr inbounds i8, ptr %.sink.i117, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !54
  %i.kk = icmp eq i8 %i.kj, 0
  br i1 %i.kk, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ju, i64 68 ; 4 uses
  %.not.i.i = icmp eq ptr %i.kl, %i.js
  br i1 %.not.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.jt, %i.km                    ; 3 uses
  %i.ko = icmp sgt i64 %i.kn, 68
  br i1 %i.ko, label %bb.bd, label %bb.be, !prof !117

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ju, ptr nonnull align 4 %i.kl, i64 %i.kn, i1 false)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.kp = icmp eq i64 %i.kn, 68
  br i1 %i.kp, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.ju, ptr noundef nonnull align 4 dereferenceable(68) %i.kl, i64 68, i1 false), !tbaa.struct !114
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.kq = load ptr, ptr %i.jj, align 8, !tbaa !111
  %i.kr = getelementptr inbounds i8, ptr %i.kq, i64 -68 ; 2 uses
  store ptr %i.kr, ptr %i.jj, align 8, !tbaa !111
  %i.ks = add i64 %.048218, -1
  %.pre234 = load ptr, ptr %2, align 8, !tbaa !113
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ba, %bb.az
  %i.kt = phi ptr [ %.pre234, %bb.bg ], [ %i.jr, %bb.ba ], [ %i.jr, %bb.az ] ; 2 uses
  %i.ku = phi ptr [ %i.kr, %bb.bg ], [ %i.js, %bb.ba ], [ %i.js, %bb.az ] ; 2 uses
  %.149 = phi i64 [ %i.ks, %bb.bg ], [ %.048218, %bb.ba ], [ %.048218, %bb.az ]
  %i.kv = add i64 %.149, 1                        ; 2 uses
  %i.kw = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = sdiv exact i64 %i.ky, 68
  %i.la = icmp ult i64 %i.kv, %i.kz
  br i1 %i.la, label %bb.az, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %bb.bh, %.preheader, %bb.ax
  %i.lb = load ptr, ptr %15, align 8, !tbaa !59   ; 3 uses
  %i.lc = load ptr, ptr %i.av, align 8, !tbaa !58 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.lb, %i.lc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.lj, %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i ], [ %i.lb, %.loopexit ] ; 3 uses
  %i.ld = load ptr, ptr %.05.i.i.i, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !66
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = sub i64 %i.lg, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.li) #24
  br label %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.bi, %.lr.ph.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.lj, %i.lc
  br i1 %.not.i.i.i118, label %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3VecIfLi4EEESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.lk = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.lb, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !60
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #24
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3VecIfLi4EEESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.lq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !22 ; 8 uses
  %.not.i.i119 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i119, label %_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 4 uses
  %i.lt = load atomic i64, ptr %i.ls acquire, align 8 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, 4294967297
  %i.lv = trunc i64 %i.lt to i32                  ; 2 uses
  br i1 %i.lu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.ls, align 8, !tbaa !24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 12
  store i32 0, ptr %i.lw, align 4, !tbaa !25
  %i.lx = load ptr, ptr %i.lr, align 8, !tbaa !13
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8
  call void %i.lz(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #21, !inline_history !84
  %i.ma = load ptr, ptr %i.lr, align 8, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #21, !inline_history !84
  br label %_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bm:                                            ; preds = %bb.bk
  %i.md = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i120 = icmp eq i8 %i.md, 0
  br i1 %.not.i.i.i120, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.me = add nsw i32 %i.lv, -1
  store i32 %i.me, ptr %i.ls, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.mf = atomicrmw volatile add ptr %i.ls, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i = phi i32 [ %i.lv, %bb.bn ], [ %i.mf, %bb.bo ]
  %i.mg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.mg, label %bb.bp, label %_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !65

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lr) #21
  br label %_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev.exit, %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

.body:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.aw, %bb.ay, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EED2Ev.exit100 ], [ %i.jh, %bb.au ], [ %i.jq, %bb.ay ], [ %.pn81, %bb.aw ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZNSt12__shared_ptrIN2cv19LineSegmentDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #21
  br label %bb.bq

bb.bq:                                            ; preds = %.body, %bb.u
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %.body ], [ %i.bl, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.br

bb.br:                                            ; preds = %bb.t, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %bb.d
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.j ], [ %i.h, %bb.d ], [ %.pn89.pn.pn, %bb.bq ], [ %i.bk, %bb.t ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn94.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv15line_descriptor11LSDDetector6detectERKSt6vectorINS_3MatESaIS3_EERS2_IS2_INS0_7KeyLineESaIS8_EESaISA_EEiiS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not41 = icmp eq ptr %i.b, %i.c
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.d = phi ptr [ %i.bv, %.critedge ], [ %i.c, %bb.a ] ; 2 uses
  %.02440 = phi i64 [ %i.bt, %.critedge ], [ 0, %bb.a ] ; 5 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw [208 x i8], ptr %i.e, i64 %.02440 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 6 uses
  %i.k = icmp slt i32 %i.j, 3
end_hunk_0
