Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueTracking?download=true
inline.NumInlined: 12130
inline.NumDeleted: 4588
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj:bb.a
  store i64 %i.za, ptr %11, align 8, !alias.scope !1280
  store i32 0, ptr %i.yj, align 8, !tbaa !37, !noalias !1280
  %i.zc = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %11)
  %i.zd = load i32, ptr %i.zb, align 8, !tbaa !37
  %i.ze = icmp ugt i32 %i.zd, 64
  br i1 %i.ze, label %bb.ew, label %_ZN4llvm5APIntD2Ev.exit342

bb.ew:                                            ; preds = %_ZN4llvmorENS_5APIntEm.exit341
  %i.zf = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %_ZN4llvm5APIntD2Ev.exit342, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZdaPv(ptr noundef nonnull %i.zf) #28
  br label %_ZN4llvm5APIntD2Ev.exit342

_ZN4llvm5APIntD2Ev.exit342:                       ; preds = %_ZN4llvmorENS_5APIntEm.exit341, %bb.ew, %bb.ex
  %i.zh = load i32, ptr %i.yj, align 8, !tbaa !37
  %i.zi = icmp ugt i32 %i.zh, 64
  br i1 %i.zi, label %bb.ey, label %_ZN4llvm5APIntD2Ev.exit343

bb.ey:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit342
  %i.zj = load ptr, ptr %12, align 8, !tbaa !39   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %_ZN4llvm5APIntD2Ev.exit343, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZdaPv(ptr noundef nonnull %i.zj) #28
  br label %_ZN4llvm5APIntD2Ev.exit343

_ZN4llvm5APIntD2Ev.exit343:                       ; preds = %_ZN4llvm5APIntD2Ev.exit342, %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br i1 %i.zc, label %.thread521, label %bb.fa

.thread521:                                       ; preds = %_ZN4llvm5APIntD2Ev.exit343
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.thread549

bb.fa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit343
  %i.zl = load i32, ptr %i.yk, align 8, !tbaa !37 ; 2 uses
  %i.zm = add i32 %i.zl, -1                       ; 2 uses
  %i.zn = and i32 %i.zm, 63
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = shl nuw i64 1, %i.zo
  %i.zq = icmp ult i32 %i.zl, 65
  %i.zr = load ptr, ptr %10, align 8
  %i.zs = lshr i32 %i.zm, 6
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zr, i64 %i.zt
  %.in.i.i.i.i344 = select i1 %i.zq, ptr %10, ptr %i.zu
  %i.zv = load i64, ptr %.in.i.i.i.i344, align 8, !tbaa !39
  %i.zw = and i64 %i.zp, %i.zv
  %.not561 = icmp eq i64 %i.zw, 0
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %.not561, label %..thread517_crit_edge, label %.thread549

..thread517_crit_edge:                            ; preds = %bb.fa
  %.pre789 = load i32, ptr %i.wu, align 4
  br label %.thread517

.thread517:                                       ; preds = %..thread517_crit_edge, %_ZNK4llvm4User10getOperandEj.exit333, %bb.er
  %i.zx = phi i32 [ %.pre789, %..thread517_crit_edge ], [ %i.xj, %_ZNK4llvm4User10getOperandEj.exit333 ], [ %i.xj, %bb.er ] ; 2 uses
  %i.zy = and i32 %i.zx, 1073741824
  %.not.i.i345 = icmp eq i32 %i.zy, 0
  br i1 %.not.i.i345, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.thread517
  %i.zz = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit346

bb.fc:                                            ; preds = %.thread517
  %i.aab = and i32 %i.zx, 268435455
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = sub nsw i64 0, %i.aac
  %i.aae = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.aad
  br label %_ZNK4llvm4User10getOperandEj.exit346

_ZNK4llvm4User10getOperandEj.exit346:             ; preds = %bb.fb, %bb.fc
  %i.aaf = phi ptr [ %i.aaa, %bb.fb ], [ %i.aae, %bb.fc ]
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !50
  %i.aah = call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef %i.aag, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %i.xg), !inline_history !1 ; 2 uses
  %i.aai = icmp eq i32 %i.aah, 1
  br i1 %i.aai, label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit.threadthread-pre-split, label %bb.fd

bb.fd:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit346
  %.sroa.speculated413 = call i32 @llvm.umin.i32(i32 %i.xh, i32 %i.aah)
  %i.aaj = add i32 %.sroa.speculated413, -1
  br label %.thread549

