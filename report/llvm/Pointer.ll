Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Pointer?download=true
inline.NumInlined: 2757
inline.NumDeleted: 1218
begin_hunk_0_@"_ZZNK5clang6interp7Pointer8toRValueERKNS0_7ContextENS_8QualTypeEENK3$_0clES5_NS0_7PtrViewERNS_7APValueE":bb.a

bb.dk:                                            ; preds = %bb.dj
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit441: ; preds = %bb.dj
  %i.zs = getelementptr inbounds nuw [56 x i8], ptr %i.zp, i64 %indvars.iv1039
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !425
  %i.zv = call noundef zeroext i1 %i.zu(ptr noundef nonnull align 8 dereferenceable(32) %i.zo, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(56) %i.zs) #22, !inline_history !427
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.zw = select i1 %i.zv, i1 %.62321007, i1 false ; 2 uses
  %indvars.iv.next1040 = add nuw nsw i64 %indvars.iv1039, 1 ; 2 uses
  %.not247 = icmp eq i64 %indvars.iv.next1040, %i.oh
  br i1 %.not247, label %.preheader, label %bb.dj, !llvm.loop !692

bb.dl:                                            ; preds = %.lr.ph1013, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit444
  %indvars.iv1041 = phi i64 [ 0, %.lr.ph1013 ], [ %indvars.iv.next1042, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit444 ] ; 3 uses
  %.71011 = phi i1 [ %.6232.lcssa, %.lr.ph1013 ], [ %i.aav, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit444 ]
  %i.zx = load ptr, ptr %i.yx, align 8, !tbaa !42
  %i.zy = getelementptr inbounds nuw [32 x i8], ptr %i.zx, i64 %indvars.iv1041 ; 2 uses
  %i.zz = load ptr, ptr %i.yy, align 8, !tbaa !687, !nonnull !71, !align !328
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !310, !nonnull !71, !align !328
  %i.aab = load ptr, ptr %i.zy, align 8, !tbaa !688
  %i.aac = call i64 @_ZNK5clang10ASTContext19getCanonicalTagTypeEPKNS_7TagDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aaa, ptr noundef %i.aab) #22
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 24
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !468
  %i.aaf = load i64, ptr %i.s, align 8, !tbaa !215, !noalias !693
  %i.aag = trunc i64 %i.aaf to i32
  %i.aah = add i32 %i.aae, %i.aag                 ; 2 uses
  %i.aai = load ptr, ptr %2, align 8, !tbaa !174, !noalias !693
  %i.aaj = zext i32 %i.aah to i64
  %i.aak = load ptr, ptr %0, align 8, !tbaa !654, !nonnull !71, !align !328 ; 3 uses
  %i.aal = load ptr, ptr %i.yz, align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.aai, ptr %13, align 8
  store i32 %i.aah, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.aaj, ptr %.sroa.4797.0..sroa_idx, align 8
  store i64 %i.aac, ptr %12, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !261
  %.not.i.i443 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i443, label %bb.dm, label %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit444

bb.dm:                                            ; preds = %bb.dl
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit444: ; preds = %bb.dl
  %i.aao = trunc nuw i64 %indvars.iv1041 to i32
  %i.aap = add i32 %i.mq, %i.aao
  %i.aaq = zext i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [56 x i8], ptr %i.aal, i64 %i.aaq
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !425
  %i.aau = call noundef zeroext i1 %i.aat(ptr noundef nonnull align 8 dereferenceable(32) %i.aak, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(56) %i.aar) #22, !inline_history !427
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.aav = select i1 %i.aau, i1 %.71011, i1 false ; 2 uses
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 1 ; 2 uses
  %.not248 = icmp eq i64 %indvars.iv.next1042, %i.za
  br i1 %.not248, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.dl, !llvm.loop !696

.thread925:                                       ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %i.aaw = icmp eq i8 %i.aq, 5
  br i1 %i.aaw, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.thread925
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #22
  store i32 0, ptr %57, align 8, !tbaa !46
  %i.aax = getelementptr inbounds nuw i8, ptr %57, i64 4 ; 2 uses
  %i.aay = load i8, ptr %i.aax, align 4
  %i.aaz = and i8 %i.aay, -2
  store i8 %i.aaz, ptr %i.aax, align 4
  call void @_ZN5clang7APValue9MakeArrayEjj(ptr noundef nonnull align 8 dereferenceable(56) %57, i32 noundef 0, i32 noundef 0) #22
  %i.aba = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %57) #22 ; 0 uses
  %i.abb = load i32, ptr %57, align 8, !tbaa !46
  %switch.i447 = icmp ult i32 %i.abb, 2
  br i1 %switch.i447, label %_ZN5clang7APValueD2Ev.exit448, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %57) #22
  br label %_ZN5clang7APValueD2Ev.exit448

_ZN5clang7APValueD2Ev.exit448:                    ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #22
  br label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.dp:                                            ; preds = %.thread925
  %i.abc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.abd = load i8, ptr %i.abc, align 16
  %i.abe = add i8 %i.abd, -7
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.abe, -5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.dq, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread933

