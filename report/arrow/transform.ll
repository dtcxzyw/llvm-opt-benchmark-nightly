inline.NumInlined: 802
inline.NumDeleted: 420
begin_hunk_0_@_ZN5arrow2io20TransformInputStream4ReadElPv:bb.a
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !125
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i60 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.ai ], [ %i.cm, %bb.aj ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !47

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag
  %.pr.i.pr = load ptr, ptr %11, align 8, !tbaa !62 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i61, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.ad
  %i.co = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.bw, %bb.ad ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !67, !range !57, !noundef !58
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ae, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !15  ; 8 uses
  %.not.i.i62 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i62, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, label %bb.am

bb.am:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ct, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !44
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !126
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

bb.ao:                                            ; preds = %bb.am
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i63 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i63, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

bb.aq:                                            ; preds = %bb.ao
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i65 = phi i32 [ %i.cw, %bb.ap ], [ %i.dg, %bb.aq ]
  %i.dh = icmp eq i32 %.0.i.i.i.i65, 1
  br i1 %i.dh, label %bb.ar, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, !prof !47

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i64, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66, %bb.n
  %.339 = phi i64 [ %.137, %bb.n ], [ %.238, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66 ]
  %.235 = phi i32 [ 1, %bb.n ], [ %.134, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit66 ]
  %i.di = load ptr, ptr %9, align 8, !tbaa !62    ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.at, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !76

bb.at:                                            ; preds = %bb.as
  %i.dk = load ptr, ptr %i.q, align 8, !tbaa !15  ; 8 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i68, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dl, align 8, !tbaa !42
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !44
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !125
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25, !inline_history !125
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72

bb.aw:                                            ; preds = %bb.au
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i69 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i69, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70

bb.ay:                                            ; preds = %bb.aw
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i71 = phi i32 [ %i.do, %bb.ax ], [ %i.dy, %bb.ay ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i.i71, 1
  br i1 %i.dz, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, !prof !47

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i70, %bb.av
  %.pr.i73.pr = load ptr, ptr %9, align 8, !tbaa !62 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pr.i73.pr, null
  br i1 %.not.i.i74, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, !prof !96

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, %bb.as
  %i.ea = phi ptr [ %.pr.i73.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72 ], [ %i.di, %bb.as ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !67, !range !57, !noundef !58
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75: ; preds = %bb.at, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i72, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i67, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  switch i32 %.235, label %.loopexit142 [
    i32 0, label %bb.k
    i32 7, label %bb.bc
  ], !llvm.loop !127

bb.bb:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.dg

bb.bc:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit75, %bb.k
  %i.ee = load ptr, ptr %i.t, align 8, !tbaa !121 ; 2 uses
  %i.ef = load ptr, ptr %8, align 8, !tbaa !129   ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %.not150 = icmp eq i64 %i.ei, 16
  br i1 %.not150, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, %bb.bc
  %.0137.lcssa = phi i64 [ 0, %bb.bc ], [ %i.fp, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.0.lcssa = phi i64 [ %2, %bb.bc ], [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.026.lcssa = phi ptr [ %3, %bb.bc ], [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ]
  %.lcssa = phi ptr [ %i.ee, %bb.bc ], [ %i.gg, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ej = getelementptr inbounds i8, ptr %.lcssa, i64 -16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !102 ; 6 uses
  store ptr %i.ek, ptr %12, align 8, !tbaa !102
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.lcssa, i64 -8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15 ; 3 uses
  store ptr null, ptr %i.em, align 8, !tbaa !15
  store ptr %i.en, ptr %i.el, align 8, !tbaa !15
  store ptr null, ptr %i.ej, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !103
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.0.lcssa, i64 %i.ep) ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 9
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !86, !range !57, !noundef !58
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = select i1 %i.es, ptr %i.eu, ptr null, !prof !76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026.lcssa, ptr align 1 %i.ev, i64 %.sroa.speculated, i1 false)
  %i.ew = add nsw i64 %.sroa.speculated, %.0137.lcssa ; 2 uses
  %i.ex = load i64, ptr %i.eo, align 8, !tbaa !103 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, %.sroa.speculated
  br i1 %i.ey, label %bb.bj, label %bb.cm

.lr.ph:                                           ; preds = %bb.bc, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80
  %i.ez = phi ptr [ %i.gh, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %i.ef, %bb.bc ]
  %.025146 = phi i64 [ %i.gf, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bc ] ; 2 uses
  %.026145 = phi ptr [ %i.fn, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %3, %bb.bc ] ; 2 uses
  %.0144 = phi i64 [ %i.fo, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ %2, %bb.bc ]
  %.0137143 = phi i64 [ %i.fp, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80 ], [ 0, %bb.bc ]
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.025146 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !102 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !15 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !86, !range !57, !noundef !58
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = select i1 %i.fg, ptr %i.fi, ptr null, !prof !76
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.026145, ptr align 1 %i.fj, i64 %i.fl, i1 false)
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !103 ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %.026145, i64 %i.fm ; 2 uses
  %i.fo = sub nsw i64 %.0144, %i.fm               ; 2 uses
  %i.fp = add nsw i64 %i.fm, %.0137143            ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i76, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fq, align 8, !tbaa !42
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !44
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25, !inline_history !126
  %i.fy = load ptr, ptr %i.fd, align 8, !tbaa !7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25, !inline_history !126
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

bb.bf:                                            ; preds = %bb.bd
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i77 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i77, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

bb.bh:                                            ; preds = %bb.bf
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i79 = phi i32 [ %i.ft, %bb.bg ], [ %i.gd, %bb.bh ]
  %i.ge = icmp eq i32 %.0.i.i.i.i79, 1
  br i1 %i.ge, label %bb.bi, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80, !prof !47

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #25
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit80: ; preds = %.lr.ph, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.bi
  %i.gf = add nuw i64 %.025146, 1                 ; 2 uses
  %i.gg = load ptr, ptr %i.t, align 8, !tbaa !121 ; 2 uses
  %i.gh = load ptr, ptr %8, align 8, !tbaa !129   ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 4
  %i.gm = add nsw i64 %i.gl, -1
  %i.gn = icmp ult i64 %i.gf, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge, !llvm.loop !130

bb.bj:                                            ; preds = %._crit_edge
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.el, align 8, !tbaa !15
  store ptr null, ptr %12, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.ek, ptr %5, align 8, !tbaa !102, !noalias !131
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.go, align 8, !tbaa !15, !noalias !131
  store ptr %i.en, ptr %i.gp, align 8, !tbaa !15, !noalias !131
  store ptr null, ptr %13, align 8, !tbaa !102, !noalias !131
  %i.gq = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %.noexc.i unwind label %bb.by, !noalias !131 ; 6 uses

.noexc.i:                                         ; preds = %bb.bj
  %i.gr = sub nsw i64 %i.ex, %.sroa.speculated
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 1, ptr %i.gs, align 8, !tbaa !42, !noalias !134
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 1, ptr %i.gt, align 4, !tbaa !44, !noalias !134
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gq, align 8, !tbaa !7, !noalias !134
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !134
  store ptr %i.ek, ptr %4, align 8, !tbaa !102, !noalias !134
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.gp, align 8, !tbaa !15, !noalias !134
  store ptr %i.en, ptr %i.gv, align 8, !tbaa !15, !noalias !134
  store ptr null, ptr %5, align 8, !tbaa !102, !noalias !134
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.gu, ptr noundef nonnull %4, i64 noundef %.sroa.speculated, i64 noundef %i.gr)
          to label %bb.bk unwind label %.body.i109, !noalias !134

bb.bk:                                            ; preds = %.noexc.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !15, !noalias !134 ; 8 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i110, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load atomic i64, ptr %i.gx acquire, align 8, !noalias !134 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 4294967297
  %i.ha = trunc i64 %i.gy to i32                  ; 2 uses
  br i1 %i.gz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.gx, align 8, !tbaa !42, !noalias !134
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store i32 0, ptr %i.hb, align 4, !tbaa !44, !noalias !134
  %i.hc = load ptr, ptr %i.gw, align 8, !tbaa !7, !noalias !134
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !134
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #25, !noalias !134, !inline_history !139
  %i.hf = load ptr, ptr %i.gw, align 8, !tbaa !7, !noalias !134
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !134
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #25, !noalias !134, !inline_history !139
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !134
  %.not.i.i.i.i.i111 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i.i111, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hj = add nsw i32 %i.ha, -1
  store i32 %i.hj, ptr %i.gx, align 8, !tbaa !3, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112

bb.bp:                                            ; preds = %bb.bn
  %i.hk = atomicrmw volatile add ptr %i.gx, i32 -1 acq_rel, align 4, !noalias !134
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i113 = phi i32 [ %i.ha, %bb.bo ], [ %i.hk, %bb.bp ]
  %i.hl = icmp eq i32 %.0.i.i.i.i.i.i113, 1
  br i1 %i.hl, label %bb.bq, label %bb.br, !prof !47

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw) #25, !noalias !134
  br label %bb.br

.body.i109:                                       ; preds = %.noexc.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25, !noalias !134
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 96) #26, !noalias !134
  br label %.body.i

