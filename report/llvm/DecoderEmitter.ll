Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DecoderEmitter?download=true
inline.NumInlined: 4457
inline.NumDeleted: 2516
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_118DecoderTreeBuilder20convertFilterChooserEPKNS_13FilterChooserE:bb.a
  %.pre137.i = load i64, ptr %i.zh, align 8, !tbaa !218, !noalias !611
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit72.i

.critedge.i.i.i.i69.i:                            ; preds = %bb.dd
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 noundef %i.yy), !noalias !611
  %.pre.i.i70.i = load ptr, ptr %i.bs, align 8, !tbaa !35, !noalias !611
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit72.i

_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit72.i: ; preds = %.critedge.i.i.i.i69.i, %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.zi = phi i64 [ %i.za, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pre137.i, %bb.de ], [ %i.za, %.critedge.i.i.i.i69.i ]
  %i.zj = phi ptr [ %.pre3.i.i67.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.zg, %bb.de ], [ %.pre.i.i70.i, %.critedge.i.i.i.i69.i ]
  %.016.i.i.i.i71.i = phi ptr [ %22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.zh, %bb.de ], [ %22, %.critedge.i.i.i.i69.i ]
  %i.zk = load i32, ptr %i.bu, align 8, !tbaa !65, !noalias !611 ; 2 uses
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zj, i64 %i.zl
  store i64 %i.zi, ptr %i.zm, align 8, !tbaa !218, !noalias !611
  store ptr null, ptr %.016.i.i.i.i71.i, align 8, !tbaa !218, !noalias !611
  %i.zn = add i32 %i.zk, 1
  store i32 %i.zn, ptr %i.bu, align 8, !tbaa !65, !noalias !611
  %i.zo = load ptr, ptr %22, align 8, !tbaa !218, !noalias !611 ; 3 uses
  %.not.i73.i = icmp eq ptr %i.zo, null
  br i1 %.not.i73.i, label %_ZNSt10unique_ptrIN4llvm10DecodeNodeESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i74.i

_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i74.i: ; preds = %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit72.i
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !30, !noalias !611
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zr = load ptr, ptr %i.zq, align 8, !noalias !611
  call void %i.zr(ptr noundef nonnull align 8 dereferenceable(12) %i.zo) #23, !noalias !611, !inline_history !565
  br label %_ZNSt10unique_ptrIN4llvm10DecodeNodeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm10DecodeNodeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i74.i, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit72.i
  store ptr %i.bq, ptr %23, align 8, !tbaa !217, !alias.scope !611
  %.val.i = load ptr, ptr %15, align 8, !tbaa !260, !noalias !611 ; 3 uses
  %.not.i.i.i77.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i77.i, label %_ZNSt6vectorIN12_GLOBAL__N_114EncodingIslandESaIS1_EED2Ev.exit.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt10unique_ptrIN4llvm10DecodeNodeESt14default_deleteIS1_EED2Ev.exit.i
  %.val19.i = load ptr, ptr %i.bf, align 8, !tbaa !261, !noalias !611
  %i.zs = ptrtoint ptr %.val19.i to i64
  %i.zt = ptrtoint ptr %.val.i to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.zu) #26, !noalias !611
  br label %_ZNSt6vectorIN12_GLOBAL__N_114EncodingIslandESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114EncodingIslandESaIS1_EED2Ev.exit.i: ; preds = %bb.df, %_ZNSt10unique_ptrIN4llvm10DecodeNodeESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !611
  %i.zv = load ptr, ptr %13, align 8, !tbaa !136, !noalias !611 ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.n
  br i1 %i.zw, label %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114EncodingIslandESaIS1_EED2Ev.exit.i
  %i.zx = load i64, ptr %i.n, align 8, !tbaa !135, !noalias !611
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zy) #26, !noalias !611
  br label %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit

