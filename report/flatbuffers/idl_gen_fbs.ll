Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_fbs?download=true
inline.NumInlined: 1416
inline.NumDeleted: 561
begin_hunk_0_@_ZN11flatbuffers12_GLOBAL__N_111GenerateFBSERKNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEEE2IDB5cxx11) #27, !noalias !367
  br label %.body435

bb.ed:                                            ; preds = %.critedge27.i.i.i, %.lr.ph.i19.i.i
  %.sroa.033.054.i.i.i = phi ptr [ %i.adb, %.lr.ph.i19.i.i ], [ %i.agm, %.critedge27.i.i.i ] ; 2 uses
  %i.adf = load ptr, ptr %.sroa.033.054.i.i.i, align 8, !tbaa !173, !noalias !367 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 104
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !174, !noalias !367 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 96 ; 2 uses
  %.not10.i.i.i.i.i20.i.i = icmp eq ptr %i.adh, null
  br i1 %.not10.i.i.i.i.i20.i.i, label %.critedge27.i.i.i, label %.lr.ph.i.i.i.i.i21.i.i

.lr.ph.i.i.i.i.i21.i.i:                           ; preds = %bb.ed
  %i.adj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEEE2IDB5cxx11, i64 8), align 8, !tbaa !26, !noalias !367 ; 4 uses
  %i.adk = load ptr, ptr @_ZZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEEE2IDB5cxx11, align 8, !noalias !367 ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i, %.lr.ph.i.i.i.i.i21.i.i
  %.012.i.i.i.i.i22.i.i = phi ptr [ %i.adh, %.lr.ph.i.i.i.i.i21.i.i ], [ %.1.i.i.i.i.i32.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i ] ; 4 uses
  %.0811.i.i.i.i.i23.i.i = phi ptr [ %i.adi, %.lr.ph.i.i.i.i.i21.i.i ], [ %.19.i.i.i.i.i29.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i ]
  %i.adl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i22.i.i, i64 40
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !26, !noalias !367 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i24.i.i = call i64 @llvm.umin.i64(i64 %i.adj, i64 %i.adm) ; 2 uses
  %i.adn = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i24.i.i, 0
  br i1 %i.adn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i59.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i25.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i25.i.i: ; preds = %bb.ee
  %i.ado = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i22.i.i, i64 32
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !34, !noalias !367
  %i.adq = call i32 @memcmp(ptr noundef %i.adp, ptr noundef %i.adk, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i24.i.i) #27, !noalias !367 ; 2 uses
  %.not.i.i.i.i.i.i.i.i26.i.i = icmp eq i32 %i.adq, 0
  br i1 %.not.i.i.i.i.i.i.i.i26.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i59.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i59.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i25.i.i, %bb.ee
  %i.adr = sub i64 %i.adm, %i.adj
  %spec.select7.i.i.i.i.i.i.i.i.i60.i.i = call i64 @llvm.smax.i64(i64 %i.adr, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i61.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i60.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i62.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i61.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i59.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i25.i.i
  %.0.i.i.i.i.i.i.i.i28.i.i = phi i32 [ %i.adq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i25.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i62.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i59.i.i ]
  %i.ads = icmp slt i32 %.0.i.i.i.i.i.i.i.i28.i.i, 0 ; 2 uses
  %.19.i.i.i.i.i29.i.i = select i1 %i.ads, ptr %.0811.i.i.i.i.i23.i.i, ptr %.012.i.i.i.i.i22.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i30.i.i = select i1 %i.ads, i64 24, i64 16
  %.1.in.i.i.i.i.i31.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i22.i.i, i64 %.1.in.v.i.i.i.i.i30.i.i
  %.1.i.i.i.i.i32.i.i = load ptr, ptr %.1.in.i.i.i.i.i31.i.i, align 8, !tbaa !175, !noalias !367 ; 2 uses
  %.not.i.i.i.i.i33.i.i = icmp eq ptr %.1.i.i.i.i.i32.i.i, null
  br i1 %.not.i.i.i.i.i33.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i34.i.i, label %bb.ee, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i34.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i27.i.i
  %i.adt = icmp eq ptr %.19.i.i.i.i.i29.i.i, %i.adi
  br i1 %i.adt, label %.critedge27.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i34.i.i
  %i.adu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i29.i.i, i64 40
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !26, !noalias !367 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i35.i.i = call i64 @llvm.umin.i64(i64 %i.adv, i64 %i.adj) ; 2 uses
  %i.adw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i35.i.i, 0
  br i1 %i.adw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36.i.i: ; preds = %bb.ef
  %i.adx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i29.i.i, i64 32
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !34, !noalias !367
  %i.adz = call i32 @memcmp(ptr noundef %i.adk, ptr noundef %i.ady, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i35.i.i) #27, !noalias !367 ; 2 uses
  %.not.i.i.i.i.i.i.i37.i.i = icmp eq i32 %i.adz, 0
  br i1 %.not.i.i.i.i.i.i.i37.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i38.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36.i.i, %bb.ef
  %i.aea = sub i64 %i.adj, %i.adv
  %spec.select7.i.i.i.i.i.i.i.i56.i.i = call i64 @llvm.smax.i64(i64 %i.aea, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i57.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i56.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i58.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i57.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i38.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i38.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36.i.i
  %.0.i.i.i.i.i.i.i39.i.i = phi i32 [ %i.adz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i36.i.i ], [ %.0.i6.i.i.i.i.i.i.i58.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i55.i.i ]
  %i.aeb = icmp slt i32 %.0.i.i.i.i.i.i.i39.i.i, 0
  br i1 %i.aeb, label %.critedge27.i.i.i, label %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i40.i.i

_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i40.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i38.i.i
  %i.aec = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i29.i.i, i64 64
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !178, !noalias !367 ; 3 uses
  %.not25.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not25.i.i.i, label %.critedge27.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i40.i.i
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 40
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !26, !noalias !367
  %i.aeg = icmp eq i64 %i.aef, 0
  br i1 %i.aeg, label %.critedge27.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 32
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !34, !noalias !367 ; 8 uses
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !27, !noalias !367 ; 2 uses
  %.not2533.i.i.i41.i.i = icmp eq i8 %i.aej, 0
  br i1 %.not2533.i.i.i41.i.i, label %.critedge.thread.i.i.i45.i.i, label %.lr.ph.i.i.i42.i.i

.lr.ph.i.i.i42.i.i:                               ; preds = %bb.eh, %bb.ei
  %i.aek = phi i8 [ %i.aep, %bb.ei ], [ %i.aej, %bb.eh ] ; 2 uses
  %.034.i.i.i43.i.i = phi ptr [ %i.aeo, %bb.ei ], [ %i.aei, %bb.eh ] ; 2 uses
  %i.ael = sext i8 %i.aek to i32
  %i.aem = add nsw i32 %i.ael, -48
  %i.aen = icmp ult i32 %i.aem, 10
  br i1 %i.aen, label %.critedge.i.i.i52.i.i, label %bb.ei

bb.ei:                                            ; preds = %.lr.ph.i.i.i42.i.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %.034.i.i.i43.i.i, i64 1 ; 2 uses
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !27, !noalias !367 ; 2 uses
  %.not25.i.i.i44.i.i = icmp eq i8 %i.aep, 0
  br i1 %.not25.i.i.i44.i.i, label %.critedge.thread.i.i.i45.i.i, label %.lr.ph.i.i.i42.i.i, !llvm.loop !1

.critedge.i.i.i52.i.i:                            ; preds = %.lr.ph.i.i.i42.i.i
  %i.aeq = icmp eq i8 %i.aek, 48
  br i1 %i.aeq, label %bb.ej, label %.critedge.thread.i.i.i45.i.i

bb.ej:                                            ; preds = %.critedge.i.i.i52.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %.034.i.i.i43.i.i, i64 1
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !27, !noalias !367
  %i.aet = and i8 %i.aes, -33
  %i.aeu = icmp eq i8 %i.aet, 88
  br i1 %i.aeu, label %bb.ek, label %.critedge.thread.i.i.i45.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !367
  store ptr %i.aei, ptr %i.f, align 8, !tbaa !187, !noalias !367
  %i.aev = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !190, !noalias !367
  %i.aew = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.aei, ptr noundef nonnull %i.f, i32 noundef 16, ptr noundef %i.aev) #27, !noalias !367, !inline_history !2
  %i.aex = load ptr, ptr %i.f, align 8, !tbaa !187, !noalias !367 ; 2 uses
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !27, !noalias !367
  %.not.i.i.i.i53.i.i = icmp ne i8 %i.aey, 0
  %i.aez = icmp eq ptr %i.aex, %i.aei
  %or.cond.i.i.i.i54.i.i = or i1 %i.aez, %.not.i.i.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !367
  br i1 %or.cond.i.i.i.i54.i.i, label %bb.eu, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.i48.i.i

.critedge.thread.i.i.i45.i.i:                     ; preds = %bb.ei, %bb.ej, %.critedge.i.i.i52.i.i, %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !367
  store ptr %i.aei, ptr %i.e, align 8, !tbaa !187, !noalias !367
  %i.afa = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !190, !noalias !367
  %i.afb = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.aei, ptr noundef nonnull %i.e, i32 noundef 10, ptr noundef %i.afa) #27, !noalias !367, !inline_history !2
  %i.afc = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !367 ; 2 uses
  %i.afd = load i8, ptr %i.afc, align 1, !tbaa !27, !noalias !367
  %.not.i26.i.i.i46.i.i = icmp ne i8 %i.afd, 0
  %i.afe = icmp eq ptr %i.afc, %i.aei
  %or.cond.i27.i.i.i47.i.i = or i1 %i.afe, %.not.i26.i.i.i46.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !367
  br i1 %or.cond.i27.i.i.i47.i.i, label %bb.eu, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.i48.i.i

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.i48.i.i: ; preds = %.critedge.thread.i.i.i45.i.i, %bb.ek
  %.28.i.i49.i.i = phi i64 [ %i.aew, %bb.ek ], [ %i.afb, %.critedge.thread.i.i.i45.i.i ] ; 2 uses
  %or.cond.i.i50.i.i = icmp ult i64 %.28.i.i49.i.i, 65536
  %spec.select21.i.i.i.i = call i64 @llvm.umin.i64(i64 %.28.i.i49.i.i, i64 65535)
  %spec.select.i.i.i.i = trunc nuw i64 %spec.select21.i.i.i.i to i16 ; 7 uses
  br i1 %or.cond.i.i50.i.i, label %bb.el, label %bb.eu