bb.dq:                                            ; preds = %bb.dp
  %i.abf = add i8 %i.aq, -2
  %switch.i.i.i.i.i.i.i.i5.i = icmp ult i8 %i.abf, 5
  br i1 %switch.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit, label %.thread938

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit:     ; preds = %bb.dq
  %i.abg = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #22 ; 2 uses
  %.not250 = icmp eq ptr %i.abg, null
  br i1 %.not250, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread938_crit_edge, label %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread933

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread938_crit_edge: ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit
  %.pre = load ptr, ptr %i.aj, align 16, !tbaa !94 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.sroa.0.0.copyload.i.i.i.i508.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  %.pre1046 = and i64 %.sroa.0.0.copyload.i.i.i.i508.pre, -16
  %.pre1047 = inttoptr i64 %.pre1046 to ptr
  br label %.thread938

_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread933: ; preds = %bb.dp, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit
  %.1.i450936 = phi ptr [ %i.abg, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ], [ %i.ak, %bb.dp ]
  %i.abh = getelementptr inbounds nuw i8, ptr %.0.i, i64 53
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !69, !range !70, !noundef !71
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %bb.dr, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.dr:                                            ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit.thread933
  %i.abk = load i32, ptr %i.z, align 8, !tbaa !176 ; 2 uses
  %i.abl = load ptr, ptr %2, align 8, !tbaa !174  ; 2 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.abo = load i32, ptr %i.abn, align 8, !tbaa !15
  %i.abp = icmp eq i32 %i.abk, %i.abo
  br i1 %i.abp, label %_ZNK5clang6interp7PtrView11getNumElemsEv.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.abq = zext i32 %i.abk to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView11getNumElemsEv.exit

_ZNK5clang6interp7PtrView11getNumElemsEv.exit:    ; preds = %bb.dr, %bb.ds
  %.pn.i = phi ptr [ %i.abt, %bb.ds ], [ %i.abm, %bb.dr ] ; 2 uses
  %.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20
  %.in.i = load i32, ptr %.in.in.i, align 4, !tbaa !62 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !76 ; 2 uses
  %i.abw = udiv i32 %.in.i, %i.abv                ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.1.i450936, i64 32
  %.sroa.0.0.copyload.i452 = load i64, ptr %i.abx, align 16, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #22
  store i32 0, ptr %58, align 8, !tbaa !46
  %i.aby = getelementptr inbounds nuw i8, ptr %58, i64 4 ; 2 uses
  %i.abz = load i8, ptr %i.aby, align 4
  %i.aca = and i8 %i.abz, -2
  store i8 %i.aca, ptr %i.aby, align 4
  call void @_ZN5clang7APValue9MakeArrayEjj(ptr noundef nonnull align 8 dereferenceable(56) %58, i32 noundef %i.abw, i32 noundef %i.abw) #22
  %i.acb = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %58) #22 ; 0 uses
  %i.acc = load i32, ptr %58, align 8, !tbaa !46
  %switch.i453 = icmp ult i32 %i.acc, 2
  br i1 %switch.i453, label %_ZN5clang7APValueD2Ev.exit454, label %bb.dt

bb.dt:                                            ; preds = %_ZNK5clang6interp7PtrView11getNumElemsEv.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %58) #22
  br label %_ZN5clang7APValueD2Ev.exit454

_ZN5clang7APValueD2Ev.exit454:                    ; preds = %_ZNK5clang6interp7PtrView11getNumElemsEv.exit, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #22
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !687, !nonnull !71, !align !328
  %i.acf = call i8 @_ZNK5clang6interp7Context8classifyENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ace, i64 %.sroa.0.0.copyload.i452) #22
  %.not2511018 = icmp ugt i32 %i.abv, %.in.i
  br i1 %.not2511018, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %.lr.ph1022

