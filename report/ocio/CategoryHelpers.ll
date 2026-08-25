Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/CategoryHelpers?download=true
inline.NumInlined: 1198
inline.NumDeleted: 431
begin_hunk_0_@_ZN16OpenColorIO_v2_519FindColorSpaceInfosESt10shared_ptrIKNS_6ConfigEERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESE_bbbSE_NS_24SearchReferenceSpaceTypeE:bb.a
          to label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit274 unwind label %bb.gi

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit274: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit270
  %i.uq = load ptr, ptr %33, align 8, !tbaa !94   ; 16 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !93 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !84 ; 11 uses
  %i.uv = load ptr, ptr %i.uh, align 8, !tbaa !66 ; 8 uses
  %.not.i.i275 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i275, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit274
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 4 uses
  %i.ux = load atomic i64, ptr %i.uw acquire, align 8 ; 2 uses
  %i.uy = icmp eq i64 %i.ux, 4294967297
  %i.uz = trunc i64 %i.ux to i32                  ; 2 uses
  br i1 %i.uy, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.uw, align 8, !tbaa !71
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store i32 0, ptr %i.va, align 4, !tbaa !73
  %i.vb = load ptr, ptr %i.uv, align 8, !tbaa !26
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #18, !inline_history !74
  %i.ve = load ptr, ptr %i.uv, align 8, !tbaa !26
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8
  call void %i.vg(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #18, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279

bb.fs:                                            ; preds = %bb.fq
  %i.vh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i276 = icmp eq i8 %i.vh, 0
  br i1 %.not.i.i.i276, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.vi = add nsw i32 %i.uz, -1
  store i32 %i.vi, ptr %i.uw, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277

bb.fu:                                            ; preds = %bb.fs
  %i.vj = atomicrmw volatile add ptr %i.uw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i278 = phi i32 [ %i.uz, %bb.ft ], [ %i.vj, %bb.fu ]
  %i.vk = icmp eq i32 %.0.i.i.i.i278, 1
  br i1 %i.vk, label %bb.fv, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279, !prof !75

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit274, %bb.fr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i277, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  %i.vl = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.vm = load ptr, ptr %i.ui, align 8, !tbaa !66 ; 2 uses
  %i.vn = load <2 x ptr>, ptr %1, align 8, !tbaa !69
  store <2 x ptr> %i.vn, ptr %36, align 16, !tbaa !69
  %.not.i.i.i280 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i280, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 3 uses
  %i.vp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i281 = icmp eq i8 %i.vp, 0
  br i1 %.not.i.i.i.i281, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vq = load i32, ptr %i.vo, align 4, !tbaa !70
  %i.vr = add nsw i32 %i.vq, 1
  store i32 %i.vr, ptr %i.vo, align 4, !tbaa !70
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282

bb.fy:                                            ; preds = %bb.fw
  %i.vs = atomicrmw volatile add ptr %i.vo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit279, %bb.fx, %bb.fy
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_118GetNamedTransformsESt10shared_ptrIKNS_6ConfigEEbbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE(ptr dead_on_unwind noalias writable align 8 %35, ptr noundef align 8 %36, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.fz unwind label %bb.gj

bb.fz:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282
  %i.vt = load ptr, ptr %32, align 16, !tbaa !123 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 16, !tbaa !126
  %i.vx = load <2 x ptr>, ptr %35, align 16, !tbaa !128
  store <2 x ptr> %i.vx, ptr %32, align 16, !tbaa !128
  %i.vy = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.vz = load ptr, ptr %i.vy, align 16, !tbaa !126
  store ptr %i.vz, ptr %i.vv, align 16, !tbaa !126
  %.not.i.i.i.i.i283 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i.i.i283, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit286, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.wa = ptrtoint ptr %i.vw to i64
  %i.wb = ptrtoint ptr %i.vt to i64
  %i.wc = sub i64 %i.wa, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef %i.wc) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit286

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit286: ; preds = %bb.ga, %bb.fz
  %i.wd = load ptr, ptr %i.vl, align 8, !tbaa !66 ; 8 uses
  %.not.i.i287 = icmp eq ptr %i.wd, null
  br i1 %.not.i.i287, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit286
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 4 uses
  %i.wf = load atomic i64, ptr %i.we acquire, align 8 ; 2 uses
  %i.wg = icmp eq i64 %i.wf, 4294967297
  %i.wh = trunc i64 %i.wf to i32                  ; 2 uses
  br i1 %i.wg, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  store i32 0, ptr %i.we, align 8, !tbaa !71
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wd, i64 12
  store i32 0, ptr %i.wi, align 4, !tbaa !73
  %i.wj = load ptr, ptr %i.wd, align 8, !tbaa !26
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %i.wl = load ptr, ptr %i.wk, align 8
  call void %i.wl(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #18, !inline_history !74
  %i.wm = load ptr, ptr %i.wd, align 8, !tbaa !26
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8
  call void %i.wo(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #18, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291

bb.gd:                                            ; preds = %bb.gb
  %i.wp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i288 = icmp eq i8 %i.wp, 0
  br i1 %.not.i.i.i288, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.wq = add nsw i32 %i.wh, -1
  store i32 %i.wq, ptr %i.we, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289

bb.gf:                                            ; preds = %bb.gd
  %i.wr = atomicrmw volatile add ptr %i.we, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289: ; preds = %bb.gf, %bb.ge
  %.0.i.i.i.i290 = phi i32 [ %i.wh, %bb.ge ], [ %i.wr, %bb.gf ]
  %i.ws = icmp eq i32 %.0.i.i.i.i290, 1
  br i1 %i.ws, label %bb.gg, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291, !prof !75

bb.gg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wd) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit286, %bb.gc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i289, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.wt = ptrtoint ptr %i.us to i64               ; 2 uses
  %i.wu = ptrtoint ptr %i.uq to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 4 uses
  %i.ww = ashr exact i64 %i.wv, 3
  %i.wx = load ptr, ptr %i.vu, align 8, !tbaa !127
  %i.wy = load ptr, ptr %32, align 16, !tbaa !123
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = ashr exact i64 %i.xb, 3
  %i.xd = sub nsw i64 0, %i.xc
  %i.xe = icmp eq i64 %i.ww, %i.xd
  br i1 %i.xe, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291
  store i32 3, ptr %i.f, align 4, !tbaa !102
  br label %.thread479

bb.gi:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit270
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %.body304

bb.gj:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit282
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %.body304

bb.gk:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit291
  br i1 %.3100, label %.preheader801, label %.critedge

.preheader801:                                    ; preds = %bb.gk
  %i.xh = load i8, ptr %13, align 4, !tbaa !96, !range !129, !noundef !130
  %i.xi = ashr i64 %i.wv, 5                       ; 2 uses
  %i.xj = icmp sgt i64 %i.xi, 0
  %i.xk = and i64 %i.wv, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.uq, i64 %i.xk ; 2 uses
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.wt, %.pre59.i.i.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.xo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.xq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %40, i64 16
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge, %.preheader801
  %.3 = phi i1 [ %.296, %.preheader801 ], [ true, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge ]
  %.091.sroa.phi = phi ptr [ %.091.sroa.gep, %.preheader801 ], [ %.091.sroa.gep1090, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge ]
  %.091 = phi ptr [ %14, %.preheader801 ], [ %16, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge ]
  %.089.sroa.phi = phi ptr [ %.089.sroa.gep, %.preheader801 ], [ %.089.sroa.gep1089, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge ]
  %.089 = phi ptr [ %15, %.preheader801 ], [ %17, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge ]
  %.091.val = load ptr, ptr %.091, align 16, !tbaa !76 ; 2 uses
  %.091.val136 = load ptr, ptr %.091.sroa.phi, align 8, !tbaa !76 ; 2 uses
  %.not25.i = icmp eq ptr %.091.val, %.091.val136
  br i1 %.not25.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit, label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 3 uses
  %i.xt = phi ptr [ %i.zs, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 9 uses
  %i.xu = phi ptr [ %i.zt, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 5 uses
  %i.xv = phi ptr [ %i.zu, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 5 uses
  %.sroa.06.026.i = phi ptr [ %i.zv, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i ], [ %.091.val, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ] ; 6 uses
  br i1 %i.xj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i293

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i292
  %i.xw = load ptr, ptr %.sroa.06.026.i, align 8, !tbaa !82, !noalias !131 ; 8 uses
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gp, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.xi, %.lr.ph.i.i.i.i ], [ %i.yj, %bb.gp ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.uq, %.lr.ph.i.i.i.i ], [ %i.yi, %bb.gp ] ; 9 uses
  %i.xx = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !82, !noalias !131
  %i.xy = icmp eq ptr %i.xx, %i.xw
  br i1 %i.xy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !82, !noalias !131
  %i.yb = icmp eq ptr %i.ya, %i.xw
  br i1 %i.yb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit889, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !82, !noalias !131
  %i.ye = icmp eq ptr %i.yd, %i.xw
  br i1 %i.ye, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit887, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !82, !noalias !131
  %i.yh = icmp eq ptr %i.yg, %i.xw
  br i1 %i.yh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.yj = add nsw i64 %.052.i.i.i.i, -1
  %i.yk = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.yk, label %bb.gl, label %._crit_edge.i.i.i.i293, !llvm.loop !134

._crit_edge.i.i.i.i293:                           ; preds = %bb.gp, %.lr.ph.i292
  %.pre-phi61.i.i.i.i = phi i64 [ %i.wv, %.lr.ph.i292 ], [ %.pre60.i.i.i.i, %bb.gp ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %i.uq, %.lr.ph.i292 ], [ %scevgep.i.i.i.i, %bb.gp ] ; 5 uses
  %i.yl = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.yl, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i [
    i64 3, label %bb.gq
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i293
  %.pre58.i.i.i.i = load ptr, ptr %.sroa.06.026.i, align 8, !tbaa !82, !noalias !131
  br label %bb.gu

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i293
  %.pre.i.i.i.i = load ptr, ptr %.sroa.06.026.i, align 8, !tbaa !82, !noalias !131
  br label %bb.gs

bb.gq:                                            ; preds = %._crit_edge.i.i.i.i293
  %i.ym = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !82, !noalias !131
  %i.yn = load ptr, ptr %.sroa.06.026.i, align 8, !tbaa !82, !noalias !131 ; 3 uses
  %i.yo = icmp eq ptr %i.ym, %i.yn
  br i1 %i.yo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %._crit_edge._crit_edge.i.i.i.i
  %i.yq = phi ptr [ %i.yn, %bb.gr ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.yp, %bb.gr ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %i.yr = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !82, !noalias !131
  %i.ys = icmp eq ptr %i.yr, %i.yq
  br i1 %i.ys, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %._crit_edge._crit_edge57.i.i.i.i
  %i.yu = phi ptr [ %i.yq, %bb.gt ], [ %.pre58.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ] ; 2 uses
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.yt, %bb.gt ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ] ; 2 uses
  %i.yv = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !82, !noalias !131
  %i.yw = icmp eq ptr %i.yv, %i.yu
  %spec.select.i.i.i.i = select i1 %i.yw, ptr %.sroa.032.2.i.i.i.i, ptr %i.us
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.go
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit887: ; preds = %bb.gn
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit889: ; preds = %bb.gm
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i: ; preds = %bb.gl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit887, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit889, %bb.gu, %bb.gs, %bb.gq
  %i.za = phi ptr [ %i.yq, %bb.gs ], [ %i.yu, %bb.gu ], [ %i.yn, %bb.gq ], [ %i.xw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.xw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit889 ], [ %i.xw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit887 ], [ %i.xw, %bb.gl ]
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.gs ], [ %spec.select.i.i.i.i, %bb.gu ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.gq ], [ %i.yx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.yz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit889 ], [ %i.yy, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit887 ], [ %.sroa.032.051.i.i.i.i, %bb.gl ]
  %.not11.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.us
  br i1 %.not11.i, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i, label %bb.gv

bb.gv:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i
  %.not.i.i294 = icmp eq ptr %i.xv, %i.xu
  br i1 %.not.i.i294, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  store ptr %i.za, ptr %i.xv, align 8, !tbaa !82, !noalias !131
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xv, i64 8 ; 2 uses
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.zc = ptrtoint ptr %i.xu to i64
  %i.zd = ptrtoint ptr %i.xt to i64
  %i.ze = sub i64 %i.zc, %i.zd                    ; 7 uses
  %i.zf = icmp eq i64 %i.ze, 9223372036854775800
  br i1 %i.zf, label %bb.gy, label %_ZNKSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc.i303 unwind label %.loopexit.split-lp.i301, !noalias !131

.noexc.i303:                                      ; preds = %bb.gy
  unreachable

_ZNKSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gx
  %i.zg = ashr exact i64 %i.ze, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.zg, i64 1)
  %i.zh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.zg ; 2 uses
  %i.zi = icmp ult i64 %i.zh, %i.zg
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zh, i64 1152921504606846975)
  %i.zk = select i1 %i.zi, i64 1152921504606846975, i64 %i.zj ; 3 uses
  %.not.i.i.i.i297 = icmp ne i64 %i.zk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i297)
  %i.zl = shl nuw nsw i64 %i.zk, 3
  %i.zm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zl) #20
          to label %.noexc13.i unwind label %.loopexit.i298, !noalias !131 ; 5 uses