bb.el:                                            ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.i48.i.i
  %i.aff = load ptr, ptr %i.acw, align 8, !tbaa !372, !noalias !367 ; 4 uses
  %i.afg = load ptr, ptr %i.add, align 8, !tbaa !372, !noalias !367 ; 3 uses
  %i.afh = ptrtoint ptr %i.afg to i64             ; 2 uses
  %i.afi = ptrtoint ptr %i.aff to i64
  %i.afj = sub i64 %i.afh, %i.afi                 ; 3 uses
  %i.afk = ashr i64 %i.afj, 3                     ; 2 uses
  %i.afl = icmp sgt i64 %i.afk, 0
  br i1 %i.afl, label %.lr.ph.i.i.i.i.i51.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i51.i:                             ; preds = %bb.el
  %i.afm = and i64 %i.afj, -8
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.aff, i64 %i.afm ; 2 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.eq, %.lr.ph.i.i.i.i.i51.i
  %.052.i.i.i.i.i.i = phi i64 [ %i.afk, %.lr.ph.i.i.i.i.i51.i ], [ %i.afz, %bb.eq ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.aff, %.lr.ph.i.i.i.i.i51.i ], [ %i.afy, %bb.eq ] ; 9 uses
  %i.afn = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !192, !noalias !367
  %i.afo = icmp eq i16 %i.afn, %spec.select.i.i.i.i
  br i1 %i.afo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.afq = load i16, ptr %i.afp, align 2, !tbaa !192, !noalias !367
  %i.afr = icmp eq i16 %i.afq, %spec.select.i.i.i.i
  br i1 %i.afr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.aft = load i16, ptr %i.afs, align 2, !tbaa !192, !noalias !367
  %i.afu = icmp eq i16 %i.aft, %spec.select.i.i.i.i
  br i1 %i.afu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1821, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !192, !noalias !367
  %i.afx = icmp eq i16 %i.afw, %spec.select.i.i.i.i
  br i1 %i.afx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1823, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.afz = add nsw i64 %.052.i.i.i.i.i.i, -1
  %47 = icmp samesign ugt i64 %.052.i.i.i.i.i.i, 1
  br i1 %47, label %bb.em, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !288

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.eq
  %.pre59.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i.i = sub i64 %i.afh, %.pre59.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.el
  %.pre-phi61.i.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.afj, %bb.el ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.aff, %bb.el ] ; 5 uses
  %i.aga = ashr exact i64 %.pre-phi61.i.i.i.i.i.i, 1
  switch i64 %i.aga, label %.critedge27.i.i.i [
    i64 3, label %bb.er
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i
  ]

