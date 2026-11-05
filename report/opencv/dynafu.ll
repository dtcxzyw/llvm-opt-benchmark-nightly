Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dynafu?download=true
inline.NumInlined: 669
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv6dynafu10DynaFuImplINS_3MatEE7updateTERKS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.ks = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.kt, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !27
  store ptr %36, ptr %i.ks, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 3, i64 noundef 0)
          to label %bb.cm unwind label %bb.cv

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ku = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.kv, align 8
  store i32 33619968, ptr %41, align 8, !tbaa !27
  store ptr %37, ptr %i.ku, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 7, i64 noundef 0)
          to label %bb.cn unwind label %bb.cw

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %i.kw = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.kx, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !27
  store ptr %38, ptr %i.kw, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef 3, i64 noundef 0)
          to label %bb.co unwind label %bb.cx

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  %i.ky = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.kz, align 8
  store i32 33619968, ptr %43, align 8, !tbaa !27
  store ptr %39, ptr %i.ky, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef 7, i64 noundef 0)
          to label %bb.cp unwind label %bb.cy

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.lc = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.lc, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.ld, align 4, !tbaa !39
  store i32 16842752, ptr %44, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %17, ptr %i.le, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.lf = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.lf, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %45, i64 20
  store i32 0, ptr %i.lg, align 4, !tbaa !39
  store i32 16842752, ptr %45, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %36, ptr %i.lh, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.li = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i32 0, ptr %i.li, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 0, ptr %i.lj, align 4, !tbaa !39
  store i32 16842752, ptr %46, align 8, !tbaa !27
  %i.lk = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %37, ptr %i.lk, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.ll = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.ll, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.lm, align 4, !tbaa !39
  store i32 16842752, ptr %47, align 8, !tbaa !27
  %i.ln = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %38, ptr %i.ln, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  %i.lo = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.lo, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.lp, align 4, !tbaa !39
  store i32 16842752, ptr %48, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %39, ptr %i.lq, align 8, !tbaa !28
  %i.lr = load ptr, ptr %i.lb, align 8, !tbaa !103
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = invoke noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(60) %i.lb, ptr noundef nonnull align 8 dereferenceable(320) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.cq unwind label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br i1 %i.lt, label %.critedge, label %bb.do, !llvm.loop !182

bb.cr:                                            ; preds = %bb.bn
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.dv

bb.cs:                                            ; preds = %bb.bp
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.dv

bb.ct:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.dv

bb.cu:                                            ; preds = %bb.bd, %_ZN2cv13OdometryFrameD2Ev.exit
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.cv:                                            ; preds = %bb.cl
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %bb.da

bb.cw:                                            ; preds = %bb.cm
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.da

bb.cx:                                            ; preds = %bb.cn
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.da

bb.cy:                                            ; preds = %bb.co
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %bb.da

bb.cz:                                            ; preds = %bb.cp
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.pn103.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.cz ], [ %i.mb, %bb.cy ], [ %i.ma, %bb.cx ], [ %i.lz, %bb.cw ], [ %i.ly, %bb.cv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %bb.dv

.critedge:                                        ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  invoke void @_ZNK2cv7Affine3IfE4rvecEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 4 %49, ptr noundef nonnull align 4 dereferenceable(64) %25)
          to label %bb.db unwind label %bb.dl

bb.db:                                            ; preds = %.critedge
  %i.md = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.me = load float, ptr %i.md, align 8, !tbaa !111
  %i.mf = load <2 x float>, ptr %49, align 8, !tbaa !111 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  %i.mg = load float, ptr %i.fh, align 4, !tbaa !111, !noalias !202
  %i.mh = load float, ptr %i.fi, align 4, !tbaa !111, !noalias !202
  %i.mi = load float, ptr %i.fj, align 4, !tbaa !111, !noalias !202
  %i.mj = insertelement <2 x float> %i.mf, float %i.mg, i64 1
  %i.mk = fpext <2 x float> %i.mj to <2 x double> ; 2 uses
  %54 = fmul <2 x double> %i.mk, %i.mk
  %i.ml = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mm = insertelement <2 x float> %i.ml, float %i.mh, i64 1
  %i.mn = fpext <2 x float> %i.mm to <2 x double> ; 2 uses
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mn, <2 x double> %54)
  %i.mp = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %i.mi, i64 1
  %i.mr = fpext <2 x float> %i.mq to <2 x double> ; 2 uses
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.mr, <2 x double> %i.mo)
  %i.mt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ms)
  %i.mu = fptrunc <2 x double> %i.mt to <2 x float>
  %i.mv = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mu)
  %i.mw = fmul float %i.mv, 5.000000e-01
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.my = load float, ptr %i.mx, align 8, !tbaa !203
  %i.mz = fcmp ult float %i.mw, %i.my
  br i1 %i.mz, label %bb.do, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.na = load ptr, ptr %i.cd, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.nb = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 0, ptr %i.nb, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.nc, align 4, !tbaa !39
  store i32 16842752, ptr %50, align 8, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %3, ptr %i.nd, align 8, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 4 dereferenceable(64) %i.ew, i64 64, i1 false), !tbaa.struct !97
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull align 4 dereferenceable(36) %i.ng, i64 36, i1 false), !tbaa.struct !98
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.nh = invoke noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #26
          to label %.noexc155 unwind label %bb.dm ; 6 uses