.noexc13.i:                                       ; preds = %_ZNKSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.zn = getelementptr inbounds i8, ptr %i.zm, i64 %i.ze ; 2 uses
  %i.zo = load ptr, ptr %.sroa.06.026.i, align 8, !tbaa !82, !noalias !131
  store ptr %i.zo, ptr %i.zn, align 8, !tbaa !82, !noalias !131
  %i.zp = icmp sgt i64 %i.ze, 0
  br i1 %i.zp, label %bb.gz, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.gz:                                            ; preds = %.noexc13.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zm, ptr align 8 %i.xt, i64 %i.ze, i1 false), !noalias !131
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.gz, %.noexc13.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.xt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.ze) #19, !noalias !131
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ha, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zk ; 2 uses
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i

.loopexit.i298:                                   ; preds = %_ZNKSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i299 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

.loopexit.split-lp.i301:                          ; preds = %bb.gy
  %lpad.loopexit.split-lp.i302 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.hb:                                            ; preds = %.loopexit.split-lp.i301, %.loopexit.i298
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i299, %.loopexit.i298 ], [ %lpad.loopexit.split-lp.i302, %.loopexit.split-lp.i301 ] ; 2 uses
  %.not.i.i.i14.i = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i14.i, label %.body304, label %bb.hc

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.gw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, %._crit_edge.i.i.i.i293
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zm, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0.0, %bb.gw ], [ %.sroa.0.0, %._crit_edge.i.i.i.i293 ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zq, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.zb, %bb.gw ], [ %.sroa.9.0, %._crit_edge.i.i.i.i293 ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zr, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.13.0, %bb.gw ], [ %.sroa.13.0, %._crit_edge.i.i.i.i293 ] ; 2 uses
  %i.zs = phi ptr [ %i.xt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zm, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.xt, %bb.gw ], [ %i.xt, %._crit_edge.i.i.i.i293 ]
  %i.zt = phi ptr [ %i.xu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zr, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.xu, %bb.gw ], [ %i.xu, %._crit_edge.i.i.i.i293 ]
  %i.zu = phi ptr [ %i.xv, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_510ColorSpaceESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ], [ %i.zq, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.zb, %bb.gw ], [ %i.xv, %._crit_edge.i.i.i.i293 ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.06.026.i, i64 8 ; 2 uses
  %.not.i295 = icmp eq ptr %i.zv, %.091.val136
  br i1 %.not.i295, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit, label %.lr.ph.i292

bb.hc:                                            ; preds = %bb.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.ze) #19, !noalias !131
  br label %.body304