bb.fe:                                            ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit
  %i.aak = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4          ; 2 uses
  %i.aan = and i32 %i.aam, 1073741824
  %.not.i.i348 = icmp eq i32 %i.aan, 0
  br i1 %.not.i.i348, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aao = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit349

bb.fg:                                            ; preds = %bb.fe
  %i.aaq = and i32 %i.aam, 268435455
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = sub nsw i64 0, %i.aar
  %i.aat = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.aas
  br label %_ZNK4llvm4User10getOperandEj.exit349

_ZNK4llvm4User10getOperandEj.exit349:             ; preds = %bb.ff, %bb.fg
  %i.aau = phi ptr [ %i.aap, %bb.ff ], [ %i.aat, %bb.fg ]
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !50
  %i.aaw = add i32 %.tr567, 1                     ; 2 uses
  %i.aax = tail call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef %i.aav, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %i.aaw), !inline_history !1 ; 2 uses
  %i.aay = icmp eq i32 %i.aax, 1
  br i1 %i.aay, label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit.threadthread-pre-split, label %bb.fh

bb.fh:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit349
  %i.aaz = load i32, ptr %i.aal, align 4          ; 2 uses
  %i.aba = and i32 %i.aaz, 1073741824
  %.not.i.i350 = icmp eq i32 %i.aba, 0
  br i1 %.not.i.i350, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.abb = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit351

bb.fj:                                            ; preds = %bb.fh
  %i.abd = and i32 %i.aaz, 268435455
  %i.abe = zext nneg i32 %i.abd to i64
  %i.abf = sub nsw i64 0, %i.abe
  %i.abg = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.abf
  br label %_ZNK4llvm4User10getOperandEj.exit351

_ZNK4llvm4User10getOperandEj.exit351:             ; preds = %bb.fi, %bb.fj
  %i.abh = phi ptr [ %i.abc, %bb.fi ], [ %i.abg, %bb.fj ]
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 32
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !50
  %i.abk = tail call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef %i.abj, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %i.aaw), !inline_history !1 ; 2 uses
  %i.abl = icmp eq i32 %i.abk, 1
  br i1 %i.abl, label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit.threadthread-pre-split, label %bb.fk

bb.fk:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit351
  %factor = shl i32 %i.w, 1
  %.neg1077 = add i32 %factor, 2
  %i.abm = add i32 %i.aax, %i.abk
  %i.abn = sub i32 %.neg1077, %i.abm              ; 2 uses
  %i.abo = icmp ugt i32 %i.abn, %i.w
  %i.abp = add i32 %i.w, 1
  %i.abq = sub i32 %i.abp, %i.abn
  %i.abr = select i1 %i.abo, i32 1, i32 %i.abq
  br label %.thread549

bb.fl:                                            ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit
  %i.abs = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.abu = load i32, ptr %i.abt, align 4
  %i.abv = and i32 %i.abu, 268435455              ; 2 uses
  %i.abw = add nsw i32 %i.abv, -5
  %or.cond = icmp ult i32 %i.abw, -4
  br i1 %or.cond, label %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit.threadthread-pre-split, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !141
  %i.abx = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr null, ptr %i.abx, align 8, !tbaa !142, !alias.scope !1281
  %i.aby = icmp eq i32 %i.w, 1
  br i1 %i.aby, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fm
  %i.abz = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.aca = getelementptr inbounds nuw i8, ptr %.tr, i64 76
  %i.acb = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.acc = add i32 %.tr567, 1
  %i.acd = zext nneg i32 %i.abv to i64
  br label %bb.fn

bb.fn:                                            ; preds = %.lr.ph, %bb.fn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.fn ] ; 3 uses
  %.2482693 = phi i32 [ %i.w, %.lr.ph ], [ %.sroa.speculated385, %bb.fn ]
  %i.ace = load ptr, ptr %i.abz, align 8, !tbaa !132 ; 2 uses
  %i.acf = load i32, ptr %i.aca, align 4, !tbaa !168
  %i.acg = zext i32 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [32 x i8], ptr %i.ace, i64 %i.acg
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !169
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !171
  %i.acm = getelementptr inbounds i8, ptr %i.acl, i64 -24
  store ptr %i.acm, ptr %i.acb, align 8, !tbaa !69
  %i.acn = getelementptr inbounds nuw [32 x i8], ptr %i.ace, i64 %indvars.iv
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !50
  %i.acp = call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef %i.aco, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(59) %13, i32 noundef %i.acc), !inline_history !1
  %.sroa.speculated385 = call i32 @llvm.umin.i32(i32 %i.acp, i32 %.2482693) ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not252 = icmp eq i64 %indvars.iv.next, %i.acd
  %cond.fr = freeze i1 %.not252                   ; 2 uses
  %i.acq = icmp eq i32 %.sroa.speculated385, 1
  %or.cond268 = select i1 %cond.fr, i1 true, i1 %i.acq
  br i1 %or.cond268, label %._crit_edge.a, label %bb.fn, !llvm.loop !1272

