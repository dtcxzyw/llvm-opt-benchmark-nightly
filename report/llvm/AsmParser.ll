Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmParser?download=true
inline.NumInlined: 6269
inline.NumDeleted: 2315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_19AsmParser18parseDirectiveFileEN4llvm5SMLocE:bb.a
  store ptr @.str.292, ptr %13, align 8, !tbaa !79
  store i8 3, ptr %i.ba, align 8, !tbaa !77
  %i.cm = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5checkEbRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(243) %0, i1 noundef zeroext %i.cl, ptr noundef nonnull align 8 dereferenceable(34) %13) #27
  br i1 %i.cm, label %.critedge8, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr %0, align 8, !tbaa !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 176
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br i1 %i.cq, label %.thread, label %bb.q

.critedge8:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit57.thread, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit57.thread113:    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.m, %_ZN4llvmeqENS_9StringRefES0_.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cs, align 1, !tbaa !78
  store ptr @.str.292, ptr %14, align 8, !tbaa !79
  store i8 3, ptr %i.cr, align 8, !tbaa !77
  %i.ct = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8TokErrorERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(34) %14, ptr null, ptr null) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.p, %_ZN4llvmeqENS_9StringRefES0_.exit57.thread113, %.critedge4, %.critedge6, %.critedge8
  %.1.ph = phi i1 [ %i.ct, %_ZN4llvmeqENS_9StringRefES0_.exit57.thread113 ], [ true, %.critedge8 ], [ true, %.critedge6 ], [ true, %.critedge4 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.thread120

bb.q:                                             ; preds = %bb.n, %bb.p
  %.150 = phi i1 [ %.049136, %bb.n ], [ true, %bb.p ] ; 2 uses
  %.147 = phi i1 [ true, %bb.n ], [ %.046137, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.cu = call noundef zeroext i1 @_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE(ptr noundef nonnull align 8 dereferenceable(243) %0, i32 noundef 9) #27
  br i1 %i.cu, label %._crit_edge, label %bb.k, !llvm.loop !1017

._crit_edge:                                      ; preds = %bb.q, %bb.j
  %.049.lcssa = phi i1 [ false, %bb.j ], [ %.150, %bb.q ]
  %.046.lcssa = phi i1 [ false, %bb.j ], [ %.147, %bb.q ]
  %i.cv = icmp eq i64 %.042, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !59, !nonnull !60, !align !61 ; 6 uses
  br i1 %i.cv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 152
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !460, !nonnull !60, !align !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 251
  %i.db = load i8, ptr %i.da, align 1, !tbaa !1022, !range !403, !noundef !60
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.s, label %.thread120

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !89, !nonnull !60, !align !61 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 632
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(304) %i.de, ptr %.sroa.0102.0, i64 %.sroa.8.0) #27
  br label %.thread120

bb.t:                                             ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 1585
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !402, !range !403, !noundef !60
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4, !tbaa !431
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 1520
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 1536
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !171 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 1528 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dn, %bb.u ] ; 6 uses
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !523 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dp = icmp eq ptr %.012.i.i.i.i.i, %i.do
  br i1 %i.dp, label %.critedge.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !431
  %.not123 = icmp eq i32 %i.dr, 0
  br i1 %.not123, label %_ZN4llvm9MCContext19getMCDwarfLineTableEj.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.v, %_ZNSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i, %bb.u
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.012.i.i.i.i.i, %bb.v ], [ %.012.i.i.i.i.i, %_ZNSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i.i ], [ %i.do, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.a, ptr %2, align 8, !tbaa !497
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ds = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr nonnull %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm9MCContext19getMCDwarfLineTableEj.exit

_ZN4llvm9MCContext19getMCDwarfLineTableEj.exit:   ; preds = %bb.v, %.critedge.i.i
  %.sroa.06.0.i.i = phi ptr [ %i.ds, %.critedge.i.i ], [ %.012.i.i.i.i.i, %bb.v ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !82 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 56 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN4llvm9MCContext19getMCDwarfLineTableEj.exit
  %i.dx = zext i32 %i.dw to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.dx, 5
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.dy, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !376 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !79
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.du, %i.dz
  br i1 %.not.i.i.i.i, label %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN4llvm9MCContext19getMCDwarfLineTableEj.exit
  store i32 0, ptr %i.dv, align 8, !tbaa !169
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 160
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !82 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 168 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !169 ; 2 uses
  %.not4.i.i1.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not4.i.i1.i.i, label %_ZN4llvm16MCDwarfLineTable14resetFileTableEv.exit, label %.lr.ph.i.preheader.i2.i.i

.lr.ph.i.preheader.i2.i.i:                        ; preds = %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv.exit.i.i
  %i.ej = zext i32 %i.ei to i64
  %.idx.i3.i.i = mul nuw nsw i64 %i.ej, 80
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx.i3.i.i
  br label %.lr.ph.i.i4.i.i

.lr.ph.i.i4.i.i:                                  ; preds = %_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i2.i.i
  %.05.i.i5.i.i = phi ptr [ %i.el, %_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i ], [ %i.ek, %.lr.ph.i.preheader.i2.i.i ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.05.i.i5.i.i, i64 -80 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !376 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %.05.i.i5.i.i, i64 -64 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i4.i.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !79
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #29
  br label %_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i

_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i:           ; preds = %.lr.ph.i.i4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.not.i.i6.i.i = icmp eq ptr %i.eg, %i.el
  br i1 %.not.i.i6.i.i, label %_ZN4llvm16MCDwarfLineTable14resetFileTableEv.exit, label %.lr.ph.i.i4.i.i, !llvm.loop !17

_ZN4llvm16MCDwarfLineTable14resetFileTableEv.exit: ; preds = %_ZN4llvm11MCDwarfFileD2Ev.exit.i.i.i.i, %_ZN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5clearEv.exit.i.i
  store i32 0, ptr %i.eh, align 8, !tbaa !169
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 472
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 480
  store i64 0, ptr %i.es, align 8, !tbaa !377
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !376
  store i8 0, ptr %i.et, align 1, !tbaa !79
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 553
  store i8 1, ptr %i.eu, align 1, !tbaa !571
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 554
  store i8 0, ptr %i.ev, align 2, !tbaa !572
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 552
  store i8 0, ptr %i.ew, align 8, !tbaa !1023
  %i.ex = load ptr, ptr %i.cw, align 8, !tbaa !59, !nonnull !60, !align !61 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1585
  store i8 0, ptr %i.ey, align 1, !tbaa !402
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm16MCDwarfLineTable14resetFileTableEv.exit, %bb.t
  %i.ez = phi ptr [ %i.ex, %_ZN4llvm16MCDwarfLineTable14resetFileTableEv.exit ], [ %i.cx, %bb.t ] ; 2 uses
  br i1 %.046.lcssa, label %_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit, label %bb.x

_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit: ; preds = %bb.w
  %25 = load i64, ptr %i.b, align 8, !tbaa !72
  %26 = load i64, ptr %i.c, align 8, !tbaa !72
  %27 = call i64 @llvm.bswap.i64(i64 %25)
  %28 = bitcast i64 %27 to <8 x i8>
  %29 = call i64 @llvm.bswap.i64(i64 %26)
  %30 = bitcast i64 %29 to <8 x i8>
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit, %bb.w
  %.sroa.5.0 = phi i8 [ 1, %_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit ], [ 0, %bb.w ] ; 2 uses
  %i.fa = phi <8 x i8> [ %28, %_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit ], [ undef, %bb.w ] ; 2 uses
  %i.fb = phi <8 x i8> [ %30, %_ZNSt8optionalIN4llvm3MD59MD5ResultEEaSIRS2_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS3_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS2_ES8_IS2_NSt5decayISB_E4typeEEEEESt16is_constructibleIS2_JSB_EESt13is_assignableIS5_SB_EEERS3_E4typeEOSB_.exit ], [ undef, %bb.w ] ; 2 uses
  br i1 %.049.lcssa, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fc = load i64, ptr %i.at, align 8, !tbaa !377 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 192 ; 3 uses
  %i.fe = and i64 %i.fc, 4294967295               ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, 7
  %i.fg = and i64 %i.ff, 8589934584               ; 2 uses
  %i.fh = load ptr, ptr %i.fd, align 8, !tbaa !573 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = add i64 %i.fg, %i.fi                    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 200
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !574
  %i.fm = icmp ult i64 %i.fj, %i.fl
  br i1 %i.fm, label %bb.z, label %bb.aa, !prof !410

bb.z:                                             ; preds = %bb.y
  %i.fn = inttoptr i64 %i.fj to ptr
  store ptr %i.fn, ptr %i.fd, align 8, !tbaa !573
  br label %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fo = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, i64 noundef %i.fe, i64 noundef %i.fg, i8 3)
  %.pre = load i64, ptr %i.at, align 8, !tbaa !377
  br label %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.z, %bb.aa
  %i.fp = phi i64 [ %i.fc, %bb.z ], [ %.pre, %bb.aa ]
  %.0.i.i.i = phi ptr [ %i.fh, %bb.z ], [ %i.fo, %bb.aa ] ; 2 uses
  %i.fq = load ptr, ptr %8, align 8, !tbaa !376
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr align 1 %i.fq, i64 %i.fp, i1 false)
  %i.fr = load i64, ptr %i.at, align 8, !tbaa !377
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, %bb.x
  %.sroa.088.0 = phi ptr [ %.0.i.i.i, %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit ], [ undef, %bb.x ] ; 2 uses
  %.sroa.590.0 = phi i64 [ %i.fr, %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit ], [ undef, %bb.x ] ; 2 uses
  %.sroa.6.0 = phi i8 [ 1, %_ZNSt8optionalIN4llvm9StringRefEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit ], [ 0, %bb.x ] ; 2 uses
  %i.fs = icmp eq i64 %.042, 0
  br i1 %i.fs, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %i.cw, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1688 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !575
  %i.fw = icmp ult i16 %i.fv, 5
  br i1 %i.fw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i16 5, ptr %i.fu, align 8, !tbaa !575
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !89, !nonnull !60, !align !61 ; 2 uses
  store <8 x i8> %i.fa, ptr %15, align 8
  %.sroa.080.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store <8 x i8> %i.fb, ptr %.sroa.080.sroa.13.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.088.0, ptr %16, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %.sroa.590.0, ptr %.sroa.590.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !63
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 664
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(304) %i.fy, ptr %.sroa.0104.0, i64 %.sroa.6105.0, ptr %.sroa.0102.0, i64 %.sroa.8.0, ptr noundef nonnull byval(%"class.std::optional.305") align 8 %15, ptr noundef nonnull byval(%"class.std::optional.312") align 8 %16, i32 noundef 0) #27
  br label %bb.aj

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !89, !nonnull !60, !align !61 ; 2 uses
  %i.ge = trunc i64 %.042 to i32
  store ptr %.sroa.0102.0, ptr %18, align 8, !tbaa !71
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !72
  store <8 x i8> %i.fa, ptr %19, align 8
  %.sroa.080.sroa.13.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <8 x i8> %i.fb, ptr %.sroa.080.sroa.13.0..sroa_idx158, align 8
  %.sroa.5.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx81, align 8
  store ptr %.sroa.088.0, ptr %20, align 8
  %.sroa.590.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %.sroa.590.0, ptr %.sroa.590.0..sroa_idx91, align 8
  %.sroa.6.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx93, align 8
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 656
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %17, ptr noundef nonnull align 8 dereferenceable(304) %i.gd, i32 noundef %i.ge, ptr %.sroa.0104.0, i64 %.sroa.6105.0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %18, ptr noundef nonnull byval(%"class.std::optional.305") align 8 %19, ptr noundef nonnull byval(%"class.std::optional.312") align 8 %20, i32 noundef 0) #27
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8             ; 2 uses
  %i.gk = trunc i8 %i.gj to i1                    ; 2 uses
  br i1 %i.gk, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.ah

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  %i.gl = load i64, ptr %17, align 8, !tbaa !577, !noalias !1024
  %i.gm = inttoptr i64 %i.gl to ptr
  store ptr null, ptr %17, align 8, !tbaa !577, !noalias !1024
  store ptr %i.gm, ptr %23, align 8, !tbaa !579, !alias.scope !1024
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr nofree noundef nonnull align 8 dereferenceable(8) %23) #27
  %i.gn = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 4, ptr %i.gn, align 8, !tbaa !77
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.go, align 1, !tbaa !78
  store ptr %22, ptr %21, align 8, !tbaa !79
  %i.gp = call noundef zeroext i1 @_ZN4llvm11MCAsmParser5ErrorENS_5SMLocERKNS_5TwineENS_7SMRangeE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %21, ptr null, ptr null) #27
  %i.gq = load ptr, ptr %22, align 8, !tbaa !376  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !79
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.gv = load ptr, ptr %23, align 8, !tbaa !579  ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv) #27, !inline_history !18
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %.pre174 = load i8, ptr %i.gi, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %_ZN4llvm5ErrorD2Ev.exit
  %i.ha = phi i8 [ %.pre174, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.gj, %bb.af ]
  %.2 = phi i1 [ %i.gp, %_ZN4llvm5ErrorD2Ev.exit ], [ undef, %bb.af ]
  %i.hb = trunc i8 %i.ha to i1
  br i1 %i.hb, label %bb.ai, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.hc = load ptr, ptr %17, align 8, !tbaa !577  ; 3 uses
  %.not.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ai
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hc) #27, !inline_history !1020
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.ah, %bb.ai, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br i1 %i.gk, label %.thread120, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit, %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 870 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 2, !tbaa !1025, !range !403, !noundef !60
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %.thread120, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hj = load ptr, ptr %i.cw, align 8, !tbaa !59, !nonnull !60, !align !61 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1536
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !171 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1528 ; 4 uses
  %.not10.i.i.i.i.i59 = icmp eq ptr %i.hl, null
  br i1 %.not10.i.i.i.i.i59, label %_ZNK4llvm9MCContext25isDwarfMD5UsageConsistentEj.exit, label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %bb.ak, %.lr.ph.i.i.i.i.i60
  %.012.i.i.i.i.i61 = phi ptr [ %.1.i.i.i.i.i64, %.lr.ph.i.i.i.i.i60 ], [ %i.hl, %bb.ak ] ; 4 uses
  %.1.in.i.i.i.i.i63 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i61, i64 16
  %.1.i.i.i.i.i64 = load ptr, ptr %.1.in.i.i.i.i.i63, align 8, !tbaa !523 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.1.i.i.i.i.i64, null
  br i1 %.not.i.i.i.i.i65, label %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i60, !llvm.loop !1021

