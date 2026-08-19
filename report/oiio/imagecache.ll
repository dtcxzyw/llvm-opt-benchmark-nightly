inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoE:bb.a
bb.cf:                                            ; preds = %bb.ce
  %i.jv = load ptr, ptr %i.e, align 8, !tbaa !258 ; 2 uses
  %i.jw = load <2 x ptr>, ptr %15, align 16, !tbaa !287
  store <2 x ptr> %i.jw, ptr %32, align 16, !tbaa !287
  %.not.i.i.i253 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i253, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i254 = icmp eq i8 %i.jy, 0
  br i1 %.not.i.i.i.i254, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !3
  %i.ka = add nsw i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit

bb.ci:                                            ; preds = %bb.cg
  %i.kb = atomicrmw volatile add ptr %i.jx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit: ; preds = %bb.cf, %bb.ch, %bb.ci
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile14set_imageinputESt10shared_ptrINS0_10ImageInputEE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull %32)
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #5
  %i.kc = load <2 x ptr>, ptr %15, align 16, !tbaa !287
  store ptr null, ptr %i.e, align 8, !tbaa !258
  store <2 x ptr> %i.kc, ptr %0, align 8, !tbaa !287
  store ptr null, ptr %15, align 16, !tbaa !288
  br label %.thread

bb.cj:                                            ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  br label %.loopexit.split-lp

bb.ck:                                            ; preds = %bb.ce
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !275 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !276 ; 2 uses
  %.not.i.i255 = icmp eq ptr %i.kh, %i.kf
  br i1 %.not.i.i255, label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ck, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i ], [ %i.kf, %bb.ck ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i.i) #5
  %i.ki = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i256 = icmp eq ptr %i.ki, %i.kh
  br i1 %.not.i.i.i.i256, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !277

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !276
  br label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE5clearEv.exit: ; preds = %bb.ck, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i
  store ptr @.str.56, ptr %33, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 14, ptr %i.kj, align 8, !tbaa !12
  %i.kk = invoke noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %25, ptr noundef nonnull dead_on_return %33, i32 noundef 0)
          to label %bb.cl unwind label %bb.cn     ; 2 uses

bb.cl:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE5clearEv.exit
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.km = zext nneg i32 %i.kk to i64
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i64 noundef %i.km)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE5clearEv.exit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.kq = load <2 x i64>, ptr %i.ko, align 8, !tbaa !201
  store i64 0, ptr %i.ko, align 8, !tbaa !491
  %i.kr = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.ks = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %34, i64 72 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %34, i64 88 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %34, i64 96 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %25, i64 104
  %i.la = getelementptr inbounds nuw i8, ptr %25, i64 112 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %34, i64 104
  %i.lc = getelementptr inbounds nuw i8, ptr %34, i64 112 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %34, i64 120
  %i.lf = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %34, i64 136 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %25, i64 144
  %i.li = getelementptr inbounds nuw i8, ptr %25, i64 152 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %34, i64 144
  %i.lk = getelementptr inbounds nuw i8, ptr %34, i64 152 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %25, i64 60
  %i.lm = getelementptr inbounds nuw i8, ptr %26, i64 72 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.lo = getelementptr inbounds nuw i8, ptr %26, i64 120
  %i.lp = getelementptr inbounds nuw i8, ptr %26, i64 136
  %i.lq = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %26, i64 52 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 6 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %26, i64 20 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %26, i64 56 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %26, i64 60 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %26, i64 36 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.mf = getelementptr inbounds nuw i8, ptr %26, i64 28
  %i.mg = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.mi = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %37, i64 12
  %i.ml = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %37, i64 20
  %i.mn = getelementptr inbounds nuw i8, ptr %37, i64 36
  %i.mo = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.mp = getelementptr inbounds nuw i8, ptr %37, i64 44
  %i.mq = getelementptr inbounds nuw i8, ptr %37, i64 48 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %37, i64 52 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.mt = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %37, i64 28
  %i.mx = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %37, i64 60
  %i.mz = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.na = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %37, i64 136 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %37, i64 144
  %i.nd = getelementptr inbounds nuw i8, ptr %37, i64 152
  %i.ne = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %37, i64 104
  %i.ng = getelementptr inbounds nuw i8, ptr %37, i64 112
  %i.nh = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.ni = getelementptr inbounds nuw i8, ptr %37, i64 88
  br label %bb.cp