bb.er:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.agb = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !192, !noalias !367
  %i.agc = icmp eq i16 %i.agb, %spec.select.i.i.i.i
  br i1 %i.agc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.es, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.agd, %bb.es ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.age = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !192, !noalias !367
  %i.agf = icmp eq i16 %i.age, %spec.select.i.i.i.i
  br i1 %i.agf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.et

bb.et:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i:             ; preds = %bb.et, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.agg, %bb.et ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.agh = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !192, !noalias !367
  %i.agi = icmp eq i16 %i.agh, %spec.select.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.agi, ptr %.sroa.032.2.i.i.i.i.i.i, ptr %i.afg
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.en
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1821: ; preds = %bb.eo
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1823: ; preds = %bb.ep
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i: ; preds = %bb.em, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1821, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1823, %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.er
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.er ], [ %i.agl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1823 ], [ %i.agj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.agk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit1821 ], [ %.sroa.032.051.i.i.i.i.i.i, %bb.em ]
  %.not42.i.i.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %i.afg
  br i1 %.not42.i.i.i, label %.critedge27.i.i.i, label %bb.eu

.critedge27.i.i.i:                                ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, %._crit_edge.i.i.i.i.i.i, %bb.eg, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i40.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i38.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i34.i.i, %bb.ed
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.033.054.i.i.i, i64 8 ; 2 uses
  %.not41.not.i.i.i = icmp eq ptr %i.agm, %i.adc
  br i1 %.not41.not.i.i.i, label %_ZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEE.exit.i.i, label %bb.ed

bb.eu:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit.i48.i.i, %.critedge.thread.i.i.i45.i.i, %bb.ek
  br i1 %3, label %_ZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.thread1802, label %.sink.split.i

_ZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEE.exit.i.i: ; preds = %.critedge27.i.i.i, %bb.eb
  %.not.i50.i = icmp eq i32 %i.yh, 0
  br i1 %.not.i50.i, label %_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !367
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_118ExtractProtobufIdsERKSt6vectorIPNS_8FieldDefESaIS3_EE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.yi)
          to label %.noexc438 unwind label %bb.gg

.noexc438:                                        ; preds = %bb.ev
  %i.agn = load ptr, ptr %4, align 8, !tbaa !372, !noalias !367 ; 10 uses
  %i.ago = load ptr, ptr %i.js, align 8, !tbaa !372, !noalias !367 ; 5 uses
  %.not.i.i.i64.i.i = icmp eq ptr %i.agn, %i.ago
  br i1 %.not.i.i.i64.i.i, label %.preheader, label %bb.ew

bb.ew:                                            ; preds = %.noexc438
  %i.agp = ptrtoint ptr %i.ago to i64
  %i.agq = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.agr = sub i64 %i.agp, %i.agq
  %i.ags = ashr exact i64 %i.agr, 1
  %i.agt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ags, i1 true)
  %i.agu = shl nuw nsw i64 %i.agt, 1
  %i.agv = xor i64 %i.agu, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.agn, ptr %i.ago, i64 noundef %i.agv)
          to label %.noexc.i67.i.i unwind label %bb.ey, !noalias !367

.noexc.i67.i.i:                                   ; preds = %bb.ew
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.agn, ptr %i.ago)
          to label %.preheader unwind label %bb.ey, !noalias !367

.preheader:                                       ; preds = %.noexc.i67.i.i, %.noexc438
  br label %bb.ex

bb.ex:                                            ; preds = %.preheader, %bb.ez
  %.pn.i68.i.i = phi ptr [ %.sroa.020.0.i69.i.i, %bb.ez ], [ %i.agn, %.preheader ] ; 2 uses
  %.sroa.020.0.i69.i.i = getelementptr inbounds nuw i8, ptr %.pn.i68.i.i, i64 2 ; 3 uses
  %.not25.not.not.i.not.i.i = icmp eq ptr %.sroa.020.0.i69.i.i, %i.ago ; 2 uses
  br i1 %.not25.not.not.i.not.i.i, label %.critedge.i70.i.i, label %bb.ez

bb.ey:                                            ; preds = %.noexc.i67.i.i, %bb.ew
  %i.agw = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i17.i65.i.i = icmp eq ptr %i.agn, null
  br i1 %.not.i.i.i17.i65.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit18.i66.i.i, label %bb.fb

bb.ez:                                            ; preds = %bb.ex
  %i.agx = load i16, ptr %.sroa.020.0.i69.i.i, align 2, !tbaa !192, !noalias !367
  %i.agy = zext i16 %i.agx to i32
  %i.agz = load i16, ptr %.pn.i68.i.i, align 2, !tbaa !192, !noalias !367
  %i.aha = zext i16 %i.agz to i32
  %i.ahb = add nuw nsw i32 %i.aha, 1
  %.not.i72.i.i = icmp eq i32 %i.ahb, %i.agy
  br i1 %.not.i72.i.i, label %bb.ex, label %.critedge.i70.i.i, !llvm.loop !289

.critedge.i70.i.i:                                ; preds = %bb.ez, %bb.ex
  %.not.i.i.i.i71.i.i = icmp eq ptr %i.agn, null
  br i1 %.not.i.i.i.i71.i.i, label %_ZN11flatbuffers12_GLOBAL__N_115HasGapInProtoIdERKSt6vectorIPNS_8FieldDefESaIS3_EE.exit.i.i, label %bb.fa

bb.fa:                                            ; preds = %.critedge.i70.i.i
  %i.ahc = load ptr, ptr %i.jt, align 8, !tbaa !194, !noalias !367
  %i.ahd = ptrtoint ptr %i.ahc to i64
  %i.ahe = ptrtoint ptr %i.agn to i64
  %i.ahf = sub i64 %i.ahd, %i.ahe
  call void @_ZdlPvm(ptr noundef nonnull %i.agn, i64 noundef %i.ahf) #26, !noalias !367
  br label %_ZN11flatbuffers12_GLOBAL__N_115HasGapInProtoIdERKSt6vectorIPNS_8FieldDefESaIS3_EE.exit.i.i