_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114EncodingIslandESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.zz = load i32, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = add nuw nsw i64 %i.aaa, 1              ; 2 uses
  %i.aac = load i32, ptr %i.g, align 4, !tbaa !64
  %.not.i.i.not.i.i = icmp ult i32 %i.zz, %i.aac
  %.pre3.i.i = load ptr, ptr %i.d, align 8, !tbaa !35 ; 4 uses
  br i1 %.not.i.i.not.i.i, label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit, label %bb.dg, !prof !94

bb.dg:                                            ; preds = %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i, i64 %i.aaa
  %i.aae = icmp uge ptr %23, %.pre3.i.i
  %i.aaf = icmp ult ptr %23, %i.aad
  %spec.select.i.i.i.i.i.i10 = and i1 %i.aae, %i.aaf
  br i1 %spec.select.i.i.i.i.i.i10, label %bb.dh, label %.critedge.i.i.i.i, !prof !214

bb.dh:                                            ; preds = %bb.dg
  %i.aag = ptrtoint ptr %.pre3.i.i to i64
  %i.aah = sub i64 %i.bg, %i.aag
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aab)
  %i.aai = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %i.aai, i64 %i.aah
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit

.critedge.i.i.i.i:                                ; preds = %bb.dg
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aab)
  %.pre.i.i11 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit

_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit: ; preds = %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit, %bb.dh, %.critedge.i.i.i.i
  %i.aak = phi ptr [ %.pre3.i.i, %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit ], [ %i.aai, %bb.dh ], [ %.pre.i.i11, %.critedge.i.i.i.i ]
  %.016.i.i.i.i = phi ptr [ %23, %_ZN12_GLOBAL__N_118DecoderTreeBuilder16convertSingletonEjRKN4llvm9KnownBitsE.exit ], [ %i.aaj, %bb.dh ], [ %23, %.critedge.i.i.i.i ] ; 2 uses
  %i.aal = load i32, ptr %i.f, align 8, !tbaa !65 ; 2 uses
  %i.aam = zext i32 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %i.aam
  %i.aao = load i64, ptr %.016.i.i.i.i, align 8, !tbaa !218
  store i64 %i.aao, ptr %i.aan, align 8, !tbaa !218
  store ptr null, ptr %.016.i.i.i.i, align 8, !tbaa !218
  %i.aap = add i32 %i.aal, 1
  store i32 %i.aap, ptr %i.f, align 8, !tbaa !65
  %i.aaq = load ptr, ptr %23, align 8, !tbaa !218 ; 2 uses
  %.not.i12 = icmp eq ptr %i.aaq, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.di:                                            ; preds = %bb.b
  %i.aar = getelementptr inbounds nuw i8, ptr %.0, i64 72
  %i.aas = load i32, ptr %i.aar, align 8, !tbaa !262 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.0, i64 76
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !263 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aav = getelementptr i8, ptr %.0, i64 136
  %.val15.i = load i64, ptr %i.aav, align 8, !tbaa !54, !noalias !669
  %i.aaw = icmp eq i64 %.val15.i, 1
  br i1 %i.aaw, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di
  %i.aax = getelementptr i8, ptr %.0, i64 120
  %.val17.i = load ptr, ptr %i.aax, align 8, !tbaa !52, !noalias !669 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.val17.i, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %.val17.i, i64 40
  %i.aba = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !670 ; 8 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store i32 1, ptr %i.abb, align 8, !tbaa !610, !noalias !670
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 16 ; 11 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  store ptr %i.abd, ptr %i.abc, align 8, !tbaa !35, !noalias !670
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 24 ; 7 uses
  store i32 0, ptr %i.abe, align 8, !tbaa !65, !noalias !670
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aba, i64 28 ; 3 uses
  store i32 0, ptr %i.abf, align 4, !tbaa !64, !noalias !670
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm12CheckAllNodeE, i64 16), ptr %i.aba, align 8, !tbaa !30, !noalias !670
  %i.abg = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !671 ; 6 uses
  %i.abh = load i64, ptr %i.aay, align 8, !tbaa !66, !noalias !671
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  store i32 2, ptr %i.abi, align 8, !tbaa !610, !noalias !671
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm14CheckFieldNodeE, i64 16), ptr %i.abg, align 8, !tbaa !30, !noalias !671
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abg, i64 12
  store i32 %i.aas, ptr %i.abj, align 4, !tbaa !672, !noalias !671
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  store i32 %i.aau, ptr %i.abk, align 8, !tbaa !673, !noalias !671
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  store i64 %i.abh, ptr %i.abl, align 8, !tbaa !630, !noalias !671
  store ptr %i.abg, ptr %3, align 8, !tbaa !217, !noalias !669
  %i.abm = load i32, ptr %i.abe, align 8, !tbaa !65, !noalias !669 ; 2 uses
  %i.abn = zext i32 %i.abm to i64                 ; 2 uses
  %i.abo = add nuw nsw i64 %i.abn, 1              ; 2 uses
  %i.abp = load i32, ptr %i.abf, align 4, !tbaa !64, !noalias !669
  %.not.i.i.not.i.i50 = icmp ult i32 %i.abm, %i.abp
  %.pre3.i.i51 = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669 ; 4 uses
  br i1 %.not.i.i.not.i.i50, label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56, label %bb.dk, !prof !94

