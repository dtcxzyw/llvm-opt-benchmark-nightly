inline.NumInlined: 3425
inline.NumDeleted: 1710
begin_hunk_0_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cb, align 8, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !59
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !inline_history !98
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i38 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i38, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

bb.ah:                                            ; preds = %bb.af
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i40 = phi i32 [ %i.ce, %bb.ag ], [ %i.co, %bb.ah ]
  %i.cp = icmp eq i32 %.0.i.i.i.i40, 1
  br i1 %i.cp, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #26
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i39, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #26
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.as

bb.ak:                                            ; preds = %bb.p, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = load ptr, ptr %28, align 8, !tbaa !93
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !96

bb.al:                                            ; preds = %bb.ak
  %i.ct = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !45 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.cv, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !59
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #26, !inline_history !159
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #26, !inline_history !159
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ap ], [ %i.di, %bb.aq ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an, %bb.al
  %.pr.i = load ptr, ptr %28, align 8, !tbaa !93
  %.not.i.i41 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i41, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !160

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.ak
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %28)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %bb.hw

bb.as:                                            ; preds = %bb.aj, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.cq, %bb.aj ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %28) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.q, %bb.as, %_ZN5arrow7compute8ExecSpanD2Ev.exit, %bb.ex, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %.pn36.pn.pn.i, %_ZN5arrow7compute8ExecSpanD2Ev.exit ], [ %i.ev, %bb.az ], [ %.pn43.pn.pn.i, %bb.ex ], [ %.pn23, %bb.as ], [ %i.as, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26, !noalias !648
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !651, !noalias !648 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38, !noalias !648
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !648
  call void %i.do(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::DataTypeLayout") align 8 %26, ptr noundef nonnull align 8 dereferenceable(72) %i.dl), !noalias !648, !inline_history !652
  %i.dp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !653, !noalias !648
  %i.dr = load ptr, ptr %26, align 8, !tbaa !656, !noalias !648 ; 3 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = lshr exact i64 %i.du, 4
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !657, !noalias !648
  %.not.i.i.i.i.i42 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i42, label %_ZN5arrow14DataTypeLayoutD2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !658, !noalias !648
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.eb) #30, !noalias !648
  br label %_ZN5arrow14DataTypeLayoutD2Ev.exit.i

_ZN5arrow14DataTypeLayoutD2Ev.exit.i:             ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26, !noalias !648
  %i.ec = load ptr, ptr %i.dk, align 8, !tbaa !651, !noalias !648
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !260, !noalias !648 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store i8 0, ptr %i.ef, align 4, !tbaa !659, !noalias !648
  %.not.i43 = icmp eq i32 %i.ee, 0
  br i1 %.not.i43, label %bb.bf, label %bb.av

bb.av:                                            ; preds = %_ZN5arrow14DataTypeLayoutD2Ev.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !605, !noalias !648
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 84
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !660, !noalias !648
  switch i32 %i.ej, label %bb.bf [
    i32 1, label %bb.aw
    i32 0, label %bb.ax
    i32 3, label %bb.be
  ]

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.ef, align 4, !tbaa !659, !noalias !648
  br label %bb.bf

bb.ax:                                            ; preds = %bb.av
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 1, ptr %i.ek, align 8, !tbaa !671, !noalias !648
  %i.el = load ptr, ptr %2, align 8, !tbaa !50, !noalias !648 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50, !noalias !648 ; 2 uses
  %.not1920.i = icmp eq ptr %i.el, %i.en
  br i1 %.not1920.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %i.eo = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %25, i64 128 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 2 uses
  %.phi.trans.insert1.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.er = getelementptr inbounds nuw i8, ptr %25, i64 120
  br label %bb.ay

._crit_edge.loopexit.i:                           ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i
  %i.es = xor i8 %34, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ax
  %i.et = phi i8 [ %i.es, %._crit_edge.loopexit.i ], [ 0, %bb.ax ] ; 2 uses
  store i8 %i.et, ptr %i.ef, align 4, !tbaa !659, !noalias !648
  br label %bb.bf

bb.ay:                                            ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, %.lr.ph.i
  %.sroa.015.021.i = phi ptr [ %i.el, %.lr.ph.i ], [ %i.fi, %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i ] ; 3 uses
  %.val10.i = load ptr, ptr %.sroa.015.021.i, align 8, !noalias !648 ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.015.021.i, i64 16
  %.val11.i = load i8, ptr %i.eu, align 8, !tbaa !51, !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26, !noalias !648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %25, i8 0, i64 16, i1 false), !noalias !648
  store i64 -1, ptr %i.eo, align 8, !tbaa !276, !noalias !648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ep, i8 0, i64 112, i1 false), !noalias !648
  switch i8 %.val11.i, label %bb.bb [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit.i.i
    i8 1, label %_ZNK5arrow5Datum6scalarEv.exit.i.i
  ]

