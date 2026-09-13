Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLParser?download=true
inline.NumInlined: 17861
inline.NumDeleted: 6725
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm8LLParser10parseValIDERNS_5ValIDEPNS0_16PerFunctionStateEPNS_4TypeE:bb.a
bb.q:                                             ; preds = %bb.a
  %.not424 = icmp eq ptr %3, null
  br i1 %.not424, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.bo, align 1, !tbaa !186
  store ptr @.str.201, ptr %19, align 8, !tbaa !187
  store i8 3, ptr %i.bn, align 8, !tbaa !188
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(34) %19, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bp = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25 ; 2 uses
  %i.bq = tail call noundef i32 @_ZN4llvm11APFloatBase13getSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.bp) #25
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !452
  %.not425 = icmp eq i32 %i.bq, %i.bs
  br i1 %.not425, label %bb.t, label %.thread646

.thread646:                                       ; preds = %bb.s
  %.sroa.0171.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.bu, align 1, !tbaa !186
  store ptr @.str.206, ptr %20, align 8, !tbaa !187
  store i8 3, ptr %i.bt, align 8, !tbaa !188
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %.sroa.0171.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %20, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 4 dereferenceable(29) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %21) #25 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.kc

bb.u:                                             ; preds = %bb.a
  %i.by = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !66, !align !182
  %i.bz = tail call noundef ptr @_ZN4llvm11ConstantInt7getTrueERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #25
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !523
  br label %bb.kc

bb.v:                                             ; preds = %bb.a
  %i.cb = load ptr, ptr %0, align 8, !tbaa !181, !nonnull !66, !align !182
  %i.cc = tail call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !523
  br label %bb.kc

bb.w:                                             ; preds = %bb.a
  br label %bb.kc

bb.x:                                             ; preds = %bb.a
  br label %bb.kc

bb.y:                                             ; preds = %bb.a
  br label %bb.kc

bb.z:                                             ; preds = %bb.a
  br label %bb.kc

bb.aa:                                            ; preds = %bb.a
  %i.ce = tail call noundef i32 @_ZN4llvm7LLLexer8LexTokenEv(ptr noundef nonnull align 8 dereferenceable(169) %i.n) #25
  store i32 %i.ce, ptr %i.r, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.cf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.cf, ptr %22, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !212
  %i.ch = getelementptr inbounds nuw i8, ptr %22, i64 12
  store i32 16, ptr %i.ch, align 4, !tbaa !213
  %i.ci = call noundef zeroext i1 @_ZN4llvm8LLParser22parseGlobalValueVectorERNS_15SmallVectorImplIPNS_8ConstantEEE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull align 8 dereferenceable(16) %22)
  br i1 %i.ci, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = call noundef zeroext i1 @_ZN4llvm8LLParser10parseTokenENS_5lltok4KindEPKc(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef 9, ptr noundef nonnull @.str.207)
  br i1 %i.cj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load i32, ptr %i.cg, align 8, !tbaa !212
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3                ; 2 uses
  %i.cn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #29, !noalias !1231 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cn, i8 0, i64 %i.cm, i1 false), !noalias !1231
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !457 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !457
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #26
  %.pre719 = load ptr, ptr %i.co, align 8, !tbaa !457
  br label %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i, %bb.ac
  %i.cq = phi ptr [ %.pre719, %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i ], [ %i.cn, %bb.ac ]
  %i.cr = load i32, ptr %i.cg, align 8, !tbaa !212 ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.cr, ptr %i.ct, align 8, !tbaa !464
  %i.cu = load ptr, ptr %22, align 8, !tbaa !69
  %i.cv = shl nuw nsw i64 %i.cs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cq, ptr align 8 %i.cu, i64 %i.cv, i1 false)
  store i32 15, ptr %1, align 8, !tbaa !450
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit
  %.2 = phi i1 [ false, %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit ], [ true, %bb.ab ], [ true, %bb.aa ]
  %i.cw = load ptr, ptr %22, align 8, !tbaa !69   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cf
  br i1 %i.cx, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.cw) #25
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.thread

bb.af:                                            ; preds = %bb.a
  %i.cy = tail call noundef i32 @_ZN4llvm7LLLexer8LexTokenEv(ptr noundef nonnull align 8 dereferenceable(169) %i.n) #25 ; 2 uses
  store i32 %i.cy, ptr %i.r, align 8, !tbaa !86
  %.not.i432 = icmp eq i32 %i.cy, 8               ; 2 uses
  br i1 %.not.i432, label %bb.ag, label %_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit

bb.ag:                                            ; preds = %bb.af
  %i.cz = tail call noundef i32 @_ZN4llvm7LLLexer8LexTokenEv(ptr noundef nonnull align 8 dereferenceable(169) %i.n) #25
  store i32 %i.cz, ptr %i.r, align 8, !tbaa !86
  br label %_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit

_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.da, ptr %23, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  store i32 0, ptr %i.db, align 8, !tbaa !212
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 12
  store i32 16, ptr %i.dc, align 4, !tbaa !213
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !183 ; 2 uses
  %i.de = call noundef zeroext i1 @_ZN4llvm8LLParser22parseGlobalValueVectorERNS_15SmallVectorImplIPNS_8ConstantEEE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull align 8 dereferenceable(16) %23)
  br i1 %i.de, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit
  br i1 %.not.i432, label %bb.ai, label %.thread648

bb.ai:                                            ; preds = %bb.ah
  %i.df = call noundef zeroext i1 @_ZN4llvm8LLParser10parseTokenENS_5lltok4KindEPKc(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef 9, ptr noundef nonnull @.str.208)
  br i1 %i.df, label %bb.as, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = call noundef zeroext i1 @_ZN4llvm8LLParser10parseTokenENS_5lltok4KindEPKc(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef 11, ptr noundef nonnull @.str.209)
  br i1 %i.dg, label %bb.as, label %bb.ak

.thread648:                                       ; preds = %bb.ah
  %i.dh = call noundef zeroext i1 @_ZN4llvm8LLParser10parseTokenENS_5lltok4KindEPKc(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef 11, ptr noundef nonnull @.str.209)
  br i1 %i.dh, label %bb.as, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.di = load i32, ptr %i.db, align 8, !tbaa !212
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3                ; 2 uses
  %i.dl = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #29, !noalias !1232 ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dl, i8 0, i64 %i.dk, i1 false), !noalias !1232
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !457 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !457
  %.not.i.i.i.i433 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i433, label %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit438, label %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i434

_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i434: ; preds = %bb.ak
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #26
  %.pre718 = load ptr, ptr %i.dm, align 8, !tbaa !457
  br label %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit438

_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit438: ; preds = %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i434, %bb.ak
  %i.do = phi ptr [ %.pre718, %_ZNKSt14default_deleteIA_PN4llvm8ConstantEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i.i434 ], [ %i.dl, %bb.ak ]
  %i.dp = load ptr, ptr %23, align 8, !tbaa !69
  %i.dq = load i32, ptr %i.db, align 8, !tbaa !212
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.do, ptr align 8 %i.dp, i64 %i.ds, i1 false)
  %i.dt = load i32, ptr %i.db, align 8, !tbaa !212
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !464
  store i32 16, ptr %1, align 8, !tbaa !450
  br label %bb.as

bb.al:                                            ; preds = %.thread648
  %i.dv = load i32, ptr %i.db, align 8, !tbaa !212 ; 3 uses
  %.not.i439 = icmp eq i32 %i.dv, 0
  br i1 %.not.i439, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.0167.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.dx, align 1, !tbaa !186
  store ptr @.str.210, ptr %24, align 8, !tbaa !187
  store i8 3, ptr %i.dw, align 8, !tbaa !188
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %.sroa.0167.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %24, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.as

