begin_hunk_0
  br i1 %i.dp, label %_ZN6google12_GLOBAL__N_117FindMatchingFlagsERKSt6vectorINS_19CommandLineFlagInfoESaIS2_EERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3setIPKS2_St4lessISK_ESaISK_EEPSF_.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.01838.i = phi i1 [ %.1.i, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i ] ; 7 uses
  %.sroa.021.036.i = phi ptr [ %i.gu, %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.dm, %_ZNSt3setIPKN6google19CommandLineFlagInfoESt4lessIS3_ESaIS3_EE5clearEv.exit.i ] ; 13 uses
  %.val.i = load ptr, ptr %29, align 8, !tbaa !10 ; 6 uses
  %.val19.i = load i64, ptr %i.p, align 8, !tbaa !21 ; 13 uses
end_hunk_0
begin_hunk_1
  %i.dv = load i8, ptr %.val.i, align 1, !tbaa !15
  %i.dw = sext i8 %i.dv to i32
  %i.dx = ptrtoint ptr %i.du to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a: ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.ec, %bb.ai ]
  %.02840.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %i.ea, %bb.ai ]
  %reass.sub = sub i64 %.041.i.i.i.i, %.val19.i
  %i.dy = add i64 %reass.sub, 1
  %38 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i.i.i, i32 noundef %i.dw, i64 noundef %i.dy) #26 ; 5 uses
  %.not34.i.i.i.i.a = icmp eq ptr %38, null
  br i1 %.not34.i.i.i.i.a, label %.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %38, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.dz = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, label %bb.ai
end_hunk_1
begin_hunk_2
  %or.cond.i.i = and i1 %.sroa.0177.1, %i.eh
  br i1 %or.cond.i.i, label %bb.aq, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ai, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.a, %bb.aj, %bb.ah, %bb.ag
  br i1 %.sroa.7.2, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i

bb.ak:                                            ; preds = %.thread.i.i
end_hunk_2
begin_hunk_3
  %i.en = load i8, ptr %.val.i, align 1, !tbaa !15
  %i.eo = sext i8 %i.en to i32
  %i.ep = ptrtoint ptr %i.em to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18.i.i: ; preds = %bb.am, %.lr.ph.i.i17.i.i
  %.041.i.i19.i.i = phi i64 [ %i.ej, %.lr.ph.i.i17.i.i ], [ %i.eu, %bb.am ]
  %.02840.i.i20.i.i = phi ptr [ %i.el, %.lr.ph.i.i17.i.i ], [ %i.es, %bb.am ]
  %reass.sub499 = sub i64 %.041.i.i19.i.i, %.val19.i
  %i.eq = add i64 %reass.sub499, 1
  %39 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i20.i.i, i32 noundef %i.eo, i64 noundef %i.eq) #26 ; 4 uses
  %.not34.i.i22.i.i = icmp eq ptr %39, null
  br i1 %.not34.i.i22.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18.i.i
  %bcmp.i.i24.i.i = call i32 @bcmp(ptr nonnull %39, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.er = icmp eq i32 %bcmp.i.i24.i.i, 0
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.i.i, label %bb.am
end_hunk_3
begin_hunk_4
  %.not.i.i = icmp eq i64 %i.ex, -1
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i, label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i: ; preds = %bb.am, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.i.i, %bb.al, %bb.ak, %.thread.i.i
  br i1 %.sroa.9.3, label %bb.an, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i
end_hunk_4
begin_hunk_5
  %i.fd = load i8, ptr %.val.i, align 1, !tbaa !15
  %i.fe = sext i8 %i.fd to i32
  %i.ff = ptrtoint ptr %i.fc to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i31.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i31.i.i: ; preds = %bb.ap, %.lr.ph.i.i30.i.i
  %.041.i.i32.i.i = phi i64 [ %i.ez, %.lr.ph.i.i30.i.i ], [ %i.fk, %bb.ap ]
  %.02840.i.i33.i.i = phi ptr [ %i.fb, %.lr.ph.i.i30.i.i ], [ %i.fi, %bb.ap ]
  %reass.sub500 = sub i64 %.041.i.i32.i.i, %.val19.i
  %i.fg = add i64 %reass.sub500, 1
  %40 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i33.i.i, i32 noundef %i.fe, i64 noundef %i.fg) #26 ; 4 uses
  %.not34.i.i35.i.i = icmp eq ptr %40, null
  br i1 %.not34.i.i35.i.i, label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i31.i.i
  %bcmp.i.i37.i.i = call i32 @bcmp(ptr nonnull %40, ptr nonnull readonly %.val.i, i64 %.val19.i)
  %i.fh = icmp eq i32 %bcmp.i.i37.i.i, 0
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit39.i.i, label %bb.ap
end_hunk_5
begin_hunk_6
  store i8 0, ptr %i.gt, align 1, !tbaa !15
  br label %_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN6google12_GLOBAL__N_119DoesSingleFlagMatchERKNS_19CommandLineFlagInfoERKNS0_17CompletionOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.ap, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i31.i.i, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i, %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit39.i.i, %bb.ao, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i
  %.1.i = phi i1 [ false, %bb.au ], [ false, %bb.ax ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i ], [ %.01838.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit26.thread.i.i ], [ %.01838.i, %bb.an ], [ %.01838.i, %bb.ao ], [ %.01838.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit39.i.i ], [ %.01838.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i31.i.i ], [ %.01838.i, %bb.ap ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.021.036.i, i64 208 ; 2 uses
  %i.gv = load ptr, ptr %i.dn, align 8, !tbaa !42
  %i.gw = icmp eq ptr %i.gu, %i.gv
end_hunk_6
begin_hunk_7
  %i.if = load i8, ptr %i.hz, align 1, !tbaa !15
  %i.ig = sext i8 %i.if to i32
  %i.ih = ptrtoint ptr %i.ie to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.a: ; preds = %bb.bo, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %.fr.i, %.lr.ph.i.i.i ], [ %i.im, %bb.bo ]
  %.02840.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i ], [ %i.ik, %bb.bo ]
  %reass.sub501 = sub i64 %.041.i.i.i, %i.ib
  %i.ii = add i64 %reass.sub501, 1
  %41 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i.i, i32 noundef %i.ig, i64 noundef %i.ii) #26 ; 4 uses
  %.not34.i.i.i.a = icmp eq ptr %41, null
  br i1 %.not34.i.i.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.a
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %41, ptr nonnull %i.hz, i64 %i.ib)
  %i.ij = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ij, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i, label %bb.bo