_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EE9push_backERKS3_.exit.i
  %i.zw = ptrtoint ptr %.sroa.13.1 to i64
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0
  %.sroa.0.2 = phi ptr [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ], [ %.sroa.0.1, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit ] ; 15 uses
  %.sroa.9.2 = phi ptr [ null, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ], [ %.sroa.9.1, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit ] ; 3 uses
  %.sroa.13.2 = phi i64 [ 0, %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0 ], [ %i.zw, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #18
  %.089.val = load ptr, ptr %.089, align 16, !tbaa !128 ; 2 uses
  %.089.val138 = load ptr, ptr %.089.sroa.phi, align 8, !tbaa !128 ; 2 uses
  %.val139 = load ptr, ptr %32, align 16, !tbaa !128 ; 4 uses
  %.val140 = load ptr, ptr %i.vu, align 8, !tbaa !128 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false), !alias.scope !135
  %.not25.i306 = icmp eq ptr %.089.val, %.089.val138
  br i1 %.not25.i306, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit.thread, label %.lr.ph.i307

.lr.ph.i307:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit
  %i.zx = ptrtoint ptr %.val140 to i64            ; 2 uses
  %i.zy = ptrtoint ptr %.val139 to i64
  %i.zz = sub i64 %i.zx, %i.zy                    ; 3 uses
  %i.aaa = ashr i64 %i.zz, 5                      ; 2 uses
  %i.aab = icmp sgt i64 %i.aaa, 0
  %i.aac = and i64 %i.zz, -32
  %scevgep.i.i.i.i308 = getelementptr i8, ptr %.val139, i64 %i.aac ; 2 uses
  %.pre59.i.i.i.i309 = ptrtoint ptr %scevgep.i.i.i.i308 to i64
  %.pre60.i.i.i.i310 = sub i64 %i.zx, %.pre59.i.i.i.i309
  br label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i, %.lr.ph.i307
  %i.aad = phi ptr [ null, %.lr.ph.i307 ], [ %i.acc, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i ] ; 9 uses
  %i.aae = phi ptr [ null, %.lr.ph.i307 ], [ %i.acd, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i ] ; 5 uses
  %i.aaf = phi ptr [ null, %.lr.ph.i307 ], [ %i.ace, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i ] ; 5 uses
  %.sroa.06.026.i311 = phi ptr [ %.089.val, %.lr.ph.i307 ], [ %i.acf, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i ] ; 6 uses
  br i1 %i.aab, label %.lr.ph.i.i.i.i339, label %._crit_edge.i.i.i.i312

.lr.ph.i.i.i.i339:                                ; preds = %bb.hd
  %i.aag = load ptr, ptr %.sroa.06.026.i311, align 8, !tbaa !122, !noalias !135 ; 8 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hi, %.lr.ph.i.i.i.i339
  %.052.i.i.i.i340 = phi i64 [ %i.aaa, %.lr.ph.i.i.i.i339 ], [ %i.aat, %bb.hi ] ; 2 uses
  %.sroa.032.051.i.i.i.i341 = phi ptr [ %.val139, %.lr.ph.i.i.i.i339 ], [ %i.aas, %bb.hi ] ; 9 uses
  %i.aah = load ptr, ptr %.sroa.032.051.i.i.i.i341, align 8, !tbaa !122, !noalias !135
  %i.aai = icmp eq ptr %i.aah, %i.aag
  br i1 %i.aai, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !122, !noalias !135
  %i.aal = icmp eq ptr %i.aak, %i.aag
  br i1 %i.aal, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit897, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !122, !noalias !135
  %i.aao = icmp eq ptr %i.aan, %i.aag
  br i1 %i.aao, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit895, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !122, !noalias !135
  %i.aar = icmp eq ptr %i.aaq, %i.aag
  br i1 %i.aar, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 32
  %i.aat = add nsw i64 %.052.i.i.i.i340, -1
  %i.aau = icmp sgt i64 %.052.i.i.i.i340, 1
  br i1 %i.aau, label %bb.he, label %._crit_edge.i.i.i.i312, !llvm.loop !138

._crit_edge.i.i.i.i312:                           ; preds = %bb.hi, %bb.hd
  %.pre-phi61.i.i.i.i313 = phi i64 [ %i.zz, %bb.hd ], [ %.pre60.i.i.i.i310, %bb.hi ]
  %.sroa.032.0.lcssa.i.i.i.i314 = phi ptr [ %.val139, %bb.hd ], [ %scevgep.i.i.i.i308, %bb.hi ] ; 5 uses
  %i.aav = ashr exact i64 %.pre-phi61.i.i.i.i313, 3
  switch i64 %i.aav, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i [
    i64 3, label %bb.hj
    i64 2, label %._crit_edge._crit_edge.i.i.i.i336
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i315
  ]

