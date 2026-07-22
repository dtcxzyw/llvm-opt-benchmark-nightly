inline.NumInlined: 2636
inline.NumDeleted: 1243
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEE:bb.a
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !205 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 40                ; 3 uses
  %i.ch = icmp ugt i64 %.pre-phi171, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = sub nuw nsw i64 %.pre-phi171, %i.cg
  invoke void @_ZNSt6vectorIS_IbSaIbEESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr %i.cb, i64 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit unwind label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.cj = icmp ult i64 %.pre-phi171, %i.cg
  br i1 %i.cj, label %bb.y, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %.pre-phi171 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.cb, %i.ck
  br i1 %.not.i.i55, label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit, label %.lr.ph.i.i.i.i56

.lr.ph.i.i.i.i56:                                 ; preds = %bb.y, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i57 = phi ptr [ %i.cu, %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i ], [ %i.ck, %bb.y ] ; 3 uses
  %i.cl = load ptr, ptr %.05.i.i.i.i57, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i56
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i57, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !209 ; 2 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cs
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cq) #25
  br label %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i56
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i57, i64 40 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.cu, %i.cb
  br i1 %.not.i.i.i.i59, label %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i56, !llvm.loop !212

_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIbSaIbEEEvPT_.exit.i.i.i.i
  store ptr %i.ck, ptr %i.ca, align 8, !tbaa !206
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIbSaIbEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.y, %bb.x, %bb.w
  %i.cv = load ptr, ptr %13, align 8, !tbaa !207  ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i61, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !209 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.db
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.cz) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIS_IbSaIbEESaIS1_EE6resizeEmRKS1_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.pre162 = load ptr, ptr %i.h, align 8, !tbaa !200
  br label %bb.af

bb.ab:                                            ; preds = %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit144

bb.ac:                                            ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit144

bb.ad:                                            ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %13, align 8, !tbaa !207  ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i62, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit63, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %i.by, align 8, !tbaa !209 ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 3
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dk) #25
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit63

_ZNSt13_Bvector_baseISaIbEED2Ev.exit63:           ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit144