_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i60
  %i.hn = icmp eq ptr %.012.i.i.i.i.i61, %i.hm
  br i1 %i.hn, label %_ZNK4llvm9MCContext25isDwarfMD5UsageConsistentEj.exit, label %bb.al

bb.al:                                            ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i61, i64 32
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !431
  %.not124 = icmp eq i32 %i.hp, 0
  %spec.select.i.i.i.i = select i1 %.not124, ptr %.012.i.i.i.i.i61, ptr %i.hm
  br label %_ZNK4llvm9MCContext25isDwarfMD5UsageConsistentEj.exit

_ZNK4llvm9MCContext25isDwarfMD5UsageConsistentEj.exit: ; preds = %bb.ak, %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.al
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.hm, %bb.ak ], [ %i.hm, %_ZNKSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.al ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 168
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !169
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_19AsmParser18getBinOpPrecedenceEN4llvm8AsmToken9TokenKindERNS1_12MCBinaryExpr6OpcodeE:bb.a
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.u:                                             ; preds = %bb.j
  %i.g = getelementptr i8, ptr %.40.val, i64 56
  %.val6 = load i64, ptr %i.g, align 8
  %.not.i.i = icmp eq i64 %.val6, 1
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.u
  %lhsc.i = load i8, ptr %.val, align 1
  %i.h = icmp eq i8 %lhsc.i, 64
  br i1 %i.h, label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit, label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.v:                                             ; preds = %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.w:                                             ; preds = %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.x:                                             ; preds = %bb.b, %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.y:                                             ; preds = %bb.b, %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.z:                                             ; preds = %bb.b, %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.aa:                                            ; preds = %bb.j
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

bb.ab:                                            ; preds = %bb.j
  %i.i = select i1 %i.c, i32 17, i32 16
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split

_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split: ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink.i7.sink = phi i32 [ 6, %bb.b ], [ 0, %bb.r ], [ 5, %bb.q ], [ 4, %bb.p ], [ 18, %bb.i ], [ 0, %bb.h ], [ %i.e, %bb.g ], [ 15, %bb.f ], [ 9, %bb.o ], [ 8, %bb.n ], [ 12, %bb.m ], [ 3, %bb.l ], [ 7, %bb.k ], [ 14, %bb.u ], [ 1, %bb.e ], [ 19, %bb.d ], [ 13, %bb.c ], [ 14, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ %i.i, %bb.ab ], [ 15, %bb.aa ], [ 10, %bb.z ], [ 2, %bb.y ], [ 11, %bb.x ], [ 1, %bb.w ], [ 19, %bb.v ], [ 6, %bb.j ], [ 13, %bb.t ], [ 18, %bb.s ]
  %.ph = phi i32 [ 1, %bb.b ], [ 4, %bb.r ], [ 3, %bb.q ], [ 3, %bb.p ], [ 5, %bb.i ], [ 5, %bb.h ], [ 4, %bb.g ], [ 4, %bb.f ], [ 3, %bb.o ], [ 3, %bb.n ], [ 3, %bb.m ], [ 3, %bb.l ], [ 1, %bb.k ], [ 5, %bb.u ], [ 2, %bb.e ], [ 2, %bb.d ], [ 2, %bb.c ], [ 5, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 6, %bb.ab ], [ 6, %bb.aa ], [ 6, %bb.z ], [ 6, %bb.y ], [ 6, %bb.x ], [ 5, %bb.w ], [ 5, %bb.v ], [ 2, %bb.j ], [ 5, %bb.t ], [ 4, %bb.s ]
  store i32 %.sink.i7.sink, ptr %1, align 4, !tbaa !637
  br label %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit

_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit: ; preds = %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.j, %bb.b
  %i.j = phi i32 [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ], [ 0, %bb.b ], [ 0, %bb.j ], [ %.ph, %_ZL24getDarwinBinOpPrecedenceN4llvm8AsmToken9TokenKindERNS_12MCBinaryExpr6OpcodeEb.exit.sink.split ]
  ret i32 %i.j
}

