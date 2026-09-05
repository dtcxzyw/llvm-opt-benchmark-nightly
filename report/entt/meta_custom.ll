Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_custom?download=true
begin_hunk_0_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES8_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !148
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !239
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !239
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !128
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !128
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !148 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !238
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !240 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !240 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !242
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !564

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !228
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !228
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !130
  br label %.lr.ph139.split.us, !llvm.loop !565

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #28
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !228
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !229
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !228
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !228
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJiEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !130
  br label %.lr.ph139.split.split.us, !llvm.loop !565

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.entt::meta_handle", align 8 ; 18 uses
  %6 = alloca %"struct.std::array.207", align 8   ; 14 uses
  %7 = alloca %"class.entt::meta_handle", align 8 ; 12 uses
  %8 = alloca %"struct.std::array.208", align 8   ; 15 uses
  %9 = alloca %"class.entt::meta_type", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !117, !noalias !574 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126, !noalias !574
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !111, !noalias !574
  %switch.selectcmp.i.i.i.i = icmp eq i8 %i.d, 0  ; 2 uses
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 0, i8 3
  %switch.selectcmp2.i.i.i.i = icmp eq i8 %i.d, 4 ; 2 uses
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i8 4, i8 %switch.select.i.i.i.i
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114, !noalias !575
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115, !noalias !575
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116, !noalias !575
  store ptr null, ptr %5, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.p, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 %i.h, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i8 %switch.select3.i.i.i.i, ptr %i.s, align 4, !tbaa !117
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i8 %i.d, 2
  %i.u = select i1 %i.t, ptr %3, ptr %i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !67
  br label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit

_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit: ; preds = %bb.a, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.w = icmp eq ptr %i.b, %i.k
  %spec.select.i.i = select i1 %i.w, ptr %i.m, ptr null
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.x, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store ptr %i.o, ptr %i.y, align 8, !tbaa !116
  %i.z = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.c:                                             ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.c, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.z, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !130 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.010.015.i = phi ptr [ %i.al, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ak = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !138
  %.not.i = icmp eq i32 %i.ak, %2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 88 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %.critedge, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ao, align 8, !tbaa !126
  store i32 -1779859874, ptr %i.aq, align 8, !tbaa !111
  store ptr null, ptr %i.ap, align 8, !tbaa !118
  store i8 3, ptr %i.ar, align 4, !tbaa !117
  store ptr %4, ptr %6, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.an, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.at, align 8, !tbaa !115
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.au, align 8, !tbaa !116
  %i.av = invoke noundef ptr @_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRNS_8meta_anyEJiEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES5_bT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, i64 noundef 1, i1 noundef zeroext %switch.selectcmp2.i.i.i.i, ptr nonnull %.sroa.010.015.i)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit unwind label %bb.i, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #28
  unreachable