.noexc155:                                        ; preds = %bb.dc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i32 1, ptr %i.ni, align 8, !tbaa !100, !noalias !205
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 1, ptr %i.nj, align 4, !tbaa !101, !noalias !205
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nh, align 8, !tbaa !103, !noalias !205
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  invoke void @_ZN2cv6dynafu9WarpFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(320) %i.nk, ptr noundef nonnull align 8 dereferenceable(320) %i.cl)
          to label %bb.dd unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154, !noalias !205

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154: ; preds = %.noexc155
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef 336) #25, !noalias !205
  br label %.body156

bb.dd:                                            ; preds = %.noexc155
  store ptr %i.nk, ptr %53, align 8, !tbaa !106, !alias.scope !204
  %i.nm = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  store ptr %i.nh, ptr %i.nm, align 8, !tbaa !107, !alias.scope !204
  %i.nn = load ptr, ptr %i.na, align 8, !tbaa !103
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(164) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %50, float noundef %i.nf, ptr noundef nonnull byval(%"class.cv::Affine3") align 8 %51, ptr noundef nonnull byval(%"class.cv::Matx.0") align 8 %52, ptr noundef nonnull align 8 %53)
          to label %bb.de unwind label %bb.dn

bb.de:                                            ; preds = %bb.dd
  %i.np = load ptr, ptr %i.nm, align 8, !tbaa !107 ; 8 uses
  %.not.i.i159 = icmp eq ptr %i.np, null
  br i1 %.not.i.i159, label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.nq, align 8, !tbaa !100
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !101
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !103
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !0
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !103
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163

bb.dh:                                            ; preds = %bb.df
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i160 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i160, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161

bb.dj:                                            ; preds = %bb.dh
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i162 = phi i32 [ %i.nt, %bb.di ], [ %i.od, %bb.dj ]
  %i.oe = icmp eq i32 %.0.i.i.i.i162, 1
  br i1 %i.oe, label %bb.dk, label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, !prof !109

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23
  br label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163

_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163: ; preds = %bb.de, %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.do

bb.dl:                                            ; preds = %.critedge
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  br label %bb.dv

bb.dm:                                            ; preds = %bb.dc
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.dn:                                            ; preds = %bb.dd
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #23
  br label %.body156