bb.dk:                                            ; preds = %bb.dj
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i51, i64 %i.abn
  %i.abr = icmp uge ptr %3, %.pre3.i.i51
  %i.abs = icmp ult ptr %3, %i.abq
  %spec.select.i.i.i.i.i.i52 = and i1 %i.abr, %i.abs
  br i1 %spec.select.i.i.i.i.i.i52, label %bb.dl, label %.critedge.i.i.i.i53, !prof !214

bb.dl:                                            ; preds = %bb.dk
  %i.abt = ptrtoint ptr %.pre3.i.i51 to i64
  %i.abu = sub i64 %i.h, %i.abt
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i64 noundef %i.abo), !noalias !669
  %i.abv = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669 ; 2 uses
  %i.abw = getelementptr inbounds i8, ptr %i.abv, i64 %i.abu
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56

.critedge.i.i.i.i53:                              ; preds = %bb.dk
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i64 noundef %i.abo), !noalias !669
  %.pre.i.i54 = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56

_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56: ; preds = %bb.dj, %bb.dl, %.critedge.i.i.i.i53
  %i.abx = phi ptr [ %.pre3.i.i51, %bb.dj ], [ %i.abv, %bb.dl ], [ %.pre.i.i54, %.critedge.i.i.i.i53 ]
  %.016.i.i.i.i55 = phi ptr [ %3, %bb.dj ], [ %i.abw, %bb.dl ], [ %3, %.critedge.i.i.i.i53 ] ; 2 uses
  %i.aby = load i32, ptr %i.abe, align 8, !tbaa !65, !noalias !669 ; 2 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %i.abz
  %i.acb = load i64, ptr %.016.i.i.i.i55, align 8, !tbaa !218, !noalias !669
  store i64 %i.acb, ptr %i.aca, align 8, !tbaa !218, !noalias !669
  store ptr null, ptr %.016.i.i.i.i55, align 8, !tbaa !218, !noalias !669
  %i.acc = add i32 %i.aby, 1
  store i32 %i.acc, ptr %i.abe, align 8, !tbaa !65, !noalias !669
  %i.acd = load ptr, ptr %3, align 8, !tbaa !218, !noalias !669 ; 3 uses
  %.not.i47 = icmp eq ptr %i.acd, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i48