end_hunk_7
begin_hunk_8
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.cd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i: ; preds = %bb.bo, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i, %bb.bn
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.022.044.i, i64 32 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.ho
  br i1 %i.kf, label %..critedge_crit_edge.i, label %.lr.ph.split.i, !llvm.loop !53
end_hunk_8
begin_hunk_9
  %i.na = load i8, ptr %i.mu, align 1, !tbaa !15
  %i.nb = sext i8 %i.na to i32
  %i.nc = ptrtoint ptr %i.mz to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81: ; preds = %bb.cm, %.lr.ph.i.i.i80
  %.041.i.i.i82 = phi i64 [ %i.mw, %.lr.ph.i.i.i80 ], [ %i.nh, %bb.cm ]
  %.02840.i.i.i83 = phi ptr [ %i.my, %.lr.ph.i.i.i80 ], [ %i.nf, %bb.cm ]
  %reass.sub502 = sub i64 %.041.i.i.i82, %i.mq
  %i.nd = add i64 %reass.sub502, 1
  %42 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i.i83, i32 noundef %i.nb, i64 noundef %i.nd) #26 ; 4 uses
  %.not34.i.i.i85 = icmp eq ptr %42, null
  br i1 %.not34.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i86

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i86: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81
  %bcmp.i.i.i87 = call i32 @bcmp(ptr nonnull %42, ptr nonnull %i.mu, i64 %i.mq)
  %i.ne = icmp eq i32 %bcmp.i.i.i87, 0
  br i1 %i.ne, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i89, label %bb.cm
end_hunk_9
begin_hunk_10
  %.0.i.i = select i1 %.not.i.i90, i64 -1, i64 %i.ns
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.i: ; preds = %bb.cm, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i89, %bb.cl, %bb.ck, %.lr.ph.i60
  %43 = phi i1 [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i89 ], [ true, %bb.cn ], [ false, %.lr.ph.i60 ], [ false, %bb.cl ], [ false, %bb.ck ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81 ], [ false, %bb.cm ] ; 2 uses
  %.038.i = phi i64 [ %.0.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i89 ], [ -1, %bb.cn ], [ -1, %.lr.ph.i60 ], [ -1, %bb.cl ], [ -1, %bb.ck ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i81 ], [ -1, %bb.cm ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !21 ; 3 uses
  %i.nv = load i64, ptr %i.p, align 8, !tbaa !21
end_hunk_10
begin_hunk_11
  %i.afs = load i8, ptr %i.afm, align 1, !tbaa !15
  %i.aft = sext i8 %i.afs to i32
  %i.afu = ptrtoint ptr %i.afr to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a: ; preds = %bb.gr, %.lr.ph.i.i.i.i190.i.us
  %.041.i.i.i.i.i.us = phi i64 [ %i.afo, %.lr.ph.i.i.i.i190.i.us ], [ %i.afz, %bb.gr ]
  %.02840.i.i.i.i.i.us = phi ptr [ %i.afq, %.lr.ph.i.i.i.i190.i.us ], [ %i.afx, %bb.gr ]
  %reass.sub503 = sub i64 %.041.i.i.i.i.i.us, %i.afn
  %i.afv = add i64 %reass.sub503, 1
  %44 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i.i.i.i.us, i32 noundef %i.aft, i64 noundef %i.afv) #26 ; 4 uses
  %.not34.i.i.i.i.i.us.a = icmp eq ptr %44, null
  br i1 %.not34.i.i.i.i.i.us.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i315.i.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a
  %bcmp.i.i.i.i.i.us = call i32 @bcmp(ptr nonnull %44, ptr nonnull %i.afm, i64 %i.afn)
  %i.afw = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.afw, label %bb.gs, label %bb.gr