_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not45 = icmp eq ptr %i.av, null
  br i1 %.not45, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !139
  store ptr null, ptr %7, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.p, align 8, !tbaa !89
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !126
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = load i32, ptr %i.r, align 8, !tbaa !111
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bi = load i8, ptr %i.s, align 4, !tbaa !117  ; 2 uses
  store i8 %i.bi, ptr %i.bh, align 4, !tbaa !117
  switch i8 %i.bi, label %bb.l [
    i8 2, label %bb.k
    i8 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.bj = invoke noundef ptr %i.be(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %5, align 8, !tbaa !89
  store ptr null, ptr %5, align 8, !tbaa !89
  store ptr %i.bk, ptr %7, align 8, !tbaa !67
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #28
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bo = load <2 x ptr>, ptr %i.v, align 8, !tbaa !89
  store ptr null, ptr %i.x, align 8, !tbaa !140
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !89
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !89
  store ptr null, ptr %i.y, align 8, !tbaa !89
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !120
  store ptr null, ptr %8, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bs, align 8, !tbaa !126
  store i32 -1779859874, ptr %i.bu, align 8, !tbaa !111
  store ptr null, ptr %i.bt, align 8, !tbaa !118
  store i8 2, ptr %i.bv, align 4, !tbaa !117
  %i.bw = load i32, ptr %4, align 4, !tbaa !90
end_hunk_0
begin_hunk_1_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRNS_8meta_anyEJiEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES5_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !148
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !239
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !239
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !128
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !128
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !148 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !238
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !240 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !240 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !242
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !577

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !228
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !228
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !130
  br label %.lr.ph139.split.us, !llvm.loop !578

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #28
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !228
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !229
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !228
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !228
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !130
  br label %.lr.ph139.split.split.us, !llvm.loop !578

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES8_bT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %._crit_edge.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq i64 %2, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not, label %.lr.ph139.split.split.us, label %.lr.ph139.split.us

.lr.ph139.split.us:                               ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us
  %.036138.us = phi ptr [ %.sroa.095.0134.us, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us ], [ %4, %.lr.ph139 ] ; 6 uses
  %.037137.us = phi i1 [ %.340.us, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us ], [ false, %.lr.ph139 ] ; 4 uses
  %.041136.us = phi i64 [ %.344.us, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us ], [ 0, %.lr.ph139 ] ; 7 uses
  %.045135.us = phi ptr [ %.348.us, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us ], [ null, %.lr.ph139 ] ; 7 uses
  %.sroa.095.0134.us = phi ptr [ %i.fd, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph139.split.us
  %i.d = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !228
  %i.f = and i32 %i.e, 1
  %.not.i56.us = icmp eq i32 %i.f, 0
  br i1 %.not.i56.us, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph139.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %.036138.us, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !229
  %i.i = icmp eq i64 %i.h, %2
  br i1 %i.i, label %.preheader.us, label %bb.aj

bb.d:                                             ; preds = %.preheader.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.0124.us = phi i64 [ 0, %.preheader.us ], [ %i.ep, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 4 uses
  %.034123.us = phi i64 [ 0, %.preheader.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 5 uses
  %i.j = load ptr, ptr %i.fe, align 8, !tbaa !231
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.l = tail call { ptr, ptr } %i.j(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %.0124.us) #26 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.0124.us ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116  ; 2 uses
  %.not.i57.us = icmp eq ptr %i.q, null
  br i1 %.not.i57.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %_ZNK4entt8meta_any4typeEv.exit.us

bb.f:                                             ; preds = %bb.e
  invoke void %i.q(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef null)
          to label %.noexc.i.us unwind label %.split.us, !inline_history !18

.noexc.i.us:                                      ; preds = %bb.f
  %.pre.i.i.us = load ptr, ptr %i.t, align 8, !tbaa !115
  br label %_ZNK4entt8meta_any4typeEv.exit.us

bb.g:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.us, label %bb.h, label %_ZNK4entt8meta_any4typeEv.exit.us

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt8meta_any4typeEv.exit.us unwind label %.split143.us

_ZNK4entt8meta_any4typeEv.exit.us:                ; preds = %bb.h, %bb.g, %.noexc.i.us, %bb.e
  %.sroa.0.0.i.us = phi ptr [ %i.u, %bb.e ], [ %.pre.i.i.us, %.noexc.i.us ], [ null, %bb.g ], [ null, %bb.h ] ; 5 uses
  %.sroa.4.0.i.us = phi ptr [ %i.s, %bb.e ], [ %i.s, %.noexc.i.us ], [ %i.w, %bb.g ], [ %i.x, %bb.h ] ; 9 uses
  %i.y = icmp eq ptr %i.m, null                   ; 2 uses
  br i1 %i.y, label %bb.i, label %_ZNK4entt9meta_type4infoEv.exit.us

bb.i:                                             ; preds = %_ZNK4entt8meta_any4typeEv.exit.us
  %i.z = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.l, !prof !145

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  %.not.i73.us = icmp eq i32 %i.ab, 0
  br i1 %.not.i73.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4entt8internal14setup_node_forIvEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  %i.ac = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26, !inline_history !253 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ad = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !148 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !166 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 4294967295
  %i.ap = and i64 %i.ao, %i.ag
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.07.in.i.i.i.us = phi ptr [ %i.aq, %bb.l ], [ %i.at, %bb.n ]
  %.07.i.i.i.us = load i64, ptr %.07.in.i.i.i.us, align 8, !tbaa !173 ; 2 uses
  %.not.i.i.i72.us = icmp eq i64 %.07.i.i.i.us, -1
  br i1 %.not.i.i.i72.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.07.i.i.i.us ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !90
  %i.aw = icmp eq i32 %i.av, %i.af
  br i1 %i.aw, label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.us, label %bb.m, !llvm.loop !8

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.us: ; preds = %bb.n
  %.phi.trans.insert.i.us = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre.i.us = load ptr, ptr %.phi.trans.insert.i.us, align 8, !tbaa !171
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us

bb.o:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.as to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb
  br label %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us

_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us: ; preds = %bb.o, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.us
  %i.bd = phi ptr [ %i.ay, %bb.o ], [ %.pre.i.us, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.us ]
  %.sroa.0.1.i.i.i.us = phi ptr [ %i.bc, %bb.o ], [ %i.at, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.loopexit.i.us ] ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.1.i.i.i.us, %i.bd
  br i1 %i.be, label %_ZNK4entt9meta_type4infoEv.exit.us, label %bb.p

bb.p:                                             ; preds = %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.us, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !140
  br label %_ZNK4entt9meta_type4infoEv.exit.us

_ZNK4entt9meta_type4infoEv.exit.us:               ; preds = %bb.p, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us, %_ZNK4entt8meta_any4typeEv.exit.us
  %i.bh = phi ptr [ %i.m, %_ZNK4entt8meta_any4typeEv.exit.us ], [ %i.bg, %bb.p ], [ @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i.us ]
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.0.0.i.us, null       ; 3 uses
  br i1 %i.bj, label %bb.q, label %_ZNK4entt9meta_type4infoEv.exit58.thread.us

_ZNK4entt9meta_type4infoEv.exit58.thread.us:      ; preds = %_ZNK4entt9meta_type4infoEv.exit.us
  %i.bk = load ptr, ptr %.sroa.0.0.i.us, align 8, !tbaa !172
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !148
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !148
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.ag, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

bb.q:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit.us
  %i.bq = load atomic i8, ptr @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.r, label %bb.t, !prof !145

bb.r:                                             ; preds = %bb.q
  %i.bs = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  %.not.i82.us = icmp eq i32 %i.bs, 0
  br i1 %.not.i82.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4entt8internal14setup_node_forIvEEDav(ptr dead_on_unwind nonnull writable sret(%"struct.entt::internal::meta_type_node") align 8 @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  %i.bt = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4entt8internal14meta_type_nodeD2Ev, ptr nonnull @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, ptr nonnull @__dso_handle) #26, !inline_history !253 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node) #26, !inline_history !253
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bu = load ptr, ptr @_ZZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextEE4node, align 8, !tbaa !172
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !148 ; 3 uses
  %i.bx = zext i32 %i.bw to i64
end_hunk_1
begin_hunk_2_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES8_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !148
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !239
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !239
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !128
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !128
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !148 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !238
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !240 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !240 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !242
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !579

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !228
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !228
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !130
  br label %.lr.ph139.split.us, !llvm.loop !580

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #28
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !228
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !229
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !228
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !228
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRKN10MetaCustom5clazzEJcEEENS_8meta_anyEjOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !130
  br label %.lr.ph139.split.split.us, !llvm.loop !580

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.entt::meta_handle", align 8 ; 18 uses
  %6 = alloca %"struct.std::array.207", align 8   ; 14 uses
  %7 = alloca %"class.entt::meta_handle", align 8 ; 12 uses
  %8 = alloca %"struct.std::array.208", align 8   ; 15 uses
  %9 = alloca %"class.entt::meta_type", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !117, !noalias !589 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126, !noalias !589
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !111, !noalias !589
  %switch.selectcmp.i.i.i.i = icmp eq i8 %i.d, 0  ; 2 uses
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 0, i8 3
  %switch.selectcmp2.i.i.i.i = icmp eq i8 %i.d, 4 ; 2 uses
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i8 4, i8 %switch.select.i.i.i.i
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114, !noalias !590
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115, !noalias !590
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116, !noalias !590
  store ptr null, ptr %5, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.p, align 8, !tbaa !126
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 %i.h, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i8 %switch.select3.i.i.i.i, ptr %i.s, align 4, !tbaa !117
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i8 %i.d, 2
  %i.u = select i1 %i.t, ptr %3, ptr %i.i
  store ptr %i.u, ptr %5, align 8, !tbaa !67
  br label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit

_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit: ; preds = %bb.a, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.v, align 8, !tbaa !114
  %i.w = icmp eq ptr %i.b, %i.k
  %spec.select.i.i = select i1 %i.w, ptr %i.m, ptr null
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.x, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store ptr %i.o, ptr %i.y, align 8, !tbaa !116
  %i.z = load ptr, ptr %1, align 8, !tbaa !121    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.c:                                             ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.c, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ %i.z, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !128 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !130 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !130 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.010.015.i = phi ptr [ %i.al, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ak = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !138
  %.not.i = icmp eq i32 %i.ak, %2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 88 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %.critedge, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEcEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ao, align 8, !tbaa !126
  store i32 -1471413475, ptr %i.aq, align 8, !tbaa !111
  store ptr null, ptr %i.ap, align 8, !tbaa !118
  store i8 3, ptr %i.ar, align 4, !tbaa !117
  store ptr %4, ptr %6, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.an, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.at, align 8, !tbaa !115
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEcEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.au, align 8, !tbaa !116
  %i.av = invoke noundef ptr @_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRNS_8meta_anyEJcEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES5_bT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, i64 noundef 1, i1 noundef zeroext %switch.selectcmp2.i.i.i.i, ptr nonnull %.sroa.010.015.i)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !118 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit unwind label %bb.i, !inline_history !3

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #28
  unreachable

_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not45 = icmp eq ptr %i.av, null
  br i1 %.not45, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !139
  store ptr null, ptr %7, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.p, align 8, !tbaa !89
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !126
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = load i32, ptr %i.r, align 8, !tbaa !111
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bi = load i8, ptr %i.s, align 4, !tbaa !117  ; 2 uses
  store i8 %i.bi, ptr %i.bh, align 4, !tbaa !117
  switch i8 %i.bi, label %bb.l [
    i8 2, label %bb.k
    i8 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.bj = invoke noundef ptr %i.be(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.n unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %5, align 8, !tbaa !89
  store ptr null, ptr %5, align 8, !tbaa !89
  store ptr %i.bk, ptr %7, align 8, !tbaa !67
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #28
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bo = load <2 x ptr>, ptr %i.v, align 8, !tbaa !89
  store ptr null, ptr %i.x, align 8, !tbaa !140
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !89
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !89
  store ptr null, ptr %i.y, align 8, !tbaa !89
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !120
  store ptr null, ptr %8, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEcEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bs, align 8, !tbaa !126
  store i32 -1471413475, ptr %i.bu, align 8, !tbaa !111
  store ptr null, ptr %i.bt, align 8, !tbaa !118
  store i8 2, ptr %i.bv, align 4, !tbaa !117
  %i.bw = load i8, ptr %4, align 1, !tbaa !67
end_hunk_2
begin_hunk_3_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRNS_8meta_anyEJcEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES5_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !148
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !239
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !239
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !128 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !128
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !128
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !148 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !142 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !238
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !148
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !240 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !240 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !242
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !592

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !228
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !228
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !130
  br label %.lr.ph139.split.us, !llvm.loop !593

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #28
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !228
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !229
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !228
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !228
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJcEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !130
  br label %.lr.ph139.split.split.us, !llvm.loop !593

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_meta_custom.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
.noexc11.i:
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(57) ptr @_Znwm(i64 noundef 57) #30 ; 3 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !64
  store i64 56, ptr %i.a, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.2, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 56, ptr %i.c, align 8, !tbaa !187
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 0, ptr %i.d, align 1, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 43, ptr %i.e, align 8, !tbaa !595
  %i.f = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 43)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc11.i
  %i.g = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 43)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22MetaCustom_Custom_TestEE, i64 16), ptr %i.h, align 8, !tbaa !36
  %i.i = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI10MetaCustomE6dummy_E, ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !67
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #27
  br label %__cxx_global_var_init.exit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %.noexc11.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !67
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34
  %.sink103 = phi i64 [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %.sink = phi ptr [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i34 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i27 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i20 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i13 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12.i ]
  %i.r = add i64 %.sink103, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.r) #27
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ai, %bb.ad, %bb.y, %bb.t, %bb.o, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.da, %bb.ad ], [ %i.n, %bb.e ], [ %i.bq, %bb.t ], [ %i.ag, %bb.j ], [ %i.ci, %bb.y ], [ %i.ds, %bb.ai ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  store ptr %i.i, ptr @_ZN22MetaCustom_Custom_Test10test_info_E, align 8, !tbaa !597
  %i.s = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22MetaCustom_Custom_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.u = call noalias noundef nonnull dereferenceable(57) ptr @_Znwm(i64 noundef 57) #30 ; 3 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !64
  store i64 56, ptr %i.t, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.u, ptr noundef nonnull align 1 dereferenceable(56) @.str.2, i64 56, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 56, ptr %i.v, align 8, !tbaa !187
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i8 0, ptr %i.w, align 1, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 56, ptr %i.x, align 8, !tbaa !595
  %i.y = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 56)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %__cxx_global_var_init.exit
  %i.z = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 56)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI40MetaCustomDeathTest_DISABLED_Custom_TestEE, i64 16), ptr %i.aa, align 8, !tbaa !36
  %i.ab = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI10MetaCustomE6dummy_E, ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull %i.aa)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.t
  br i1 %i.ad, label %__cxx_global_var_init.8.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %bb.i
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !67
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %__cxx_global_var_init.8.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %__cxx_global_var_init.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !67
  br label %common.resume.sink.split

