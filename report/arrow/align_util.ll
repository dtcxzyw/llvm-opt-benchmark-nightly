inline.NumInlined: 1025
inline.NumDeleted: 513
begin_hunk_0_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.co, %bb.ae ], [ %i.cy, %bb.af ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, !prof !101

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag, %bb.y
  %i.da = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ah, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !114

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  %i.dc = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i72, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dd, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !98
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19, !inline_history !151
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19, !inline_history !151
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dg, %bb.al ], [ %i.dq, %bb.am ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.an, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !101

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aj
  %.pr.i.pr = load ptr, ptr %5, align 8, !tbaa !111 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i73, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  %i.ds = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.da, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !115, !range !123, !noundef !124
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %bb.ah, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.ce, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge, label %.loopexit183

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %.pre196 = load ptr, ptr %i.p, align 8, !tbaa !69
  %.pre197 = load ptr, ptr %4, align 16, !tbaa !72
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge, %bb.l
  %i.dw = phi ptr [ %.pre197, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge ], [ %i.bc, %bb.l ] ; 2 uses
  %i.dx = phi ptr [ %.pre196, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit._crit_edge ], [ %i.bd, %bb.l ] ; 2 uses
  %i.dy = add nuw i64 %.047187, 1                 ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 4
  %.not = icmp ult i64 %i.dy, %i.ec
  br i1 %.not, label %bb.l, label %.critedge, !llvm.loop !152

.critedge:                                        ; preds = %bb.ap, %_ZN5arrow4util12_GLOBAL__N_117GetTypeForBuffersERKNS_9ArrayDataE.exit
  %i.ed = load ptr, ptr %1, align 8, !tbaa !77    ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !80 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !80 ; 2 uses
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %.critedge65, label %.lr.ph190

.lr.ph190:                                        ; preds = %.critedge
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0176.0189, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.eh
  br i1 %i.en, label %.critedge65.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph190, %bb.aq
  %.sroa.0176.0189 = phi ptr [ %i.ef, %.lr.ph190 ], [ %i.em, %bb.aq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0176.0189, i64 8 ; 2 uses
  %i.ep = load <2 x ptr>, ptr %.sroa.0176.0189, align 8, !tbaa !135
  store ptr null, ptr %i.eo, align 8, !tbaa !95
  store <2 x ptr> %i.ep, ptr %8, align 16, !tbaa !135
  store ptr null, ptr %.sroa.0176.0189, align 8, !tbaa !77
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %7, ptr noundef nonnull %8, i64 noundef %2, ptr noundef %3)
          to label %bb.as unwind label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !95 ; 8 uses
  %.not.i.i74 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i74, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 4 uses
  %i.es = load atomic i64, ptr %i.er acquire, align 8 ; 2 uses
  %i.et = icmp eq i64 %i.es, 4294967297
  %i.eu = trunc i64 %i.es to i32                  ; 2 uses
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.er, align 8, !tbaa !96
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 0, ptr %i.ev, align 4, !tbaa !98
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #19, !inline_history !153
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !50
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i75 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i75, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = add nsw i32 %i.eu, -1
  store i32 %i.fd, ptr %i.er, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.ax:                                            ; preds = %bb.av
  %i.fe = atomicrmw volatile add ptr %i.er, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i77 = phi i32 [ %i.eu, %bb.aw ], [ %i.fe, %bb.ax ]
  %i.ff = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.ff, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.as, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.ay
  %i.fg = load ptr, ptr %7, align 8, !tbaa !111
  %i.fh = icmp eq ptr %i.fg, null                 ; 2 uses
  br i1 %i.fh, label %bb.bb, label %bb.az, !prof !114

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.ba:                                            ; preds = %bb.ar
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  br label %bb.em

bb.bb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fj = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !135, !noalias !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  %i.fk = load ptr, ptr %i.eo, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.fj, ptr %.sroa.0176.0189, align 8, !tbaa !135
  %.not.i.i.i.i78 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i78, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.fl, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !98
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !159
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !50
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19, !inline_history !159
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

bb.be:                                            ; preds = %bb.bc
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i79 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i79, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80

bb.bg:                                            ; preds = %bb.be
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i81 = phi i32 [ %i.fo, %bb.bf ], [ %i.fy, %bb.bg ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i81, 1
  br i1 %i.fz, label %bb.bh, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, !prof !101

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86: ; preds = %bb.bb, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i80, %bb.bh, %bb.az
  %i.ga = load ptr, ptr %7, align 8, !tbaa !111   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.bi, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !114

bb.bi:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.gc = load ptr, ptr %i.el, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i87, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.gd, align 8, !tbaa !96
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !98
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #19, !inline_history !160
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !50
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #19, !inline_history !160
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i88 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i.i.i88, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

bb.bn:                                            ; preds = %bb.bl
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i90 = phi i32 [ %i.gg, %bb.bm ], [ %i.gq, %bb.bn ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i.i90, 1
  br i1 %i.gr, label %bb.bo, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !101

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89, %bb.bk
  %.pr.i91.pr = load ptr, ptr %7, align 8, !tbaa !111 ; 2 uses
  %.not.i.i92 = icmp eq ptr %.pr.i91.pr, null
  br i1 %.not.i.i92, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86
  %i.gs = phi ptr [ %.pr.i91.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.ga, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !115, !range !123, !noundef !124
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.bi, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %i.fh, label %bb.aq, label %.loopexit183

.critedge65.loopexit:                             ; preds = %bb.aq
  %.pre198 = load ptr, ptr %1, align 8, !tbaa !77
  br label %.critedge65

.critedge65:                                      ; preds = %.critedge65.loopexit, %.critedge
  %i.gw = phi ptr [ %.pre198, %.critedge65.loopexit ], [ %i.ed, %.critedge ] ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !47 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !53
  %i.ha = icmp eq i32 %i.gz, 29
  br i1 %i.ha, label %bb.bq, label %bb.cp

bb.bq:                                            ; preds = %.critedge65
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 88 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.hd = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !135
  store ptr null, ptr %i.hc, align 8, !tbaa !95
  store <2 x ptr> %i.hd, ptr %10, align 16, !tbaa !135
  store ptr null, ptr %i.hb, align 8, !tbaa !77
  invoke void @_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.57") align 8 %9, ptr noundef nonnull %10, i64 noundef %2, ptr noundef %3)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !95 ; 8 uses
  %.not.i.i93 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i93, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.hg, align 8, !tbaa !96
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !98
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #19, !inline_history !153
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !50
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.bu:                                            ; preds = %bb.bs
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i94 = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i94, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.bw:                                            ; preds = %bb.bu
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i96 = phi i32 [ %i.hj, %bb.bv ], [ %i.ht, %bb.bw ]
  %i.hu = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.hu, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, !prof !101

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97: ; preds = %bb.br, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.bx
  %i.hv = load ptr, ptr %9, align 8, !tbaa !111
  %i.hw = icmp eq ptr %i.hv, null                 ; 2 uses
  br i1 %i.hw, label %bb.ca, label %bb.by, !prof !114

bb.by:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bz:                                            ; preds = %bb.bq
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #19
  br label %bb.em

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hz = load <2 x ptr>, ptr %i.hy, align 8, !tbaa !135, !noalias !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 0, i64 16, i1 false)
  %i.ia = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.hz, ptr %i.ib, align 8, !tbaa !135
  %.not.i.i.i.i98 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i98, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 4 uses
  %i.if = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.ig = icmp eq i64 %i.if, 4294967297
  %i.ih = trunc i64 %i.if to i32                  ; 2 uses
  br i1 %i.ig, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.ie, align 8, !tbaa !96
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.ii, align 4, !tbaa !98
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !50
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #19, !inline_history !159
  %i.im = load ptr, ptr %i.id, align 8, !tbaa !50
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #19, !inline_history !159
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.cd:                                            ; preds = %bb.cb
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i99 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i.i99, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iq = add nsw i32 %i.ih, -1
  store i32 %i.iq, ptr %i.ie, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100

bb.cf:                                            ; preds = %bb.cd
  %i.ir = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i101 = phi i32 [ %i.ih, %bb.ce ], [ %i.ir, %bb.cf ]
  %i.is = icmp eq i32 %.0.i.i.i.i.i.i101, 1
  br i1 %i.is, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !101

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i100, %bb.cg, %bb.by
  %i.it = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.ch, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, !prof !114

bb.ch:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.iv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i109 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i109, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.ix, align 8, !tbaa !96
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !98
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !50
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #19, !inline_history !160
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #19, !inline_history !160
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113

bb.ck:                                            ; preds = %bb.ci
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i110 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i.i110, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111

bb.cm:                                            ; preds = %bb.ck
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i112 = phi i32 [ %i.ja, %bb.cl ], [ %i.jk, %bb.cm ]
  %i.jl = icmp eq i32 %.0.i.i.i.i.i.i.i112, 1
  br i1 %i.jl, label %bb.cn, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, !prof !101

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i111, %bb.cj, %bb.ch
  %.pr.i114 = load ptr, ptr %9, align 8, !tbaa !111 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.pr.i114, null
  br i1 %.not.i.i115, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.jm = phi ptr [ %.pr.i114, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113 ], [ %i.it, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !115, !range !123, !noundef !124
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %9) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i113, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i108, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %i.hw, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge, label %.loopexit183

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116
  %.pre199 = load ptr, ptr %1, align 8, !tbaa !77 ; 2 uses
  %.pre200 = load ptr, ptr %.pre199, align 8, !tbaa !47
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge, %.critedge65
  %i.jq = phi ptr [ %.pre200, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge ], [ %i.gx, %.critedge65 ]
  %i.jr = phi ptr [ %.pre199, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116._crit_edge ], [ %i.gw, %.critedge65 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.jq, ptr %12, align 8, !tbaa !47
  %i.js = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !95 ; 3 uses
  store ptr %i.ju, ptr %i.js, align 8, !tbaa !95
  %.not.i.i.i117 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i117, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i118 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i118, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jx = load i32, ptr %i.jv, align 4, !tbaa !3
  %i.jy = add nsw i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.cs:                                            ; preds = %bb.cq
  %i.jz = atomicrmw volatile add ptr %i.jv, i32 1 acq_rel, align 4 ; 0 uses
  %.pre201 = load ptr, ptr %1, align 8, !tbaa !77
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.cp, %bb.cr, %bb.cs
  %i.ka = phi ptr [ %i.jr, %bb.cp ], [ %i.jr, %bb.cr ], [ %.pre201, %bb.cs ] ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !166
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ke = load <2 x ptr>, ptr %4, align 16, !tbaa !76
  store <2 x ptr> %i.ke, ptr %13, align 16, !tbaa !76
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.r, align 16, !tbaa !141
  store ptr %i.kg, ptr %i.kf, align 16, !tbaa !141
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 64 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 72 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !182 ; 3 uses
  %i.kk = load ptr, ptr %i.kh, align 8, !tbaa !183 ; 3 uses
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i119 = icmp eq ptr %i.kj, %i.kk
  br i1 %.not.i.i.i.i119, label %.noexc128, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.ko = icmp ugt i64 %i.kn, 9223372036854775792
  br i1 %i.ko, label %.noexc.i.i126, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i126:                                    ; preds = %bb.ct
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc127 unwind label %bb.ec

.noexc127:                                        ; preds = %.noexc.i.i126
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ct
end_hunk_0
begin_hunk_1_@_ZN5arrow4util15EnsureAlignmentESt10shared_ptrINS_9ArrayDataEElPNS_10MemoryPoolE:bb.a
  %i.nw = load ptr, ptr %i.nq, align 8, !tbaa !50
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #19, !inline_history !189
  %i.nz = load ptr, ptr %i.nq, align 8, !tbaa !50
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.oc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i142 = icmp eq i8 %i.oc, 0
  br i1 %.not.i.i.i.i.i.i.i.i142, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.od = add nsw i32 %i.nu, -1
  store i32 %i.od, ptr %i.nr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143

bb.dt:                                            ; preds = %bb.dr
  %i.oe = atomicrmw volatile add ptr %i.nr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i.i.i.i144 = phi i32 [ %i.nu, %bb.ds ], [ %i.oe, %bb.dt ]
  %i.of = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i144, 1
  br i1 %i.of, label %bb.du, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !101

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nq) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i143, %bb.dq, %.lr.ph.i.i.i139
  %i.og = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 16 ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.og, %i.no
  br i1 %.not.i.i.i145, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i139, !llvm.loop !190

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i146 = load ptr, ptr %13, align 16, !tbaa !72
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.oh = phi ptr [ %.pr.i146, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.nn, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i147 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i1.i147, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.oi = load ptr, ptr %i.kf, align 16, !tbaa !141
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.oh to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.ol) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.dv
  %i.om = load ptr, ptr %i.js, align 8, !tbaa !95 ; 8 uses
  %.not.i.i148 = icmp eq ptr %i.om, null
  br i1 %.not.i.i148, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 4 uses
  %i.oo = load atomic i64, ptr %i.on acquire, align 8 ; 2 uses
  %i.op = icmp eq i64 %i.oo, 4294967297
  %i.oq = trunc i64 %i.oo to i32                  ; 2 uses
  br i1 %i.op, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.on, align 8, !tbaa !96
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  store i32 0, ptr %i.or, align 4, !tbaa !98
  %i.os = load ptr, ptr %i.om, align 8, !tbaa !50
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(16) %i.om) #19, !inline_history !191
  %i.ov = load ptr, ptr %i.om, align 8, !tbaa !50
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dereferenceable(16) %i.om) #19, !inline_history !191
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

bb.dy:                                            ; preds = %bb.dw
  %i.oy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i149 = icmp eq i8 %i.oy, 0
  br i1 %.not.i.i.i149, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.oz = add nsw i32 %i.oq, -1
  store i32 %i.oz, ptr %i.on, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

bb.ea:                                            ; preds = %bb.dy
  %i.pa = atomicrmw volatile add ptr %i.on, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i151 = phi i32 [ %i.oq, %bb.dz ], [ %i.pa, %bb.ea ]
  %i.pb = icmp eq i32 %.0.i.i.i.i151, 1
  br i1 %i.pb, label %bb.eb, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, !prof !101

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.om) #19
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150, %bb.dx, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !111
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pd = load <2 x ptr>, ptr %11, align 16, !tbaa !135
  store <2 x ptr> %i.pd, ptr %i.pc, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.loopexit183