bb.cp:                                            ; preds = %bb.hv, %bb.co
  %indvars.iv655 = phi i64 [ %indvars.iv.next656, %bb.hv ], [ 0, %bb.co ] ; 5 uses
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 5 uses
  %i.nj = load ptr, ptr %i.kg, align 8, !tbaa !276 ; 3 uses
  %i.nk = load ptr, ptr %i.ke, align 8, !tbaa !275 ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = ashr exact i64 %i.nn, 7                 ; 3 uses
  %.not796 = icmp ugt i64 %i.no, %indvars.iv655
  br i1 %.not796, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.np = sub nuw nsw i64 %indvars.iv.next656, %i.no
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, i64 noundef %i.np)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit unwind label %.loopexit556

bb.cr:                                            ; preds = %bb.cp
  %i.nq = icmp ugt i64 %i.no, %indvars.iv.next656
  br i1 %i.nq, label %bb.cs, label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit

bb.cs:                                            ; preds = %bb.cr
  %i.nr = getelementptr inbounds nuw [128 x i8], ptr %i.nk, i64 %indvars.iv.next656 ; 3 uses
  %.not.i.i257 = icmp eq ptr %i.nj, %i.nr
  br i1 %.not.i.i257, label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %bb.cs, %.lr.ph.i.i.i.i258
  %.05.i.i.i.i259 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i258 ], [ %i.nr, %bb.cs ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i.i259) #5
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i259, i64 128 ; 2 uses
  %.not.i.i.i.i260 = icmp eq ptr %i.ns, %i.nj
  br i1 %.not.i.i.i.i260, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i261, label %.lr.ph.i.i.i.i258, !llvm.loop !277

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i261: ; preds = %.lr.ph.i.i.i.i258
  store ptr %i.nr, ptr %i.kg, align 8, !tbaa !276
  br label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoES3_EvT_S5_RSaIT0_E.exit.i.i261, %bb.cs, %bb.cr, %bb.cq
  %i.nt = load ptr, ptr %i.ke, align 8, !tbaa !275
  %i.nu = getelementptr inbounds nuw [128 x i8], ptr %i.nt, i64 %indvars.iv655 ; 15 uses
  %i.nv = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 156
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !492 ; 3 uses
  %i.ny = icmp eq i64 %indvars.iv655, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 40 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 43 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 100 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 6 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 16 ; 2 uses
  %i.oe = trunc nuw nsw i64 %indvars.iv655 to i32 ; 5 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.fp, %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit
  %.0106 = phi i32 [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit ], [ %i.xr, %bb.fp ] ; 5 uses
  %.0104 = phi ptr [ null, %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit ], [ %.1105, %bb.fp ]
  %.0103 = phi i1 [ false, %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE6resizeEm.exit ], [ %.1, %bb.fp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #5
  %i.of = load ptr, ptr %15, align 16, !tbaa !288 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !262
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 72
  %i.oi = load ptr, ptr %i.oh, align 8
  invoke void %i.oi(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8 %34, ptr noundef nonnull align 8 dereferenceable(184) %i.of, i32 noundef %i.oe, i32 noundef %.0106)
          to label %bb.cu unwind label %bb.di

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %25, ptr noundef nonnull align 8 dereferenceable(160) %34, i64 64, i1 false)
  %i.oj = load i64, ptr %i.ks, align 8
  store i64 %i.oj, ptr %i.kr, align 8
  %i.ok = load ptr, ptr %i.kt, align 8, !tbaa !189 ; 3 uses
  %i.ol = load ptr, ptr %i.kv, align 8, !tbaa !191
  %i.om = load <2 x ptr>, ptr %i.ku, align 8, !tbaa !192
  store <2 x ptr> %i.om, ptr %i.kt, align 8, !tbaa !192
  %i.on = load ptr, ptr %i.kw, align 8, !tbaa !191
  store ptr %i.on, ptr %i.kv, align 8, !tbaa !191
  %.not.i.i.i.i.i.i263 = icmp eq ptr %i.ok, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i263, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %i.ok to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef %i.oq) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i: ; preds = %bb.cv, %bb.cu
  %i.or = load ptr, ptr %i.kx, align 8, !tbaa !198 ; 5 uses
  %i.os = load ptr, ptr %i.kz, align 8, !tbaa !195 ; 2 uses
  %i.ot = load ptr, ptr %i.la, align 8, !tbaa !199
  %i.ou = load <2 x ptr>, ptr %i.ky, align 8, !tbaa !200
  store <2 x ptr> %i.ou, ptr %i.kx, align 8, !tbaa !200
  %i.ov = load ptr, ptr %i.lc, align 8, !tbaa !199
  store ptr %i.ov, ptr %i.la, align 8, !tbaa !199
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.or, %i.os
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.pb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.or, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i ] ; 3 uses
  %i.ow = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.oz = load i64, ptr %i.ox, align 8, !tbaa !39
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.pa) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i7.i = icmp eq ptr %i.pb, %i.os
  br i1 %.not.i.i.i.i.i7.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSEOS4_.exit.i
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.pc = ptrtoint ptr %i.ot to i64
  %i.pd = ptrtoint ptr %i.or to i64
  %i.pe = sub i64 %i.pc, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.pe) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i: ; preds = %bb.cw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ld, ptr noundef nonnull align 8 dereferenceable(9) %i.le, i64 9, i1 false)
  %i.pf = load ptr, ptr %i.lf, align 8, !tbaa !387 ; 5 uses
  %i.pg = load ptr, ptr %i.lh, align 8, !tbaa !386 ; 2 uses
  %i.ph = load ptr, ptr %i.li, align 8, !tbaa !493
  %i.pi = load <2 x ptr>, ptr %i.lg, align 8, !tbaa !494
  store <2 x ptr> %i.pi, ptr %i.lf, align 8, !tbaa !494
  %i.pj = load ptr, ptr %i.lk, align 8, !tbaa !493
  store ptr %i.pj, ptr %i.li, align 8, !tbaa !493
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.pf, %i.pg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.pf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i.i) #5
  %i.pk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq ptr %i.pk, %i.pg
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !495

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit.i
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.pl = ptrtoint ptr %i.ph to i64
  %i.pm = ptrtoint ptr %i.pf to i64
  %i.pn = sub i64 %i.pl, %i.pm
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef %i.pn) #46
  br label %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit

_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit:      ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, %bb.cx
  %i.po = load ptr, ptr %i.lg, align 8, !tbaa !387 ; 3 uses
  %i.pp = load ptr, ptr %i.lj, align 8, !tbaa !386 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.po, %i.pp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i265

.lr.ph.i.i.i.i265:                                ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit, %.lr.ph.i.i.i.i265
  %.05.i.i.i.i266 = phi ptr [ %i.pq, %.lr.ph.i.i.i.i265 ], [ %i.po, %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i266) #5
  %i.pq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i266, i64 40 ; 2 uses
  %.not.i.i.i.i267 = icmp eq ptr %i.pq, %i.pp
  br i1 %.not.i.i.i.i267, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i265, !llvm.loop !495

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i265
  %.pr.i.i = load ptr, ptr %i.lg, align 8, !tbaa !387
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit
  %i.pr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.po, %_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ps = load ptr, ptr %i.lk, align 8, !tbaa !493
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pr to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.pv) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.cy, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.pw = load ptr, ptr %i.ky, align 8, !tbaa !198 ; 3 uses
  %i.px = load ptr, ptr %i.lb, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.pw, %i.px
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.qd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.pw, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.py = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !36 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !39
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.qd, %i.px
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ky, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.qe = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.pw, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.qe, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.qf = load ptr, ptr %i.lc, align 8, !tbaa !199
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qe to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qi) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cz, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.qj = load ptr, ptr %i.ku, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.qk = load ptr, ptr %i.kw, align 8, !tbaa !191
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = ptrtoint ptr %i.qj to i64
  %i.qn = sub i64 %i.ql, %i.qm
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qn) #46
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  %i.qo = load i32, ptr %i.ll, align 4, !tbaa !359
  %i.qp = icmp sgt i32 %i.qo, 65535
  br i1 %i.qp, label %bb.db, label %bb.dj