bb.fb:                                            ; preds = %bb.ey
  %i.ahg = load ptr, ptr %i.jt, align 8, !tbaa !194, !noalias !367
  %i.ahh = ptrtoint ptr %i.ahg to i64
  %i.ahi = sub i64 %i.ahh, %i.agq
  call void @_ZdlPvm(ptr noundef nonnull %i.agn, i64 noundef %i.ahi) #26, !noalias !367
  br label %_ZNSt6vectorItSaItEED2Ev.exit18.i66.i.i

_ZNSt6vectorItSaItEED2Ev.exit18.i66.i.i:          ; preds = %bb.fb, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !367
  br label %.body435

_ZN11flatbuffers12_GLOBAL__N_115HasGapInProtoIdERKSt6vectorIPNS_8FieldDefESaIS3_EE.exit.i.i: ; preds = %bb.fa, %.critedge.i70.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !367
  br i1 %.not25.not.not.i.not.i.i, label %_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i, label %bb.fc

bb.fc:                                            ; preds = %_ZN11flatbuffers12_GLOBAL__N_115HasGapInProtoIdERKSt6vectorIPNS_8FieldDefESaIS3_EE.exit.i.i
  br i1 %3, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ahj = load ptr, ptr @stderr, align 8, !tbaa !38, !noalias !367
  %i.ahk = load ptr, ptr %i.yg, align 8, !tbaa !34, !noalias !367
  %i.ahl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahj, ptr noundef nonnull @.str.53, ptr noundef %i.ahk) #32, !noalias !367 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.ahm = icmp eq i32 %i.yh, 2
  br i1 %i.ahm, label %_ZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.thread1802, label %_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i

.sink.split.i:                                    ; preds = %bb.eu, %bb.dw, %bb.dp
  %.str.50.sink.i = phi ptr [ @.str.51, %bb.dw ], [ @.str.50, %bb.dp ], [ @.str.52, %bb.eu ]
  %i.ahn = load ptr, ptr @stderr, align 8, !tbaa !38, !noalias !367
  %i.aho = load ptr, ptr %i.yg, align 8, !tbaa !34, !noalias !367
  %i.ahp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahn, ptr noundef nonnull %.str.50.sink.i, ptr noundef %i.aho) #32, !noalias !367 ; 0 uses
  br label %_ZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.thread1802

_ZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.thread1802: ; preds = %bb.dp, %bb.dw, %bb.eu, %bb.fe, %.sink.split.i
  store i64 0, ptr %i.ju, align 8, !alias.scope !367
  store ptr %i.jv, ptr %33, align 8, !tbaa !185, !alias.scope !367
  store i64 1, ptr %i.jw, align 8, !tbaa !186, !alias.scope !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i8 0, i64 16, i1 false), !alias.scope !367
  store float 1.000000e+00, ptr %i.ju, align 8, !tbaa !368, !alias.scope !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.jy, i8 0, i64 17, i1 false), !alias.scope !367
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit471.jt1

_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i: ; preds = %bb.fe, %_ZN11flatbuffers12_GLOBAL__N_115HasGapInProtoIdERKSt6vectorIPNS_8FieldDefESaIS3_EE.exit.i.i, %_ZN11flatbuffers12_GLOBAL__N_125HasFieldIdFromReservedIdsERKSt6vectorIPNS_8FieldDefESaIS3_EERKS1_ItSaItEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !367
  %i.ahq = load ptr, ptr %i.yi, align 8, !tbaa !171, !noalias !367 ; 2 uses
  %i.ahr = load ptr, ptr %i.yo, align 8, !tbaa !171, !noalias !367 ; 2 uses
  %.not117.i = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not117.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEEZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSF_9StructDefENSF_10IDLOptions16ProtoIdGapActionEbE3$_0EvT_SN_T0_.exit.i", label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKiRKS6_EEERS7_DpOT_.exit.thread.i
  %.sroa.094.0118.i = phi ptr [ %i.alj, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRKiRKS6_EEERS7_DpOT_.exit.thread.i ], [ %i.ahq, %_ZN11flatbuffers12_GLOBAL__N_121ProtobufIdSanityCheckERKNS_9StructDefENS_10IDLOptions16ProtoIdGapActionEb.exit.i ] ; 2 uses
  %i.ahs = load ptr, ptr %.sroa.094.0118.i, align 8, !tbaa !173, !noalias !367 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !367
  store ptr %i.jz, ptr %10, align 8, !tbaa !23, !noalias !367
  store i16 25705, ptr %i.jz, align 8, !noalias !367
  store i64 2, ptr %i.ka, align 8, !tbaa !26, !noalias !367
  store i8 0, ptr %i.kd, align 2, !tbaa !27, !noalias !367
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 104
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !174, !noalias !367 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 96 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ahu, null
  br i1 %.not10.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %.lr.ph.i.i.i.i57.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_118ProtobufToFbsIdMapD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(57) dereferenceable(57) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !207 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !27
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #26
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !185
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !186
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !185    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !186
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_tEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_tESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 9 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !34
  %i.l = load i64, ptr %i.f, align 8, !tbaa !27
  store i64 %i.l, ptr %i.d, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.b, i64 -24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !26
  store ptr %i.f, ptr %i.c, align 8, !tbaa !34
  store i64 0, ptr %i.n, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !151  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.q, ptr %i.a, align 8, !tbaa !151
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -32 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 5                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 6 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 6 uses
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !34  ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ae, label %bb.c, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ae, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !27
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !26
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !27
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !34
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !26
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !27
  store i64 %i.aq, ptr %i.aa, align 8, !tbaa !27
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !27
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !34
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.at, ptr %i.au, align 8, !tbaa !26
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !27
  store i64 %i.av, ptr %i.aa, align 8, !tbaa !27
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.z, ptr %i.x, align 8, !tbaa !34
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.aw = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.z, %bb.f ], [ %i.ad, %bb.g ]
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.ax, align 8, !tbaa !26
  store i8 0, ptr %i.aw, align 1, !tbaa !27
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -1
  %3 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, !llvm.loop !419