bb.ec:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow9ArrayDataEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i126
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ed:                                            ; preds = %bb.da, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #19
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn61 = phi { ptr, i32 } [ %i.pf, %bb.ed ], [ %i.pe, %bb.ec ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.em

.loopexit183:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit116, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156
  %i.pg = load ptr, ptr %4, align 16, !tbaa !72   ; 3 uses
  %i.ph = load ptr, ptr %i.p, align 8, !tbaa !69  ; 2 uses
  %.not4.i.i.i157 = icmp eq ptr %i.pg, %i.ph
  br i1 %.not4.i.i.i157, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168, label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %.loopexit183, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164
  %.05.i.i.i159 = phi ptr [ %i.pz, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164 ], [ %i.pg, %.loopexit183 ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i160 = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i.i.i158
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 4 uses
  %i.pl = load atomic i64, ptr %i.pk acquire, align 8 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, 4294967297
  %i.pn = trunc i64 %i.pl to i32                  ; 2 uses
  br i1 %i.pm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.pk, align 8, !tbaa !96
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  store i32 0, ptr %i.po, align 4, !tbaa !98
  %i.pp = load ptr, ptr %i.pj, align 8, !tbaa !50
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #19, !inline_history !189
  %i.ps = load ptr, ptr %i.pj, align 8, !tbaa !50
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164

bb.eh:                                            ; preds = %bb.ef
  %i.pv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i.i.i161 = icmp eq i8 %i.pv, 0
  br i1 %.not.i.i.i.i.i.i.i.i161, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pw = add nsw i32 %i.pn, -1
  store i32 %i.pw, ptr %i.pk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162

bb.ej:                                            ; preds = %bb.eh
  %i.px = atomicrmw volatile add ptr %i.pk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i.i.i163 = phi i32 [ %i.pn, %bb.ei ], [ %i.px, %bb.ej ]
  %i.py = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i163, 1
  br i1 %i.py, label %bb.ek, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164, !prof !101

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164: ; preds = %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i162, %bb.eg, %.lr.ph.i.i.i158
  %i.pz = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 16 ; 2 uses
  %.not.i.i.i165 = icmp eq ptr %i.pz, %i.ph
  br i1 %.not.i.i.i165, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166, label %.lr.ph.i.i.i158, !llvm.loop !190

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i164
  %.pr.i167 = load ptr, ptr %4, align 16, !tbaa !72
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166, %.loopexit183
  %i.qa = phi ptr [ %.pr.i167, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i166 ], [ %i.pg, %.loopexit183 ] ; 3 uses
  %.not.i.i1.i169 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i1.i169, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170.a, label %bb.el

bb.el:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168
  %i.qb = load ptr, ptr %i.r, align 16, !tbaa !141
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.qa to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qe) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170.a

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170.a: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i168, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.eo

bb.em:                                            ; preds = %bb.ba, %bb.bz, %bb.p, %bb.z, %bb.ee, %bb.k
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %bb.ee ], [ %i.cf, %bb.z ], [ %i.hx, %bb.bz ], [ %i.bb, %bb.k ], [ %i.bj, %bb.p ], [ %i.fi, %bb.ba ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn61.pn

bb.en:                                            ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !111
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qh = load <2 x ptr>, ptr %1, align 8, !tbaa !135
  store ptr null, ptr %i.qg, align 8, !tbaa !95
  store <2 x ptr> %i.qh, ptr %i.qf, align 8, !tbaa !135
  store ptr null, ptr %1, align 8, !tbaa !77
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit170.a
  ret void
}

declare noundef i32 @_ZN5arrow31RequiredValueAlignmentForBufferENS_4Type4typeEi(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.114", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !111
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !101

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !139    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !100
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !139    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !139    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !100
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !98
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !192
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !inline_history !192
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, !prof !101

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !138

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !115, !range !123, !noundef !124
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EES4_IS1_IS0_ESaIS9_EES9_ll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK5arrow9ArrayData12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_1