._crit_edge._crit_edge57.i.i.i.i315:              ; preds = %._crit_edge.i.i.i.i312
  %.pre58.i.i.i.i316 = load ptr, ptr %.sroa.06.026.i311, align 8, !tbaa !122, !noalias !135
  br label %bb.hn

._crit_edge._crit_edge.i.i.i.i336:                ; preds = %._crit_edge.i.i.i.i312
  %.pre.i.i.i.i337 = load ptr, ptr %.sroa.06.026.i311, align 8, !tbaa !122, !noalias !135
  br label %bb.hl

bb.hj:                                            ; preds = %._crit_edge.i.i.i.i312
  %i.aaw = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i314, align 8, !tbaa !122, !noalias !135
  %i.aax = load ptr, ptr %.sroa.06.026.i311, align 8, !tbaa !122, !noalias !135 ; 3 uses
  %i.aay = icmp eq ptr %i.aaw, %i.aax
  br i1 %i.aay, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i314, i64 8
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %._crit_edge._crit_edge.i.i.i.i336
  %i.aba = phi ptr [ %i.aax, %bb.hk ], [ %.pre.i.i.i.i337, %._crit_edge._crit_edge.i.i.i.i336 ] ; 3 uses
  %.sroa.032.1.i.i.i.i338 = phi ptr [ %i.aaz, %bb.hk ], [ %.sroa.032.0.lcssa.i.i.i.i314, %._crit_edge._crit_edge.i.i.i.i336 ] ; 3 uses
  %i.abb = load ptr, ptr %.sroa.032.1.i.i.i.i338, align 8, !tbaa !122, !noalias !135
  %i.abc = icmp eq ptr %i.abb, %i.aba
  br i1 %i.abc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i338, i64 8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %._crit_edge._crit_edge57.i.i.i.i315
  %i.abe = phi ptr [ %i.aba, %bb.hm ], [ %.pre58.i.i.i.i316, %._crit_edge._crit_edge57.i.i.i.i315 ] ; 2 uses
  %.sroa.032.2.i.i.i.i317 = phi ptr [ %i.abd, %bb.hm ], [ %.sroa.032.0.lcssa.i.i.i.i314, %._crit_edge._crit_edge57.i.i.i.i315 ] ; 2 uses
  %i.abf = load ptr, ptr %.sroa.032.2.i.i.i.i317, align 8, !tbaa !122, !noalias !135
  %i.abg = icmp eq ptr %i.abf, %i.abe
  %spec.select.i.i.i.i318 = select i1 %i.abg, ptr %.sroa.032.2.i.i.i.i317, ptr %.val140
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.hh
  %i.abh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit895: ; preds = %bb.hg
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit897: ; preds = %bb.hf
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i341, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i: ; preds = %bb.he, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit895, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit897, %bb.hn, %bb.hl, %bb.hj
  %i.abk = phi ptr [ %i.aba, %bb.hl ], [ %i.abe, %bb.hn ], [ %i.aax, %bb.hj ], [ %i.aag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.aag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit897 ], [ %i.aag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit895 ], [ %i.aag, %bb.he ]
  %.sroa.08.0.in.sroa.speculated.i.i.i.i319 = phi ptr [ %.sroa.032.1.i.i.i.i338, %bb.hl ], [ %spec.select.i.i.i.i318, %bb.hn ], [ %.sroa.032.0.lcssa.i.i.i.i314, %bb.hj ], [ %i.abh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.abj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit897 ], [ %i.abi, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i.loopexit.split.loop.exit895 ], [ %.sroa.032.051.i.i.i.i341, %bb.he ]
  %.not11.i320 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i319, %.val140
  br i1 %.not11.i320, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i, label %bb.ho

bb.ho:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i
  %.not.i.i321 = icmp eq ptr %i.aaf, %i.aae
  br i1 %.not.i.i321, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  store ptr %i.abk, ptr %i.aaf, align 8, !tbaa !122, !noalias !135
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 2 uses
  store ptr %i.abl, ptr %i.xl, align 8, !tbaa !127, !alias.scope !135
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i

bb.hq:                                            ; preds = %bb.ho
  %i.abm = ptrtoint ptr %i.aae to i64
  %i.abn = ptrtoint ptr %i.aad to i64
  %i.abo = sub i64 %i.abm, %i.abn                 ; 7 uses
  %i.abp = icmp eq i64 %i.abo, 9223372036854775800
  br i1 %i.abp, label %bb.hr, label %_ZNKSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.hr:                                            ; preds = %bb.hq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc.i335 unwind label %.loopexit.split-lp.i333, !noalias !135

.noexc.i335:                                      ; preds = %bb.hr
  unreachable

_ZNKSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hq
  %i.abq = ashr exact i64 %i.abo, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i324 = call i64 @llvm.umax.i64(i64 %i.abq, i64 1)
  %i.abr = add nsw i64 %.sroa.speculated.i.i.i.i324, %i.abq ; 2 uses
  %i.abs = icmp ult i64 %i.abr, %i.abq
  %i.abt = call i64 @llvm.umin.i64(i64 %i.abr, i64 1152921504606846975)
  %i.abu = select i1 %i.abs, i64 1152921504606846975, i64 %i.abt ; 3 uses
  %.not.i.i.i.i325 = icmp ne i64 %i.abu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i325)
  %i.abv = shl nuw nsw i64 %i.abu, 3
  %i.abw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abv) #20
          to label %.noexc13.i331 unwind label %.loopexit.i326, !noalias !135 ; 5 uses

.noexc13.i331:                                    ; preds = %_ZNKSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.abx = getelementptr inbounds i8, ptr %i.abw, i64 %i.abo ; 2 uses
  %i.aby = load ptr, ptr %.sroa.06.026.i311, align 8, !tbaa !122, !noalias !135
  store ptr %i.aby, ptr %i.abx, align 8, !tbaa !122, !noalias !135
  %i.abz = icmp sgt i64 %i.abo, 0
  br i1 %i.abz, label %bb.hs, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.hs:                                            ; preds = %.noexc13.i331
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.abw, ptr align 8 %i.aad, i64 %i.abo, i1 false), !noalias !135
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.hs, %.noexc13.i331
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 8 ; 2 uses
  %.not.i17.i.i.i332 = icmp eq ptr %i.aad, null
  br i1 %.not.i17.i.i.i332, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.abo) #19, !noalias !135
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ht, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.abw, ptr %37, align 8, !tbaa !123, !alias.scope !135
  store ptr %i.aca, ptr %i.xl, align 8, !tbaa !127, !alias.scope !135
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %i.abu ; 2 uses
  store ptr %i.acb, ptr %i.xm, align 8, !tbaa !126, !alias.scope !135
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i