bb.db:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr null, ptr %15, align 16, !tbaa !297, !noalias !496
  %i.qq = load ptr, ptr %i.e, align 8, !tbaa !258, !noalias !496 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !258, !noalias !496
  %.not.i.i.i.i268 = icmp eq ptr %i.qq, null
  br i1 %.not.i.i.i.i268, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 4 uses
  %i.qs = load atomic i64, ptr %i.qr acquire, align 8, !noalias !496 ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 4294967297
  %i.qu = trunc i64 %i.qs to i32                  ; 2 uses
  br i1 %i.qt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.qr, align 8, !tbaa !259, !noalias !496
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qq, i64 12
  store i32 0, ptr %i.qv, align 4, !tbaa !261, !noalias !496
  %i.qw = load ptr, ptr %i.qq, align 8, !tbaa !262, !noalias !496
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !496
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #5, !noalias !496, !inline_history !476
  %i.qz = load ptr, ptr %i.qq, align 8, !tbaa !262, !noalias !496
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !496
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #5, !noalias !496, !inline_history !476
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272

bb.de:                                            ; preds = %bb.dc
  %i.rc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !496
  %.not.i.i.i.i.i269 = icmp eq i8 %i.rc, 0
  br i1 %.not.i.i.i.i.i269, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.rd = add nsw i32 %i.qu, -1
  store i32 %i.rd, ptr %i.qr, align 8, !tbaa !3, !noalias !496
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i270

bb.dg:                                            ; preds = %bb.de
  %i.re = atomicrmw volatile add ptr %i.qr, i32 -1 acq_rel, align 4, !noalias !496
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i270

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i270: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i.i271 = phi i32 [ %i.qu, %bb.df ], [ %i.re, %bb.dg ]
  %i.rf = icmp eq i32 %.0.i.i.i.i.i.i271, 1
  br i1 %i.rf, label %bb.dh, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272, !prof !190

bb.dh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i270
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qq) #5, !noalias !496
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272: ; preds = %bb.dh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i270, %bb.dd, %bb.db
  store ptr @.str.57, ptr %7, align 8, !tbaa !7, !noalias !496
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 55, ptr %i.rg, align 8, !tbaa !12, !noalias !496
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile11mark_brokenENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull dead_on_return %7)
          to label %"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit274" unwind label %.loopexit.split-lp.loopexit.split-lp

"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit274": ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !496
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.thread

.loopexit556:                                     ; preds = %._crit_edge, %bb.cq
  %lpad.loopexit558 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp557:                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.di:                                            ; preds = %bb.ct
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  br label %.loopexit.split-lp

.loopexit555:                                     ; preds = %bb.dk, %bb.dl, %bb.dn, %_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoD2Ev.exit, %bb.dj, %.noexc275, %.noexc276
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.hs, %bb.hp, %bb.fz
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i272
  %lpad.loopexit.split-lp562 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dj:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %26, ptr noundef nonnull align 8 dereferenceable(160) %25, i64 72, i1 false)
  %i.ri = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %.noexc275 unwind label %.loopexit555 ; 0 uses

.noexc275:                                        ; preds = %bb.dj
  %i.rj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, ptr noundef nonnull align 8 dereferenceable(24) %i.kx)
          to label %.noexc276 unwind label %.loopexit555 ; 0 uses

