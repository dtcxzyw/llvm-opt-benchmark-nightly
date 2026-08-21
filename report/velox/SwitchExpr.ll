Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SwitchExpr?download=true
inline.NumInlined: 1674
inline.NumDeleted: 904
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEbRS9_:bb.a
bb.z:                                             ; preds = %.lr.ph.split.us
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !13
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(18) %i.ci, ptr noundef nonnull align 8 dereferenceable(18) %i.cj)
          to label %bb.aa unwind label %.split227.us

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cn, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = invoke i64 @_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ac unwind label %.split233.us

bb.ac:                                            ; preds = %bb.ab
  %i.cp = and i64 %i.co, 4294967296
  %.not214.us = icmp eq i64 %i.cp, 0
  br i1 %.not214.us, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %3, align 8, !tbaa !112
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cd ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !10  ; 4 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.i97.us = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i.i97.us, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not7.i.i.i.us = icmp eq ptr %i.cu, null
  br i1 %.not7.i.i.i.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i98.us = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i.i98.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !23
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us

bb.ah:                                            ; preds = %bb.af
  %i.da = atomicrmw volatile add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.us = load ptr, ptr %i.ct, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us: ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.db = phi ptr [ %i.cv, %bb.ae ], [ %i.cv, %bb.ag ], [ %.pr.pre.i.i.i.us, %bb.ah ] ; 8 uses
  %.not8.i.i.i.us = icmp eq ptr %i.db, null
  br i1 %.not8.i.i.i.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i.us = icmp eq i8 %i.dg, 0
  br i1 %.not.i9.i.i.i.us, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.dc, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.us

bb.al:                                            ; preds = %bb.aj
  %i.di = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.us

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.us: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.us = phi i32 [ %i.df, %bb.ak ], [ %i.di, %bb.al ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.us, 1
  br i1 %i.dj, label %bb.am, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us, !prof !21

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.us
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us

bb.an:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dc, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !35
  %i.dl = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24, !inline_history !369
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24, !inline_history !369
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us: ; preds = %bb.an, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.us, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.us
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us

bb.ao:                                            ; preds = %bb.ac
  %i.dr = invoke i64 @_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ce)
          to label %bb.ap unwind label %.split236.us

bb.ap:                                            ; preds = %bb.ao
  %i.ds = and i64 %i.dr, 4294967296
  %.not215.us = icmp eq i64 %i.ds, 0
  br i1 %.not215.us, label %.split230.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dt = load ptr, ptr %i.ce, align 8, !tbaa !13
  store ptr %i.dt, ptr %0, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10 ; 4 uses
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !10  ; 3 uses
  %.not.i.i.i99.us = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i.i99.us, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit109.us, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not7.i.i.i100.us = icmp eq ptr %i.dv, null
  br i1 %.not7.i.i.i100.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i101.us = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i101.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !23
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us

bb.au:                                            ; preds = %bb.as
  %i.eb = atomicrmw volatile add ptr %i.dx, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i108.us = load ptr, ptr %i.u, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us: ; preds = %bb.au, %bb.at, %bb.ar
  %i.ec = phi ptr [ %i.dw, %bb.ar ], [ %i.dw, %bb.at ], [ %.pr.pre.i.i.i108.us, %bb.au ] ; 8 uses
  %.not8.i.i.i103.us = icmp eq ptr %i.ec, null
  br i1 %.not8.i.i.i103.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us, label %bb.av

bb.av:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 4 uses
  %i.ee = load atomic i64, ptr %i.ed acquire, align 8 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 4294967297
  %i.eg = trunc i64 %i.ee to i32                  ; 2 uses
  br i1 %i.ef, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i104.us = icmp eq i8 %i.eh, 0
  br i1 %.not.i9.i.i.i104.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.ed, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i105.us