.body156:                                         ; preds = %bb.dn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154, %bb.dm
  %.pn111.pn = phi { ptr, i32 } [ %i.nl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154 ], [ %i.oh, %bb.dn ], [ %i.og, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.dv

bb.do:                                            ; preds = %bb.cq, %bb.db, %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, %bb.bf
  %cond = phi i1 [ false, %bb.bf ], [ true, %bb.db ], [ true, %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163 ], [ false, %bb.cq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.oi = load ptr, ptr %i.dj, align 8, !tbaa !107 ; 8 uses
  %.not.i.i.i164 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i164, label %_ZN2cv13OdometryFrameD2Ev.exit168, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 4 uses
  %i.ok = load atomic i64, ptr %i.oj acquire, align 8 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 4294967297
  %i.om = trunc i64 %i.ok to i32                  ; 2 uses
  br i1 %i.ol, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.oj, align 8, !tbaa !100
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 0, ptr %i.on, align 4, !tbaa !101
  %i.oo = load ptr, ptr %i.oi, align 8, !tbaa !103
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23, !inline_history !2
  %i.or = load ptr, ptr %i.oi, align 8, !tbaa !103
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23, !inline_history !2
  br label %_ZN2cv13OdometryFrameD2Ev.exit168

bb.dr:                                            ; preds = %bb.dp
  %i.ou = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i165 = icmp eq i8 %i.ou, 0
  br i1 %.not.i.i.i.i165, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ov = add nsw i32 %i.om, -1
  store i32 %i.ov, ptr %i.oj, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

bb.dt:                                            ; preds = %bb.dr
  %i.ow = atomicrmw volatile add ptr %i.oj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i167 = phi i32 [ %i.om, %bb.ds ], [ %i.ow, %bb.dt ]
  %i.ox = icmp eq i32 %.0.i.i.i.i.i167, 1
  br i1 %i.ox, label %bb.du, label %_ZN2cv13OdometryFrameD2Ev.exit168, !prof !109

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23
  br label %_ZN2cv13OdometryFrameD2Ev.exit168

_ZN2cv13OdometryFrameD2Ev.exit168:                ; preds = %bb.do, %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %12) #23
end_hunk_0
begin_hunk_1_@_ZN2cv6dynafu10DynaFuImplINS_4UMatEE7updateTERKS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %37, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %38, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %39, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.ks = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.kt, align 8
  store i32 34209792, ptr %40, align 8, !tbaa !27
  store ptr %36, ptr %i.ks, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 3, i64 noundef 0)
          to label %bb.cm unwind label %bb.cv

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ku = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.kv, align 8
  store i32 34209792, ptr %41, align 8, !tbaa !27
  store ptr %37, ptr %i.ku, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef 7, i64 noundef 0)
          to label %bb.cn unwind label %bb.cw

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %i.kw = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i64 0, ptr %i.kx, align 8
  store i32 34209792, ptr %42, align 8, !tbaa !27
  store ptr %38, ptr %i.kw, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef 3, i64 noundef 0)
          to label %bb.co unwind label %bb.cx

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  %i.ky = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.kz = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.kz, align 8
  store i32 34209792, ptr %43, align 8, !tbaa !27
  store ptr %39, ptr %i.ky, align 8, !tbaa !28
  invoke void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef 7, i64 noundef 0)
          to label %bb.cp unwind label %bb.cy

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.lc = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.lc, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.ld, align 4, !tbaa !39
  store i32 16842752, ptr %44, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %17, ptr %i.le, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.lf = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 0, ptr %i.lf, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %45, i64 20
  store i32 0, ptr %i.lg, align 4, !tbaa !39
  store i32 17432576, ptr %45, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %36, ptr %i.lh, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.li = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i32 0, ptr %i.li, align 8, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 0, ptr %i.lj, align 4, !tbaa !39
  store i32 17432576, ptr %46, align 8, !tbaa !27
  %i.lk = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %37, ptr %i.lk, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.ll = getelementptr inbounds nuw i8, ptr %47, i64 16
  store i32 0, ptr %i.ll, align 8, !tbaa !18
  %i.lm = getelementptr inbounds nuw i8, ptr %47, i64 20
  store i32 0, ptr %i.lm, align 4, !tbaa !39
  store i32 17432576, ptr %47, align 8, !tbaa !27
  %i.ln = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %38, ptr %i.ln, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  %i.lo = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i32 0, ptr %i.lo, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %48, i64 20
  store i32 0, ptr %i.lp, align 4, !tbaa !39
  store i32 17432576, ptr %48, align 8, !tbaa !27
  %i.lq = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %39, ptr %i.lq, align 8, !tbaa !28
  %i.lr = load ptr, ptr %i.lb, align 8, !tbaa !103
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = invoke noundef zeroext i1 %i.ls(ptr noundef nonnull align 8 dereferenceable(60) %i.lb, ptr noundef nonnull align 8 dereferenceable(320) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.cq unwind label %bb.cz

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br i1 %i.lt, label %.critedge, label %bb.do, !llvm.loop !230

bb.cr:                                            ; preds = %bb.bn
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.dv

bb.cs:                                            ; preds = %bb.bp
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.dv

bb.ct:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.dv

bb.cu:                                            ; preds = %bb.bd, %_ZN2cv13OdometryFrameD2Ev.exit
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.cv:                                            ; preds = %bb.cl
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %bb.da

bb.cw:                                            ; preds = %bb.cm
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.da

bb.cx:                                            ; preds = %bb.cn
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.da

bb.cy:                                            ; preds = %bb.co
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %bb.da

bb.cz:                                            ; preds = %bb.cp
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.pn103.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mc, %bb.cz ], [ %i.mb, %bb.cy ], [ %i.ma, %bb.cx ], [ %i.lz, %bb.cw ], [ %i.ly, %bb.cv ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %bb.dv

.critedge:                                        ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  invoke void @_ZNK2cv7Affine3IfE4rvecEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 4 %49, ptr noundef nonnull align 4 dereferenceable(64) %25)
          to label %bb.db unwind label %bb.dl