bb.br:                                            ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i112, %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !134
  %i.hn = load ptr, ptr %i.gp, align 8, !tbaa !15, !noalias !131 ; 8 uses
  %.not.i.i.i81 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i81, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load atomic i64, ptr %i.ho acquire, align 8, !noalias !131 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 4294967297
  %i.hr = trunc i64 %i.hp to i32                  ; 2 uses
  br i1 %i.hq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.ho, align 8, !tbaa !42, !noalias !131
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  store i32 0, ptr %i.hs, align 4, !tbaa !44, !noalias !131
  %i.ht = load ptr, ptr %i.hn, align 8, !tbaa !7, !noalias !131
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !131
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #25, !noalias !131, !inline_history !140
  %i.hw = load ptr, ptr %i.hn, align 8, !tbaa !7, !noalias !131
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !131
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #25, !noalias !131, !inline_history !140
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bs
  %i.hz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46, !noalias !131
  %.not.i.i.i.i82 = icmp eq i8 %i.hz, 0
  br i1 %.not.i.i.i.i82, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ia = add nsw i32 %i.hr, -1
  store i32 %i.ia, ptr %i.ho, align 8, !tbaa !3, !noalias !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.ib = atomicrmw volatile add ptr %i.ho, i32 -1 acq_rel, align 4, !noalias !131
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i = phi i32 [ %i.hr, %bb.bv ], [ %i.ib, %bb.bw ]
  %i.ic = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ic, label %bb.bx, label %bb.bz, !prof !47

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hn) #25, !noalias !131
  br label %bb.bz

bb.by:                                            ; preds = %bb.bj
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