bb.af:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.do = phi ptr [ %.pre162, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ], [ %i.k, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit ]
  %i.dp = load ptr, ptr %3, align 8, !tbaa !228   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !231 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !200 ; 2 uses
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %1 ; 2 uses
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !234
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !234
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !53 ; 4 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i.i64, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not7.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i65 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i.i65, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ee = atomicrmw volatile add ptr %i.ea, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.dw, align 8, !tbaa !53
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ef = phi ptr [ %i.dz, %bb.ag ], [ %i.dz, %bb.ai ], [ %.pr.pre.i.i.i, %bb.aj ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.eg, align 8, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !56
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !57
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !237
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23, !inline_history !237
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i9.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i9.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i = phi i32 [ %i.ej, %bb.an ], [ %i.et, %bb.ao ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !60

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.dy, ptr %i.dw, align 8, !tbaa !53
  %.pre163 = load ptr, ptr %3, align 8, !tbaa !228 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre163, i64 8
  %.pre164 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !231
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit:  ; preds = %bb.af, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ev = phi ptr [ %i.dr, %bb.af ], [ %.pre164, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 7 uses
  %i.ew = phi ptr [ %i.dp, %bb.af ], [ %.pre163, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !238 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !116
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %1
  store i64 %i.ez, ptr %i.fc, align 8, !tbaa !50
  %i.fd = load ptr, ptr %i.ev, align 8, !tbaa !7  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !13
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.aq, label %bb.cl

bb.aq:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !67
  invoke void @_ZN5arrow14AllocateBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %14, i64 noundef %i.ez, ptr noundef %i.fi)
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load ptr, ptr %14, align 8, !tbaa !36   ; 6 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fm = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !52, !noalias !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !53 ; 8 uses
  store <2 x ptr> %i.fm, ptr %i.fo, align 8, !tbaa !52
  %.not.i.i.i.i67 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i67, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fr, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !56
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !57
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #23, !inline_history !259
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !57
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #23, !inline_history !259
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

bb.av:                                            ; preds = %bb.at
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i = phi i32 [ %i.fu, %bb.aw ], [ %i.ge, %bb.ax ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gf, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72, !prof !60

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #23
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.au, %bb.as
  %i.gg = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %1
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !234 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 9
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !260, !range !268, !noundef !269
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = load i8, ptr %i.gm, align 8, !range !268
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = select i1 %i.gl, i1 %i.go, i1 false, !prof !270
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = select i1 %i.gp, ptr %i.gr, ptr null, !prof !270
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !271
  call void @llvm.memset.p0.i64(ptr align 1 %i.gs, i8 0, i64 %i.gu, i1 false)
  br label %bb.cb

bb.az:                                            ; preds = %bb.aq
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ba:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %.noexc74 unwind label %bb.bx  ; 9 uses

.noexc74:                                         ; preds = %bb.ba
  %i.gx = load i8, ptr %i.fj, align 8, !tbaa !272
  store i8 %i.gx, ptr %i.gw, align 8, !tbaa !272
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 3 uses
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !43
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !46 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.hd, ptr %i.d, align 8, !tbaa !50
  %i.he = icmp ugt i64 %i.hd, 15
  br i1 %i.he, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc74
  %i.hf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.bg  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.hf, ptr %i.gy, align 8, !tbaa !46
  %i.hg = load i64, ptr %i.d, align 8, !tbaa !50
  store i64 %i.hg, ptr %i.ha, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc74
  %i.hh = phi ptr [ %i.hf, %.noexc.i ], [ %i.ha, %.noexc74 ] ; 2 uses
  switch i64 %i.hd, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hi = load i8, ptr %i.hb, align 1, !tbaa !51
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.hb, i64 %i.hd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i.i
  %i.hj = load i64, ptr %i.d, align 8, !tbaa !50  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !49
  %i.hl = load ptr, ptr %i.gy, align 8, !tbaa !46
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hj
  store i8 0, ptr %i.hm, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !53 ; 2 uses
  %i.hs = load <2 x ptr>, ptr %i.ho, align 8, !tbaa !52
  store <2 x ptr> %i.hs, ptr %i.hn, align 8, !tbaa !52
  %.not.i.i.i.i.i73 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i73, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !3
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !3
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.hx = atomicrmw volatile add ptr %i.ht, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc.i.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef 56) #25
  br label %bb.cj

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.be, %bb.bf
  store ptr %i.gw, ptr %15, align 8, !tbaa !36
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !278 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ib = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24
          to label %.noexc81 unwind label %bb.by  ; 8 uses

.noexc81:                                         ; preds = %bb.bh
  %i.ic = load i8, ptr %i.gw, align 8, !tbaa !272
  store i8 %i.ic, ptr %i.ib, align 8, !tbaa !272
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 3 uses
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !43
  %i.if = load ptr, ptr %i.gy, align 8, !tbaa !46 ; 2 uses
  %i.ig = load i64, ptr %i.hk, align 8, !tbaa !49 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.ig, ptr %i.c, align 8, !tbaa !50
  %i.ih = icmp ugt i64 %i.ig, 15
  br i1 %i.ih, label %.noexc.i.i.i79, label %._crit_edge.i.i.i.i75

.noexc.i.i.i79:                                   ; preds = %.noexc81
  %i.ii = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc.i80 unwind label %bb.bn ; 2 uses

.noexc.i80:                                       ; preds = %.noexc.i.i.i79
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !46
end_hunk_0
begin_hunk_1_@_ZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEE:bb.a
  %.not.i.i88 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i88, label %_ZZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEEENUlvE_D2Ev.exit, label %bb.bv, !prof !270

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEEENUlvE_D2Ev.exit

_ZZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEEENUlvE_D2Ev.exit: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.jq = load ptr, ptr %15, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.jq, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bw, !prof !270

bb.bw:                                            ; preds = %_ZZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEEENUlvE_D2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZZN5arrow4json12_GLOBAL__N_125ChunkedStructArrayBuilder6InsertElRKSt10shared_ptrINS_5FieldEERKS3_INS_5ArrayEEENUlvE_D2Ev.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.cb

bb.bx:                                            ; preds = %bb.ba
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.by:                                            ; preds = %bb.bh
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body82

.body86:                                          ; preds = %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit8.i, %bb.bt
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.jk, %_ZN5arrow8internal6FnOnceIFNS_6StatusEvEED2Ev.exit8.i ], [ %.pn.i153, %bb.bt ] ; 2 uses
  %i.jt = load ptr, ptr %16, align 8, !tbaa !36
  %.not.i.i89 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i89, label %.body82, label %bb.bz, !prof !270

bb.bz:                                            ; preds = %.body86
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %.body82

.body82:                                          ; preds = %bb.bz, %.body86, %bb.by, %bb.bn
  %.pn44 = phi { ptr, i32 } [ %i.iy, %bb.bn ], [ %i.js, %bb.by ], [ %eh.lpad-body87, %.body86 ], [ %eh.lpad-body87, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ju = load ptr, ptr %15, align 8, !tbaa !36
  %.not.i91 = icmp eq ptr %i.ju, null
  br i1 %.not.i91, label %bb.cj, label %bb.ca, !prof !270

bb.ca:                                            ; preds = %.body82
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %bb.cj

bb.cb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit72
  %i.jv = load ptr, ptr %14, align 8, !tbaa !36
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.cc, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !270

bb.cc:                                            ; preds = %bb.cb
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i93, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.jz, align 8, !tbaa !54
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !56
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !57
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23, !inline_history !283
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !57
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23, !inline_history !283
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i94 = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i.i.i94, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kc, %bb.cg ], [ %i.km, %bb.ch ]
  %i.kn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kn, label %bb.ci, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !60

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ce, %bb.cc
  %.pr.i95 = load ptr, ptr %14, align 8, !tbaa !36
  %.not.i.i96 = icmp eq ptr %.pr.i95, null
  br i1 %.not.i.i96, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !282

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.cb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.cj:                                            ; preds = %bb.bg, %bb.bx, %.body82, %bb.ca
  %.pn44.pn = phi { ptr, i32 } [ %i.hy, %bb.bg ], [ %i.jr, %bb.bx ], [ %.pn44, %.body82 ], [ %.pn44, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #23
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.az
  %.pn47.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.cj ], [ %i.gv, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit144

bb.cl:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !105
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.preheader, label %bb.cq

.preheader:                                       ; preds = %bb.cl
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !284
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !285
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = lshr exact i64 %i.kx, 4
  %i.kz = trunc i64 %i.ky to i32
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.lr.ph:                                           ; preds = %.preheader
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.cn

bb.cm:                                            ; preds = %bb.co, %bb.cn
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit144

bb.cn:                                            ; preds = %.lr.ph, %bb.cp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cp ] ; 4 uses
  %i.ld = phi ptr [ %i.ev, %.lr.ph ], [ %i.ls, %bb.cp ]
  %i.le = load ptr, ptr %i.lb, align 8, !tbaa !214
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %indvars.iv
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !113 ; 2 uses
  %i.lh = load ptr, ptr %i.ld, align 8, !tbaa !7
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !125
  %i.lk = trunc nuw nsw i64 %indvars.iv to i32
  %i.ll = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow11StructArray5fieldEi(ptr noundef nonnull align 8 dereferenceable(56) %i.ew, i32 noundef %i.lk)
          to label %bb.co unwind label %bb.cm

bb.co:                                            ; preds = %bb.cn
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %indvars.iv
  %i.ln = load ptr, ptr %i.lg, align 8, !tbaa !57
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.ll)
          to label %bb.cp unwind label %bb.cm

bb.cp:                                            ; preds = %bb.co
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lq = load ptr, ptr %3, align 8, !tbaa !228
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !231 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !284
  %i.lw = load ptr, ptr %i.lt, align 8, !tbaa !285
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %sext = shl i64 %i.lz, 28
  %i.ma = ashr i64 %sext, 32
  %i.mb = icmp slt i64 %indvars.iv.next, %i.ma
  br i1 %i.mb, label %bb.cn, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, !llvm.loop !286

bb.cq:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !284, !noalias !287
  %i.mg = load ptr, ptr %i.md, align 8, !tbaa !285, !noalias !287
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = lshr exact i64 %i.mj, 4
  %i.ml = trunc i64 %i.mk to i32
  %.not75.i = icmp sgt i32 %i.ml, 0
  br i1 %.not75.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit141

.lr.ph.i:                                         ; preds = %bb.cq
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ms = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 6 uses
  %i.mx = load ptr, ptr %i.mc, align 8, !tbaa !125, !noalias !287
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %indvars.iv.i
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !30, !noalias !287
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %i.na)
          to label %.noexc104 unwind label %bb.fd, !inline_history !290 ; 2 uses