.lr.ph1022:                                       ; preds = %_ZN5clang7APValueD2Ev.exit454
  %i.acg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %70, i64 4 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %70, i64 20
  %i.acm = getelementptr inbounds nuw i8, ptr %68, i64 4 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.acp = getelementptr inbounds nuw i8, ptr %68, i64 20
  %i.acq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.acr = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.acs = getelementptr inbounds nuw i8, ptr %67, i64 4 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.acu = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.acv = getelementptr inbounds nuw i8, ptr %67, i64 20
  %i.acw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.acy = getelementptr inbounds nuw i8, ptr %60, i64 4 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %60, i64 20
  %i.adc = getelementptr inbounds nuw i8, ptr %59, i64 4 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ade = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.adf = getelementptr inbounds nuw i8, ptr %59, i64 20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %148 = zext i32 %i.abw to i64
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph1022, %bb.fv
  %indvars.iv1043 = phi i64 [ 0, %.lr.ph1022 ], [ %indvars.iv.next1044, %bb.fv ] ; 18 uses
  %.02181020 = phi i1 [ true, %.lr.ph1022 ], [ %.1219, %bb.fv ] ; 17 uses
  %i.adg = load ptr, ptr %i.acg, align 8, !tbaa !697
  %i.adh = getelementptr inbounds nuw [56 x i8], ptr %i.adg, i64 %indvars.iv1043 ; 16 uses
  switch i8 %i.acf, label %bb.fv [
    i8 -1, label %bb.fo
    i8 0, label %bb.dv
    i8 1, label %bb.dy
    i8 2, label %bb.eb
    i8 3, label %bb.ee
    i8 4, label %bb.eh
    i8 5, label %bb.ek
    i8 6, label %bb.en
    i8 7, label %bb.eq
    i8 8, label %bb.et
    i8 9, label %bb.ew
    i8 12, label %bb.ez
    i8 10, label %bb.fc
    i8 13, label %bb.ff
    i8 14, label %bb.fi
    i8 11, label %bb.fl
  ]

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #22
  %i.adi = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.adj = load ptr, ptr %2, align 8, !tbaa !174  ; 3 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !8 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  %i.adm = load i32, ptr %i.adl, align 8, !tbaa !15
  %i.adn = icmp eq i32 %i.adi, %i.adm
  br i1 %i.adn, label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ado = zext i32 %i.adi to i64
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 32
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit: ; preds = %bb.dv, %bb.dw
  %.0.i.i455 = phi ptr [ %i.adr, %bb.dw ], [ %i.adk, %bb.dv ]
  %i.ads = getelementptr inbounds nuw i8, ptr %.0.i.i455, i64 16
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !76
  %i.adu = trunc nuw i64 %indvars.iv1043 to i32
  %i.adv = mul i32 %i.adt, %i.adu
  %i.adw = add i32 %i.adi, 8
  %i.adx = add i32 %i.adw, %i.adv
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adj, i64 40
  %i.adz = zext i32 %i.adx to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adz
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !349, !noalias !702
  %i.aec = zext i8 %i.aeb to i64
  %i.aed = load i8, ptr %i.adc, align 4, !alias.scope !699
  %i.aee = and i8 %i.aed, -2
  store i8 %i.aee, ptr %i.adc, align 4, !alias.scope !699
  store i32 2, ptr %59, align 8, !tbaa !46, !alias.scope !699
  store i64 %i.aec, ptr %i.add, align 8, !alias.scope !699
  store i32 8, ptr %i.ade, align 8, !tbaa !354, !alias.scope !699
  store i8 0, ptr %i.adf, align 4, !tbaa !356, !alias.scope !699
  %i.aef = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.adh, ptr noundef nonnull align 8 dereferenceable(56) %59) #22 ; 0 uses
  %i.aeg = load i32, ptr %59, align 8, !tbaa !46
  %switch.i456 = icmp ult i32 %i.aeg, 2
  br i1 %switch.i456, label %_ZN5clang7APValueD2Ev.exit457, label %bb.dx

bb.dx:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %59) #22
  br label %_ZN5clang7APValueD2Ev.exit457

_ZN5clang7APValueD2Ev.exit457:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #22
  br label %bb.fv

bb.dy:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #22
  %i.aeh = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.aei = load ptr, ptr %2, align 8, !tbaa !174  ; 3 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !8 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 24
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !15
  %i.aem = icmp eq i32 %i.aeh, %i.ael
  br i1 %i.aem, label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aen = zext i32 %i.aeh to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.aen
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 32
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit: ; preds = %bb.dy, %bb.dz
  %.0.i.i458 = phi ptr [ %i.aeq, %bb.dz ], [ %i.aej, %bb.dy ]
  %i.aer = getelementptr inbounds nuw i8, ptr %.0.i.i458, i64 16
  %i.aes = load i32, ptr %i.aer, align 8, !tbaa !76
  %i.aet = trunc nuw i64 %indvars.iv1043 to i32
  %i.aeu = mul i32 %i.aes, %i.aet
  %i.aev = add i32 %i.aeh, 8
  %i.aew = add i32 %i.aev, %i.aeu
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aei, i64 40
  %i.aey = zext i32 %i.aew to i64
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 %i.aey
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !364, !noalias !708
  %i.afb = zext i8 %i.afa to i64
  %i.afc = load i8, ptr %i.acy, align 4, !alias.scope !705
  %i.afd = and i8 %i.afc, -2
  store i8 %i.afd, ptr %i.acy, align 4, !alias.scope !705
  store i32 2, ptr %60, align 8, !tbaa !46, !alias.scope !705
  store i64 %i.afb, ptr %i.acz, align 8, !alias.scope !705
  store i32 8, ptr %i.ada, align 8, !tbaa !354, !alias.scope !705
  store i8 1, ptr %i.adb, align 4, !tbaa !356, !alias.scope !705
  %i.afe = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.adh, ptr noundef nonnull align 8 dereferenceable(56) %60) #22 ; 0 uses
  %i.aff = load i32, ptr %60, align 8, !tbaa !46
  %switch.i459 = icmp ult i32 %i.aff, 2
  br i1 %switch.i459, label %_ZN5clang7APValueD2Ev.exit460, label %bb.ea