_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.az = load ptr, ptr %1, align 8, !tbaa !34    ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = load ptr, ptr %2, align 8, !tbaa !34    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.be = icmp eq ptr %i.bc, %i.bd                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2: ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit
  br i1 %i.be, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit
  br i1 %i.be, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !26 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  tail call void @llvm.assume(i1 %i.bh)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !215

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bg, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !27
  store i8 %i.bi, ptr %i.az, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bc, i64 %i.bg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !26
  %i.bl = load ptr, ptr %1, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bc, ptr %1, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !26
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !27
  store i64 %i.bq, ptr %i.ba, align 8, !tbaa !27
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.br = load i64, ptr %i.ba, align 8, !tbaa !27
  store ptr %i.bc, ptr %1, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !26
  %i.bv = load i64, ptr %i.bd, align 8, !tbaa !27
  store i64 %i.bv, ptr %i.ba, align 8, !tbaa !27
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.az, ptr %2, align 8, !tbaa !34
  store i64 %i.br, ptr %i.bd, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bd, ptr %2, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.az, %bb.l ], [ %i.bd, %bb.m ], [ %i.bc, %bb.h ]
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !26
  store i8 0, ptr %i.bw, align 1, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !152    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #25 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !23
  %i.t = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.v, ptr %i.a, align 8, !tbaa !201
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %i.r, align 8, !tbaa !34
  %i.y = load i64, ptr %i.a, align 8, !tbaa !201
  store i64 %i.y, ptr %i.s, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !27
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !426
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !34, !alias.scope !427 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26, !alias.scope !427 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !428
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !426
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !27, !alias.scope !427
  store i64 %i.an, ptr %i.af, align 8, !tbaa !27, !alias.scope !426
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !26, !alias.scope !427
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers12_GLOBAL__N_118ExtractProtobufIdsERKSt6vectorIPNS_8FieldDefESaIS3_EE:bb.a

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 2 uses
  %.not2635 = icmp eq ptr %i.g, %i.i
  br i1 %.not2635, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11flatbuffers12_GLOBAL__N_118ExtractProtobufIdsERKSt6vectorIPNS_8FieldDefESaIS3_EEE2IDB5cxx11) #27
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.cf, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 15 uses
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.cg, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 11 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ch, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 11 uses
  %.sroa.020.036 = phi ptr [ %i.g, %.lr.ph ], [ %i.ci, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.020.036, align 8, !tbaa !173 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !174  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11flatbuffers12_GLOBAL__N_118ExtractProtobufIdsERKSt6vectorIPNS_8FieldDefESaIS3_EEE2IDB5cxx11, i64 8), align 8, !tbaa !26 ; 4 uses
  %i.u = load ptr, ptr @_ZZN11flatbuffers12_GLOBAL__N_118ExtractProtobufIdsERKSt6vectorIPNS_8FieldDefESaIS3_EEE2IDB5cxx11, align 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.w) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.h
  %i.ab = sub i64 %i.w, %i.t
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ac = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.h, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ad = icmp eq ptr %.19.i.i.i.i, %i.s
  br i1 %i.ad, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.t) ; 2 uses
  %i.ag = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %i.ak = sub i64 %i.t, %i.af
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !178 ; 3 uses
  %.not13 = icmp eq ptr %i.an, null
  br i1 %.not13, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 8 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27  ; 2 uses
  %.not2533.i.i = icmp eq i8 %i.at, 0
  br i1 %.not2533.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %i.au = phi i8 [ %i.az, %bb.l ], [ %i.at, %bb.k ] ; 2 uses
  %.034.i.i = phi ptr [ %i.ay, %bb.l ], [ %i.as, %bb.k ] ; 2 uses
  %i.av = sext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -48
  %i.ax = icmp ult i32 %i.aw, 10
  br i1 %i.ax, label %.critedge.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !27  ; 2 uses
  %.not25.i.i = icmp eq i8 %i.az, 0
  br i1 %.not25.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ba = icmp eq i8 %i.au, 48
  br i1 %i.ba, label %bb.m, label %.critedge.thread.i.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 88
  br i1 %i.be, label %bb.n, label %.critedge.thread.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr %i.as, ptr %i.b, align 8, !tbaa !187
  %i.bf = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !190
  %i.bg = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef %i.bf) #27, !inline_history !2
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  %.not.i.i.i = icmp ne i8 %i.bi, 0
  %i.bj = icmp eq ptr %i.bh, %i.as
  %or.cond.i.i.i = or i1 %i.bj, %.not.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br i1 %or.cond.i.i.i, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit

.critedge.thread.i.i:                             ; preds = %bb.l, %bb.m, %.critedge.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %i.as, ptr %i.a, align 8, !tbaa !187
  %i.bk = load ptr, ptr @_ZN11flatbuffers13ClassicLocale9instance_E, align 8, !tbaa !190
  %i.bl = call i64 @__isoc23_strtoll_l(ptr noundef nonnull %i.as, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef %i.bk) #27, !inline_history !2
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27
  %.not.i26.i.i = icmp ne i8 %i.bn, 0
  %i.bo = icmp eq ptr %i.bm, %i.as
  %or.cond.i27.i.i = or i1 %i.bo, %.not.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br i1 %or.cond.i27.i.i, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit

_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit: ; preds = %bb.n, %.critedge.thread.i.i
  %.28.i = phi i64 [ %i.bg, %bb.n ], [ %i.bl, %.critedge.thread.i.i ] ; 2 uses
  %or.cond.i = icmp ult i64 %.28.i, 65536
  %spec.select21.i = call i64 @llvm.umin.i64(i64 %.28.i, i64 65535)
  %spec.select.i = trunc nuw i64 %spec.select21.i to i16 ; 2 uses
  br i1 %or.cond.i, label %bb.o, label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.o:                                             ; preds = %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit
  %.not.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i16 %spec.select.i, ptr %i.o, align 2, !tbaa !192
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  store ptr %i.bp, ptr %i.j, align 8, !tbaa !446
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.q:                                             ; preds = %bb.o
  %i.bq = ptrtoint ptr %i.n to i64
  %i.br = ptrtoint ptr %i.m to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 7 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775806
  br i1 %i.bt, label %bb.r, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.bu = ashr exact i64 %i.bs, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add i64 %.sroa.speculated.i.i.i, %i.bu  ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 4611686018427387903)
  %i.by = select i1 %i.bw, i64 4611686018427387903, i64 %i.bx ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i.i16)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #25
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bs ; 2 uses
  store i16 %spec.select.i, ptr %i.cb, align 2, !tbaa !192
  %i.cc = icmp sgt i64 %i.bs, 0
  br i1 %i.cc, label %bb.s, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ca, ptr align 2 %i.m, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc17
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bs) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.ca, ptr %0, align 8, !tbaa !447
  store ptr %i.cd, ptr %i.j, align 8, !tbaa !446
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.ce, ptr %i.k, align 8, !tbaa !194
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.r
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %3 = phi i64 [ %i.bs, %.loopexit.split-lp.loopexit ], [ 9223372036854775806, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.u

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %bb.n, %.critedge.thread.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.g, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit, %bb.p, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.j, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cf = phi ptr [ %i.m, %bb.n ], [ %i.m, %.critedge.thread.i.i ], [ %i.m, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.m, %bb.g ], [ %i.m, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ], [ %i.m, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ], [ %i.m, %bb.p ], [ %i.ca, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.m, %bb.j ], [ %i.m, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.cg = phi ptr [ %i.n, %bb.n ], [ %i.n, %.critedge.thread.i.i ], [ %i.n, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.n, %bb.g ], [ %i.n, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ], [ %i.n, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ], [ %i.n, %bb.p ], [ %i.ce, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.n, %bb.j ], [ %i.n, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ch = phi ptr [ %i.o, %bb.n ], [ %i.o, %.critedge.thread.i.i ], [ %i.o, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN11flatbuffers5ValueEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %i.o, %bb.g ], [ %i.o, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN11flatbuffers5ValueESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ], [ %i.o, %_ZN11flatbuffers14StringToNumberItEEbPKcPT_.exit ], [ %i.bp, %bb.p ], [ %i.cd, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.o, %bb.j ], [ %i.o, %_ZNK11flatbuffers11SymbolTableINS_5ValueEE6LookupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.020.036, i64 8 ; 2 uses
  %.not26 = icmp eq ptr %i.ci, %i.i
  br i1 %.not26, label %._crit_edge, label %bb.g

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.a
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %3) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.a, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.a ], [ %lpad.phi, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 1                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !448

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !192  ; 2 uses
  %i.k = load i16, ptr %0, align 2, !tbaa !192
  store i16 %i.k, ptr %i.i, align 2, !tbaa !192
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %0, i64 %i.u
  %i.w = load i16, ptr %i.t, align 2, !tbaa !192
  %i.x = load i16, ptr %i.v, align 2, !tbaa !192
  %i.y = icmp ult i16 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !192
  %i.ab = getelementptr inbounds [2 x i8], ptr %0, i64 %.035.i.i.i.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !192
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !7

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 2
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !192
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.al, ptr %i.am, align 2, !tbaa !192
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !192 ; 2 uses
  %i.ap = icmp ult i16 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !192
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i16 %i.j, ptr %i.ar, align 2, !tbaa !192
  %i.as = icmp sgt i64 %i.m, 2
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !449

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -2 ; 3 uses
  %i.ay = load i16, ptr %i.f, align 2, !tbaa !192 ; 5 uses
  %i.az = load i16, ptr %i.aw, align 2, !tbaa !192 ; 5 uses
  %i.ba = icmp ult i16 %i.ay, %i.az
  %i.bb = load i16, ptr %i.ax, align 2, !tbaa !192 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp ult i16 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i16, ptr %0, align 2, !tbaa !192
  store i16 %i.az, ptr %0, align 2, !tbaa !192
  store i16 %i.bd, ptr %i.aw, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i16 %i.ay, %i.bb
  %i.bf = load i16, ptr %0, align 2, !tbaa !192   ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 %i.bb, ptr %0, align 2, !tbaa !192
  store i16 %i.bf, ptr %i.ax, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i16 %i.ay, ptr %0, align 2, !tbaa !192
  store i16 %i.bf, ptr %i.f, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp ult i16 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i16, ptr %0, align 2, !tbaa !192
  store i16 %i.ay, ptr %0, align 2, !tbaa !192
  store i16 %i.bh, ptr %i.f, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp ult i16 %i.az, %i.bb
  %i.bj = load i16, ptr %0, align 2, !tbaa !192   ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 %i.bb, ptr %0, align 2, !tbaa !192
  store i16 %i.bj, ptr %i.ax, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i16 %i.az, ptr %0, align 2, !tbaa !192
  store i16 %i.bj, ptr %i.aw, align 2, !tbaa !192
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i16, ptr %0, align 2, !tbaa !192   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i16, ptr %.sroa.010.1.i.i, align 2, !tbaa !192 ; 2 uses
  %i.bm = icmp ult i16 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 2 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !450

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -2 ; 5 uses
  %i.bo = load i16, ptr %.sroa.0.1.i.i, align 2, !tbaa !192 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_T0_T1_":bb.a
  %i.bl = icmp eq ptr %i.bk, %i.ar
  br i1 %i.bl, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !26 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %.not21.i.i.i = icmp eq ptr %0, %i.aw
  br i1 %.not21.i.i.i, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i, label %bb.g, !prof !215

bb.g:                                             ; preds = %bb.f
  switch i64 %i.bm, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !27
  store i8 %i.bo, ptr %i.ba, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bp = load i64, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !27
  %.pre.i.i.i16 = load ptr, ptr %.sink.i.i, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !34
  %i.br = load i64, ptr %i.as, align 8, !tbaa !26
  store i64 %i.br, ptr %i.bi, align 8, !tbaa !26
  %i.bs = load i64, ptr %i.ar, align 8, !tbaa !27
  store i64 %i.bs, ptr %i.ba, align 8, !tbaa !27
  store ptr %i.ar, ptr %.sink.i.i, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.f
  %i.bt = phi ptr [ %.pre.i.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.bk, %bb.f ], [ %i.ar, %bb.j ]
  store i64 0, ptr %i.as, align 8, !tbaa !26
  store i8 0, ptr %i.bt, align 1, !tbaa !27
  %i.bu = ptrtoint ptr %i.aw to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = sdiv exact i64 %i.bv, 40
  %i.bx = load i32, ptr %3, align 8, !tbaa !200
  store i32 %i.bx, ptr %4, align 8, !tbaa !200
  store ptr %i.au, ptr %i.at, align 8, !tbaa !23
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ap
  br i1 %i.bz, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.k:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !26 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.cc, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i
  store ptr %i.by, ptr %i.at, align 8, !tbaa !34
  %i.cd = load i64, ptr %i.ap, align 8, !tbaa !27
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !27
  %.pre5.i = load i64, ptr %i.aq, align 8, !tbaa !26
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit5.i

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.k
  %i.ce = phi i64 [ %i.ca, %bb.k ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  store i64 %i.ce, ptr %i.av, align 8, !tbaa !26
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !34
  store i64 0, ptr %i.aq, align 8, !tbaa !26
  store i8 0, ptr %i.ap, align 8, !tbaa !27
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_T0_SR_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr nofreeobj noundef align 8 dereferenceable(40) %4)
  %i.cf = load ptr, ptr %i.at, align 8, !tbaa !34 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.au
  br i1 %i.cg, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit5.i
  %i.ch = load i64, ptr %i.au, align 8, !tbaa !27
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cj = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ap
  br i1 %i.ck, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.cl = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #26
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_RT0_.exit": ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cn = icmp sgt i64 %i.bv, 40
  br i1 %i.cn, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !484

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2559 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02658 = phi i64 [ %i.cp, %bb.b ], [ %2, %.lr.ph ]
  %i.co = phi i64 [ %i.dk, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cp = add nsw i64 %.02658, -1                 ; 3 uses
  %i.cq = udiv i64 %i.co, 80
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds i8, ptr %storemerge2559, i64 -40 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.e, align 8, !tbaa !200 ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cr, align 8, !tbaa !200 ; 5 uses
  %i.ct = icmp slt i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.cs, align 8, !tbaa !200 ; 6 uses
  br i1 %i.ct, label %bb.l, label %bb.q

bb.l:                                             ; preds = %.lr.ph60
  %i.cu = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = load i32, ptr %0, align 8, !tbaa !216
  store i32 %.val1.i.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.cv, ptr %i.cr, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.n:                                             ; preds = %bb.l
  %i.cw = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.cx = load i32, ptr %0, align 8, !tbaa !216   ; 2 uses
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %.val1.i27.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.cx, ptr %i.cs, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.p:                                             ; preds = %bb.n
  store i32 %.val.i.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.cx, ptr %i.e, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.q:                                             ; preds = %.lr.ph60
  %i.cy = icmp slt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = load i32, ptr %0, align 8, !tbaa !216
  store i32 %.val.i.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.cz, ptr %i.e, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.s:                                             ; preds = %bb.q
  %i.da = icmp slt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.db = load i32, ptr %0, align 8, !tbaa !216   ; 2 uses
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %.val1.i27.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.db, ptr %i.cs, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

bb.u:                                             ; preds = %bb.s
  store i32 %.val1.i.i.i, ptr %0, align 8, !tbaa !216
  store i32 %i.db, ptr %i.cr, align 8, !tbaa !216
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i": ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  %.sink35.i.i = phi ptr [ %i.e, %bb.r ], [ %i.cr, %bb.u ], [ %i.cs, %bb.t ], [ %i.cr, %bb.m ], [ %i.e, %bb.p ], [ %i.cs, %bb.o ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink35.i.i, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %i.de, %bb.y ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2559, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_SQ_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.y ]
  %.val1.i.i13.i = load i32, ptr %0, align 8, !tbaa !200 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.v ], [ %i.de, %bb.w ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 8, !tbaa !200 ; 2 uses
  %i.dd = icmp slt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.dd, label %bb.w, label %.preheader.i.i, !llvm.loop !485

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 5 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !200 ; 2 uses
  %i.df = icmp slt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.df, label %.preheader.i.i, label %bb.x, !llvm.loop !486

bb.x:                                             ; preds = %.preheader.i.i
  %i.dg = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dg, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEET_SQ_SQ_T0_.exit"

bb.y:                                             ; preds = %bb.x
  store i32 %.val1.i9.i.i, ptr %.sroa.012.1.i.i, align 8, !tbaa !216
  store i32 %.val.i.i14.i, ptr %.sroa.0.1.i.i, align 8, !tbaa !216
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.di) #27
  br label %bb.v, !llvm.loop !487

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEET_SQ_SQ_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2559, i64 noundef %i.cp)
  %i.dj = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dk = sub i64 %i.dj, %i.a                     ; 3 uses
  %i.dl = icmp sgt i64 %i.dk, 640
  br i1 %i.dl, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_T0_.exit", !llvm.loop !482

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEET_SQ_SQ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_SQ_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_T0_SR_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.173", align 8    ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !200
  %.val1.i = load i32, ptr %i.h, align 8, !tbaa !200
  %i.i = icmp slt i32 %.val.i, %.val1.i
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 5 uses
  %i.j = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select ; 7 uses
  %i.k = getelementptr inbounds [40 x i8], ptr %0, i64 %.051 ; 6 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !216
  store i32 %i.l, ptr %i.k, align 8, !tbaa !200
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !34   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.t, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.t, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %.not21.i.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i.i, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, label %bb.c, !prof !215

bb.c:                                             ; preds = %bb.b
  switch i64 %i.v, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = load i8, ptr %i.r, align 1, !tbaa !27
  store i8 %i.x, ptr %i.o, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.y = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !26
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.n, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !27
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !27
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.af = load i64, ptr %i.p, align 8, !tbaa !27
  store ptr %i.r, ptr %i.n, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !27
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.o, ptr %i.m, align 8, !tbaa !34
  store i64 %i.af, ptr %i.s, align 8, !tbaa !27
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.s, ptr %i.m, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.aj = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.o, %bb.f ], [ %i.s, %bb.g ], [ %i.r, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !27
  %i.al = icmp slt i64 %spec.select, %i.b
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !488

._crit_edge:                                      ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ] ; 6 uses
  %i.am = and i64 %2, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.ao = add nsw i64 %2, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ar = shl nsw i64 %.0.lcssa, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 3 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %0, i64 %i.as ; 7 uses
  %i.au = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa ; 6 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !216
  store i32 %i.av, ptr %i.au, align 8, !tbaa !200
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 4 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 6 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.i
  br i1 %i.bd, label %bb.j, label %.thread.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25: ; preds = %bb.i
  br i1 %i.bd, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !26 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bg)
  %.not21.i.i28 = icmp eq i64 %i.as, %.0.lcssa
  br i1 %.not21.i.i28, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit33, label %bb.k, !prof !215

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bf, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bh = load i8, ptr %i.bb, align 1, !tbaa !27
  store i8 %i.bh, ptr %i.ay, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !26
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !27
  %.pre.i.i30 = load ptr, ptr %i.aw, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit33