bb.db:                                            ; preds = %.critedge
  %i.md = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.me = load float, ptr %i.md, align 8, !tbaa !111
  %i.mf = load <2 x float>, ptr %49, align 8, !tbaa !111 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  %i.mg = load float, ptr %i.fh, align 4, !tbaa !111, !noalias !253
  %i.mh = load float, ptr %i.fi, align 4, !tbaa !111, !noalias !253
  %i.mi = load float, ptr %i.fj, align 4, !tbaa !111, !noalias !253
  %i.mj = insertelement <2 x float> %i.mf, float %i.mg, i64 1
  %i.mk = fpext <2 x float> %i.mj to <2 x double> ; 2 uses
  %54 = fmul <2 x double> %i.mk, %i.mk
  %i.ml = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mm = insertelement <2 x float> %i.ml, float %i.mh, i64 1
  %i.mn = fpext <2 x float> %i.mm to <2 x double> ; 2 uses
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mn, <2 x double> %54)
  %i.mp = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %i.mi, i64 1
  %i.mr = fpext <2 x float> %i.mq to <2 x double> ; 2 uses
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.mr, <2 x double> %i.mo)
  %i.mt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ms)
  %i.mu = fptrunc <2 x double> %i.mt to <2 x float>
  %i.mv = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.mu)
  %i.mw = fmul float %i.mv, 5.000000e-01
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.my = load float, ptr %i.mx, align 8, !tbaa !254
  %i.mz = fcmp ult float %i.mw, %i.my
  br i1 %i.mz, label %bb.do, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.na = load ptr, ptr %i.cd, align 8, !tbaa !96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.nb = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i32 0, ptr %i.nb, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %50, i64 20
  store i32 0, ptr %i.nc, align 4, !tbaa !39
  store i32 17432576, ptr %50, align 8, !tbaa !27
  %i.nd = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %3, ptr %i.nd, align 8, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 4 dereferenceable(64) %i.ew, i64 64, i1 false), !tbaa.struct !97
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull align 4 dereferenceable(36) %i.ng, i64 36, i1 false), !tbaa.struct !98
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.nh = invoke noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #26
          to label %.noexc155 unwind label %bb.dm ; 6 uses

.noexc155:                                        ; preds = %bb.dc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i32 1, ptr %i.ni, align 8, !tbaa !100, !noalias !256
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  store i32 1, ptr %i.nj, align 4, !tbaa !101, !noalias !256
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.nh, align 8, !tbaa !103, !noalias !256
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  invoke void @_ZN2cv6dynafu9WarpFieldC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(320) %i.nk, ptr noundef nonnull align 8 dereferenceable(320) %i.cl)
          to label %bb.dd unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154, !noalias !256

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154: ; preds = %.noexc155
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef 336) #25, !noalias !256
  br label %.body156

bb.dd:                                            ; preds = %.noexc155
  store ptr %i.nk, ptr %53, align 8, !tbaa !106, !alias.scope !255
  %i.nm = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  store ptr %i.nh, ptr %i.nm, align 8, !tbaa !107, !alias.scope !255
  %i.nn = load ptr, ptr %i.na, align 8, !tbaa !103
  %i.no = load ptr, ptr %i.nn, align 8
  invoke void %i.no(ptr noundef nonnull align 8 dereferenceable(164) %i.na, ptr noundef nonnull align 8 dereferenceable(24) %50, float noundef %i.nf, ptr noundef nonnull byval(%"class.cv::Affine3") align 8 %51, ptr noundef nonnull byval(%"class.cv::Matx.0") align 8 %52, ptr noundef nonnull align 8 %53)
          to label %bb.de unwind label %bb.dn

bb.de:                                            ; preds = %bb.dd
  %i.np = load ptr, ptr %i.nm, align 8, !tbaa !107 ; 8 uses
  %.not.i.i159 = icmp eq ptr %i.np, null
  br i1 %.not.i.i159, label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.nq, align 8, !tbaa !100
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !101
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !103
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !0
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !103
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163

bb.dh:                                            ; preds = %bb.df
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i160 = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i160, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161

bb.dj:                                            ; preds = %bb.dh
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i162 = phi i32 [ %i.nt, %bb.di ], [ %i.od, %bb.dj ]
  %i.oe = icmp eq i32 %.0.i.i.i.i162, 1
  br i1 %i.oe, label %bb.dk, label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, !prof !109

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #23
  br label %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163