bb.ay:                                            ; preds = %bb.aw
  %i.ej = atomicrmw volatile add ptr %i.ed, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i105.us

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i105.us: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i106.us = phi i32 [ %i.eg, %bb.ax ], [ %i.ej, %bb.ay ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i106.us, 1
  br i1 %i.ek, label %bb.az, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us, !prof !21

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i105.us
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us

bb.ba:                                            ; preds = %bb.av
  store i32 0, ptr %i.ed, align 8, !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !35
  %i.em = load ptr, ptr %i.ec, align 8, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  tail call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #24, !inline_history !369
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #24, !inline_history !369
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us: ; preds = %bb.ba, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i105.us, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i102.us
  store ptr %i.dv, ptr %i.u, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit109.us

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit109.us: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i107.us, %bb.aq
  %.not1.i.us = icmp eq i64 %indvars.iv264, 0
  br i1 %.not1.i.us, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit109.us
  %16 = add nsw i64 %i.ca, -1
  br label %.lr.ph.i.us.a

.lr.ph.i.us.a:                                    ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us ] ; 2 uses
  %i.es = load ptr, ptr %3, align 8, !tbaa !112
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv.i.us ; 2 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.ew = load ptr, ptr %i.u, align 8, !tbaa !10  ; 4 uses
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.i.i110.us = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i.i.i110.us, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.us.a
  %.not7.i.i.i.i.us = icmp eq ptr %i.ew, null
  br i1 %.not7.i.i.i.i.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.us = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i.us, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !23
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us

bb.be:                                            ; preds = %bb.bc
  %i.fc = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.us = load ptr, ptr %i.ev, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us: ; preds = %bb.be, %bb.bd, %bb.bb
  %i.fd = phi ptr [ %i.ex, %bb.bb ], [ %i.ex, %bb.bd ], [ %.pr.pre.i.i.i.i.us, %bb.be ] ; 8 uses
  %.not8.i.i.i.i.us = icmp eq ptr %i.fd, null
  br i1 %.not8.i.i.i.i.us, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.ff = load atomic i64, ptr %i.fe acquire, align 8 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 4294967297
  %i.fh = trunc i64 %i.ff to i32                  ; 2 uses
  br i1 %i.fg, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i.i.us = icmp eq i8 %i.fi, 0
  br i1 %.not.i9.i.i.i.i.us, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.fe, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.us