end_hunk_11
begin_hunk_12
  %i.agc = sub i64 %i.aga, %i.agb
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i315.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i315.i.us: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a, %bb.gr, %bb.gs, %bb.gq, %bb.gp
  %.1.i.i.i.i191.i.us = phi i64 [ -1, %bb.gq ], [ -1, %bb.gp ], [ %i.agc, %bb.gs ], [ -1, %bb.gr ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.us.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !81
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.zv, ptr %7, align 8, !tbaa !23, !alias.scope !87
end_hunk_12
begin_hunk_13
  %.041.i.i40.i.i.i.us = phi i64 [ %i.aic, %.lr.ph.i.i38.i.i.i.us ], [ %i.ail, %bb.hn ]
  %.02840.i.i41.i.i.i.us = phi ptr [ %i.aid, %.lr.ph.i.i38.i.i.i.us ], [ %i.aij, %bb.hn ]
  %i.aig = add i64 %.041.i.i40.i.i.i.us, -5
  %i.aih = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i41.i.i.i.us, i32 noundef 32, i64 noundef %i.aig) #26 ; 4 uses
  %.not34.i.i43.i.i.i.us = icmp eq ptr %i.aih, null
  br i1 %.not34.i.i43.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.i.i.i.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i44.i.i.i.us

end_hunk_13
begin_hunk_14
  %.041.i.i63.i.i.i.us = phi i64 [ %i.ajq, %.lr.ph.i.i61.i.i.i.us ], [ %i.ajz, %bb.hy ]
  %.02840.i.i64.i.i.i.us = phi ptr [ %i.ajr, %.lr.ph.i.i61.i.i.i.us ], [ %i.ajx, %bb.hy ]
  %i.aju = add i64 %.041.i.i63.i.i.i.us, -8
  %i.ajv = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i64.i.i.i.us, i32 noundef 32, i64 noundef %i.aju) #26 ; 4 uses
  %.not34.i.i66.i.i.i.us = icmp eq ptr %i.ajv, null
  br i1 %.not34.i.i66.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit70.i.i.i.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i67.i.i.i.us

end_hunk_14
begin_hunk_15
  %.041.i.i95.i.i.i.us = phi i64 [ %i.amh, %.lr.ph.i.i93.i.i.i.us ], [ %i.amq, %bb.it ]
  %.02840.i.i96.i.i.i.us = phi ptr [ %i.ami, %.lr.ph.i.i93.i.i.i.us ], [ %i.amo, %bb.it ]
  %i.aml = add i64 %.041.i.i95.i.i.i.us, -6
  %i.amm = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i96.i.i.i.us, i32 noundef 10, i64 noundef %i.aml) #26 ; 4 uses
  %.not34.i.i98.i.i.i.us = icmp eq ptr %i.amm, null
  br i1 %.not34.i.i98.i.i.i.us, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i110.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i99.i.i.i.us

end_hunk_15
begin_hunk_16
  %.041.i.i134.i.i.i.us = phi i64 [ %i.anc, %.lr.ph.i.i132.i.i.i.us ], [ %i.anl, %bb.iv ]
  %.02840.i.i135.i.i.i.us = phi ptr [ %i.and, %.lr.ph.i.i132.i.i.i.us ], [ %i.anj, %bb.iv ]
  %i.ang = add i64 %.041.i.i134.i.i.i.us, -6
  %i.anh = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02840.i.i135.i.i.i.us, i32 noundef 10, i64 noundef %i.ang) #26 ; 4 uses
  %.not34.i.i137.i.i.i.us = icmp eq ptr %i.anh, null
  br i1 %.not34.i.i137.i.i.i.us, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i110.us, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i138.i.i.i.us

end_hunk_16