bb.ea:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %60) #22
  br label %_ZN5clang7APValueD2Ev.exit460

_ZN5clang7APValueD2Ev.exit460:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %bb.fv

bb.eb:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #22
  %i.afg = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.afh = load ptr, ptr %2, align 8, !tbaa !174  ; 3 uses
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !8 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 24
  %i.afk = load i32, ptr %i.afj, align 8, !tbaa !15
  %i.afl = icmp eq i32 %i.afg, %i.afk
  br i1 %i.afl, label %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.afm = zext i32 %i.afg to i64
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afm
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 32
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit: ; preds = %bb.eb, %bb.ec
  %.0.i.i461 = phi ptr [ %i.afp, %bb.ec ], [ %i.afi, %bb.eb ]
  %i.afq = getelementptr inbounds nuw i8, ptr %.0.i.i461, i64 16
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !76
  %i.afs = trunc nuw i64 %indvars.iv1043 to i32
  %i.aft = mul i32 %i.afr, %i.afs
  %i.afu = add i32 %i.afg, 8
  %i.afv = add i32 %i.afu, %i.aft
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afh, i64 40
  %i.afx = zext i32 %i.afv to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afx
  %i.afz = load ptr, ptr %i.ach, align 8, !tbaa !640, !nonnull !71, !align !328
  call void @_ZNK5clang6interp8IntegralILj16ELb1EE9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %61, ptr noundef nonnull align 8 dereferenceable(24) %i.afy, ptr noundef nonnull align 8 dereferenceable(23904) %i.afz)
  %i.aga = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.adh, ptr noundef nonnull align 8 dereferenceable(56) %61) #22 ; 0 uses
  %i.agb = load i32, ptr %61, align 8, !tbaa !46
  %switch.i462 = icmp ult i32 %i.agb, 2
  br i1 %switch.i462, label %_ZN5clang7APValueD2Ev.exit463, label %bb.ed

bb.ed:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %61) #22
  br label %_ZN5clang7APValueD2Ev.exit463

_ZN5clang7APValueD2Ev.exit463:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb1EEEEERT_j.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #22
  br label %bb.fv

bb.ee:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #22
  %i.agc = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.agd = load ptr, ptr %2, align 8, !tbaa !174  ; 3 uses
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !8 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !15
  %i.agh = icmp eq i32 %i.agc, %i.agg
  br i1 %i.agh, label %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.agi = zext i32 %i.agc to i64
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 32
  %i.agl = load ptr, ptr %i.agk, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_8IntegralILj16ELb0EEEEERT_j.exit: ; preds = %bb.ee, %bb.ef
  %.0.i.i464 = phi ptr [ %i.agl, %bb.ef ], [ %i.age, %bb.ee ]
  %i.agm = getelementptr inbounds nuw i8, ptr %.0.i.i464, i64 16
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !76
  %i.ago = trunc nuw i64 %indvars.iv1043 to i32
  %i.agp = mul i32 %i.agn, %i.ago
  %i.agq = add i32 %i.agc, 8
  %i.agr = add i32 %i.agq, %i.agp
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agd, i64 40
  %i.agt = zext i32 %i.agr to i64
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.agt
  %i.agv = load ptr, ptr %i.ach, align 8, !tbaa !640, !nonnull !71, !align !328
  call void @_ZNK5clang6interp8IntegralILj16ELb0EE9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %i.agu, ptr noundef nonnull align 8 dereferenceable(23904) %i.agv)
  %i.agw = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.adh, ptr noundef nonnull align 8 dereferenceable(56) %62) #22 ; 0 uses
  %i.agx = load i32, ptr %62, align 8, !tbaa !46
  %switch.i465 = icmp ult i32 %i.agx, 2
end_hunk_0
begin_hunk_1_@"_ZZNK5clang6interp7Pointer8toRValueERKNS0_7ContextENS_8QualTypeEENK3$_0clES5_NS0_7PtrViewERNS_7APValueE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  %i.apv = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.apw = load ptr, ptr %2, align 8, !tbaa !174  ; 3 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !8 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  %i.apz = load i32, ptr %i.apy, align 8, !tbaa !15
  %i.aqa = icmp eq i32 %i.apv, %i.apz
  br i1 %i.aqa, label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aqb = zext i32 %i.apv to i64
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apw, i64 %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit: ; preds = %bb.fl, %bb.fm
  %.0.i.i497 = phi ptr [ %i.aqe, %bb.fm ], [ %i.apx, %bb.fl ]
  %i.aqf = getelementptr inbounds nuw i8, ptr %.0.i.i497, i64 16
  %i.aqg = load i32, ptr %i.aqf, align 8, !tbaa !76
  %i.aqh = trunc nuw i64 %indvars.iv1043 to i32
  %i.aqi = mul i32 %i.aqg, %i.aqh
  %i.aqj = add i32 %i.apv, 8
  %i.aqk = add i32 %i.aqj, %i.aqi
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apw, i64 40
  %i.aqm = zext i32 %i.aqk to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqm
  %i.aqo = load ptr, ptr %i.ach, align 8, !tbaa !640, !nonnull !71, !align !328
  call void @_ZNK5clang6interp10FixedPoint9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.clang::APValue") align 8 %73, ptr noundef nonnull align 8 dereferenceable(24) %i.aqn, ptr noundef nonnull align 8 dereferenceable(23904) %i.aqo)
  %i.aqp = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.adh, ptr noundef nonnull align 8 dereferenceable(56) %73) #22 ; 0 uses
  %i.aqq = load i32, ptr %73, align 8, !tbaa !46
  %switch.i498 = icmp ult i32 %i.aqq, 2
  br i1 %switch.i498, label %_ZN5clang7APValueD2Ev.exit499, label %bb.fn