_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i48: ; preds = %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !30, !noalias !669
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !noalias !669
  call void %i.acg(ptr noundef nonnull align 8 dereferenceable(12) %i.acd) #23, !noalias !669, !inline_history !600
  br label %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i48, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit56
  %.val14.i = load ptr, ptr %i.aaz, align 8, !tbaa !264
  call fastcc void @_ZN12_GLOBAL__N_118DecoderTreeBuilder20convertFilterChooserEPKNS_13FilterChooserE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.val14.i), !inline_history !601
  %i.ach = load i32, ptr %i.abe, align 8, !tbaa !65, !noalias !669 ; 2 uses
  %i.aci = zext i32 %i.ach to i64                 ; 2 uses
  %i.acj = add nuw nsw i64 %i.aci, 1              ; 2 uses
  %i.ack = load i32, ptr %i.abf, align 4, !tbaa !64, !noalias !669
  %.not.i.i.not.i.i39 = icmp ult i32 %i.ach, %i.ack
  %.pre3.i.i40 = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669 ; 4 uses
  br i1 %.not.i.i.not.i.i39, label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45, label %bb.dm, !prof !94

bb.dm:                                            ; preds = %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i40, i64 %i.aci
  %i.acm = icmp uge ptr %4, %.pre3.i.i40
  %i.acn = icmp ult ptr %4, %i.acl
  %spec.select.i.i.i.i.i.i41 = and i1 %i.acm, %i.acn
  br i1 %spec.select.i.i.i.i.i.i41, label %bb.dn, label %.critedge.i.i.i.i42, !prof !214

bb.dn:                                            ; preds = %bb.dm
  %i.aco = ptrtoint ptr %.pre3.i.i40 to i64
  %i.acp = sub i64 %i.i, %i.aco
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i64 noundef %i.acj), !noalias !669
  %i.acq = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669 ; 2 uses
  %i.acr = getelementptr inbounds i8, ptr %i.acq, i64 %i.acp
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45

.critedge.i.i.i.i42:                              ; preds = %bb.dm
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i64 noundef %i.acj), !noalias !669
  %.pre.i.i43 = load ptr, ptr %i.abc, align 8, !tbaa !35, !noalias !669
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45

_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45: ; preds = %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit, %bb.dn, %.critedge.i.i.i.i42
  %i.acs = phi ptr [ %.pre3.i.i40, %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit ], [ %i.acq, %bb.dn ], [ %.pre.i.i43, %.critedge.i.i.i.i42 ]
  %.016.i.i.i.i44 = phi ptr [ %4, %_ZNSt10unique_ptrIN4llvm14CheckFieldNodeESt14default_deleteIS1_EED2Ev.exit ], [ %i.acr, %bb.dn ], [ %4, %.critedge.i.i.i.i42 ] ; 2 uses
  %i.act = load i32, ptr %i.abe, align 8, !tbaa !65, !noalias !669 ; 2 uses
  %i.acu = zext i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %i.acu
  %i.acw = load i64, ptr %.016.i.i.i.i44, align 8, !tbaa !218, !noalias !669
  store i64 %i.acw, ptr %i.acv, align 8, !tbaa !218, !noalias !669
  store ptr null, ptr %.016.i.i.i.i44, align 8, !tbaa !218, !noalias !669
  %i.acx = add i32 %i.act, 1
  store i32 %i.acx, ptr %i.abe, align 8, !tbaa !65, !noalias !669
  %i.acy = load ptr, ptr %4, align 8, !tbaa !218, !noalias !669 ; 3 uses
  %.not.i36 = icmp eq ptr %i.acy, null
  br i1 %.not.i36, label %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit, label %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i37: ; preds = %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !30, !noalias !669
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8, !noalias !669
  call void %i.adb(ptr noundef nonnull align 8 dereferenceable(12) %i.acy) #23, !noalias !669, !inline_history !600
  br label %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit

bb.do:                                            ; preds = %bb.di
  %i.adc = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24, !noalias !674 ; 12 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store i32 3, ptr %i.add, align 8, !tbaa !610, !noalias !674
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm15SwitchFieldNodeE, i64 16), ptr %i.adc, align 8, !tbaa !30, !noalias !674
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 12
  store i32 %i.aas, ptr %i.ade, align 4, !tbaa !679, !noalias !674
  %i.adf = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store i32 %i.aau, ptr %i.adf, align 8, !tbaa !680, !noalias !674
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 32 ; 8 uses
  store i32 0, ptr %i.adg, align 8, !tbaa !50, !noalias !674
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 40 ; 2 uses
  store ptr null, ptr %i.adh, align 8, !tbaa !51, !noalias !674
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 48
  store ptr %i.adg, ptr %i.adi, align 8, !tbaa !52, !noalias !674
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adc, i64 56
  store ptr %i.adg, ptr %i.adj, align 8, !tbaa !53, !noalias !674
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adc, i64 64 ; 3 uses
  store i64 0, ptr %i.adk, align 8, !tbaa !54, !noalias !674
  %i.adl = getelementptr i8, ptr %.0, i64 120
  %.val16.i = load ptr, ptr %i.adl, align 8, !tbaa !52, !noalias !669 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.0, i64 104 ; 2 uses
  %.not8081 = icmp eq ptr %.val16.i, %i.adm
  br i1 %.not8081, label %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.do
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33
  %.sroa.064.082 = phi ptr [ %.val16.i, %.lr.ph ], [ %i.aev, %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33 ] ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 32
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.064.082, i64 40
  %i.adq = load i64, ptr %i.ado, align 8, !tbaa !66 ; 3 uses
  %.val.i15 = load ptr, ptr %i.adp, align 8, !tbaa !264
  call fastcc void @_ZN12_GLOBAL__N_118DecoderTreeBuilder20convertFilterChooserEPKNS_13FilterChooserE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.val.i15), !inline_history !601
  %i.adr = load ptr, ptr %i.adh, align 8, !tbaa !51, !noalias !669 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.adr, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dp, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.adr, %bb.dp ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.adg, %bb.dp ]
  %i.ads = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !66, !noalias !669
  %i.adu = icmp ult i64 %i.adt, %i.adq            ; 2 uses
  %.19.i.i.i.i = select i1 %i.adu, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.adu, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !83, !noalias !669 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i57, label %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !604

_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.adv = icmp eq ptr %.19.i.i.i.i, %i.adg
  br i1 %i.adv, label %.critedge.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i
  %i.adw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !66, !noalias !669
  %i.ady = icmp ult i64 %i.adq, %i.adx
  br i1 %i.ady, label %.critedge.i, label %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11try_emplaceIJS5_EEES8_ISt17_Rb_tree_iteratorISA_EbERS9_DpOT_.exit

.critedge.i:                                      ; preds = %bb.dq, %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i, %bb.dp
  %.08.lcssa.i.i.i16.i = phi ptr [ %.19.i.i.i.i, %bb.dq ], [ %.19.i.i.i.i, %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11lower_boundERS9_.exit.i ], [ %i.adg, %bb.dp ]
  %i.adz = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !669 ; 4 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 32 ; 3 uses
  store i64 %i.adq, ptr %i.aea, align 8, !tbaa !687, !noalias !669
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adz, i64 40 ; 2 uses
  %i.aec = load i64, ptr %5, align 8, !tbaa !218, !noalias !669
  store i64 %i.aec, ptr %i.aeb, align 8, !tbaa !218, !noalias !669
  store ptr null, ptr %5, align 8, !tbaa !218, !noalias !669
  %i.aed = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessImESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.adn, ptr %.08.lcssa.i.i.i16.i, ptr noundef nonnull align 8 dereferenceable(8) %i.aea), !noalias !669 ; 2 uses
  %i.aee = extractvalue { ptr, ptr } %i.aed, 1    ; 4 uses
  %.not.i.i.i58 = icmp eq ptr %i.aee, null
  br i1 %.not.i.i.i58, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %.critedge.i
  %i.aef = extractvalue { ptr, ptr } %i.aed, 0
  %.not.i.i.i.i.i59 = icmp ne ptr %i.aef, null
  %i.aeg = icmp eq ptr %i.aee, %i.adg
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i59, %i.aeg
  br i1 %or.cond.i.i.i.i.i, label %.thread.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 32
  %i.aei = load i64, ptr %i.aea, align 8, !tbaa !66, !noalias !669
  %i.aej = load i64, ptr %i.aeh, align 8, !tbaa !66, !noalias !669
  %i.aek = icmp ult i64 %i.aei, %i.aej
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ds, %bb.dr
  %i.ael = phi i1 [ %i.aek, %bb.ds ], [ true, %bb.dr ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ael, ptr noundef nonnull %i.adz, ptr noundef nonnull %i.aee, ptr noundef nonnull align 8 dereferenceable(32) %i.adg) #23, !noalias !669
  %i.aem = load i64, ptr %i.adk, align 8, !tbaa !54, !noalias !669
  %i.aen = add i64 %i.aem, 1
  store i64 %i.aen, ptr %i.adk, align 8, !tbaa !54, !noalias !669
  br label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33