.noexc276:                                        ; preds = %.noexc275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.lo, ptr noundef nonnull align 8 dereferenceable(9) %i.ld, i64 9, i1 false)
  %i.rk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, ptr noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278 unwind label %.loopexit555 ; 0 uses

_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278:  ; preds = %.noexc276
  %i.rl = icmp eq i32 %.0106, 0                   ; 3 uses
  br i1 %i.rl, label %bb.dk, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit

bb.dk:                                            ; preds = %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278
  %i.rm = invoke noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile19find_or_create_specEiRKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(400) %1, i32 noundef %i.oe, ptr noundef nonnull align 8 dereferenceable(160) %26)
          to label %bb.dl unwind label %.loopexit555 ; 12 uses

bb.dl:                                            ; preds = %bb.dk
  %i.rn = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 142
  %i.rp = load i8, ptr %i.ro, align 2, !tbaa !499, !range !368, !noundef !290
  %i.rq = trunc nuw i8 %i.rp to i1
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfo4initERS1_PNS0_9ImageSpecEb(ptr noundef nonnull align 8 dereferenceable(128) %i.nu, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %i.rm, i1 noundef zeroext %i.rq)
          to label %bb.dm unwind label %.loopexit555

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.ny, label %bb.dn, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit

bb.dn:                                            ; preds = %bb.dm
  %i.rr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile19init_texture_formatERKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.rm)
          to label %bb.do unwind label %.loopexit555

bb.do:                                            ; preds = %bb.dn
  br i1 %i.rr, label %bb.dp, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit

bb.dp:                                            ; preds = %bb.do
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rm, i64 36 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !350
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !349 ; 2 uses
  %i.rw = icmp sgt i32 %i.rt, %i.rv
  br i1 %i.rw, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 %i.rv, ptr %i.rs, align 4, !tbaa !350
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rm, i64 40 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !352
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !351 ; 2 uses
  %i.sb = icmp sgt i32 %i.ry, %i.sa
  br i1 %i.sb, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.sa, ptr %i.rx, align 8, !tbaa !352
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rm, i64 44 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !341
  %i.se = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !327 ; 2 uses
  %i.sg = icmp sgt i32 %i.sd, %i.sf
  br i1 %i.sg, label %bb.du, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit

bb.du:                                            ; preds = %bb.dt
  store i32 %i.sf, ptr %i.sc, align 4, !tbaa !341
  br label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit

_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit: ; preds = %bb.du, %bb.dt, %bb.dm, %bb.do, %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278
  %.1105 = phi ptr [ %.0104, %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278 ], [ %i.rm, %bb.do ], [ %i.rm, %bb.dm ], [ %i.rm, %bb.dt ], [ %i.rm, %bb.du ] ; 36 uses
  %.1 = phi i1 [ %.0103, %_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_.exit278 ], [ false, %bb.do ], [ %.0103, %bb.dm ], [ true, %bb.dt ], [ true, %bb.du ] ; 2 uses
  %i.sh = load i32, ptr %i.lq, align 8, !tbaa !379
  %i.si = icmp eq i32 %i.sh, 0
  %i.sj = load i32, ptr %i.lr, align 4
  %i.sk = icmp eq i32 %i.sj, 0
  %or.cond = select i1 %i.si, i1 true, i1 %i.sk
  br i1 %or.cond, label %bb.dv, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge

_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge: ; preds = %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit
  %.pre660 = load i32, ptr %i.lt, align 4, !tbaa !349
  %.pre661 = load i32, ptr %i.lu, align 8
  %.pre662 = load i32, ptr %i.lv, align 4
  br label %bb.ec