bb.an:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %23, align 8, !tbaa !69   ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !449
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !499 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 8            ; 4 uses
  %i.ee = and i32 %i.ed, 255
  %i.ef = and i32 %i.ed, 254
  %switch = icmp eq i32 %i.ef, 12
  br i1 %switch, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %trunc.i.i440 = trunc i32 %i.ed to i8
  switch i8 %trunc.i.i440, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443 [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit443:      ; preds = %bb.ao
  %i.eg = and i32 %i.ed, 253
  %spec.select.i442 = icmp eq i32 %i.eg, 4
  %i.eh = icmp eq i32 %i.ee, 15
  %or.cond689 = or i1 %spec.select.i442, %i.eh
  br i1 %or.cond689, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit443
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.ei = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.ej, align 1, !tbaa !186
  store ptr @.str.211, ptr %25, align 8, !tbaa !187
  store i8 3, ptr %i.ei, align 8, !tbaa !188
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(34) %25, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.as

_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread: ; preds = %bb.an, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %_ZNK4llvm4Type17isFloatingPointTyEv.exit443
  %.not422705 = icmp eq i32 %i.dv, 1
  br i1 %.not422705, label %._crit_edge708, label %.lr.ph707.preheader

.lr.ph707.preheader:                              ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
  %135 = zext i32 %i.dv to i64                    ; 2 uses
  br label %.lr.ph707

.lr.ph707:                                        ; preds = %.lr.ph707.preheader, %bb.ar
  %indvars.iv712 = phi i64 [ 1, %.lr.ph707.preheader ], [ %indvars.iv.next713, %bb.ar ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv712
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !449
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !499
  %.not423 = icmp eq ptr %i.en, %i.eb
  br i1 %.not423, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph707
  %i.eo = trunc nuw i64 %indvars.iv712 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.ep = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %29, i64 33
  store i8 1, ptr %i.eq, align 1, !tbaa !186
  store ptr @.str.212, ptr %29, align 8, !tbaa !187
  store i8 3, ptr %i.ep, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.er = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 9, ptr %i.er, align 8, !tbaa !188
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.es, align 1, !tbaa !186
  store i32 %i.eo, ptr %30, align 8, !tbaa !187
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %28, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr noundef nonnull align 8 dereferenceable(34) %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.et = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.eu, align 1, !tbaa !186
  store ptr @.str.213, ptr %31, align 8, !tbaa !187
  store i8 3, ptr %i.et, align 8, !tbaa !188
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %27, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr noundef nonnull align 8 dereferenceable(34) %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  %i.ev = load ptr, ptr %23, align 8, !tbaa !69
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !449
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !499
  call fastcc void @_ZL13getTypeStringB5cxx11PN4llvm4TypeE(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 4, ptr %i.ez, align 8, !tbaa !188
  %i.fa = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.fa, align 1, !tbaa !186
  store ptr %33, ptr %32, align 8, !tbaa !187
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %26, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef nonnull align 8 dereferenceable(34) %32)
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(34) %26, i32 noundef 1) #25
  %i.fb = load ptr, ptr %33, align 8, !tbaa !191  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !187
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.ar:                                            ; preds = %.lr.ph707
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next713, %135
  br i1 %exitcond, label %._crit_edge708, label %.lr.ph707, !llvm.loop !1226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.as

._crit_edge708:                                   ; preds = %bb.ar, %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread
  %.pre-phi = phi i64 [ 1, %_ZNK4llvm4Type17isFloatingPointTyEv.exit443.thread ], [ %135, %bb.ar ]
  %i.fg = call noundef ptr @_ZN4llvm14ConstantVector3getENS_8ArrayRefIPNS_8ConstantEEE(ptr nonnull %i.dy, i64 %.pre-phi) #25
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !523
  store i32 12, ptr %1, align 8, !tbaa !450
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread648, %_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit, %bb.ai, %bb.aj, %._crit_edge708, %bb.ap, %bb.am, %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit438
  %.4 = phi i1 [ true, %bb.ap ], [ false, %_ZNSt10unique_ptrIA_PN4llvm8ConstantESt14default_deleteIS3_EED2Ev.exit438 ], [ true, %bb.am ], [ false, %._crit_edge708 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %_ZN4llvm8LLParser12EatIfPresentENS_5lltok4KindE.exit ], [ true, %.thread648 ]
  %i.fi = load ptr, ptr %23, align 8, !tbaa !69   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.da
  br i1 %i.fj, label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit444, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef %i.fi) #25
  br label %_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit444

_ZN4llvm11SmallVectorIPNS_8ConstantELj16EED2Ev.exit444: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %.thread

bb.au:                                            ; preds = %bb.a
  %i.fk = tail call noundef i32 @_ZN4llvm7LLLexer8LexTokenEv(ptr noundef nonnull align 8 dereferenceable(169) %i.n) #25
  store i32 %i.fk, ptr %i.r, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  %i.fl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  store ptr %i.fl, ptr %34, align 8, !tbaa !69
  %i.fm = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !212
  %i.fn = getelementptr inbounds nuw i8, ptr %34, i64 12
  store i32 16, ptr %i.fn, align 4, !tbaa !213
  %i.fo = load ptr, ptr %i.o, align 8, !tbaa !183 ; 2 uses
  %i.fp = call noundef zeroext i1 @_ZN4llvm8LLParser22parseGlobalValueVectorERNS_15SmallVectorImplIPNS_8ConstantEEE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull align 8 dereferenceable(16) %34)
  br i1 %i.fp, label %bb.be, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = call noundef zeroext i1 @_ZN4llvm8LLParser10parseTokenENS_5lltok4KindEPKc(ptr noundef nonnull align 8 dereferenceable(1984) %0, i32 noundef 7, ptr noundef nonnull @.str.214)
  br i1 %i.fq, label %bb.be, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = load i32, ptr %i.fm, align 8, !tbaa !212
  %.not.i445 = icmp eq i32 %i.fr, 0
  br i1 %.not.i445, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 11, ptr %1, align 8, !tbaa !450
  br label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.fs = load ptr, ptr %34, align 8, !tbaa !69
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !449
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !499
  %i.fw = call noundef zeroext i1 @_ZNK4llvm4Type16isFirstClassTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fv) #25
  br i1 %i.fw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %i.fx = load ptr, ptr %34, align 8, !tbaa !69
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !449
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !499
  call fastcc void @_ZL13getTypeStringB5cxx11PN4llvm4TypeE(ptr dead_on_unwind noalias writable align 8 %37, ptr noundef %i.ga)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull @.str.215, ptr noundef nonnull align 8 dereferenceable(32) %37)
  %i.gb = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 4, ptr %i.gb, align 8, !tbaa !188
  %i.gc = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.gc, align 1, !tbaa !186
  store ptr %36, ptr %35, align 8, !tbaa !187
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %i.fo, ptr noundef nonnull align 8 dereferenceable(34) %35, i32 noundef 1) #25
  %i.gd = load ptr, ptr %36, align 8, !tbaa !191  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446: ; preds = %bb.az
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !187
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446
  %i.gi = load ptr, ptr %37, align 8, !tbaa !191  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !187
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  br label %bb.be