.loopexit.i326:                                   ; preds = %_ZNKSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

.loopexit.split-lp.i333:                          ; preds = %bb.hr
  %lpad.loopexit.split-lp.i334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hu:                                            ; preds = %.loopexit.split-lp.i333, %.loopexit.i326
  %lpad.phi.i328 = phi { ptr, i32 } [ %lpad.loopexit.i327, %.loopexit.i326 ], [ %lpad.loopexit.split-lp.i334, %.loopexit.split-lp.i333 ] ; 2 uses
  %.not.i.i.i14.i329 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i.i14.i329, label %.body342, label %bb.hv

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.hp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i, %._crit_edge.i.i.i.i312
  %i.acc = phi ptr [ %i.aad, %._crit_edge.i.i.i.i312 ], [ %i.abw, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.aad, %bb.hp ], [ %i.aad, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ] ; 2 uses
  %i.acd = phi ptr [ %i.aae, %._crit_edge.i.i.i.i312 ], [ %i.acb, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.aae, %bb.hp ], [ %i.aae, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ]
  %i.ace = phi ptr [ %i.aaf, %._crit_edge.i.i.i.i312 ], [ %i.aca, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.abl, %bb.hp ], [ %i.aaf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKPKN16OpenColorIO_v2_514NamedTransformESt6vectorIS5_SaIS5_EEEES5_ET_SC_SC_RKT0_.exit.i ] ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.sroa.06.026.i311, i64 8 ; 2 uses
  %.not.i322 = icmp eq ptr %i.acf, %.089.val138
  br i1 %.not.i322, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit, label %bb.hd

bb.hv:                                            ; preds = %bb.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.aad, i64 noundef %i.abo) #19, !noalias !135
  br label %.body342

_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EE9push_backERKS3_.exit.i
  %46 = icmp ne ptr %i.acc, %i.ace
  %47 = icmp ne ptr %.sroa.0.2, %.sroa.9.2
  %or.cond = select i1 %47, i1 true, i1 %46
  br i1 %or.cond, label %bb.hw, label %.thread800

_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit.thread: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_10ColorSpaceESaIS5_EEEET_RKS8_SA_.exit
  %i.acg = icmp eq ptr %.sroa.0.2, %.sroa.9.2
  br i1 %i.acg, label %.thread800, label %bb.hw

bb.hw:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit.thread
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18GetInfosERSt10shared_ptrIKNS_6ConfigEERKSt6vectorIPKNS_10ColorSpaceESaIS9_EERKS6_IPKNS_14NamedTransformESaISG_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.2, ptr %.sroa.9.2, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.ja unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

.thread800:                                       ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit, %_ZN16OpenColorIO_v2_512_GLOBAL__N_112IntersectionISt6vectorIPKNS_14NamedTransformESaIS5_EEEET_RKS8_SA_.exit.thread
  br i1 %.3, label %bb.iz, label %bb.hy

bb.hy:                                            ; preds = %.thread800
  %i.aci = load ptr, ptr %7, align 8, !tbaa !15
  %i.acj = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.ack = icmp eq ptr %i.aci, %i.acj
  br i1 %i.ack, label %bb.iz, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store i8 1, ptr %13, align 4, !tbaa !96
  br i1 %.1102, label %bb.jb, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #18
  %i.acl = load ptr, ptr %i.ui, align 8, !tbaa !66 ; 2 uses
  %i.acm = load <2 x ptr>, ptr %1, align 8, !tbaa !69
  store <2 x ptr> %i.acm, ptr %39, align 16, !tbaa !69
  %.not.i.i.i344 = icmp eq ptr %i.acl, null
  br i1 %.not.i.i.i344, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 3 uses
  %i.aco = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i345 = icmp eq i8 %i.aco, 0
  br i1 %.not.i.i.i.i345, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.acp = load i32, ptr %i.acn, align 4, !tbaa !70
  %i.acq = add nsw i32 %i.acp, 1
  store i32 %i.acq, ptr %i.acn, align 4, !tbaa !70
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346

bb.id:                                            ; preds = %bb.ib
  %i.acr = atomicrmw volatile add ptr %i.acn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346: ; preds = %bb.ia, %bb.ic, %bb.id
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_114GetColorSpacesESt10shared_ptrIKNS_6ConfigEEbbNS_24SearchReferenceSpaceTypeERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef align 8 %39, i1 noundef zeroext %4, i1 noundef zeroext %6, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ie unwind label %bb.ix

bb.ie:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346
  %i.acs = load ptr, ptr %16, align 16, !tbaa !94 ; 3 uses
  %i.act = load ptr, ptr %i.xo, align 16, !tbaa !84
  %i.acu = load <2 x ptr>, ptr %38, align 16, !tbaa !76
  store <2 x ptr> %i.acu, ptr %16, align 16, !tbaa !76
  %i.acv = load ptr, ptr %i.xp, align 16, !tbaa !84
  store ptr %i.acv, ptr %i.xo, align 16, !tbaa !84
  %.not.i.i.i.i.i347 = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i.i.i347, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit350, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.acw = ptrtoint ptr %i.act to i64
  %i.acx = ptrtoint ptr %i.acs to i64
  %i.acy = sub i64 %i.acw, %i.acx
  call void @_ZdlPvm(ptr noundef nonnull %i.acs, i64 noundef %i.acy) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit350

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit350: ; preds = %bb.if, %bb.ie
  %i.acz = load ptr, ptr %i.xn, align 8, !tbaa !66 ; 8 uses
  %.not.i.i351 = icmp eq ptr %i.acz, null
  br i1 %.not.i.i351, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355, label %bb.ig

bb.ig:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit350
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8 ; 4 uses
  %i.adb = load atomic i64, ptr %i.ada acquire, align 8 ; 2 uses
  %i.adc = icmp eq i64 %i.adb, 4294967297
  %i.add = trunc i64 %i.adb to i32                ; 2 uses
  br i1 %i.adc, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  store i32 0, ptr %i.ada, align 8, !tbaa !71
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 12
  store i32 0, ptr %i.ade, align 4, !tbaa !73
  %i.adf = load ptr, ptr %i.acz, align 8, !tbaa !26
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8
  call void %i.adh(ptr noundef nonnull align 8 dereferenceable(16) %i.acz) #18, !inline_history !74
  %i.adi = load ptr, ptr %i.acz, align 8, !tbaa !26
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 24
  %i.adk = load ptr, ptr %i.adj, align 8
  call void %i.adk(ptr noundef nonnull align 8 dereferenceable(16) %i.acz) #18, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355

bb.ii:                                            ; preds = %bb.ig
  %i.adl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i352 = icmp eq i8 %i.adl, 0
  br i1 %.not.i.i.i352, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.adm = add nsw i32 %i.add, -1
  store i32 %i.adm, ptr %i.ada, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i353