__cxx_global_var_init.8.exit:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  store ptr %i.ab, ptr @_ZN40MetaCustomDeathTest_DISABLED_Custom_Test10test_info_E, align 8, !tbaa !597
  %i.ak = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN40MetaCustomDeathTest_DISABLED_Custom_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.am = call noalias noundef nonnull dereferenceable(57) ptr @_Znwm(i64 noundef 57) #30 ; 3 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !64
  store i64 56, ptr %i.al, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.am, ptr noundef nonnull align 1 dereferenceable(56) @.str.2, i64 56, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 56, ptr %i.an, align 8, !tbaa !187
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store i8 0, ptr %i.ao, align 1, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 66, ptr %i.ap, align 8, !tbaa !595
  %i.aq = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 66)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %__cxx_global_var_init.8.exit
  %i.ar = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverI10MetaCustomE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 66)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI20MetaCustom_Type_TestEE, i64 16), ptr %i.as, align 8, !tbaa !36
  %i.at = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperI10MetaCustomE6dummy_E, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef nonnull %i.as)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.al
  br i1 %i.av, label %__cxx_global_var_init.15.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %bb.n
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !67
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %__cxx_global_var_init.15.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %__cxx_global_var_init.8.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.al
  br i1 %i.ba, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10.i6: ; preds = %bb.o
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !67
  br label %common.resume.sink.split

__cxx_global_var_init.15.exit:                    ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  store ptr %i.at, ptr @_ZN20MetaCustom_Type_Test10test_info_E, align 8, !tbaa !597
  %i.bc = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN20MetaCustom_Type_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.be = call noalias noundef nonnull dereferenceable(57) ptr @_Znwm(i64 noundef 57) #30 ; 3 uses
  store ptr %i.be, ptr %3, align 8, !tbaa !64
end_hunk_3