bb.dt:                                            ; preds = %.critedge.i
  %i.aeo = load ptr, ptr %i.aeb, align 8, !tbaa !218, !noalias !669 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dt
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !30, !noalias !669
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  %i.aer = load ptr, ptr %i.aeq, align 8, !noalias !669
  call void %i.aer(ptr noundef nonnull align 8 dereferenceable(12) %i.aeo) #23, !noalias !669, !inline_history !605
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i.i.i

_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.adz, i64 noundef 48) #26, !noalias !669
  br label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33

_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11try_emplaceIJS5_EEES8_ISt17_Rb_tree_iteratorISA_EbERS9_DpOT_.exit: ; preds = %bb.dq
  %.pre = load ptr, ptr %5, align 8, !tbaa !218, !noalias !669 ; 3 uses
  %.not.i31 = icmp eq ptr %.pre, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i32: ; preds = %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11try_emplaceIJS5_EEES8_ISt17_Rb_tree_iteratorISA_EbERS9_DpOT_.exit
  %i.aes = load ptr, ptr %.pre, align 8, !tbaa !30, !noalias !669
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aeu = load ptr, ptr %i.aet, align 8, !noalias !669
  call void %i.aeu(ptr noundef nonnull align 8 dereferenceable(12) %.pre) #23, !noalias !669, !inline_history !600
  br label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS4_EEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i.i.i.i, %.thread.i.i.i, %_ZNSt3mapImSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS2_EESt4lessImESaISt4pairIKmS5_EEE11try_emplaceIJS5_EEES8_ISt17_Rb_tree_iteratorISA_EbERS9_DpOT_.exit, %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i32
  %i.aev = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.064.082) #27, !noalias !669 ; 2 uses
  %.not80 = icmp eq ptr %i.aev, %i.adm
  br i1 %.not80, label %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit, label %bb.dp

_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33, %bb.do, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45, %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i37
  %storemerge = phi ptr [ %i.aba, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit45 ], [ %i.aba, %_ZNKSt14default_deleteIN4llvm15DecoderTreeNodeEEclEPS1_.exit.i37 ], [ %i.adc, %bb.do ], [ %i.adc, %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit33 ]
  store ptr %storemerge, ptr %24, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aew = load i32, ptr %i.f, align 8, !tbaa !65 ; 2 uses
  %i.aex = zext i32 %i.aew to i64                 ; 2 uses
  %i.aey = add nuw nsw i64 %i.aex, 1              ; 2 uses
  %i.aez = load i32, ptr %i.g, align 4, !tbaa !64
  %.not.i.i.not.i.i17 = icmp ult i32 %i.aew, %i.aez
  %.pre3.i.i18 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 4 uses
  br i1 %.not.i.i.not.i.i17, label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23, label %bb.du, !prof !94

bb.du:                                            ; preds = %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %.pre3.i.i18, i64 %i.aex
  %i.afb = icmp uge ptr %24, %.pre3.i.i18
  %i.afc = icmp ult ptr %24, %i.afa
  %spec.select.i.i.i.i.i.i19 = and i1 %i.afb, %i.afc
  br i1 %spec.select.i.i.i.i.i.i19, label %bb.dv, label %.critedge.i.i.i.i20, !prof !214