bb.ik:                                            ; preds = %bb.ii
  %i.adn = atomicrmw volatile add ptr %i.ada, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i353

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i353: ; preds = %bb.ik, %bb.ij
  %.0.i.i.i.i354 = phi i32 [ %i.add, %bb.ij ], [ %i.adn, %bb.ik ]
  %i.ado = icmp eq i32 %.0.i.i.i.i354, 1
  br i1 %i.ado, label %bb.il, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355, !prof !75

bb.il:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i353
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acz) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit350, %bb.ih, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i353, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #18
  %i.adp = load ptr, ptr %i.ui, align 8, !tbaa !66 ; 2 uses
  %i.adq = load <2 x ptr>, ptr %1, align 8, !tbaa !69
  store <2 x ptr> %i.adq, ptr %41, align 16, !tbaa !69
  %.not.i.i.i356 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i356, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358, label %bb.im

bb.im:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 8 ; 3 uses
  %i.ads = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i357 = icmp eq i8 %i.ads, 0
  br i1 %.not.i.i.i.i357, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.adt = load i32, ptr %i.adr, align 4, !tbaa !70
  %i.adu = add nsw i32 %i.adt, 1
  store i32 %i.adu, ptr %i.adr, align 4, !tbaa !70
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358

bb.io:                                            ; preds = %bb.im
  %i.adv = atomicrmw volatile add ptr %i.adr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit355, %bb.in, %bb.io
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_118GetNamedTransformsESt10shared_ptrIKNS_6ConfigEEbbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef align 8 %41, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ip unwind label %bb.iy

bb.ip:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358
  %i.adw = load ptr, ptr %17, align 16, !tbaa !123 ; 3 uses
  %i.adx = load ptr, ptr %i.xr, align 16, !tbaa !126
  %i.ady = load <2 x ptr>, ptr %40, align 16, !tbaa !128
  store <2 x ptr> %i.ady, ptr %17, align 16, !tbaa !128
  %i.adz = load ptr, ptr %i.xs, align 16, !tbaa !126
  store ptr %i.adz, ptr %i.xr, align 16, !tbaa !126
  %.not.i.i.i.i.i359 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i.i.i359, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit362, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aea = ptrtoint ptr %i.adx to i64
  %i.aeb = ptrtoint ptr %i.adw to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  call void @_ZdlPvm(ptr noundef nonnull %i.adw, i64 noundef %i.aec) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit362

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit362: ; preds = %bb.iq, %bb.ip
  %i.aed = load ptr, ptr %i.xq, align 8, !tbaa !66 ; 8 uses
  %.not.i.i363 = icmp eq ptr %i.aed, null
  br i1 %.not.i.i363, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, label %bb.ir

bb.ir:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit362
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8 ; 4 uses
  %i.aef = load atomic i64, ptr %i.aee acquire, align 8 ; 2 uses
  %i.aeg = icmp eq i64 %i.aef, 4294967297
  %i.aeh = trunc i64 %i.aef to i32                ; 2 uses
  br i1 %i.aeg, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  store i32 0, ptr %i.aee, align 8, !tbaa !71
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aed, i64 12
  store i32 0, ptr %i.aei, align 4, !tbaa !73
  %i.aej = load ptr, ptr %i.aed, align 8, !tbaa !26
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  %i.ael = load ptr, ptr %i.aek, align 8
  call void %i.ael(ptr noundef nonnull align 8 dereferenceable(16) %i.aed) #18, !inline_history !74
  %i.aem = load ptr, ptr %i.aed, align 8, !tbaa !26
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 24
  %i.aeo = load ptr, ptr %i.aen, align 8
  call void %i.aeo(ptr noundef nonnull align 8 dereferenceable(16) %i.aed) #18, !inline_history !74
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367

bb.it:                                            ; preds = %bb.ir
  %i.aep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i364 = icmp eq i8 %i.aep, 0
  br i1 %.not.i.i.i364, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aeq = add nsw i32 %i.aeh, -1
  store i32 %i.aeq, ptr %i.aee, align 8, !tbaa !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365

bb.iv:                                            ; preds = %bb.it
  %i.aer = atomicrmw volatile add ptr %i.aee, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365: ; preds = %bb.iv, %bb.iu
  %.0.i.i.i.i366 = phi i32 [ %i.aeh, %bb.iu ], [ %i.aer, %bb.iv ]
  %i.aes = icmp eq i32 %.0.i.i.i.i366, 1
  br i1 %i.aes, label %bb.iw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, !prof !75

bb.iw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aed) #18
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit362, %bb.is, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i365, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.jb

bb.ix:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit346
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.ji

bb.iy:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit358
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.ji

bb.iz:                                            ; preds = %.thread800, %bb.hy
  %48 = load ptr, ptr %37, align 8, !tbaa !123    ; 3 uses
  %.not.i.i.i368.jt3 = icmp eq ptr %48, null
  br i1 %.not.i.i.i368.jt3, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt3, label %bb.jc

bb.ja:                                            ; preds = %bb.hw
  %49 = load ptr, ptr %37, align 8, !tbaa !123    ; 3 uses
  %.not.i.i.i368.jt1 = icmp eq ptr %49, null
  br i1 %.not.i.i.i368.jt1, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1, label %bb.jd

bb.jb:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit367, %bb.hz
  %50 = load ptr, ptr %37, align 8, !tbaa !123    ; 3 uses
  %.not.i.i.i368.jt0 = icmp eq ptr %50, null
  br i1 %.not.i.i.i368.jt0, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt0, label %bb.je

bb.jc:                                            ; preds = %bb.iz
  %i.aev = load ptr, ptr %i.xm, align 8, !tbaa !126
  %i.aew = ptrtoint ptr %i.aev to i64
  %i.aex = ptrtoint ptr %48 to i64
  %i.aey = sub i64 %i.aew, %i.aex
  call void @_ZdlPvm(ptr noundef nonnull %48, i64 noundef %i.aey) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt3

bb.jd:                                            ; preds = %bb.ja
  %i.aez = load ptr, ptr %i.xm, align 8, !tbaa !126
  %i.afa = ptrtoint ptr %i.aez to i64
  %i.afb = ptrtoint ptr %49 to i64
  %i.afc = sub i64 %i.afa, %i.afb
  call void @_ZdlPvm(ptr noundef nonnull %49, i64 noundef %i.afc) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1

bb.je:                                            ; preds = %bb.jb
  %i.afd = load ptr, ptr %i.xm, align 8, !tbaa !126
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = ptrtoint ptr %50 to i64
  %i.afg = sub i64 %i.afe, %i.aff
  call void @_ZdlPvm(ptr noundef nonnull %50, i64 noundef %i.afg) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt0

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt3: ; preds = %bb.jc, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %.not.i.i.i370.jt3 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i370.jt3, label %.thread476, label %bb.jf

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1: ; preds = %bb.jd, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %.not.i.i.i370.jt1 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i370.jt1, label %.loopexit500, label %bb.jg

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt0: ; preds = %bb.je, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %.not.i.i.i370.jt0 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i370.jt0, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge, label %bb.jh