.noexc104:                                        ; preds = %bb.cr
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.cs, label %bb.dm

bb.cs:                                            ; preds = %.noexc104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !287
  %i.nd = load ptr, ptr %i.ko, align 8, !tbaa !105, !noalias !287 ; 2 uses
  %i.ne = load ptr, ptr %i.mc, align 8, !tbaa !125, !noalias !287
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %indvars.iv.i
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !57, !noalias !287
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !287
  invoke void %i.ni(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr noundef nonnull align 8 dereferenceable(16) %i.nf)
          to label %.noexc105 unwind label %bb.fd, !inline_history !290

.noexc105:                                        ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !287
  %i.nj = load i64, ptr %i.mn, align 8, !tbaa !109, !noalias !287
  %i.nk = trunc i64 %i.nj to i32
  store i32 %i.nk, ptr %i.b, align 4, !tbaa !3, !noalias !287
  %i.nl = load ptr, ptr %i.mc, align 8, !tbaa !125, !noalias !287
  %i.nm = getelementptr inbounds nuw [16 x i8], ptr %i.nl, i64 %indvars.iv.i
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !30, !noalias !287
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS7_RiEEES6_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %i.no, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE7emplaceIJRSB_RiEEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit.i unwind label %bb.ct, !noalias !287, !inline_history !290

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE7emplaceIJRSB_RiEEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit.i: ; preds = %.noexc105
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.np, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false), !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !287
  %i.nq = load ptr, ptr %i.mp, align 8, !tbaa !67, !noalias !287
  %i.nr = load ptr, ptr %i.ko, align 8, !tbaa !105, !noalias !287
  invoke fastcc void @_ZN5arrow4json12_GLOBAL__N_123MakeChunkedArrayBuilderERKSt10shared_ptrINS_8internal9TaskGroupEEPNS_10MemoryPoolEPKNS0_14PromotionGraphERKS2_INS_8DataTypeEEbPS2_INS0_19ChunkedArrayBuilderEE(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.mo, ptr noundef %i.nq, ptr noundef %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true, ptr noundef nonnull %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.cu, !noalias !287, !inline_history !290

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE7emplaceIJRSB_RiEEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.ns = load ptr, ptr %8, align 8, !tbaa !36, !noalias !294 ; 2 uses
  store ptr %i.ns, ptr %17, align 8, !tbaa !36, !alias.scope !294
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !287
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %_ZN5arrow6StatusD2Ev.exit49.i, label %.critedge43.i

bb.ct:                                            ; preds = %.noexc105
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cu:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE7emplaceIJRSB_RiEEESA_INSt8__detail14_Node_iteratorISC_Lb0ELb1EEEbEDpOT_.exit.i
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !287
  br label %bb.dk

_ZN5arrow6StatusD2Ev.exit49.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.nw = load ptr, ptr %i.mq, align 8, !tbaa !111, !noalias !287 ; 5 uses
  %i.nx = load ptr, ptr %i.mr, align 8, !tbaa !112, !noalias !287
  %.not.i50.i = icmp eq ptr %i.nw, %i.nx
  br i1 %.not.i50.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit49.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr null, ptr %i.ny, align 8, !tbaa !53, !noalias !287
  %i.nz = load <2 x ptr>, ptr %7, align 16, !tbaa !52, !noalias !287
  store ptr null, ptr %i.ms, align 8, !tbaa !53, !noalias !287
  store <2 x ptr> %i.nz, ptr %i.nw, align 8, !tbaa !52, !noalias !287
  store ptr null, ptr %7, align 16, !tbaa !113, !noalias !287
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store ptr %i.oa, ptr %i.mq, align 8, !tbaa !111, !noalias !287
  br label %.critedge.i

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit49.i
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow4json19ChunkedArrayBuilderEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mt, ptr %i.nw, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.critedge.i unwind label %bb.dj, !noalias !287, !inline_history !290

.critedge.i:                                      ; preds = %bb.cw, %bb.cv
  %i.ob = load ptr, ptr %i.ms, align 8, !tbaa !53, !noalias !287 ; 8 uses
  %.not.i.i.i100 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i100, label %_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cx

bb.cx:                                            ; preds = %.critedge.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8 ; 4 uses
  %i.od = load atomic i64, ptr %i.oc acquire, align 8, !noalias !287 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 4294967297
  %i.of = trunc i64 %i.od to i32                  ; 2 uses
  br i1 %i.oe, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.oc, align 8, !tbaa !54, !noalias !287
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  store i32 0, ptr %i.og, align 4, !tbaa !56, !noalias !287
  %i.oh = load ptr, ptr %i.ob, align 8, !tbaa !57, !noalias !287
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !287
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #23, !noalias !287, !inline_history !295
  %i.ok = load ptr, ptr %i.ob, align 8, !tbaa !57, !noalias !287
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !287
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #23, !noalias !287, !inline_history !295
  br label %_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.on = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51, !noalias !287
  %.not.i.i.i.i101 = icmp eq i8 %i.on, 0
  br i1 %.not.i.i.i.i101, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oo = add nsw i32 %i.of, -1
  store i32 %i.oo, ptr %i.oc, align 8, !tbaa !3, !noalias !287
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102

bb.db:                                            ; preds = %bb.cz
  %i.op = atomicrmw volatile add ptr %i.oc, i32 -1 acq_rel, align 4, !noalias !287
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i.i103 = phi i32 [ %i.of, %bb.da ], [ %i.op, %bb.db ]
  %i.oq = icmp eq i32 %.0.i.i.i.i.i103, 1
  br i1 %i.oq, label %bb.dc, label %_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !60

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ob) #23, !noalias !287, !inline_history !290
  br label %_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i102, %bb.cy, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !287
  %i.or = load ptr, ptr %i.mu, align 8, !tbaa !53, !noalias !287 ; 8 uses
  %.not.i.i51.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i51.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow4json19ChunkedArrayBuilderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 4 uses
  %i.ot = load atomic i64, ptr %i.os acquire, align 8, !noalias !287 ; 2 uses
  %i.ou = icmp eq i64 %i.ot, 4294967297
  %i.ov = trunc i64 %i.ot to i32                  ; 2 uses
  br i1 %i.ou, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.os, align 8, !tbaa !54, !noalias !287
  %i.ow = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  store i32 0, ptr %i.ow, align 4, !tbaa !56, !noalias !287
  %i.ox = load ptr, ptr %i.or, align 8, !tbaa !57, !noalias !287
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !noalias !287
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.or) #23, !noalias !287, !inline_history !296
  %i.pa = load ptr, ptr %i.or, align 8, !tbaa !57, !noalias !287
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !287
  call void %i.pc(ptr noundef nonnull align 8 dereferenceable(16) %i.or) #23, !noalias !287, !inline_history !296
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.pd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51, !noalias !287
  %.not.i.i.i52.i = icmp eq i8 %i.pd, 0
  br i1 %.not.i.i.i52.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pe = add nsw i32 %i.ov, -1
  store i32 %i.pe, ptr %i.os, align 8, !tbaa !3, !noalias !287
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53.i

bb.dh:                                            ; preds = %bb.df
end_hunk_1