bb.dv:                                            ; preds = %bb.du
  %i.afd = ptrtoint ptr %.pre3.i.i18 to i64
  %i.afe = sub i64 %i.j, %i.afd
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aey)
  %i.aff = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %i.afg = getelementptr inbounds i8, ptr %i.aff, i64 %i.afe
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23

.critedge.i.i.i.i20:                              ; preds = %bb.du
  call void @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %i.aey)
  %.pre.i.i21 = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23

_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23: ; preds = %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit, %bb.dv, %.critedge.i.i.i.i20
  %i.afh = phi ptr [ %.pre3.i.i18, %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit ], [ %i.aff, %bb.dv ], [ %.pre.i.i21, %.critedge.i.i.i.i20 ]
  %.016.i.i.i.i22 = phi ptr [ %24, %_ZN12_GLOBAL__N_118DecoderTreeBuilder23convertFilterChooserMapEjjRKSt3mapImSt10unique_ptrIKNS_13FilterChooserESt14default_deleteIS4_EESt4lessImESaISt4pairIKmS7_EEE.exit ], [ %i.afg, %bb.dv ], [ %24, %.critedge.i.i.i.i20 ] ; 2 uses
  %i.afi = load i32, ptr %i.f, align 8, !tbaa !65 ; 2 uses
  %i.afj = zext i32 %i.afi to i64
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afj
  %i.afl = load i64, ptr %.016.i.i.i.i22, align 8, !tbaa !218
  store i64 %i.afl, ptr %i.afk, align 8, !tbaa !218
  store ptr null, ptr %.016.i.i.i.i22, align 8, !tbaa !218
  %i.afm = add i32 %i.afi, 1
  store i32 %i.afm, ptr %i.f, align 8, !tbaa !65
  %i.afn = load ptr, ptr %24, align 8, !tbaa !218 ; 2 uses
  %.not.i24 = icmp eq ptr %i.afn, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit.sink.split

_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit.sink.split: ; preds = %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit
  %.sink147 = phi ptr [ %i.aaq, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit ], [ %i.afn, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23 ] ; 2 uses
  %i.afo = load ptr, ptr %.sink147, align 8, !tbaa !30
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  %i.afq = load ptr, ptr %i.afp, align 8
  call void %i.afq(ptr noundef nonnull align 8 dereferenceable(12) %.sink147) #23
  br label %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit.sink.split, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit23, %_ZN4llvm13CheckManyNode8addChildESt10unique_ptrINS_15DecoderTreeNodeESt14default_deleteIS2_EE.exit
  %i.afr = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %.val = load ptr, ptr %i.afr, align 8, !tbaa !264 ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvm12CheckAnyNodeESt14default_deleteIS1_EED2Ev.exit, label %bb.b, !llvm.loop !606

_ZNSt10unique_ptrIN4llvm12CheckAnyNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm15DecoderTreeNodeESt14default_deleteIS1_EED2Ev.exit
  store ptr %i.b, ptr %0, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113FilterChooser8doFilterEv(ptr noundef nonnull align 8 dereferenceable(145) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::KnownBits", align 8  ; 8 uses
  %2 = alloca %"class.std::unique_ptr.423", align 8 ; 6 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"struct.llvm::KnownBits", align 8  ; 10 uses
  %5 = alloca %"struct.llvm::KnownBits", align 8  ; 8 uses
  %6 = alloca %"class.std::unique_ptr.423", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.387", align 8 ; 14 uses
  %8 = alloca %"struct.llvm::KnownBits", align 8  ; 10 uses
  %9 = alloca %"class.std::unique_ptr.374", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.f = load i32, ptr %i.e, align 4, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.insert.ext = zext i32 %i.f to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %i.g, align 8
  br label %bb.cf

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !126, !noalias !700 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !700
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
end_hunk_0