_ZNK5arrow5Datum5arrayEv.exit.i.i:                ; preds = %bb.ay
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %25, ptr noundef nonnull align 8 dereferenceable(120) %.val10.i)
          to label %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i unwind label %bb.az, !noalias !648

_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i: ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  store ptr null, ptr %i.eq, align 8, !tbaa !229, !noalias !648
  %.pre.pre.i.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !248, !noalias !648
  %.pre2.pre.i.i = load ptr, ptr %.phi.trans.insert1.phi.trans.insert.i.i, align 8, !tbaa !249, !noalias !648
  br label %bb.ba

bb.az:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute9ExecValueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #26, !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !648
  br label %common.resume

_ZNK5arrow5Datum6scalarEv.exit.i.i:               ; preds = %bb.ay
  store ptr %.val10.i, ptr %i.eq, align 8, !tbaa !229, !noalias !648
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK5arrow5Datum6scalarEv.exit.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i
  %.pre2.i.i = phi ptr [ %.pre2.pre.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i ], [ null, %_ZNK5arrow5Datum6scalarEv.exit.i.i ]
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZN5arrow7compute9ExecValue8SetArrayERKNS_9ArrayDataE.exit.i.i ], [ null, %_ZNK5arrow5Datum6scalarEv.exit.i.i ]
  %i.ew = call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %25), !noalias !648
  %i.ex = icmp eq i32 %i.ew, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %i.ey = phi ptr [ null, %bb.ay ], [ %.pre2.i.i, %bb.ba ]
  %i.ez = phi ptr [ null, %bb.ay ], [ %.pre.i.i, %bb.ba ]
  %.0.i.i = phi i1 [ false, %bb.ay ], [ %i.ex, %bb.ba ]
  invoke void @_ZSt8_DestroyIPN5arrow9ArraySpanEEvT_S3_(ptr noundef %i.ez, ptr noundef %i.ey)
          to label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i unwind label %bb.bc, !noalias !648, !inline_history !250

bb.bc:                                            ; preds = %bb.bb
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #29, !noalias !648, !inline_history !250
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.bb
  %i.fc = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !248, !noalias !648 ; 3 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i45, label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !251, !noalias !648
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #30, !noalias !648, !inline_history !252
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i

_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26, !noalias !648
  %i.fh = load i8, ptr %i.ek, align 8, !tbaa !671, !range !240, !noalias !648, !noundef !241
  %32 = trunc nuw i8 %i.fh to i1
  %33 = and i1 %.0.i.i, %32
  %34 = zext i1 %33 to i8                         ; 2 uses
  store i8 %34, ptr %i.ek, align 8, !tbaa !671, !noalias !648
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.021.i, i64 24 ; 2 uses
  %.not19.i = icmp eq ptr %i.fi, %i.en
  br i1 %.not19.i, label %._crit_edge.loopexit.i, label %bb.ay