bb.bi:                                            ; preds = %bb.bg
  %i.fk = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.us

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.us: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.us = phi i32 [ %i.fh, %bb.bh ], [ %i.fk, %bb.bi ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i.us, 1
  br i1 %i.fl, label %bb.bj, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us, !prof !21

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.us
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us

bb.bk:                                            ; preds = %bb.bf
  store i32 0, ptr %i.fe, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fm, align 4, !tbaa !35
  %i.fn = load ptr, ptr %i.fd, align 8, !tbaa !36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  tail call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #24, !inline_history !370
  %i.fq = load ptr, ptr %i.fd, align 8, !tbaa !36
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  tail call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #24, !inline_history !370
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us: ; preds = %bb.bk, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.us, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.us
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.us, %.lr.ph.i.us.a
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %17 = icmp samesign ugt i64 %indvars.iv.next.i.us, %16
  br i1 %17, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us, label %.lr.ph.i.us.a, !llvm.loop !371

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i.us, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit109.us, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.us, %bb.ad, %bb.aa
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next265, %i.s
  br i1 %exitcond267.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !372

.split227.us:                                     ; preds = %bb.z
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.split233.us:                                     ; preds = %bb.ab
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.split236.us:                                     ; preds = %bb.ao
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.us, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE6resizeEm.exit.thread, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE6resizeEm.exit
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !115 ; 3 uses
  %i.fx = load ptr, ptr %1, align 8, !tbaa !112
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = and i64 %i.ga, 16
  %.not = icmp eq i64 %i.gb, 0
  br i1 %.not, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137, label %bb.bz

.lr.ph.split:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE6resizeEm.exit.thread, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit ], [ 0, %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EE6resizeEm.exit.thread ] ; 2 uses
  %i.gc = load ptr, ptr %1, align 8, !tbaa !112
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !272 ; 2 uses
  %.not68 = icmp eq i8 %i.gh, 0
  br i1 %.not68, label %bb.bp, label %.split.us, !prof !125

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.gi = phi i8 [ %i.ch, %.lr.ph.split.us ], [ %i.gh, %.lr.ph.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 %i.gi, ptr %i.a, align 1, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i8 0, ptr %i.b, align 1, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !374
  store ptr %i.a, ptr %6, align 16, !tbaa !22, !noalias !374
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.gj, align 8, !tbaa !22, !noalias !374
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.gk, align 16, !tbaa !22, !noalias !374
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.gl, align 8, !tbaa !22, !noalias !374
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.37, i64 54, i64 255, ptr nonnull %6)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEbRS9_E18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.37) #22
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %.split.us
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bo:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bo
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !22
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.bn
  %.pn74 = phi { ptr, i32 } [ %i.gn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.gm, %bb.bn ], [ %i.gn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.dy

bb.bp:                                            ; preds = %.lr.ph.split
  %i.gt = load ptr, ptr %i.ge, align 8, !tbaa !13 ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !13
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = invoke noundef zeroext i1 %i.gx(ptr noundef nonnull align 8 dereferenceable(18) %i.gt, ptr noundef nonnull align 8 dereferenceable(18) %i.gu)
          to label %bb.bq unwind label %.split227

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.gy, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, label %.split230.us

.split227:                                        ; preds = %bb.bp
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.split230.us:                                     ; preds = %bb.bq, %bb.ap
  %.us-phi231 = phi ptr [ %i.ce, %bb.ap ], [ %i.ge, %bb.bq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ha = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !36
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  %i.hd = load ptr, ptr %i.hc, align 8
  invoke void %i.hd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(18) %i.ha)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %.split230.us
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.he = load ptr, ptr %.us-phi231, align 8, !tbaa !13 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !36
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(18) %i.he)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !377
  %i.hi = load ptr, ptr %11, align 8, !tbaa !32, !noalias !377
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29, !noalias !377
  store ptr %i.hi, ptr %5, align 16, !tbaa !22, !noalias !377
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !22, !noalias !377
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hn = load ptr, ptr %12, align 8, !tbaa !32, !noalias !377
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !29, !noalias !377
  store ptr %i.hn, ptr %i.hm, align 16, !tbaa !22, !noalias !377
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !22, !noalias !377
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.38, i64 88, i64 221, ptr nonnull %5)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !377
  %i.hr = load ptr, ptr %12, align 8, !tbaa !32   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bt
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !22
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.hw = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !22
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEbRS9_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.38) #22
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  unreachable

bb.bv:                                            ; preds = %.split230.us
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.bw:                                            ; preds = %bb.br
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.bx:                                            ; preds = %bb.bs
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %12, align 8, !tbaa !32   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEbRS9_:bb.a
  %i.jb = invoke i64 @_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cd unwind label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.jc = and i64 %i.jb, 4294967296
  %.not212 = icmp eq i64 %i.jc, 0
  br i1 %.not212, label %bb.cr, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !380 ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -16
  %i.jg = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !13
  %i.jh = getelementptr inbounds i8, ptr %i.je, i64 -8 ; 3 uses
  %i.ji = load ptr, ptr %i.u, align 8, !tbaa !10  ; 4 uses
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.ji, %i.jj
  br i1 %.not.i.i.i127, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not7.i.i.i128 = icmp eq ptr %i.ji, null
  br i1 %.not7.i.i.i128, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i129 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i129, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !23
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130