bb.fn:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %73) #22
  br label %_ZN5clang7APValueD2Ev.exit499

_ZN5clang7APValueD2Ev.exit499:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_10FixedPointEEERT_j.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #22
  br label %bb.fv

bb.fo:                                            ; preds = %bb.du
  %i.aqr = load ptr, ptr %0, align 8, !tbaa !654, !nonnull !71, !align !328 ; 3 uses
  %i.aqs = load i32, ptr %i.z, align 8, !tbaa !176, !noalias !723 ; 18 uses
  %i.aqt = load ptr, ptr %2, align 8, !tbaa !174, !noalias !723 ; 5 uses
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !8, !noalias !723 ; 8 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 24
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !15, !noalias !723
  %i.aqx = icmp eq i32 %i.aqs, %i.aqw             ; 3 uses
  br i1 %i.aqx, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aqy = zext i32 %i.aqs to i64
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqy
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 32
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !55, !noalias !723
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.pn5.i = phi ptr [ %i.arb, %bb.fp ], [ %i.aqu, %bb.fo ] ; 2 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %.pn.i500 = load i32, ptr %.pn.in.i, align 8, !tbaa !76, !noalias !723
  %i.arc = trunc nuw i64 %indvars.iv1043 to i32
  %i.ard = mul i32 %.pn.i500, %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 40
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !64, !noalias !723
  %.not.i501 = icmp eq ptr %i.arf, null
  %.0.v.i = select i1 %.not.i501, i32 8, i32 16
  %.0.i502 = add i32 %i.ard, %i.aqs
  %i.arg = add i32 %.0.i502, %.0.v.i              ; 7 uses
  %i.arh = zext i32 %i.arg to i64                 ; 7 uses
  br i1 %i.aqx, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %bb.fq
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqu, i64 20
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !62, !noalias !726 ; 2 uses
  %i.ark = icmp eq i32 %i.arj, -1
  br i1 %i.ark, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i: ; preds = %bb.fq
  %i.arl = zext i32 %i.aqs to i64                 ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.arl
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 32
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !55, !noalias !726 ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 20
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !62, !noalias !726 ; 2 uses
  %i.arr = icmp eq i32 %i.arq, -1
  br i1 %i.arr, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i

_ZNK5clang6interp7PtrView7inArrayEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aqu, i64 53
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !69, !range !70, !noalias !726, !noundef !71
  %i.aru = trunc nuw i8 %i.art to i1
  br i1 %i.aru, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aro, i64 53
  %i.arw = load i8, ptr %i.arv, align 1, !tbaa !69, !range !70, !noalias !726, !noundef !71
  %i.arx = trunc nuw i8 %i.arw to i1
  br i1 %i.arx, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.i
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqu, i64 28
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !63, !noalias !726
  %i.asa = icmp ugt i32 %i.arg, %i.arz
  br i1 %i.asa, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.fr

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i: ; preds = %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqu, i64 28
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !63, !noalias !726
  %i.asd = icmp ugt i32 %i.arg, %i.asc
  br i1 %i.asd, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i