._crit_edge.a:                                    ; preds = %bb.fn
  %spec.select = select i1 %cond.fr, i32 %.sroa.speculated385, i32 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.a, %bb.fm
  %i.acr = phi i32 [ 1, %bb.fm ], [ %spec.select, %._crit_edge.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.thread549

bb.fo:                                            ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit
  %i.acs = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.act = load i32, ptr %i.acs, align 4          ; 2 uses
  %i.acu = and i32 %i.act, 1073741824
  %.not.i.i353 = icmp eq i32 %i.acu, 0
  br i1 %.not.i.i353, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.acv = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit354

bb.fq:                                            ; preds = %bb.fo
  %i.acx = and i32 %i.act, 268435455
  %i.acy = zext nneg i32 %i.acx to i64
  %i.acz = sub nsw i64 0, %i.acy
  %i.ada = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.acz
  br label %_ZNK4llvm4User10getOperandEj.exit354

_ZNK4llvm4User10getOperandEj.exit354:             ; preds = %bb.fp, %bb.fq
  %i.adb = phi ptr [ %i.acw, %bb.fp ], [ %i.ada, %bb.fq ]
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !50 ; 2 uses
  %i.add = add i32 %.tr567, 1
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !29 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load i32, ptr %i.adg, align 8
  %i.adi = and i32 %i.adh, 255
  %i.adj = icmp ne i32 %i.adi, 18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.not6.i1012 = icmp eq ptr %i.adf, null
  %.not.i1013 = or i1 %.not6.i1012, %i.adj
  br i1 %.not.i1013, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit354
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 32
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !35 ; 4 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.adl, ptr %i.adm, align 8, !tbaa !37, !alias.scope !1282
  %i.adn = icmp ult i32 %i.adl, 65
  br i1 %i.adn, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.ado = sub nsw i32 0, %i.adl
  %i.adp = and i32 %i.ado, 63
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = lshr i64 -1, %i.adq
  %i.ads = icmp eq i32 %i.adl, 0
  %spec.select.i.i5.i1016 = select i1 %i.ads, i64 0, i64 %i.adr, !prof !38
  store i64 %spec.select.i.i5.i1016, ptr %5, align 8, !tbaa !39, !alias.scope !1282
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1014

bb.ft:                                            ; preds = %bb.fr
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef -1, i1 noundef zeroext true) #27, !inline_history !174
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1014

bb.fu:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit354
  %i.adt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.adt, align 8, !tbaa !37
  store i64 1, ptr %5, align 8, !tbaa !39
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1014

_ZN4llvm5APInt10getAllOnesEj.exit.i1014:          ; preds = %bb.fu, %bb.ft, %bb.fs
  %i.adu = call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.adc, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %i.add), !inline_history !0 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !37
  %i.adx = icmp ugt i32 %i.adw, 64
  br i1 %i.adx, label %bb.fv, label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017

bb.fv:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i1014
  %i.ady = load ptr, ptr %5, align 8, !tbaa !39   ; 2 uses
  %i.adz = icmp eq ptr %i.ady, null
  br i1 %i.adz, label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @_ZdaPv(ptr noundef nonnull %i.ady) #28, !inline_history !174
  br label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017

_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i1014, %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.aea = load i32, ptr %i.acs, align 4          ; 2 uses
  %i.aeb = and i32 %i.aea, 1073741824
  %.not.i.i355 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i.i355, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017
  %i.aec = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit356

bb.fy:                                            ; preds = %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1017
  %i.aee = and i32 %i.aea, 268435455
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = sub nsw i64 0, %i.aef
  %i.aeh = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.aeg
  br label %_ZNK4llvm4User10getOperandEj.exit356