bb.ci:                                            ; preds = %bb.cg
  %i.jo = atomicrmw volatile add ptr %i.jk, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i136 = load ptr, ptr %i.jh, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130: ; preds = %bb.ci, %bb.ch, %bb.cf
  %i.jp = phi ptr [ %i.jj, %bb.cf ], [ %i.jj, %bb.ch ], [ %.pr.pre.i.i.i136, %bb.ci ] ; 8 uses
  %.not8.i.i.i131 = icmp eq ptr %i.jp, null
  br i1 %.not8.i.i.i131, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 4 uses
  %i.jr = load atomic i64, ptr %i.jq acquire, align 8 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 4294967297
  %i.jt = trunc i64 %i.jr to i32                  ; 2 uses
  br i1 %i.js, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.jq, align 8, !tbaa !33
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.ju, align 4, !tbaa !35
  %i.jv = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8
  tail call void %i.jx(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24, !inline_history !369
  %i.jy = load ptr, ptr %i.jp, align 8, !tbaa !36
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  tail call void %i.ka(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24, !inline_history !369
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135

bb.cl:                                            ; preds = %bb.cj
  %i.kb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i132 = icmp eq i8 %i.kb, 0
  br i1 %.not.i9.i.i.i132, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kc = add nsw i32 %i.jt, -1
  store i32 %i.kc, ptr %i.jq, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i133

bb.cn:                                            ; preds = %bb.cl
  %i.kd = atomicrmw volatile add ptr %i.jq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i133

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i133: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i134 = phi i32 [ %i.jt, %bb.cm ], [ %i.kd, %bb.cn ]
  %i.ke = icmp eq i32 %.0.i.i.i.i.i134, 1
  br i1 %i.ke, label %bb.co, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135, !prof !21

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i133
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135: ; preds = %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i133, %bb.ck, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i130
  store ptr %i.ji, ptr %i.jh, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137

bb.cp:                                            ; preds = %bb.bz
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cq:                                            ; preds = %bb.cc
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cr:                                            ; preds = %bb.cd
  %i.kh = invoke i64 @_ZN8facebook5velox11TypeCoercer9coercibleERKSt10shared_ptrIKNS0_4TypeEES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.iu)
          to label %bb.cs unwind label %bb.do

bb.cs:                                            ; preds = %bb.cr
  %i.ki = and i64 %i.kh, 4294967296
  %.not213 = icmp eq i64 %i.ki, 0
  br i1 %.not213, label %bb.dp, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kj = load ptr, ptr %i.iu, align 8, !tbaa !13
  store ptr %i.kj, ptr %0, align 8, !tbaa !13
  %i.kk = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !10 ; 4 uses
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !10  ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.kl, %i.km
  br i1 %.not.i.i.i138, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit148, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.not7.i.i.i139 = icmp eq ptr %i.kl, null
  br i1 %.not7.i.i.i139, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 3 uses
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i140 = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i140, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !23
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.kn, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141

bb.cx:                                            ; preds = %bb.cv
  %i.kr = atomicrmw volatile add ptr %i.kn, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i147 = load ptr, ptr %i.u, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141: ; preds = %bb.cx, %bb.cw, %bb.cu
  %i.ks = phi ptr [ %i.km, %bb.cu ], [ %i.km, %bb.cw ], [ %.pr.pre.i.i.i147, %bb.cx ] ; 8 uses
  %.not8.i.i.i142 = icmp eq ptr %i.ks, null
  br i1 %.not8.i.i.i142, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 4 uses
  %i.ku = load atomic i64, ptr %i.kt acquire, align 8 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 4294967297
  %i.kw = trunc i64 %i.ku to i32                  ; 2 uses
  br i1 %i.kv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.kt, align 8, !tbaa !33
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store i32 0, ptr %i.kx, align 4, !tbaa !35
  %i.ky = load ptr, ptr %i.ks, align 8, !tbaa !36
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #24, !inline_history !369
  %i.lb = load ptr, ptr %i.ks, align 8, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  tail call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #24, !inline_history !369
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146

bb.da:                                            ; preds = %bb.cy
  %i.le = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i143 = icmp eq i8 %i.le, 0
  br i1 %.not.i9.i.i.i143, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lf = add nsw i32 %i.kw, -1
  store i32 %i.lf, ptr %i.kt, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i144

bb.dc:                                            ; preds = %bb.da
  %i.lg = atomicrmw volatile add ptr %i.kt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i144: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i145 = phi i32 [ %i.kw, %bb.db ], [ %i.lg, %bb.dc ]
  %i.lh = icmp eq i32 %.0.i.i.i.i.i145, 1
  br i1 %i.lh, label %bb.dd, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146, !prof !21

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i144
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i144, %bb.cz, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i141
  store ptr %i.kl, ptr %i.u, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit148

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit148: ; preds = %bb.ct, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i146
  %i.li = trunc i64 %i.i to i32
  %i.lj = add i32 %i.li, -2                       ; 2 uses
  %.not1.i149 = icmp slt i32 %i.lj, 1
  br i1 %.not1.i149, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137, label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit148
  %sext.i151 = zext nneg i32 %i.lj to i64
  br label %.lr.ph.i150.a

.lr.ph.i150.a:                                    ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161, %.lr.ph.i150
  %indvars.iv.i151 = phi i64 [ 1, %.lr.ph.i150 ], [ %indvars.iv.next.i162, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161 ] ; 2 uses
  %i.lk = load ptr, ptr %3, align 8, !tbaa !112
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.lk, i64 %indvars.iv.i151 ; 2 uses
  %i.lm = load ptr, ptr %0, align 8, !tbaa !13
  store ptr %i.lm, ptr %i.ll, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 3 uses
  %i.lo = load ptr, ptr %i.u, align 8, !tbaa !10  ; 4 uses
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.lo, %i.lp
  br i1 %.not.i.i.i.i152, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i150.a
  %.not7.i.i.i.i153 = icmp eq ptr %i.lo, null
  br i1 %.not7.i.i.i.i153, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 3 uses
  %i.lr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i154 = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i.i.i.i154, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !23
  %i.lt = add nsw i32 %i.ls, 1
  store i32 %i.lt, ptr %i.lq, align 4, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155

bb.dh:                                            ; preds = %bb.df
  %i.lu = atomicrmw volatile add ptr %i.lq, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i164 = load ptr, ptr %i.ln, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155: ; preds = %bb.dh, %bb.dg, %bb.de
  %i.lv = phi ptr [ %i.lp, %bb.de ], [ %i.lp, %bb.dg ], [ %.pr.pre.i.i.i.i164, %bb.dh ] ; 8 uses
  %.not8.i.i.i.i156 = icmp eq ptr %i.lv, null
  br i1 %.not8.i.i.i.i156, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160, label %bb.di

bb.di:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 4 uses
  %i.lx = load atomic i64, ptr %i.lw acquire, align 8 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 4294967297
  %i.lz = trunc i64 %i.lx to i32                  ; 2 uses
  br i1 %i.ly, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.lw, align 8, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  store i32 0, ptr %i.ma, align 4, !tbaa !35
  %i.mb = load ptr, ptr %i.lv, align 8, !tbaa !36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  tail call void %i.md(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #24, !inline_history !370
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !36
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  tail call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #24, !inline_history !370
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160

bb.dk:                                            ; preds = %bb.di
  %i.mh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i.i157 = icmp eq i8 %i.mh, 0
  br i1 %.not.i9.i.i.i.i157, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mi = add nsw i32 %i.lz, -1
  store i32 %i.mi, ptr %i.lw, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158

bb.dm:                                            ; preds = %bb.dk
  %i.mj = atomicrmw volatile add ptr %i.lw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158: ; preds = %bb.dm, %bb.dl
  %.0.i.i.i.i.i.i159 = phi i32 [ %i.lz, %bb.dl ], [ %i.mj, %bb.dm ]
  %i.mk = icmp eq i32 %.0.i.i.i.i.i.i159, 1
  br i1 %i.mk, label %bb.dn, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160, !prof !21

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lv) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160: ; preds = %bb.dn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i158, %bb.dj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i155
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i160, %.lr.ph.i150.a
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i151, 2 ; 2 uses
  %18 = icmp samesign ugt i64 %indvars.iv.next.i162, %sext.i151
  br i1 %18, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137, label %.lr.ph.i150.a, !llvm.loop !371

bb.do:                                            ; preds = %bb.cr
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dp:                                            ; preds = %bb.cs, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.mm = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !36
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 80
  %i.mp = load ptr, ptr %i.mo, align 8
  invoke void %i.mp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(18) %i.mm)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.mq = load ptr, ptr %i.iu, align 8, !tbaa !13 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !36
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 80
  %i.mt = load ptr, ptr %i.ms, align 8
  invoke void %i.mt(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(18) %i.mq)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !381
  %i.mu = load ptr, ptr %14, align 8, !tbaa !32, !noalias !381
  %i.mv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !29, !noalias !381
  store ptr %i.mu, ptr %4, align 16, !tbaa !22, !noalias !381
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !22, !noalias !381
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.mz = load ptr, ptr %15, align 8, !tbaa !32, !noalias !381
  %i.na = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !29, !noalias !381
  store ptr %i.mz, ptr %i.my, align 16, !tbaa !22, !noalias !381
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.nb, ptr %i.nc, align 8, !tbaa !22, !noalias !381
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.39, i64 101, i64 221, ptr nonnull %4)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !381
  %i.nd = load ptr, ptr %15, align 8, !tbaa !32   ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nf = icmp eq ptr %i.nd, %i.ne
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.ds
  %i.ng = load i64, ptr %i.ne, align 8, !tbaa !22
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.nh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.ni = load ptr, ptr %14, align 8, !tbaa !32   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !22
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEbRS9_E18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr nonnull @.str.39) #22
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  unreachable