bb.dv:                                            ; preds = %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit
  store i8 1, ptr %i.nz, align 8, !tbaa !500
  %i.sl = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 136
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !501 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr @.str.58, ptr %6, align 8, !tbaa !7
  store i64 17, ptr %i.ls, align 8, !tbaa !12
  %i.so = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_19ImageSpec12getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPvb(ptr noundef nonnull align 8 dereferenceable(160) %26, ptr noundef nonnull dead_on_return %6, i64 263, ptr noundef nonnull %i.a, i1 noundef zeroext false)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %.pre.i.sroa.speculate.load.true = load i32, ptr %i.a, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.sp = icmp sgt i32 %.pre.i.sroa.speculate.load.true, 1
  %i.sq = select i1 %i.so, i1 %i.sp, i1 false     ; 2 uses
  br i1 %i.sq, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %.sroa.speculated483 = call i32 @llvm.smax.i32(i32 %i.sn, i32 64)
  %i.sr = add nsw i32 %.sroa.speculated483, -1
  %.0.i281 = add nuw i32 %i.sr, %.pre.i.sroa.speculate.load.true ; 2 uses
  %i.ss = urem i32 %.0.i281, %.pre.i.sroa.speculate.load.true
  %i.st = sub nsw i32 %.0.i281, %i.ss
  store i8 1, ptr %i.oa, align 1, !tbaa !502
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dv
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dw
  %i.sv = icmp ne i32 %i.sn, 0
  %i.sw = zext i1 %i.sv to i8
  store i8 %i.sw, ptr %i.oa, align 1, !tbaa !502
  %.not157 = icmp eq i32 %i.sn, 0
  br i1 %.not157, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %bb.dz
  %.0538804 = phi i32 [ %i.st, %bb.dx ], [ %i.sn, %bb.dz ] ; 3 uses
  %i.sx = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 140
  %i.sz = load i8, ptr %i.sy, align 4, !tbaa !503, !range !368, !noundef !290
  %i.ta = trunc nuw i8 %i.sz to i1
  %or.cond4 = or i1 %i.sq, %i.ta
  %i.tb = load i32, ptr %i.lt, align 4            ; 3 uses
  %.sroa.speculated502 = call i32 @llvm.smin.i32(i32 %.0538804, i32 %i.tb)
  %storemerge = select i1 %or.cond4, i32 %i.tb, i32 %.sroa.speculated502
  store i32 %storemerge, ptr %i.lq, align 8, !tbaa !379
  %i.tc = load i32, ptr %i.lu, align 8, !tbaa !3  ; 2 uses
  %.sroa.speculated499 = call i32 @llvm.smin.i32(i32 %.0538804, i32 %i.tc)
  store i32 %.sroa.speculated499, ptr %i.lr, align 4, !tbaa !380
  %i.td = load i32, ptr %i.lv, align 4, !tbaa !3  ; 2 uses
  %i.te = call i32 @llvm.smax.i32(i32 %i.td, i32 1)
  %.sroa.speculated496 = call i32 @llvm.smin.i32(i32 %.0538804, i32 %i.te)
  store i32 %.sroa.speculated496, ptr %i.lw, align 8, !tbaa !381
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.tf = load i32, ptr %i.lt, align 4, !tbaa !349 ; 2 uses
  store i32 %i.tf, ptr %i.lq, align 8, !tbaa !379
  %i.tg = load i32, ptr %i.lu, align 8, !tbaa !351 ; 2 uses
  store i32 %i.tg, ptr %i.lr, align 4, !tbaa !380
  %i.th = load i32, ptr %i.lv, align 4, !tbaa !327 ; 2 uses
  store i32 %i.th, ptr %i.lw, align 8, !tbaa !381
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge, %bb.ea, %bb.eb
  %i.ti = phi i32 [ %.pre662, %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge ], [ %i.td, %bb.ea ], [ %i.th, %bb.eb ]
  %i.tj = phi i32 [ %.pre661, %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge ], [ %i.tc, %bb.ea ], [ %i.tg, %bb.eb ]
  %i.tk = phi i32 [ %.pre660, %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit._crit_edge ], [ %i.tb, %bb.ea ], [ %i.tf, %bb.eb ]
  %i.tl = icmp sgt i32 %i.tk, %i.nx
  %i.tm = icmp sgt i32 %i.tj, %i.nx
  %or.cond185 = select i1 %i.tl, i1 true, i1 %i.tm
  %i.tn = icmp sgt i32 %i.ti, %i.nx
  %or.cond188 = select i1 %or.cond185, i1 true, i1 %i.tn
  br i1 %or.cond188, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.to = add nuw nsw i32 %.0106, 1
  store i32 %i.to, ptr %i.ob, align 4, !tbaa !504
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %i.tp = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %26, i1 noundef zeroext false) #5
  %i.tq = load i64, ptr %i.ko, align 8, !tbaa !491
  %i.tr = add i64 %i.tq, %i.tp
  store i64 %i.tr, ptr %i.ko, align 8, !tbaa !491
  br i1 %i.rl, label %bb.en, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ts = load i32, ptr %i.lx, align 4, !tbaa !359
  %i.tt = getelementptr inbounds nuw i8, ptr %.1105, i64 60
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !359
  %.not159 = icmp eq i32 %i.ts, %i.tu
  br i1 %.not159, label %bb.en, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr null, ptr %15, align 16, !tbaa !297, !noalias !505
  %i.tv = load ptr, ptr %i.e, align 8, !tbaa !258, !noalias !505 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !258, !noalias !505
  %.not.i.i.i.i286 = icmp eq ptr %i.tv, null
  br i1 %.not.i.i.i.i286, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 4 uses
  %i.tx = load atomic i64, ptr %i.tw acquire, align 8, !noalias !505 ; 2 uses
  %i.ty = icmp eq i64 %i.tx, 4294967297
  %i.tz = trunc i64 %i.tx to i32                  ; 2 uses
  br i1 %i.ty, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i32 0, ptr %i.tw, align 8, !tbaa !259, !noalias !505
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 12
  store i32 0, ptr %i.ua, align 4, !tbaa !261, !noalias !505
  %i.ub = load ptr, ptr %i.tv, align 8, !tbaa !262, !noalias !505
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !noalias !505
  call void %i.ud(ptr noundef nonnull align 8 dereferenceable(16) %i.tv) #5, !noalias !505, !inline_history !476
  %i.ue = load ptr, ptr %i.tv, align 8, !tbaa !262, !noalias !505
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.ug = load ptr, ptr %i.uf, align 8, !noalias !505
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(16) %i.tv) #5, !noalias !505, !inline_history !476
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290