declare void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare ptr @_ZNK4llvm8AsmToken9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm9MCContext25getDirectionalLocalSymbolEjb(ptr noundef nonnull align 8 dereferenceable(2208), i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE9push_backEOS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !170
  %.not.not.i.i = icmp ult i32 %i.b, %i.f
  %.val.pre4 = load ptr, ptr %0, align 8, !tbaa !82 ; 4 uses
  br i1 %.not.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE28reserveForParamAndGetAddressERS8_m.exit, label %bb.b, !prof !410

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %.val.pre4, i64 %i.c
  %i.h = icmp uge ptr %1, %.val.pre4
  %i.i = icmp ult ptr %1, %i.g
  %spec.select.i.i.i.i = and i1 %i.h, %i.i
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !445

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.val.pre4 to i64
  %i.l = sub i64 %i.j, %i.k
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.val19.i.i = load ptr, ptr %0, align 8, !tbaa !82 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.val19.i.i, i64 %i.l
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE28reserveForParamAndGetAddressERS8_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE28reserveForParamAndGetAddressERS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE28reserveForParamAndGetAddressERS8_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %.val = phi ptr [ %.val.pre4, %bb.a ], [ %.val19.i.i, %bb.c ], [ %.val.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ], [ %1, %.critedge.i.i ] ; 3 uses
  %.val3 = load i32, ptr %i.a, align 8, !tbaa !169
  %i.n = zext i32 %.val3 to i64
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %i.n ; 3 uses
  %i.p = load i64, ptr %.016.i.i, align 8, !tbaa !85
  store i64 %i.p, ptr %i.o, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.r, i64 40, i1 false), !tbaa.struct !432
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !71
  store i64 %i.u, ptr %i.s, align 8, !tbaa !71
  %i.v = load i32, ptr %i.a, align 8, !tbaa !169
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !169
  ret void
}