bb.be:                                            ; preds = %bb.av
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 1, ptr %i.fj, align 8, !tbaa !671, !noalias !648
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i, %bb.aw, %bb.av, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i
  %i.fk = phi i8 [ 0, %bb.av ], [ 1, %bb.aw ], [ 0, %bb.be ], [ %i.et, %._crit_edge.i ], [ 0, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !605, !noalias !648
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 88
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !673, !noalias !648
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !674, !noalias !648 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !675, !noalias !648
  %.not.i.i.i44 = icmp eq ptr %i.ft, %i.fr
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.bg
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !675, !noalias !648
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.bg
  %i.fu = load ptr, ptr %i.dk, align 8, !tbaa !651, !noalias !648
  call fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.fu, ptr noundef %i.fq), !noalias !648
  %.pre.i = load i8, ptr %i.ef, align 4, !tbaa !659, !range !240, !noalias !648
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, %bb.bf
  %i.fv = phi i8 [ %.pre.i, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i ], [ %i.fk, %bb.bf ]
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fy = load i8, ptr %i.fx, align 8, !range !240, !noalias !648
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond.i = select i1 %i.fw, i1 true, i1 %i.fz
  br i1 %or.cond.i, label %bb.bi, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val12.i = load ptr, ptr %i.ga, align 8, !tbaa !674, !noalias !648
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val13.i = load ptr, ptr %i.gb, align 8, !tbaa !675, !noalias !648
  %i.gc = ptrtoint ptr %.val13.i to i64
  %i.gd = ptrtoint ptr %.val12.i to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = ashr exact i64 %i.ge, 3
  %i.gg = load i32, ptr %i.dx, align 8, !tbaa !657, !noalias !648
  %i.gh = add nsw i32 %i.gg, -1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp eq i64 %i.gf, %i.gi
  br i1 %i.gj, label %bb.bj, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %switch.tableidx = add i32 %i.ee, -25           ; 2 uses
  %i.gk = icmp ult i32 %switch.tableidx, 18
  %switch.shifted = lshr i32 207023, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.gk, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.i:        ; preds = %bb.bj
  %i.gl = icmp ne i32 %i.ee, 29
  %i.gm = zext i1 %i.gl to i8
  br label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i: ; preds = %bb.bj, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i, %bb.bi, %bb.bh
  %i.gn = phi i8 [ %i.gm, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bj ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !676, !noalias !648
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !590, !noalias !648
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !620, !noalias !648
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !394, !range !240, !noalias !648, !noundef !241
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i
  %i.gs = load ptr, ptr %i.fl, align 8, !tbaa !605, !noalias !648
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !677, !range !240, !noalias !648, !noundef !241
  %i.gv = trunc nuw i8 %i.gu to i1
  %spec.select.i = select i1 %i.gv, i8 %i.gn, i8 0
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i
  %i.gw = phi i8 [ %spec.select.i, %bb.bk ], [ 0, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i8 %i.gw, ptr %i.gx, align 2, !tbaa !678, !noalias !648
  store ptr null, ptr %0, align 8, !tbaa !93, !alias.scope !679
  %i.gy = trunc nuw i8 %i.gn to i1
  br i1 %i.gy, label %bb.bm, label %bb.ey

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26, !noalias !682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !682
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %17, i8 0, i64 16, i1 false), !noalias !682
  store i64 -1, ptr %i.gz, align 8, !tbaa !276, !noalias !682
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.ha, i8 0, i64 105, i1 false), !noalias !682
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.hc = trunc nuw i8 %i.gw to i1
  br i1 %i.hc, label %bb.bn, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bm
  %i.hd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 90
  br label %bb.cs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !682
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !219, !noalias !682
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.hj)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.hk = load ptr, ptr %18, align 8, !tbaa !93, !noalias !682
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bp, !prof !96

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %.critedge.i unwind label %bb.bs

bb.bq:                                            ; preds = %bb.cs
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.br:                                            ; preds = %bb.bn
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bp
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bo
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !118, !noalias !685 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !45, !noalias !685 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i8 0, i64 16, i1 false), !noalias !682
  store ptr %i.hq, ptr %15, align 16, !tbaa !690, !noalias !682
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !45, !noalias !682
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %17, ptr noundef nonnull align 8 dereferenceable(120) %i.hq)
          to label %bb.bt unwind label %bb.bs

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.ha, align 8, !tbaa !257, !noalias !682
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit55.i, %bb.bt
  %.028.i = phi i64 [ 0, %bb.bt ], [ %i.il, %_ZN5arrow6StatusD2Ev.exit55.i ]
  %i.hx = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %16)
          to label %bb.bv unwind label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hx, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.hy = load i64, ptr %16, align 8, !tbaa !242, !noalias !682 ; 2 uses
  store i64 %.028.i, ptr %i.ha, align 8, !tbaa !257, !noalias !682
  store i64 %i.hy, ptr %i.hu, align 8, !tbaa !258, !noalias !682
  %i.hz = load ptr, ptr %17, align 8, !tbaa !259, !noalias !682
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !260
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.id = load i64, ptr %i.gz, align 8, !tbaa !276, !noalias !682
  %.not.i.i53.i = icmp ne i64 %i.id, 0
  %i.ie = load ptr, ptr %i.hv, align 8, !noalias !682
  %i.if = icmp ne ptr %i.ie, null
  %i.ig = select i1 %.not.i.i53.i, i1 %i.if, i1 false
end_hunk_0