.thread.i.i32:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !26
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !27
  store i64 %i.bp, ptr %i.az, align 8, !tbaa !27
end_hunk_3
begin_hunk_4_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_T0_SR_T1_T2_":bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.pre54, ptr %i.eh, align 8, !tbaa !26
  %i.ei = load i64, ptr %i.ca, align 8, !tbaa !27
  store i64 %i.ei, ptr %i.du, align 8, !tbaa !27
  %.not.i.i12.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i12.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11.i
  store ptr %i.dt, ptr %i.by, align 8, !tbaa !34
  store i64 %i.eg, ptr %i.ca, align 8, !tbaa !27
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i11.i, %.thread.i.i17.i
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14.i, %bb.y
  %i.ej = phi ptr [ %.pre.i.i15.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i14.i ], [ %i.dt, %bb.ac ], [ %i.ca, %bb.ad ], [ %i.dw, %bb.y ]
  store i64 0, ptr %i.cl, align 8, !tbaa !26
  store i8 0, ptr %i.ej, align 1, !tbaa !27
  %i.ek = load ptr, ptr %i.by, align 8, !tbaa !34 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ca
  br i1 %i.el, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ae
  %i.em = load i64, ptr %i.ca, align 8, !tbaa !27
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #26
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_SQ_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.173", align 8    ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not21.i.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 6 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.q ] ; 5 uses
  %.val.i = load i32, ptr %.sroa.0.024, align 8, !tbaa !200 ; 3 uses
  %.val1.i = load i32, ptr %0, align 8, !tbaa !200
  %i.i = icmp slt i32 %.val.i, %.val1.i
  br i1 %i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 %.val.i, ptr %2, align 8, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !23
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn23, i64 64 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn23, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.r = load i64, ptr %i.l, align 8, !tbaa !27
  store i64 %i.r, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.pn23, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.t, ptr %i.d, align 8, !tbaa !26
  store ptr %i.l, ptr %i.j, align 8, !tbaa !34
  store i64 0, ptr %i.s, align 8, !tbaa !26
  store i8 0, ptr %i.l, align 8, !tbaa !27
  %i.u = ptrtoint ptr %.sroa.0.024 to i64
  %i.v = sub i64 %i.u, %i.e                       ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.pn23, i64 80
  %i.y = udiv exact i64 %i.v, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bd, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.024, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !216
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !200
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 6 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai                ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aj, label %bb.e, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  switch i64 %i.al, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !27
  store i8 %i.an, ptr %i.ae, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !26
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !34
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !26
  store i64 %i.au, ptr %i.as, align 8, !tbaa !26
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !27
  store i64 %i.av, ptr %i.af, align 8, !tbaa !27
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !27
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !34
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !26
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !27
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !34
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !27
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bc, align 8, !tbaa !26
  store i8 0, ptr %i.bb, align 1, !tbaa !27
  %i.bd = add nsw i64 %.010.i.i.i.i.i, -1
  %3 = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i, label %.loopexit.loopexit, !llvm.loop !490