bb.du:                                            ; preds = %bb.dp
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.dv:                                            ; preds = %bb.dq
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

bb.dw:                                            ; preds = %bb.dr
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = load ptr, ptr %15, align 8, !tbaa !32   ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.dw
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !22
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.dv
  %.pn = phi { ptr, i32 } [ %i.no, %bb.dv ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ], [ %i.np, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.nv = load ptr, ptr %14, align 8, !tbaa !32   ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !22
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.du
  %.pn.pn = phi { ptr, i32 } [ %i.nn, %bb.du ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = load ptr, ptr %13, align 8, !tbaa !32   ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.dx
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !22
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn65 = phi { ptr, i32 } [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.oa, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.dy

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit137: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit.i161, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit148, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i135, %bb.ce, %bb.ca, %._crit_edge
  ret void

bb.dy:                                            ; preds = %.split227, %.split227.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %.split236.us, %.split233.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.do, %bb.cq, %bb.cp, %bb.y
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.y ], [ %i.kf, %bb.cp ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %i.fv, %.split236.us ], [ %i.fu, %.split233.us ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.ml, %bb.do ], [ %i.kg, %bb.cq ], [ %i.gz, %.split227 ], [ %i.ft, %.split227.us ]
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn79 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn74.pn.pn.pn, %bb.dy ]
  resume { ptr, i32 } %.pn79
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec23SwitchCallToSpecialForm20constructSpecialFormERKSt10shared_ptrIKNS0_4TypeEEOSt6vectorIS3_INS1_4ExprEESaISB_EEbRKNS0_4core11QueryConfigE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.84") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 zeroext %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = tail call noundef zeroext i1 @_ZN8facebook5velox4exec4Expr29allSupportFlatNoNullsFastPathERKSt6vectorISt10shared_ptrIS2_ESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.c = zext i1 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !264
  %i.d = tail call noalias noundef nonnull dereferenceable(528) ptr @_Znwm(i64 noundef 528) #23, !noalias !384 ; 4 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10SwitchExprESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrIKNS1_4TypeEESt6vectorIS9_INS2_4ExprEESaISH_EERbEEES4_DpOT_(ptr noundef nonnull align 8 dereferenceable(528) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZNSt12__shared_ptrIN8facebook5velox4exec10SwitchExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10SwitchExprESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !389

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox4exec10SwitchExprESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 528) #25, !noalias !389
  resume { ptr, i32 } %i.e

_ZNSt12__shared_ptrIN8facebook5velox4exec10SwitchExprELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %0, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare noundef zeroext i1 @_ZN8facebook5velox4exec4Expr29allSupportFlatNoNullsFastPathERKSt6vectorISt10shared_ptrIS2_ESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec19IfCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = load ptr, ptr %2, align 8, !tbaa !112
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, -32
  %switch = icmp eq i64 %i.g, 32
  br i1 %switch, label %.critedge, label %bb.b, !prof !390

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec19IfCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EEE18veloxCheckFailArgs, ptr noundef nonnull @.str.11) #22
  unreachable

.critedge:                                        ; preds = %bb.a
  tail call fastcc void @_ZN8facebook5velox4exec12_GLOBAL__N_114resolveTypeIntERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
end_hunk_1