_ZNK4llvm4User10getOperandEj.exit356:             ; preds = %bb.fx, %bb.fy
  %i.aei = phi ptr [ %i.aed, %bb.fx ], [ %i.aeh, %bb.fy ]
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !50
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !29
  %i.aem = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ael) #29
  %i.aen = sub i32 %i.aem, %i.w                   ; 2 uses
  %i.aeo = icmp ugt i32 %i.adu, %i.aen
  %i.aep = sub nuw i32 %i.adu, %i.aen
  %.17 = select i1 %i.aeo, i32 %i.aep, i32 1
  br label %.thread549

bb.fz:                                            ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit
  %i.aeq = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.aer = load i32, ptr %i.aeq, align 4          ; 2 uses
  %i.aes = and i32 %i.aer, 1073741824
  %.not.i.i357 = icmp eq i32 %i.aes, 0
  br i1 %.not.i.i357, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aet = getelementptr inbounds i8, ptr %.tr, i64 -8
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !132
  br label %_ZNK4llvm4User10getOperandEj.exit358

bb.gb:                                            ; preds = %bb.fz
  %i.aev = and i32 %i.aer, 268435455
  %i.aew = zext nneg i32 %i.aev to i64
  %i.aex = sub nsw i64 0, %i.aew
  %i.aey = getelementptr inbounds [32 x i8], ptr %.tr, i64 %i.aex
  br label %_ZNK4llvm4User10getOperandEj.exit358

_ZNK4llvm4User10getOperandEj.exit358:             ; preds = %bb.ga, %bb.gb
  %i.aez = phi ptr [ %i.aeu, %bb.ga ], [ %i.aey, %bb.gb ]
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !50 ; 2 uses
  %i.afb = add i32 %.tr567, 1
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !29 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load i32, ptr %i.afe, align 8
  %i.afg = and i32 %i.aff, 255
  %i.afh = icmp ne i32 %i.afg, 18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.not6.i1018 = icmp eq ptr %i.afd, null
  %.not.i1019 = or i1 %.not6.i1018, %i.afh
  br i1 %.not.i1019, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit358
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afd, i64 32
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !35 ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.afj, ptr %i.afk, align 8, !tbaa !37, !alias.scope !1283
  %i.afl = icmp ult i32 %i.afj, 65
  br i1 %i.afl, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.afm = sub nsw i32 0, %i.afj
  %i.afn = and i32 %i.afm, 63
  %i.afo = zext nneg i32 %i.afn to i64
  %i.afp = lshr i64 -1, %i.afo
  %i.afq = icmp eq i32 %i.afj, 0
  %spec.select.i.i5.i1022 = select i1 %i.afq, i64 0, i64 %i.afp, !prof !38
  store i64 %spec.select.i.i5.i1022, ptr %4, align 8, !tbaa !39, !alias.scope !1283
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1020

bb.ge:                                            ; preds = %bb.gc
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef -1, i1 noundef zeroext true) #27, !inline_history !174
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1020

bb.gf:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit358
  %i.afr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.afr, align 8, !tbaa !37
  store i64 1, ptr %4, align 8, !tbaa !39
  br label %_ZN4llvm5APInt10getAllOnesEj.exit.i1020

_ZN4llvm5APInt10getAllOnesEj.exit.i1020:          ; preds = %bb.gf, %bb.ge, %bb.gd
  %i.afs = call fastcc noundef i32 @_ZL22ComputeNumSignBitsImplPKN4llvm5ValueERKNS_5APIntERKNS_13SimplifyQueryEj(ptr noundef nonnull %i.afa, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef %i.afb), !inline_history !0
  %i.aft = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !37
  %i.afv = icmp ugt i32 %i.afu, 64
  br i1 %i.afv, label %bb.gg, label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1023

bb.gg:                                            ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i1020
  %i.afw = load ptr, ptr %4, align 8, !tbaa !39   ; 2 uses
  %i.afx = icmp eq ptr %i.afw, null
  br i1 %i.afx, label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1023, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_ZdaPv(ptr noundef nonnull %i.afw) #28, !inline_history !174
  br label %_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1023

_ZL18ComputeNumSignBitsPKN4llvm5ValueERKNS_13SimplifyQueryEj.exit1023: ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit.i1020, %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread549

bb.gi:                                            ; preds = %_ZN4llvm8Operator9getOpcodeEPKNS_5ValueE.exit
  %i.afy = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
end_hunk_0