bb.jf:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt3
  %i.afh = ptrtoint ptr %.sroa.0.2 to i64
  %i.afi = sub i64 %.sroa.13.2, %i.afh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.afi) #19
  br label %.thread476

bb.jg:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1
  %i.afj = ptrtoint ptr %.sroa.0.2 to i64
  %i.afk = sub i64 %.sroa.13.2, %i.afj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.afk) #19
  br label %.loopexit500

bb.jh:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt0
  %i.afl = ptrtoint ptr %.sroa.0.2 to i64
  %i.afm = sub i64 %.sroa.13.2, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.afm) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0.backedge: ; preds = %bb.jh, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt0
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit371.jt0

bb.ji:                                            ; preds = %bb.iy, %bb.ix, %bb.hx
  %.pn = phi { ptr, i32 } [ %i.aeu, %bb.iy ], [ %i.aet, %bb.ix ], [ %i.ach, %bb.hx ] ; 2 uses
  %51 = load ptr, ptr %37, align 8, !tbaa !123    ; 3 uses
  %.not.i.i.i372 = icmp eq ptr %51, null
  br i1 %.not.i.i.i372, label %.body342, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.afn = load ptr, ptr %i.xm, align 8, !tbaa !126
  %i.afo = ptrtoint ptr %i.afn to i64
  %i.afp = ptrtoint ptr %51 to i64
  %i.afq = sub i64 %i.afo, %i.afp
  call void @_ZdlPvm(ptr noundef nonnull %51, i64 noundef %i.afq) #19
  br label %.body342

.body342:                                         ; preds = %bb.jj, %bb.ji, %bb.hv, %bb.hu
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi.i328, %bb.hu ], [ %.pn, %bb.jj ], [ %lpad.phi.i328, %bb.hv ], [ %.pn, %bb.ji ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  %.not.i.i.i374 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i374, label %.body304, label %bb.jk

bb.jk:                                            ; preds = %.body342
  %i.afr = ptrtoint ptr %.sroa.0.2 to i64
  %i.afs = sub i64 %.sroa.13.2, %i.afr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.afs) #19
  br label %.body304

.thread476:                                       ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt3, %bb.jf
  store i8 1, ptr %i.d, align 2, !tbaa !100
  store i8 %i.xh, ptr %13, align 4, !tbaa !96
  br label %bb.jl

.thread479:                                       ; preds = %bb.gh, %.thread453
  %.sroa.0425.0.ph = phi ptr [ %i.uq, %bb.gh ], [ null, %.thread453 ] ; 2 uses
  %.sroa.15.0.ph = phi ptr [ %i.uu, %bb.gh ], [ null, %.thread453 ] ; 2 uses
  br i1 %.3100, label %bb.jl, label %.thread492

bb.jl:                                            ; preds = %.thread476, %.thread479
  %.sroa.0425.0463489 = phi ptr [ %.sroa.0425.0.ph, %.thread479 ], [ %i.uq, %.thread476 ] ; 2 uses
  %.sroa.15.0470485 = phi ptr [ %.sroa.15.0.ph, %.thread479 ], [ %i.uu, %.thread476 ] ; 2 uses
  %i.aft = load ptr, ptr %3, align 8, !tbaa !15
  %i.afu = load ptr, ptr %i.ue, align 8, !tbaa !15
  %i.afv = icmp eq ptr %i.aft, %i.afu
  %i.afw = load i32, ptr %i.f, align 4            ; 2 uses
  %i.afx = icmp eq i32 %i.afw, 3
  %or.cond5.not = select i1 %i.afv, i1 true, i1 %i.afx
  %spec.store.select = select i1 %or.cond5.not, i32 %i.afw, i32 2
  store i32 %spec.store.select, ptr %i.f, align 4
  %.val143 = load ptr, ptr %14, align 16, !tbaa !76
  %i.afy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.val144 = load ptr, ptr %i.afy, align 8, !tbaa !76
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18GetInfosERSt10shared_ptrIKNS_6ConfigEERKSt6vectorIPKNS_10ColorSpaceESaIS9_EERKS6_IPKNS_14NamedTransformESaISG_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.val143, ptr %.val144, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %.loopexit500 unwind label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %.critedge
  %.sroa.0425.0463491 = phi ptr [ %.sroa.0425.0463489, %bb.jl ], [ %i.uq, %.critedge ]
  %.sroa.15.0470487 = phi ptr [ %.sroa.15.0470485, %bb.jl ], [ %i.uu, %.critedge ]
  %i.afz = landingpad { ptr, i32 }
          cleanup
  br label %.body304

.critedge:                                        ; preds = %bb.gk
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18GetInfosERSt10shared_ptrIKNS_6ConfigEERKSt6vectorIPKNS_10ColorSpaceESaIS9_EERKS6_IPKNS_14NamedTransformESaISG_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.uq, ptr %i.us, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %.loopexit500 unwind label %bb.jm

.thread492:                                       ; preds = %.thread479
  %i.aga = load ptr, ptr %2, align 8, !tbaa !15
  %i.agb = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.agc = icmp eq ptr %i.aga, %i.agb
  br i1 %i.agc, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %.thread492
  %i.agd = load ptr, ptr %3, align 8, !tbaa !15
  %i.age = load ptr, ptr %i.ue, align 8, !tbaa !15
  %i.agf = icmp ne ptr %i.agd, %i.age
  %i.agg = zext i1 %i.agf to i8
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.thread492
  %i.agh = phi i8 [ 1, %.thread492 ], [ %i.agg, %bb.jn ]
  store i8 %i.agh, ptr %i.c, align 1, !tbaa !99
  br label %.loopexit500

.loopexit500:                                     ; preds = %bb.jg, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1, %bb.jl, %.critedge, %bb.jo
  %.sroa.15.0469 = phi ptr [ %i.uu, %.critedge ], [ %.sroa.15.0470485, %bb.jl ], [ %.sroa.15.0.ph, %bb.jo ], [ %i.uu, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1 ], [ %i.uu, %bb.jg ]
  %.sroa.0425.0462 = phi ptr [ %i.uq, %.critedge ], [ %.sroa.0425.0463489, %bb.jl ], [ %.sroa.0425.0.ph, %bb.jo ], [ %i.uq, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1 ], [ %i.uq, %bb.jg ] ; 3 uses
  %.2 = phi i1 [ false, %.critedge ], [ false, %bb.jl ], [ true, %bb.jo ], [ false, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit369.jt1 ], [ false, %bb.jg ]
  %i.agi = load ptr, ptr %32, align 16, !tbaa !123 ; 3 uses
  %.not.i.i.i376 = icmp eq ptr %i.agi, null
  br i1 %.not.i.i.i376, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit377, label %bb.jp