_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163: ; preds = %bb.de, %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i161, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.do

bb.dl:                                            ; preds = %.critedge
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  br label %bb.dv

bb.dm:                                            ; preds = %bb.dc
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.dn:                                            ; preds = %bb.dd
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #23
  br label %.body156

.body156:                                         ; preds = %bb.dn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154, %bb.dm
  %.pn111.pn = phi { ptr, i32 } [ %i.nl, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv6dynafu9WarpFieldESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i154 ], [ %i.oh, %bb.dn ], [ %i.og, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.dv

bb.do:                                            ; preds = %bb.cq, %bb.db, %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163, %bb.bf
  %cond = phi i1 [ false, %bb.bf ], [ true, %bb.db ], [ true, %_ZNSt12__shared_ptrIN2cv6dynafu9WarpFieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit163 ], [ false, %bb.cq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.oi = load ptr, ptr %i.dj, align 8, !tbaa !107 ; 8 uses
  %.not.i.i.i164 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i164, label %_ZN2cv13OdometryFrameD2Ev.exit168, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 4 uses
  %i.ok = load atomic i64, ptr %i.oj acquire, align 8 ; 2 uses
  %i.ol = icmp eq i64 %i.ok, 4294967297
  %i.om = trunc i64 %i.ok to i32                  ; 2 uses
  br i1 %i.ol, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.oj, align 8, !tbaa !100
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 0, ptr %i.on, align 4, !tbaa !101
  %i.oo = load ptr, ptr %i.oi, align 8, !tbaa !103
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23, !inline_history !2
  %i.or = load ptr, ptr %i.oi, align 8, !tbaa !103
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23, !inline_history !2
  br label %_ZN2cv13OdometryFrameD2Ev.exit168

bb.dr:                                            ; preds = %bb.dp
  %i.ou = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i165 = icmp eq i8 %i.ou, 0
  br i1 %.not.i.i.i.i165, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ov = add nsw i32 %i.om, -1
  store i32 %i.ov, ptr %i.oj, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

bb.dt:                                            ; preds = %bb.dr
  %i.ow = atomicrmw volatile add ptr %i.oj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i167 = phi i32 [ %i.om, %bb.ds ], [ %i.ow, %bb.dt ]
  %i.ox = icmp eq i32 %.0.i.i.i.i.i167, 1
  br i1 %i.ox, label %bb.du, label %_ZN2cv13OdometryFrameD2Ev.exit168, !prof !109

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oi) #23
  br label %_ZN2cv13OdometryFrameD2Ev.exit168

_ZN2cv13OdometryFrameD2Ev.exit168:                ; preds = %bb.do, %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i166, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %12) #23
end_hunk_1
begin_hunk_2_@_ZN2cv7Affine3IfE8rotationERKNS_3MatE:bb.a

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.s

.thread32:                                        ; preds = %bb.h, %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.thread32
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7Affine3IfE8rotationERKNS_3MatE, ptr noundef nonnull @.str.8, i32 noundef 448) #24
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %.thread32
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.q:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.p
  %.pn20 = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.an, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.s