bb.ej:                                            ; preds = %bb.eh
  %i.uh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !505
  %.not.i.i.i.i.i287 = icmp eq i8 %i.uh, 0
  br i1 %.not.i.i.i.i.i287, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ui = add nsw i32 %i.tz, -1
  store i32 %i.ui, ptr %i.tw, align 8, !tbaa !3, !noalias !505
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i288

bb.el:                                            ; preds = %bb.ej
  %i.uj = atomicrmw volatile add ptr %i.tw, i32 -1 acq_rel, align 4, !noalias !505
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i288

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i288: ; preds = %bb.el, %bb.ek
  %.0.i.i.i.i.i.i289 = phi i32 [ %i.tz, %bb.ek ], [ %i.uj, %bb.el ]
  %i.uk = icmp eq i32 %.0.i.i.i.i.i.i289, 1
  br i1 %i.uk, label %bb.em, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290, !prof !190

bb.em:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i288
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tv) #5, !noalias !505
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290: ; preds = %bb.em, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i288, %bb.ei, %bb.eg
  store ptr @.str.59, ptr %5, align 8, !tbaa !7, !noalias !505
  %i.ul = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 52, ptr %i.ul, align 8, !tbaa !12, !noalias !505
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile11mark_brokenENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull dead_on_return %5)
          to label %"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit292" unwind label %.loopexit.split-lp.loopexit.split-lp

"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit292": ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !505
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread

bb.en:                                            ; preds = %bb.ef, %bb.ee
  %i.um = load ptr, ptr %i.lm, align 8, !tbaa !189 ; 2 uses
  %i.un = load ptr, ptr %i.ly, align 8, !tbaa !186
  %.not.i.i293 = icmp eq ptr %i.un, %i.um
  br i1 %.not.i.i293, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.en
  store ptr %i.um, ptr %i.ly, align 8, !tbaa !186
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit: ; preds = %bb.en, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i
  br i1 %.1, label %bb.eo, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit294

bb.eo:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.uo = load i32, ptr %i.lz, align 4, !tbaa !350
  %i.up = load i32, ptr %i.lt, align 4, !tbaa !349 ; 2 uses
  %i.uq = icmp sgt i32 %i.uo, %i.up
  br i1 %i.uq, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i32 %i.up, ptr %i.lz, align 4, !tbaa !350
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.ur = load i32, ptr %i.ma, align 8, !tbaa !352
  %i.us = load i32, ptr %i.lu, align 8, !tbaa !351 ; 2 uses
  %i.ut = icmp sgt i32 %i.ur, %i.us
  br i1 %i.ut, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 %i.us, ptr %i.ma, align 8, !tbaa !352
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.uu = load i32, ptr %i.mb, align 4, !tbaa !341
  %i.uv = load i32, ptr %i.lv, align 4, !tbaa !327 ; 2 uses
  %i.uw = icmp sgt i32 %i.uu, %i.uv
  br i1 %i.uw, label %bb.et, label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit294

bb.et:                                            ; preds = %bb.es
  store i32 %i.uv, ptr %i.mb, align 4, !tbaa !341
  br label %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit294

_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit294: ; preds = %bb.et, %bb.es, %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE5clearEv.exit
  %i.ux = load i32, ptr %.1105, align 8, !tbaa !343
  %i.uy = load i32, ptr %26, align 8, !tbaa !343
  %i.uz = icmp eq i32 %i.ux, %i.uy
  br i1 %i.uz, label %bb.eu, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.eu:                                            ; preds = %_ZN11OpenImageIO4v3_116clamp_dimensionsERNS0_9ImageSpecE.exit294
  %i.va = getelementptr inbounds nuw i8, ptr %.1105, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !346
  %i.vc = load i32, ptr %i.mc, align 4, !tbaa !346
  %i.vd = icmp eq i32 %i.vb, %i.vc
  br i1 %i.vd, label %bb.ev, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.ve = getelementptr inbounds nuw i8, ptr %.1105, i64 8
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !347
  %i.vg = load i32, ptr %i.md, align 8, !tbaa !347
  %i.vh = icmp eq i32 %i.vf, %i.vg
  br i1 %i.vh, label %bb.ew, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.vi = getelementptr inbounds nuw i8, ptr %.1105, i64 12
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !349
  %i.vk = load i32, ptr %i.lt, align 4, !tbaa !349
  %i.vl = icmp eq i32 %i.vj, %i.vk
  br i1 %i.vl, label %bb.ex, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.vm = getelementptr inbounds nuw i8, ptr %.1105, i64 16
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !351
  %i.vo = load i32, ptr %i.lu, align 8, !tbaa !351
  %i.vp = icmp eq i32 %i.vn, %i.vo
  br i1 %i.vp, label %bb.ey, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ey:                                            ; preds = %bb.ex
  %i.vq = getelementptr inbounds nuw i8, ptr %.1105, i64 20
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !327
  %i.vs = load i32, ptr %i.lv, align 4, !tbaa !327
  %i.vt = icmp eq i32 %i.vr, %i.vs
  br i1 %i.vt, label %bb.ez, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ez:                                            ; preds = %bb.ey
  %i.vu = getelementptr inbounds nuw i8, ptr %.1105, i64 24
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !344
  %i.vw = load i32, ptr %i.me, align 8, !tbaa !344
  %i.vx = icmp eq i32 %i.vv, %i.vw
  br i1 %i.vx, label %bb.fa, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.fa:                                            ; preds = %bb.ez
  %i.vy = getelementptr inbounds nuw i8, ptr %.1105, i64 28
end_hunk_0