bb.ba:                                            ; preds = %bb.ay
  %i.gn = load ptr, ptr %34, align 8, !tbaa !69
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !449
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !499
  %i.gr = load i32, ptr %i.fm, align 8, !tbaa !212
  %i.gs = zext i32 %i.gr to i64
  %i.gt = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.gq, i64 noundef %i.gs) #25
  %i.gu = load i32, ptr %i.fm, align 8, !tbaa !212 ; 2 uses
  %.not420700 = icmp eq i32 %i.gu, 0
  %.pre717 = load ptr, ptr %34, align 8, !tbaa !69 ; 3 uses
  br i1 %.not420700, label %._crit_edge704, label %.lr.ph703

.lr.ph703:                                        ; preds = %bb.ba
  %i.gv = load ptr, ptr %.pre717, align 8, !tbaa !449
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !499
  %i.gy = zext i32 %i.gu to i64                   ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph703, %bb.bd
  %indvars.iv = phi i64 [ 0, %.lr.ph703 ], [ %indvars.iv.next, %bb.bd ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.pre717, i64 %indvars.iv
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !449
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !499
  %.not421 = icmp eq ptr %i.hc, %i.gx
  br i1 %.not421, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hd = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.he = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 1, ptr %i.hf, align 1, !tbaa !186
  store ptr @.str.216, ptr %41, align 8, !tbaa !187
  store i8 3, ptr %i.he, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  %i.hg = getelementptr inbounds nuw i8, ptr %42, i64 32
  store i8 9, ptr %i.hg, align 8, !tbaa !188
  %i.hh = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 1, ptr %i.hh, align 1, !tbaa !186
  store i32 %i.hd, ptr %42, align 8, !tbaa !187
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %40, ptr noundef nonnull align 8 dereferenceable(34) %41, ptr noundef nonnull align 8 dereferenceable(34) %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  %i.hi = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 1, ptr %i.hj, align 1, !tbaa !186
  store ptr @.str.213, ptr %43, align 8, !tbaa !187
  store i8 3, ptr %i.hi, align 8, !tbaa !188
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %39, ptr noundef nonnull align 8 dereferenceable(34) %40, ptr noundef nonnull align 8 dereferenceable(34) %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  %i.hk = load ptr, ptr %34, align 8, !tbaa !69
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !449
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !499
  call fastcc void @_ZL13getTypeStringB5cxx11PN4llvm4TypeE(ptr dead_on_unwind noalias writable align 8 %45, ptr noundef %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i8 4, ptr %i.ho, align 8, !tbaa !188
  %i.hp = getelementptr inbounds nuw i8, ptr %44, i64 33
  store i8 1, ptr %i.hp, align 1, !tbaa !186
  store ptr %45, ptr %44, align 8, !tbaa !187
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %38, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(34) %44)
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %i.n, ptr %i.fo, ptr noundef nonnull align 8 dereferenceable(34) %38, i32 noundef 1) #25
  %i.hq = load ptr, ptr %45, align 8, !tbaa !191  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452: ; preds = %bb.bc
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !187
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i453

bb.bd:                                            ; preds = %bb.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not420 = icmp eq i64 %indvars.iv.next, %i.gy
  br i1 %.not420, label %._crit_edge704, label %bb.bb, !llvm.loop !1227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i453: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.be

._crit_edge704:                                   ; preds = %bb.bd, %bb.ba
  %.pre-phi.a = phi i64 [ 0, %bb.ba ], [ %i.gy, %bb.bd ]
  %i.hv = call noundef ptr @_ZN4llvm13ConstantArray3getEPNS_9ArrayTypeENS_8ArrayRefIPNS_8ConstantEEE(ptr noundef %i.gt, ptr %.pre717, i64 %.pre-phi.a) #25
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !523
  store i32 12, ptr %1, align 8, !tbaa !450
end_hunk_0