bb.r:                                             ; preds = %bb.l, %bb.i
  ret void

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %bb.m ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec") align 4 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.35", align 1 ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290  ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !139  ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIfLi3EEEv, ptr noundef nonnull @.str.12, i32 noundef 1301) #24
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16389
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load float, ptr %i.b, align 4, !tbaa !111
  store float %i.y, ptr %0, align 4, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !111
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ad, ptr %i.ae, align 4, !tbaa !111
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false), !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 5, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !27
  store ptr %4, ptr %i.af, align 8, !tbaa !28
  %i.ah = load i32, ptr %4, align 8, !tbaa !38
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv7Affine3IfE8rotationERKNS_3VecIfLi3EEE(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !111
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !111
  %i.d = fpext <2 x float> %i.b to <2 x double>   ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %2 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.e = fpext <2 x float> %i.c to <2 x double>   ; 2 uses
  %i.f = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %i.f, double %2)
  %i.h = extractelement <2 x double> %i.e, i64 1  ; 2 uses
  %i.i = tail call noundef double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.g)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.i) ; 4 uses
  %i.j = fcmp olt double %sqrt.i, f0x3CB0000000000000
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fdiv double 1.000000e+00, %sqrt.i
  %i.l = tail call double @cos(double noundef %sqrt.i) #23 ; 2 uses
  %i.m = tail call double @sin(double noundef %sqrt.i) #23
  %i.n = fsub double 1.000000e+00, %i.l           ; 4 uses
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.d             ; 3 uses
  %i.r = fmul <2 x double> %i.p, %i.e             ; 3 uses
  %i.s = fptrunc <2 x double> %i.q to <2 x float> ; 5 uses
  %i.t = fptrunc <2 x double> %i.r to <2 x float> ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.u, %i.s
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.s
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fpext <2 x float> %i.v to <2 x double>
  %i.ae = insertelement <4 x double> poison, double %i.l, i64 0
  %i.af = insertelement <4 x double> %i.ae, double %i.n, i64 2
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ah = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x double> <double 1.000000e+00, double 0.000000e+00, double poison, double poison>, <4 x double> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fmul <4 x double> %i.ag, %i.ai
  %i.ak = fptrunc <4 x double> %i.aj to <4 x float> ; 3 uses
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 0, i32 3, i32 2, i32 1>
  %i.am = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = fmul <2 x float> %i.an, %i.an
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul double %i.n, %i.aq
  %i.as = fptrunc double %i.ar to float
  %i.at = extractelement <2 x double> %i.ap, i64 1
  %i.au = fmul double %i.n, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = shufflevector <4 x float> %i.ak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 1, i32 1, i32 3> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ac, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> %i.aw, <8 x i32> <i32 0, i32 1, i32 9, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %i.ba = insertelement <8 x float> %i.az, float %i.as, i64 4
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 5, i32 6, i32 7>
  %i.bc = fadd <8 x float> %i.al, %i.bb
  %i.bd = extractelement <4 x float> %i.ak, i64 0
  %i.be = fadd float %i.bd, %i.av
  %i.bf = fpext <2 x float> %i.t to <2 x double>
  %i.bg = shufflevector <2 x double> %i.r, <2 x double> %i.q, <2 x i32> <i32 1, i32 2>
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float>
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = fneg <2 x float> %i.s
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = insertelement <8 x double> poison, double %i.m, i64 0
  %i.bo = shufflevector <8 x double> %i.bn, <8 x double> poison, <8 x i32> zeroinitializer
  %i.bp = shufflevector <2 x double> %i.bj, <2 x double> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.bq = shufflevector <8 x double> <double 0.000000e+00, double poison, double poison, double poison, double 0.000000e+00, double poison, double poison, double poison>, <8 x double> %i.bp, <8 x i32> <i32 0, i32 8, i32 poison, i32 poison, i32 4, i32 12, i32 poison, i32 poison>
  %i.br = shufflevector <2 x double> %i.bm, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x double> %i.bq, <8 x double> %i.br, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %i.bt = shufflevector <2 x double> %i.bf, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <8 x double> %i.bs, <8 x double> %i.bt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.bv = fmul <8 x double> %i.bo, %i.bu
  %i.bw = fptrunc <8 x double> %i.bv to <8 x float> ; 2 uses
  %i.bx = fadd <8 x float> %i.bc, %i.bw
  %i.by = extractelement <8 x float> %i.bw, i64 0
  %i.bz = fadd float %i.be, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi float [ %i.bz, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.ca = phi <8 x float> [ %i.bx, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 8 uses
  %i.cb = extractelement <8 x float> %i.ca, i64 0
  store float %i.cb, ptr %0, align 4, !tbaa !111
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = extractelement <8 x float> %i.ca, i64 1
  store float %i.cd, ptr %i.cc, align 4, !tbaa !111
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = extractelement <8 x float> %i.ca, i64 2
  store float %i.cf, ptr %i.ce, align 4, !tbaa !111
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = extractelement <8 x float> %i.ca, i64 3
  store float %i.ch, ptr %i.cg, align 4, !tbaa !111
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cj = extractelement <8 x float> %i.ca, i64 4
  store float %i.cj, ptr %i.ci, align 4, !tbaa !111
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = extractelement <8 x float> %i.ca, i64 5
  store float %i.cl, ptr %i.ck, align 4, !tbaa !111
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = extractelement <8 x float> %i.ca, i64 6
  store float %i.cn, ptr %i.cm, align 4, !tbaa !111
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cp = extractelement <8 x float> %i.ca, i64 7
  store float %i.cp, ptr %i.co, align 4, !tbaa !111
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sink, ptr %i.cq, align 4, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #19

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayES6_S6_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

declare void @_ZNK2cv4UMat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

end_hunk_2