.loopexit.loopexit:                               ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit.i.i.i.i.i
  %.pre = load i32, ptr %2, align 8, !tbaa !216
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.be = phi i32 [ %.pre, %.loopexit.loopexit ], [ %.val.i, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ]
  store i32 %i.be, ptr %0, align 8, !tbaa !200
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !34  ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.g
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !34  ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.c                 ; 2 uses
  %.pre26 = load i64, ptr %i.d, align 8, !tbaa !26 ; 5 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.loopexit
  br i1 %i.bi, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.bi, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bj = icmp ult i64 %.pre26, 16
  call void @llvm.assume(i1 %i.bj)
  br i1 %.not21.i.i, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, label %bb.k, !prof !215

bb.k:                                             ; preds = %bb.j
  switch i64 %.pre26, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bh, i64 %.pre26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !26  ; 2 uses
  store i64 %i.bl, ptr %i.h, align 8, !tbaa !26
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !34
  store i64 %.pre26, ptr %i.h, align 8, !tbaa !26
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !27
  store i64 %i.bo, ptr %i.g, align 8, !tbaa !27
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bp = load i64, ptr %i.g, align 8, !tbaa !27
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !34
  store i64 %.pre26, ptr %i.h, align 8, !tbaa !26
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !27
  store i64 %i.bq, ptr %i.g, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !34
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.c, ptr %i.b, align 8, !tbaa !34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.n, %bb.o
  %i.br = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bf, %bb.n ], [ %i.c, %bb.o ], [ %i.bh, %bb.j ]
  store i64 0, ptr %i.d, align 8, !tbaa !26
  store i8 0, ptr %i.br, align 1, !tbaa !27
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.c
  br i1 %i.bt, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !27
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #26
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.024)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.p
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit20, label %bb.b, !llvm.loop !491

.loopexit20:                                      ; preds = %bb.q, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN11flatbuffers12_GLOBAL__N_121MapProtoIdsToFieldsIdERKNSH_9StructDefENSH_10IDLOptions16ProtoIdGapActionEbE3$_0EEEvT_T0_"(ptr %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.173", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = load i32, ptr %0, align 8, !tbaa !200    ; 3 uses
  store i32 %i.a, ptr %1, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 11 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !34
  %i.l = load i64, ptr %i.f, align 8, !tbaa !27
  store i64 %i.l, ptr %i.d, align 8, !tbaa !27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !26
  store ptr %i.f, ptr %i.c, align 8, !tbaa !34
  store i64 0, ptr %i.n, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !27
  %.sroa.0.016 = getelementptr inbounds i8, ptr %0, i64 -40 ; 2 uses
  %.val2.i18 = load i32, ptr %.sroa.0.016, align 8, !tbaa !200 ; 2 uses
  %i.p = icmp slt i32 %i.a, %.val2.i18
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %.val2.i21 = phi i32 [ %.val2.i, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %.val2.i18, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ]
  %.sroa.0.020 = phi ptr [ %.sroa.0.0, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %.sroa.0.016, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ] ; 4 uses
  %.sroa.013.019 = phi ptr [ %.sroa.0.020, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %0, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit ] ; 12 uses
  store i32 %.val2.i21, ptr %.sroa.013.019, align 8, !tbaa !200
  %i.q = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -32 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !34   ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %.lr.ph
  br i1 %i.x, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.y = getelementptr inbounds i8, ptr %.sroa.013.019, i64 -24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  switch i64 %i.z, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !27
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.v, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !26  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !26
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !27
end_hunk_4