bb.fr:                                            ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i
  %i.ase = zext i32 %i.arj to i64                 ; 2 uses
  %i.asf = zext i32 %i.aqs to i64                 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.arg, %i.aqs
  br i1 %.not.i.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i
  %i.asg = zext i32 %i.arq to i64                 ; 2 uses
  %.not.i5.i.i = icmp eq i32 %i.arg, %i.aqs
  br i1 %.not.i5.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.fr
  %i.ash = phi i64 [ %i.ase, %bb.fr ], [ %i.asg, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.asi = phi i64 [ %i.asf, %bb.fr ], [ %i.arl, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.i.i3.i.i = phi ptr [ %i.aqu, %bb.fr ], [ %i.aro, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.asj = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !64, !noalias !726
  %.not1.i.i.i = icmp eq ptr %i.ask, null
  %..i.i.i = select i1 %.not1.i.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i, %bb.fr
  %i.asl = phi i64 [ %i.asi, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.asf, %bb.fr ], [ %i.arl, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.asm = phi i64 [ %i.ash, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ %i.ase, %bb.fr ], [ %i.asg, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %.0.neg.i.i.i = phi i64 [ %..i.i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i.i ], [ 0, %bb.fr ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i.i ]
  %i.asn = sub nsw i64 %i.arh, %i.asl
  %i.aso = add nsw i64 %i.asn, %.0.neg.i.i.i
  %i.asp = and i64 %i.aso, 4294967295
  %i.asq = icmp eq i64 %i.asm, %i.asp
  br i1 %i.asq, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i
  %i.asr = zext i32 %i.aqs to i64
  %.not.i504 = icmp eq i32 %i.arg, %i.aqs
  br i1 %.not.i504, label %_ZNK5clang6interp7PtrView6narrowEv.exit, label %bb.fs

bb.fs:                                            ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i
  br i1 %i.aqx, label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.asr
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 32
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !55, !noalias !726
  br label %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i

_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i: ; preds = %bb.ft, %bb.fs
  %.0.i.i3.i = phi ptr [ %i.asu, %bb.ft ], [ %i.aqu, %bb.fs ] ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 53
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !69, !range !70, !noalias !726, !noundef !71
  %i.asx = trunc nuw i8 %i.asw to i1
  %i.asy = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.asz = load ptr, ptr %i.asy, align 8, !noalias !726
  %.not.i.i4.i = icmp eq ptr %i.asz, null
  %i.ata = select i1 %i.asx, i1 %.not.i.i4.i, i1 false
  %spec.select978 = select i1 %i.ata, i32 %i.aqs, i32 %i.arg
  br label %_ZNK5clang6interp7PtrView6narrowEv.exit

_ZNK5clang6interp7PtrView6narrowEv.exit:          ; preds = %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i
  %.sroa.14.0 = phi i64 [ %i.arh, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.arh, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %i.arh, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.arh, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ 4294967295, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ 4294967295, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.arh, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.arh, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  %.sroa.6.0 = phi i32 [ %i.aqs, %_ZNK5clang6interp7PtrView7inArrayEv.exit.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i ], [ %spec.select978, %_ZNK5clang6interp7PtrView16inPrimitiveArrayEv.exit.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread9.i ], [ %i.aqs, %_ZNK5clang6interp7PtrView7inArrayEv.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.aqt, ptr %9, align 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %.sroa.0.0.copyload.i452, ptr %8, align 8
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !261
  %.not.i.i505 = icmp eq ptr %i.atc, null
  br i1 %.not.i.i505, label %bb.fu, label %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit506

bb.fu:                                            ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit506: ; preds = %_ZNK5clang6interp7PtrView6narrowEv.exit
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aqr, i64 24
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !425
  %i.atf = call noundef zeroext i1 %i.ate(ptr noundef nonnull align 8 dereferenceable(32) %i.aqr, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(56) %i.adh) #22, !inline_history !427
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.atg = select i1 %i.atf, i1 %.02181020, i1 false
  br label %bb.fv

bb.fv:                                            ; preds = %bb.du, %_ZN5clang7APValueD2Ev.exit457, %_ZN5clang7APValueD2Ev.exit460, %_ZN5clang7APValueD2Ev.exit463, %_ZN5clang7APValueD2Ev.exit466, %_ZN5clang7APValueD2Ev.exit469, %_ZN5clang7APValueD2Ev.exit472, %_ZN5clang7APValueD2Ev.exit475, %_ZN5clang7APValueD2Ev.exit478, %_ZN5clang7APValueD2Ev.exit481, %_ZN5clang7APValueD2Ev.exit484, %_ZN5clang7APValueD2Ev.exit487, %_ZN5clang7APValueD2Ev.exit490, %_ZN5clang7APValueD2Ev.exit493, %_ZN5clang7APValueD2Ev.exit496, %_ZN5clang7APValueD2Ev.exit499, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit506
  %.1219 = phi i1 [ %.02181020, %bb.du ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit457 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit460 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit463 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit466 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit469 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit472 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit475 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit478 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit481 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit484 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit487 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit490 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit493 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit496 ], [ %.02181020, %_ZN5clang7APValueD2Ev.exit499 ], [ %i.atg, %_ZNKSt8functionIFbN5clang8QualTypeENS0_6interp7PtrViewERNS0_7APValueEEEclES1_S3_S5_.exit506 ] ; 2 uses
  %indvars.iv.next1044 = add nuw nsw i64 %indvars.iv1043, 1 ; 2 uses
  %.not251 = icmp eq i64 %indvars.iv.next1044, %148
  br i1 %.not251, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.du, !llvm.loop !729

.thread938:                                       ; preds = %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread938_crit_edge, %bb.dq
  %.pre-phi1048 = phi ptr [ %.pre1047, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread938_crit_edge ], [ %i.an, %bb.dq ]
  %i.ath = phi ptr [ %.pre, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit..thread938_crit_edge ], [ %i.ak, %bb.dq ]
  %i.ati = load ptr, ptr %.pre-phi1048, align 8, !tbaa !94
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %i.atk = load i8, ptr %i.atj, align 16
  %i.atl = icmp eq i8 %i.atk, 14
  br i1 %i.atl, label %bb.fw, label %bb.iz

bb.fw:                                            ; preds = %.thread938
  %i.atm = tail call i64 @_ZNK5clang6interp10Descriptor7getTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i) #22
  %i.atn = and i64 %i.atm, -16
  %i.ato = inttoptr i64 %i.atn to ptr
  %i.atp = load ptr, ptr %i.ato, align 16, !tbaa !94
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  %.sroa.0.0.copyload.i.i.i.i510 = load i64, ptr %i.atq, align 8, !tbaa !38
  %i.atr = and i64 %.sroa.0.0.copyload.i.i.i.i510, -16
  %i.ats = inttoptr i64 %i.atr to ptr
  %i.att = load ptr, ptr %i.ats, align 16, !tbaa !94
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 16
  %i.atv = load i8, ptr %i.atu, align 16
  %i.atw = icmp eq i8 %i.atv, 14
  br i1 %i.atw, label %bb.fx, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.fx:                                            ; preds = %bb.fw
  %i.atx = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !431 ; 3 uses
  %i.atz = icmp ult i8 %i.aty, 11
  br i1 %i.atz, label %bb.fy, label %bb.iw

bb.fy:                                            ; preds = %bb.fx
  switch i8 %i.aty, label %default.unreachable [
    i8 0, label %bb.fz
    i8 1, label %bb.gg
    i8 2, label %bb.gn
    i8 3, label %bb.gu
    i8 4, label %bb.hb
    i8 5, label %bb.hi
    i8 6, label %bb.hp
    i8 7, label %bb.hw
    i8 8, label %_ZNK5clang6interp7PtrView4elemINS0_10IntegralAPILb0EEEEERT_j.exit575
    i8 9, label %_ZNK5clang6interp7PtrView4elemINS0_10IntegralAPILb1EEEEERT_j.exit583
    i8 10, label %bb.ip
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.aua = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.aub = load ptr, ptr %2, align 8, !tbaa !174  ; 4 uses
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !8 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 24
  %i.aue = load i32, ptr %i.aud, align 8, !tbaa !15
  %i.auf = icmp eq i32 %i.aua, %i.aue
  %i.aug = add i32 %i.aua, 8                      ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aub, i64 40
  %i.aui = zext i32 %i.aug to i64
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auh, i64 %i.aui
  br i1 %i.auf, label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit514, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.auk = zext i32 %i.aua to i64
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.auk
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 32
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit514

_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit514: ; preds = %bb.fz, %bb.ga
  %.0.i.i513 = phi ptr [ %i.aun, %bb.ga ], [ %i.auc, %bb.fz ]
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aub, i64 40
  %i.aup = load i8, ptr %i.auj, align 1, !tbaa !38
  %i.auq = getelementptr inbounds nuw i8, ptr %.0.i.i513, i64 16
  %i.aur = load i32, ptr %i.auq, align 8, !tbaa !76
  %i.aus = add i32 %i.aur, %i.aug
  %i.aut = zext i32 %i.aus to i64
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auo, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  %i.auw = zext i8 %i.aup to i64
  %i.aux = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i32 8, ptr %i.aux, align 8, !tbaa !354, !alias.scope !730
  store i64 %i.auw, ptr %75, align 8, !alias.scope !730
  %i.auy = getelementptr inbounds nuw i8, ptr %75, i64 12
  store i8 0, ptr %i.auy, align 4, !tbaa !356, !alias.scope !730
  %i.auz = zext i8 %i.auv to i64
  %i.ava = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 2 uses
  store i32 8, ptr %i.ava, align 8, !tbaa !354, !alias.scope !733
  store i64 %i.auz, ptr %76, align 8, !alias.scope !733
  %i.avb = getelementptr inbounds nuw i8, ptr %76, i64 12
  store i8 0, ptr %i.avb, align 4, !tbaa !356, !alias.scope !733
  call void @_ZN5clang7APValueC2EN4llvm6APSIntES2_(ptr noundef nonnull align 8 dereferenceable(56) %74, ptr nofree noundef nonnull align 8 dereferenceable(16) %75, ptr nofree noundef nonnull align 8 dereferenceable(16) %76)
  %i.avc = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %74) #22 ; 0 uses
  %i.avd = load i32, ptr %74, align 8, !tbaa !46
  %switch.i515 = icmp ult i32 %i.avd, 2
  br i1 %switch.i515, label %_ZN5clang7APValueD2Ev.exit516, label %bb.gb

bb.gb:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit514
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %74) #22
  br label %_ZN5clang7APValueD2Ev.exit516

_ZN5clang7APValueD2Ev.exit516:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb1EEEEERT_j.exit514, %bb.gb
  %i.ave = load i32, ptr %i.ava, align 8, !tbaa !354
  %i.avf = icmp ugt i32 %i.ave, 64
  br i1 %i.avf, label %bb.gc, label %_ZN4llvm5APIntD2Ev.exit

bb.gc:                                            ; preds = %_ZN5clang7APValueD2Ev.exit516
  %i.avg = load ptr, ptr %76, align 8, !tbaa !38  ; 2 uses
  %i.avh = icmp eq ptr %i.avg, null
  br i1 %i.avh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_ZdaPv(ptr noundef nonnull %i.avg) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN5clang7APValueD2Ev.exit516, %bb.gc, %bb.gd
  %i.avi = load i32, ptr %i.aux, align 8, !tbaa !354
  %i.avj = icmp ugt i32 %i.avi, 64
  br i1 %i.avj, label %bb.ge, label %_ZN4llvm5APIntD2Ev.exit517

bb.ge:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.avk = load ptr, ptr %75, align 8, !tbaa !38  ; 2 uses
  %i.avl = icmp eq ptr %i.avk, null
  br i1 %i.avl, label %_ZN4llvm5APIntD2Ev.exit517, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @_ZdaPv(ptr noundef nonnull %i.avk) #25
  br label %_ZN4llvm5APIntD2Ev.exit517

_ZN4llvm5APIntD2Ev.exit517:                       ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  br label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.gg:                                            ; preds = %bb.fy
  %i.avm = load i32, ptr %i.z, align 8, !tbaa !176 ; 3 uses
  %i.avn = load ptr, ptr %2, align 8, !tbaa !174  ; 4 uses
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !8 ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 24
  %i.avq = load i32, ptr %i.avp, align 8, !tbaa !15
  %i.avr = icmp eq i32 %i.avm, %i.avq
  %i.avs = add i32 %i.avm, 8                      ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avn, i64 40
  %i.avu = zext i32 %i.avs to i64
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avt, i64 %i.avu
  br i1 %i.avr, label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit521, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.avw = zext i32 %i.avm to i64
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avw
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 32
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !55
  br label %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit521

_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit521: ; preds = %bb.gg, %bb.gh
  %.0.i.i520 = phi ptr [ %i.avz, %bb.gh ], [ %i.avo, %bb.gg ]
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avn, i64 40
  %i.awb = load i8, ptr %i.avv, align 1, !tbaa !38
  %i.awc = getelementptr inbounds nuw i8, ptr %.0.i.i520, i64 16
  %i.awd = load i32, ptr %i.awc, align 8, !tbaa !76
  %i.awe = add i32 %i.awd, %i.avs
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.awf
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  %i.awi = zext i8 %i.awb to i64
  %i.awj = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 2 uses
  store i32 8, ptr %i.awj, align 8, !tbaa !354, !alias.scope !736
  store i64 %i.awi, ptr %78, align 8, !alias.scope !736
  %i.awk = getelementptr inbounds nuw i8, ptr %78, i64 12
  store i8 1, ptr %i.awk, align 4, !tbaa !356, !alias.scope !736
  %i.awl = zext i8 %i.awh to i64
  %i.awm = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  store i32 8, ptr %i.awm, align 8, !tbaa !354, !alias.scope !739
  store i64 %i.awl, ptr %79, align 8, !alias.scope !739
  %i.awn = getelementptr inbounds nuw i8, ptr %79, i64 12
  store i8 1, ptr %i.awn, align 4, !tbaa !356, !alias.scope !739
  call void @_ZN5clang7APValueC2EN4llvm6APSIntES2_(ptr noundef nonnull align 8 dereferenceable(56) %77, ptr nofree noundef nonnull align 8 dereferenceable(16) %78, ptr nofree noundef nonnull align 8 dereferenceable(16) %79)
  %i.awo = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %77) #22 ; 0 uses
  %i.awp = load i32, ptr %77, align 8, !tbaa !46
  %switch.i522 = icmp ult i32 %i.awp, 2
  br i1 %switch.i522, label %_ZN5clang7APValueD2Ev.exit523, label %bb.gi

bb.gi:                                            ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit521
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %77) #22
  br label %_ZN5clang7APValueD2Ev.exit523

_ZN5clang7APValueD2Ev.exit523:                    ; preds = %_ZNK5clang6interp7PtrView4elemINS0_4CharILb0EEEEERT_j.exit521, %bb.gi
  %i.awq = load i32, ptr %i.awm, align 8, !tbaa !354
  %i.awr = icmp ugt i32 %i.awq, 64
  br i1 %i.awr, label %bb.gj, label %_ZN4llvm5APIntD2Ev.exit524

bb.gj:                                            ; preds = %_ZN5clang7APValueD2Ev.exit523
  %i.aws = load ptr, ptr %79, align 8, !tbaa !38  ; 2 uses
  %i.awt = icmp eq ptr %i.aws, null
  br i1 %i.awt, label %_ZN4llvm5APIntD2Ev.exit524, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @_ZdaPv(ptr noundef nonnull %i.aws) #25
  br label %_ZN4llvm5APIntD2Ev.exit524

_ZN4llvm5APIntD2Ev.exit524:                       ; preds = %_ZN5clang7APValueD2Ev.exit523, %bb.gj, %bb.gk
end_hunk_1