declare void @_ZN4llvm7APFloatC1ERKNS_12fltSemanticsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr, i64) unnamed_addr #5

declare noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 2 uses
  %.val2.i = load ptr, ptr %0, align 8, !tbaa !82 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i32, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.e = zext i32 %.val6.i to i64
  %.idx.i = mul nuw nsw i64 %i.e, 56
  %i.f = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %.val6.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i, %bb.a ] ; 4 uses
  %i.g = load i64, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !85
  store i64 %i.g, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.i, i64 40, i1 false), !tbaa.struct !432
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !71
  store i64 %i.l, ptr %i.j, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1531

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit, %bb.a
  %i.o = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit.loopexit ], [ %.val2.i, %bb.a ] ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !72
  %i.q = icmp eq ptr %i.o, %i.b
  br i1 %i.q, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE21takeAllocationForGrowEPS8_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit
  call void @free(ptr noundef %i.o) #27
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE21takeAllocationForGrowEPS8_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE21takeAllocationForGrowEPS8_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EE19moveElementsForGrowEPS8_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !82
  %i.r = trunc i64 %i.p to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !422}
!1 = distinct !{null}
!2 = distinct !{null, null, null, null, null}
!3 = distinct !{!3, !422}
!4 = distinct !{!4, !422}
!5 = distinct !{!5, !422}
!6 = distinct !{!6, !422}
!7 = distinct !{!7, !422}
!8 = distinct !{null, null}
!9 = distinct !{null}
!10 = distinct !{!10, !422}
!11 = distinct !{!11, !422}
!12 = distinct !{!12, !422}
!13 = distinct !{!13, !422}
!14 = distinct !{!14, !422}
!15 = distinct !{null, null}
!16 = distinct !{!16, !422}
!17 = distinct !{!17, !422}
!18 = distinct !{null}
!19 = distinct !{!19, !422}
!20 = distinct !{null, null}
!21 = distinct !{!21, !422}
!22 = distinct !{!22, !422}
!23 = distinct !{!23, !422}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"p1 _ZTSN4llvm17MCTargetAsmParserE", !32, i64 0}
!34 = !{!"p1 _ZTSN4llvm9MCContextE", !32, i64 0}
!35 = !{!"p1 _ZTSN4llvm10MCStreamerE", !32, i64 0}
!36 = !{!"p1 _ZTSN4llvm9SourceMgrE", !32, i64 0}
!37 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !32, i64 0}
!38 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !32, i64 0, !29, i64 8, !29, i64 12}
!39 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8AsmTokenEvEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EEE", !39, i64 0}
!41 = !{!"_ZTSN4llvm15SmallVectorImplINS_8AsmTokenEEE", !40, i64 0}
!42 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8AsmTokenELj1EEE", !28, i64 0}
!43 = !{!"_ZTSN4llvm11SmallVectorINS_8AsmTokenELj1EEE", !41, i64 0, !42, i64 16}
!44 = !{!"p1 omnipotent char", !32, i64 0}
!45 = !{!"long", !28, i64 0}
!46 = !{!"_ZTSN4llvm9StringRefE", !44, i64 0, !45, i64 8}
!47 = !{!"_ZTSN4llvm5SMLocE", !44, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !45, i64 8, !28, i64 16}
!50 = !{!"bool", !28, i64 0}
!51 = !{!"p1 _ZTSN4llvm18AsmCommentConsumerE", !32, i64 0}
!52 = !{!"_ZTSN4llvm8AsmLexerE", !43, i64 0, !44, i64 56, !46, i64 64, !47, i64 80, !49, i64 88, !37, i64 120, !50, i64 128, !50, i64 129, !50, i64 130, !50, i64 131, !44, i64 136, !50, i64 144, !50, i64 145, !50, i64 146, !50, i64 147, !50, i64 148, !50, i64 149, !50, i64 150, !50, i64 151, !50, i64 152, !29, i64 156, !50, i64 160, !50, i64 161, !51, i64 168}
!53 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11MCAsmParser14MCPendingErrorEvEE", !38, i64 0}
!54 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm15SmallVectorImplINS_11MCAsmParser14MCPendingErrorEEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm11SmallVectorINS_11MCAsmParser14MCPendingErrorELj0EEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm11MCAsmParserE", !33, i64 8, !34, i64 16, !35, i64 24, !36, i64 32, !37, i64 40, !52, i64 48, !56, i64 224, !50, i64 240, !50, i64 241, !50, i64 242}
!58 = !{!57, !33, i64 8}
!59 = !{!57, !34, i64 16}
!60 = !{}
!61 = !{i64 8}
!62 = !{!"vtable pointer", !27, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"_ZTSN4llvm6MCExpr8ExprKindE", !28, i64 0}
!65 = !{!"_ZTSN4llvm6MCExprE", !64, i64 0, !29, i64 1, !47, i64 8}
!66 = !{!65, !64, i64 0}
!67 = !{!"_ZTSN4llvm8AsmToken9TokenKindE", !28, i64 0}
!68 = !{!"_ZTSN4llvm5APIntE", !28, i64 0, !29, i64 8}
!69 = !{!"_ZTSN4llvm8AsmTokenE", !67, i64 0, !46, i64 8, !68, i64 24}
!70 = !{!69, !67, i64 0}
!71 = !{!44, !44, i64 0}
!72 = !{!45, !45, i64 0}
!73 = !{!46, !45, i64 8}
!74 = !{!46, !44, i64 0}
!75 = !{!"_ZTSN4llvm5Twine8NodeKindE", !28, i64 0}
!76 = !{!"_ZTSN4llvm5TwineE", !28, i64 0, !28, i64 16, !75, i64 32, !75, i64 33}
!77 = !{!76, !75, i64 32}
!78 = !{!76, !75, i64 33}
!79 = !{!28, !28, i64 0}
!80 = !{!"p1 _ZTSN4llvm8MCSymbolE", !32, i64 0}
!81 = !{!"p1 _ZTSN4llvm6MCExprE", !32, i64 0}
!82 = !{!38, !32, i64 0}
!83 = !{!57, !37, i64 40}
!84 = !{!81, !81, i64 0}
!85 = !{!80, !80, i64 0}
!86 = !{!"p1 _ZTSN4llvm10MCFragmentE", !32, i64 0}
!87 = !{!"_ZTSN4llvm8MCSymbolE", !86, i64 0, !29, i64 8, !29, i64 8, !29, i64 8, !29, i64 8, !29, i64 8, !29, i64 8, !29, i64 8, !29, i64 9, !29, i64 9, !29, i64 9, !29, i64 9, !29, i64 10, !29, i64 12, !28, i64 16}
!88 = !{!87, !86, i64 0}
!89 = !{!57, !35, i64 24}
!90 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !28, i64 0}
!91 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !28, i64 0}
!92 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !28, i64 0}
!93 = !{!"_ZTSN4llvm6Triple6OSTypeE", !28, i64 0}
!94 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !28, i64 0}
!95 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !28, i64 0}
!96 = !{!"_ZTSN4llvm6TripleE", !49, i64 0, !90, i64 32, !91, i64 36, !92, i64 40, !93, i64 44, !94, i64 48, !95, i64 52}
!97 = !{!"p1 _ZTSN4llvm8AsmLexerE", !32, i64 0}
!98 = !{!52, !50, i64 144}
!99 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm5SMLocEE", !28, i64 0, !50, i64 8}
!100 = !{!99, !50, i64 8}
!101 = !{!"p1 _ZTSN4llvm20MCAsmParserExtensionE", !32, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm20MCAsmParserExtensionELb0EE", !101, i64 0}
!103 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm20MCAsmParserExtensionESt14default_deleteIS1_EEE", !102, i64 0}
!104 = !{!"_ZTSSt5tupleIJPN4llvm20MCAsmParserExtensionESt14default_deleteIS1_EEE", !103, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm20MCAsmParserExtensionESt14default_deleteIS1_EE", !104, i64 0}
!106 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm20MCAsmParserExtensionESt14default_deleteIS1_ELb1ELb1EE", !105, i64 0}
!107 = !{!"_ZTSSt10unique_ptrIN4llvm20MCAsmParserExtensionESt14default_deleteIS1_EE", !106, i64 0}
!108 = !{!"_ZTSSt17_Optional_payloadIN4llvm5SMLocELb1ELb1ELb1EE", !99, i64 0}
!109 = !{!"_ZTSSt14_Optional_baseIN4llvm5SMLocELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt8optionalIN4llvm5SMLocEE", !109, i64 0}
!111 = !{!"_ZTSN4llvm7AsmCond23ConditionalAssemblyTypeE", !28, i64 0}
!112 = !{!"_ZTSN4llvm7AsmCondE", !111, i64 0, !50, i64 4, !50, i64 5}
!113 = !{!"p1 _ZTSN4llvm7AsmCondE", !32, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN4llvm7AsmCondESaIS1_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIN4llvm7AsmCondESaIS1_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIN4llvm7AsmCondESaIS1_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIN4llvm7AsmCondESaIS1_EE", !116, i64 0}
!118 = !{!"any p2 pointer", !32, i64 0}
!119 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !118, i64 0}
!120 = !{!"_ZTSN4llvm13StringMapImplE", !119, i64 0, !29, i64 8, !29, i64 12, !29, i64 16}
!121 = !{!"_ZTSN4llvm9StringMapISt4pairIPNS_20MCAsmParserExtensionEPFbS3_NS_9StringRefENS_5SMLocEEENS_15MallocAllocatorEEE", !120, i64 0}
!122 = !{!"p2 _ZTSN12_GLOBAL__N_118MacroInstantiationE", !118, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_118MacroInstantiationESaIS2_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!124 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_118MacroInstantiationESaIS2_EE12_Vector_implE", !123, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIPN12_GLOBAL__N_118MacroInstantiationESaIS2_EE", !124, i64 0}
!126 = !{!"_ZTSSt6vectorIPN12_GLOBAL__N_118MacroInstantiationESaIS2_EE", !125, i64 0}
!127 = !{!"p2 _ZTSN4llvm10MCAsmMacroE", !118, i64 0}
!128 = !{!"p1 _ZTSN4llvm10MCAsmMacroE", !32, i64 0}
!129 = !{!"_ZTSSt15_Deque_iteratorIN4llvm10MCAsmMacroERS1_PS1_E", !128, i64 0, !128, i64 8, !128, i64 16, !127, i64 24}
!130 = !{!"_ZTSNSt11_Deque_baseIN4llvm10MCAsmMacroESaIS1_EE16_Deque_impl_dataE", !127, i64 0, !45, i64 8, !129, i64 16, !129, i64 48}
!131 = !{!"_ZTSNSt11_Deque_baseIN4llvm10MCAsmMacroESaIS1_EE11_Deque_implE", !130, i64 0}
!132 = !{!"_ZTSSt11_Deque_baseIN4llvm10MCAsmMacroESaIS1_EE", !131, i64 0}
!133 = !{!"_ZTSSt5dequeIN4llvm10MCAsmMacroESaIS1_EE", !132, i64 0}
!134 = !{!"_ZTSN12_GLOBAL__N_19AsmParser13CppHashInfoTyE", !46, i64 0, !45, i64 16, !47, i64 24, !29, i64 32}
!135 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEEvEE", !38, i64 0}
!136 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELb0EEE", !135, i64 0}
!137 = !{!"_ZTSN4llvm15SmallVectorImplISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEEEE", !136, i64 0}
!138 = !{!"_ZTSN4llvm18SmallVectorStorageISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELj4EEE", !28, i64 0}
!139 = !{!"_ZTSN4llvm11SmallVectorISt5tupleIJNS_5SMLocEN12_GLOBAL__N_19AsmParser13CppHashInfoTyEPNS_8MCSymbolEEELj4EEE", !137, i64 0, !138, i64 16}
!140 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9StringRefEvEE", !38, i64 0}
!141 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EEE", !140, i64 0}
!142 = !{!"_ZTSN4llvm15SmallVectorImplINS_9StringRefEEE", !141, i64 0}
!143 = !{!"_ZTSN4llvm18SmallVectorStorageINS_9StringRefELj2EEE", !28, i64 0}
!144 = !{!"_ZTSN4llvm11SmallVectorINS_9StringRefELj2EEE", !142, i64 0, !143, i64 16}
!145 = !{!"_ZTSSt4lessIN4llvm9StringRefEE"}
!146 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9StringRefEEE", !145, i64 0}
!147 = !{!"_ZTSSt14_Rb_tree_color", !28, i64 0}
!148 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !32, i64 0}
!149 = !{!"_ZTSSt18_Rb_tree_node_base", !147, i64 0, !148, i64 8, !148, i64 16, !148, i64 24}
!150 = !{!"_ZTSSt15_Rb_tree_header", !149, i64 0, !45, i64 32}
!151 = !{!"_ZTSNSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !146, i64 0, !150, i64 8}
!152 = !{!"_ZTSSt8_Rb_treeIN4llvm9StringRefES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !151, i64 0}
!153 = !{!"_ZTSSt3setIN4llvm9StringRefESt4lessIS1_ESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSN4llvm8SmallSetINS_9StringRefELj2ESt4lessIS1_EEE", !144, i64 0, !153, i64 48}
!155 = !{!"_ZTSN4llvm9StringMapIN12_GLOBAL__N_19AsmParser13DirectiveKindENS_15MallocAllocatorEEE", !120, i64 0}
!156 = !{!"_ZTSN4llvm9StringMapIN12_GLOBAL__N_19AsmParser14CVDefRangeTypeENS_15MallocAllocatorEEE", !120, i64 0}
!157 = !{!"_ZTSN12_GLOBAL__N_19AsmParserE", !57, i64 0, !32, i64 248, !32, i64 256, !107, i64 264, !107, i64 272, !47, i64 280, !110, i64 288, !29, i64 304, !112, i64 308, !117, i64 320, !121, i64 344, !126, i64 368, !133, i64 392, !29, i64 472, !29, i64 476, !134, i64 480, !50, i64 520, !139, i64 528, !154, i64 768, !29, i64 864, !50, i64 868, !50, i64 869, !50, i64 870, !50, i64 871, !155, i64 872, !156, i64 896}
!158 = !{!157, !29, i64 304}
!159 = !{!112, !50, i64 5}
!160 = !{!120, !29, i64 16}
!161 = !{!130, !45, i64 8}
!162 = !{!130, !127, i64 0}
!163 = !{!128, !128, i64 0}
end_hunk_1