bb.jp:                                            ; preds = %.loopexit500
  %i.agj = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.agk = load ptr, ptr %i.agj, align 16, !tbaa !126
  %i.agl = ptrtoint ptr %i.agk to i64
  %i.agm = ptrtoint ptr %i.agi to i64
  %i.agn = sub i64 %i.agl, %i.agm
  call void @_ZdlPvm(ptr noundef nonnull %i.agi, i64 noundef %i.agn) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit377

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit377: ; preds = %.loopexit500, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %.not.i.i.i378 = icmp eq ptr %.sroa.0425.0462, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit379, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit377
  %i.ago = ptrtoint ptr %.sroa.15.0469 to i64
  %i.agp = ptrtoint ptr %.sroa.0425.0462 to i64
  %i.agq = sub i64 %i.ago, %i.agp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0425.0462, i64 noundef %i.agq) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit379

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit379: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit377, %bb.jq
  %i.agr = load ptr, ptr %17, align 16, !tbaa !123 ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.agr, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit381, label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit379
  %i.ags = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.agt = load ptr, ptr %i.ags, align 16, !tbaa !126
  %i.agu = ptrtoint ptr %i.agt to i64
  %i.agv = ptrtoint ptr %i.agr to i64
  %i.agw = sub i64 %i.agu, %i.agv
  call void @_ZdlPvm(ptr noundef nonnull %i.agr, i64 noundef %i.agw) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit381

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit381: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit379, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.agx = load ptr, ptr %16, align 16, !tbaa !94 ; 3 uses
  %.not.i.i.i382 = icmp eq ptr %i.agx, null
  br i1 %.not.i.i.i382, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit383, label %bb.js

bb.js:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit381
  %i.agy = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.agz = load ptr, ptr %i.agy, align 16, !tbaa !84
  %i.aha = ptrtoint ptr %i.agz to i64
  %i.ahb = ptrtoint ptr %i.agx to i64
  %i.ahc = sub i64 %i.aha, %i.ahb
  call void @_ZdlPvm(ptr noundef nonnull %i.agx, i64 noundef %i.ahc) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit383

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit383: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit381, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.ahd = load ptr, ptr %15, align 16, !tbaa !123 ; 3 uses
  %.not.i.i.i384 = icmp eq ptr %i.ahd, null
  br i1 %.not.i.i.i384, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit385, label %bb.jt

bb.jt:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit383
  %i.ahe = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ahf = load ptr, ptr %i.ahe, align 16, !tbaa !126
  %i.ahg = ptrtoint ptr %i.ahf to i64
  %i.ahh = ptrtoint ptr %i.ahd to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh
  call void @_ZdlPvm(ptr noundef nonnull %i.ahd, i64 noundef %i.ahi) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit385

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit385: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit383, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ahj = load ptr, ptr %14, align 16, !tbaa !94 ; 3 uses
  %.not.i.i.i386 = icmp eq ptr %i.ahj, null
  br i1 %.not.i.i.i386, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit387, label %bb.ju

bb.ju:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit385
  %i.ahk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 16, !tbaa !84
  %i.ahm = ptrtoint ptr %i.ahl to i64
  %i.ahn = ptrtoint ptr %i.ahj to i64
  %i.aho = sub i64 %i.ahm, %i.ahn
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.aho) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit387

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit387: ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit385, %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %.2, label %bb.kb, label %bb.lw

.body304:                                         ; preds = %bb.hb, %bb.hc, %.body342, %bb.jk, %bb.jm, %bb.gj, %bb.gi
  %.sroa.0425.1 = phi ptr [ %.sroa.0425.0463491, %bb.jm ], [ null, %bb.gi ], [ %i.uq, %bb.gj ], [ %i.uq, %bb.hb ], [ %i.uq, %bb.jk ], [ %i.uq, %bb.hc ], [ %i.uq, %.body342 ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0470487, %bb.jm ], [ null, %bb.gi ], [ %i.uu, %bb.gj ], [ %i.uu, %bb.hb ], [ %i.uu, %bb.jk ], [ %i.uu, %bb.hc ], [ %i.uu, %.body342 ]
  %.pn125 = phi { ptr, i32 } [ %i.afz, %bb.jm ], [ %i.xf, %bb.gi ], [ %i.xg, %bb.gj ], [ %lpad.phi.i, %bb.hb ], [ %.pn.pn, %bb.jk ], [ %lpad.phi.i, %bb.hc ], [ %.pn.pn, %.body342 ] ; 2 uses
  %i.ahp = load ptr, ptr %32, align 16, !tbaa !123 ; 3 uses
  %.not.i.i.i388 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i388, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389, label %bb.jv

bb.jv:                                            ; preds = %.body304
  %i.ahq = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ahr = load ptr, ptr %i.ahq, align 16, !tbaa !126
  %i.ahs = ptrtoint ptr %i.ahr to i64
  %i.aht = ptrtoint ptr %i.ahp to i64
  %i.ahu = sub i64 %i.ahs, %i.aht
  call void @_ZdlPvm(ptr noundef nonnull %i.ahp, i64 noundef %i.ahu) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389

_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389: ; preds = %.body304, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  %.not.i.i.i390 = icmp eq ptr %.sroa.0425.1, null
  br i1 %.not.i.i.i390, label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit391, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389
  %i.ahv = ptrtoint ptr %.sroa.15.1 to i64
  %i.ahw = ptrtoint ptr %.sroa.0425.1 to i64
  %i.ahx = sub i64 %i.ahv, %i.ahw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0425.1, i64 noundef %i.ahx) #19
  br label %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit391

_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit391: ; preds = %bb.jw, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389, %bb.fl, %bb.fk, %bb.ek, %bb.ej, %bb.dj, %bb.di, %bb.dh, %.body187, %.body
  %.pn125.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.uc, %bb.fl ], [ %i.ub, %bb.fk ], [ %i.qh, %bb.ek ], [ %i.qg, %bb.ej ], [ %i.nk, %bb.dj ], [ %i.nj, %bb.di ], [ %i.ni, %bb.dh ], [ %eh.lpad-body.i, %.body187 ], [ %.pn125, %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit389 ], [ %.pn125, %bb.jw ]
  %i.ahy = load ptr, ptr %17, align 16, !tbaa !123 ; 3 uses
  %.not.i.i.i392 = icmp eq ptr %i.ahy, null
  br i1 %.not.i.i.i392, label %_ZNSt6vectorIPKN16OpenColorIO_v2_514NamedTransformESaIS3_EED2Ev.exit393, label %bb.jx

bb.jx:                                            ; preds = %_ZNSt6vectorIPKN16OpenColorIO_v2_510ColorSpaceESaIS3_EED2Ev.exit391
  %i.ahz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 16, !tbaa !126
end_hunk_0
