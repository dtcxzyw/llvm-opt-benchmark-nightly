Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_serialization?download=true
inline.NumInlined: 21667
inline.NumDeleted: 12639
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb26SerializedCSVReaderOptions11DeserializeERNS_12DeserializerE:bb.a

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit417: ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  %i.ye = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2709
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  %i.yg = load ptr, ptr %i.yf, align 8, !noalias !2709
  %i.yh = invoke noundef zeroext i1 %i.yg(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 139, ptr noundef nonnull @.str.277)
          to label %.noexc422 unwind label %bb.fa, !inline_history !26

.noexc422:                                        ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit417
  %i.yi = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2709 ; 2 uses
  br i1 %i.yh, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i418: ; preds = %.noexc422
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 48
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !2709
  invoke void %i.yk(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext false)
          to label %.noexc423 unwind label %bb.fa, !inline_history !26

.noexc423:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i418
  %i.yl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.yl, ptr %21, align 8, !tbaa !434, !alias.scope !2709
  store i8 0, ptr %i.yl, align 8, !alias.scope !2709
  %i.ym = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.ym, align 8, !tbaa !436, !alias.scope !2709
  br label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit427

bb.bu:                                            ; preds = %.noexc422
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 216
  %i.yo = load ptr, ptr %i.yn, align 8, !noalias !2710
  invoke void %i.yo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc424 unwind label %bb.fa, !inline_history !26

.noexc424:                                        ; preds = %bb.bu
  %i.yp = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2709
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 48
  %i.yr = load ptr, ptr %i.yq, align 8
  invoke void %i.yr(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext true)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit427 unwind label %bb.bv

bb.bv:                                            ; preds = %.noexc424
  %i.ys = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yt = load ptr, ptr %21, align 8, !tbaa !404, !alias.scope !2709 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %.body425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i419: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.yt) #23
  br label %.body425

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit427: ; preds = %.noexc424, %.noexc423
  %i.yw = load ptr, ptr %1, align 8, !tbaa !322
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8
  invoke void %i.yy(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 140, ptr noundef nonnull @.str.278)
          to label %.noexc432 unwind label %bb.fb, !inline_history !2659

.noexc432:                                        ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit427
  %i.yz = load ptr, ptr %1, align 8, !tbaa !322
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 56
  %i.zb = load ptr, ptr %i.za, align 8
  invoke void %i.zb(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc433 unwind label %bb.fb, !inline_history !2659

.noexc433:                                        ; preds = %.noexc432
  %i.zc = load ptr, ptr %1, align 8, !tbaa !322
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 40
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = invoke noundef zeroext i1 %i.ze(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.472)
          to label %.noexc434 unwind label %bb.fb, !inline_history !2659 ; 2 uses

.noexc434:                                        ; preds = %.noexc433
  br i1 %i.zf, label %bb.bw, label %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIbEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i428

bb.bw:                                            ; preds = %.noexc434
  %i.zg = load ptr, ptr %1, align 8, !tbaa !322
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 104
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = invoke noundef zeroext i1 %i.zi(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc435 unwind label %bb.fb, !inline_history !2659

.noexc435:                                        ; preds = %bb.bw
  %i.zk = zext i1 %i.zj to i16
  br label %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIbEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i428

_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIbEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i428: ; preds = %.noexc435, %.noexc434
  %.sink8.i.i.i.i429 = phi i16 [ %i.zk, %.noexc435 ], [ 0, %.noexc434 ]
  %i.zl = load ptr, ptr %1, align 8, !tbaa !322
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 48
  %i.zn = load ptr, ptr %i.zm, align 8
  invoke void %i.zn(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.zf)
          to label %.noexc436 unwind label %bb.fb, !inline_history !2659

.noexc436:                                        ; preds = %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIbEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i428
  %i.zo = load ptr, ptr %1, align 8, !tbaa !322
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load ptr, ptr %i.zp, align 8
  invoke void %i.zq(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.70)
          to label %.noexc437 unwind label %bb.fb, !inline_history !2659

.noexc437:                                        ; preds = %.noexc436
  %i.zr = load ptr, ptr %1, align 8, !tbaa !322
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 104
  %i.zt = load ptr, ptr %i.zs, align 8
  %i.zu = invoke noundef zeroext i1 %i.zt(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc438 unwind label %bb.fb, !inline_history !2659

.noexc438:                                        ; preds = %.noexc437
  %i.zv = load ptr, ptr %1, align 8, !tbaa !322
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 32
  %i.zx = load ptr, ptr %i.zw, align 8
  invoke void %i.zx(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc439 unwind label %bb.fb, !inline_history !2659

.noexc439:                                        ; preds = %.noexc438
  %.sroa.3.0.insert.shift.i.i.i430 = select i1 %i.zu, i16 256, i16 0
  %.sroa.0.0.insert.insert.i.i.i431 = or disjoint i16 %.sroa.3.0.insert.shift.i.i.i430, %.sink8.i.i.i.i429
  %i.zy = load ptr, ptr %1, align 8, !tbaa !322
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 64
  %i.aaa = load ptr, ptr %i.zz, align 8
  invoke void %i.aaa(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc440 unwind label %bb.fb, !inline_history !2659

.noexc440:                                        ; preds = %.noexc439
  %i.aab = load ptr, ptr %1, align 8, !tbaa !322
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8
  invoke void %i.aad(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionIbEEEET_tPKc.exit442 unwind label %bb.fb, !inline_history !2659

_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionIbEEEET_tPKc.exit442: ; preds = %.noexc440
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  %i.aae = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2711
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aag = load ptr, ptr %i.aaf, align 8, !noalias !2711
  invoke void %i.aag(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 141, ptr noundef nonnull @.str.279)
          to label %.noexc450 unwind label %bb.fc, !inline_history !2687

.noexc450:                                        ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionIbEEEET_tPKc.exit442
  call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %i.aah = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2713
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 56
  %i.aaj = load ptr, ptr %i.aai, align 8, !noalias !2713
  invoke void %i.aaj(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc451 unwind label %bb.fc, !inline_history !2687

.noexc451:                                        ; preds = %.noexc450
  invoke void @_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::CSVOption") align 8 %22, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc452 unwind label %bb.fc

.noexc452:                                        ; preds = %.noexc451
  %i.aak = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2713
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 64
  %i.aam = load ptr, ptr %i.aal, align 8
  invoke void %i.aam(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueESB_E4typeEv.exit.i447 unwind label %bb.bx

bb.bx:                                            ; preds = %.noexc452
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !404, !alias.scope !2713 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %.body453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i443: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.aap) #23
  br label %.body453

_ZN6duckdb12Deserializer4ReadINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueESB_E4typeEv.exit.i447: ; preds = %.noexc452
  %i.aas = load ptr, ptr %1, align 8, !tbaa !322, !noalias !2711
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.aau = load ptr, ptr %i.aat, align 8
  invoke void %i.aau(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEET_tPKc.exit unwind label %bb.by

bb.by:                                            ; preds = %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueESB_E4typeEv.exit.i447
  %i.aav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !404, !alias.scope !2711 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.aaz = icmp eq ptr %i.aax, %i.aay
  br i1 %i.aaz, label %.body453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i448: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.aax) #23
  br label %.body453

_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueESB_E4typeEv.exit.i447
  invoke void @_ZN6duckdb26SerializedCSVReaderOptionsC1ENS_9CSVOptionIcEERKNS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(1192) %0, i16 %.sroa.0.0.insert.insert.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %22)
          to label %bb.bz unwind label %bb.fd

bb.bz:                                            ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEET_tPKc.exit
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %.0.i, ptr %i.aba, align 8, !tbaa !422
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.0.i157, ptr %i.abb, align 8, !tbaa !2715
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !429 ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !428 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.abh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.abi = load <2 x ptr>, ptr %4, align 16, !tbaa !426
  store <2 x ptr> %i.abi, ptr %i.abc, align 8, !tbaa !426
  %i.abj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.abk = load ptr, ptr %i.abj, align 16, !tbaa !432
  store ptr %i.abk, ptr %i.abg, align 8, !tbaa !432
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.abd, %i.abf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.abo, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.abd, %bb.bz ] ; 3 uses
  %i.abl = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !404 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.abl) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.abo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.abo, %i.abf
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !16

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.bz
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.abd, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.abd) #23
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.ca
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %.0.i.i, ptr %i.abp, align 8, !tbaa !2716
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 273
  store i8 %.0.i162, ptr %i.abq, align 1, !tbaa !2717
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i8 %.sink8.i.i.i.i, ptr %i.abr, align 8, !tbaa !422
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.cs, ptr %.sroa.521.0..sroa_idx, align 8, !tbaa !423
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i8 %.0.i177, ptr %i.abs, align 8, !tbaa !2718
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !964 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.abu, null
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !1002 ; 2 uses
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = ptrtoint ptr %i.abu to i64
  %i.abz = sub i64 %i.abx, %i.aby
  %i.aca = ashr exact i64 %i.abz, 3
  %i.acb = sub nsw i64 0, %i.aca
  %i.acc = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.acb
  call void @_ZdlPv(ptr noundef %i.acc) #23
  store ptr null, ptr %i.abt, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 8
  br label %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit

_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit:        ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abt, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  store ptr null, ptr %5, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.72.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 %.0.i183, ptr %i.acd, align 8, !tbaa !2719
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 %.0.i189, ptr %i.ace, align 8, !tbaa !2720
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 625
  store i8 %.0.i195, ptr %i.acf, align 1, !tbaa !2721
  %i.acg = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !404 ; 6 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.acj = icmp eq ptr %i.ach, %i.aci
  %i.ack = load ptr, ptr %6, align 8, !tbaa !404  ; 6 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.acm = icmp eq ptr %i.ack, %i.acl             ; 2 uses
  br i1 %i.acj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit
  br i1 %i.acm, label %bb.cc, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit
  br i1 %i.acm, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.acn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !436 ; 3 uses
  %i.acp = icmp ult i64 %i.aco, 16
  call void @llvm.assume(i1 %i.acp)
  %.not21.i = icmp eq ptr %6, %i.acg
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.cd, !prof !433

bb.cd:                                            ; preds = %bb.cc
  switch i64 %i.aco, label %bb.cf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.acq = load i8, ptr %i.ack, align 1, !tbaa !435
  store i8 %i.acq, ptr %i.ach, align 1, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ach, ptr align 1 %i.ack, i64 %i.aco, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.acr = load i64, ptr %i.acn, align 8, !tbaa !436 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 %i.acr, ptr %i.acs, align 8, !tbaa !436
  %i.act = load ptr, ptr %i.acg, align 8, !tbaa !404
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acr
  store i8 0, ptr %i.acu, align 1, !tbaa !435
  %.pre.i455 = load ptr, ptr %6, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %i.ack, ptr %i.acg, align 8, !tbaa !404
  %i.acw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.acx = load <2 x i64>, ptr %i.acw, align 8, !tbaa !435
  store <2 x i64> %i.acx, ptr %i.acv, align 8, !tbaa !435
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.acy = load i64, ptr %i.aci, align 8, !tbaa !435
  store ptr %i.ack, ptr %i.acg, align 8, !tbaa !404
  %i.acz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.adb = load <2 x i64>, ptr %i.acz, align 8, !tbaa !435
  store <2 x i64> %i.adb, ptr %i.ada, align 8, !tbaa !435
  %.not.i = icmp eq ptr %i.ach, null
  br i1 %.not.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ach, ptr %6, align 8, !tbaa !404
  store i64 %i.acy, ptr %i.acl, align 8, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.acl, ptr %6, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cg, %bb.ch
  %i.adc = phi ptr [ %.pre.i455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ach, %bb.cg ], [ %i.acl, %bb.ch ], [ %i.ack, %bb.cc ]
  %i.add = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.add, align 8, !tbaa !436
  store i8 0, ptr %i.adc, align 1, !tbaa !435
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 5 uses
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !404 ; 6 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.adh = icmp eq ptr %i.adf, %i.adg
  %i.adi = load ptr, ptr %7, align 8, !tbaa !404  ; 6 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.adk = icmp eq ptr %i.adi, %i.adj             ; 2 uses
  br i1 %i.adh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.adk, label %bb.ci, label %.thread.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i456: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.adk, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i457

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i462
  %i.adl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !436 ; 3 uses
  %i.adn = icmp ult i64 %i.adm, 16
  call void @llvm.assume(i1 %i.adn)
  %.not21.i459 = icmp eq ptr %7, %i.ade
  br i1 %.not21.i459, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit464, label %bb.cj, !prof !433

bb.cj:                                            ; preds = %bb.ci
  switch i64 %i.adm, label %bb.cl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i460
    i64 1, label %bb.ck
  ]

end_hunk_0
begin_hunk_1_@_ZN6duckdb26SerializedCSVReaderOptions11DeserializeERNS_12DeserializerE:bb.a
  %i.aes = ptrtoint ptr %i.aeo to i64
  %i.aet = sub i64 %i.aer, %i.aes
  %i.aeu = ashr exact i64 %i.aet, 3
  %i.aev = sub nsw i64 0, %i.aeu
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.aeq, i64 %i.aev
  call void @_ZdlPv(ptr noundef %i.aew) #23
  br label %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit477

_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit477:     ; preds = %_ZN6duckdb16MultiFileOptionsaSERKS0_.exit, %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aen, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false)
  store ptr null, ptr %9, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i473 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i473, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i.i474 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i474, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i475 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i475, align 8
  %.sroa.72.0..sroa_idx.i.i.i.i.i476 = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i476, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.aex = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.aex, ptr %24, align 8, !tbaa !434
  %i.aey = load ptr, ptr %10, align 8, !tbaa !404 ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.afa = icmp eq ptr %i.aey, %i.aez
  br i1 %i.afa, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i478

bb.cq:                                            ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit477
  %i.afb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !436 ; 3 uses
  %i.afd = icmp ult i64 %i.afc, 16
  call void @llvm.assume(i1 %i.afd)
  %i.afe = add nuw nsw i64 %i.afc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aex, ptr noundef nonnull align 8 dereferenceable(1) %i.aez, i64 %i.afe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i478: ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit477
  store ptr %i.aey, ptr %24, align 8, !tbaa !404
  %i.aff = load i64, ptr %i.aez, align 8, !tbaa !435
  store i64 %i.aff, ptr %i.aex, align 8, !tbaa !435
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre650 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !436
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i478
  %i.afg = phi ptr [ %i.aex, %bb.cq ], [ %i.aey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i478 ] ; 2 uses
  %i.afh = phi i64 [ %i.afc, %bb.cq ], [ %.pre650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i478 ] ; 5 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.afj = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.afh, ptr %i.afj, align 8, !tbaa !436
  store ptr %i.aez, ptr %10, align 8, !tbaa !404
  store i64 0, ptr %i.afi, align 8, !tbaa !436
  store i8 0, ptr %i.aez, align 8, !tbaa !435
  store i8 0, ptr %23, align 8, !tbaa !967
  %i.afk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 9 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 8 uses
  store ptr %i.afl, ptr %i.afk, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.afh, ptr %i.a, align 8, !tbaa !423
  %i.afm = icmp ugt i64 %i.afh, 15
  br i1 %i.afm, label %.noexc.i.i480, label %._crit_edge.i.i.i479

.noexc.i.i480:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.afn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.afk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc481 unwind label %bb.ff ; 2 uses

.noexc481:                                        ; preds = %.noexc.i.i480
  store ptr %i.afn, ptr %i.afk, align 8, !tbaa !404
  %i.afo = load i64, ptr %i.a, align 8, !tbaa !423
  store i64 %i.afo, ptr %i.afl, align 8, !tbaa !435
  br label %._crit_edge.i.i.i479

._crit_edge.i.i.i479:                             ; preds = %.noexc481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.afp = phi ptr [ %i.afn, %.noexc481 ], [ %i.afl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  switch i64 %i.afh, label %bb.cs [
    i64 1, label %bb.cr
    i64 0, label %bb.ct
  ]

bb.cr:                                            ; preds = %._crit_edge.i.i.i479
  %i.afq = load i8, ptr %i.afg, align 1, !tbaa !435
  store i8 %i.afq, ptr %i.afp, align 1, !tbaa !435
  br label %bb.ct

bb.cs:                                            ; preds = %._crit_edge.i.i.i479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afp, ptr align 1 %i.afg, i64 %i.afh, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %._crit_edge.i.i.i479
  %i.afr = load i64, ptr %i.a, align 8, !tbaa !423 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store i64 %i.afr, ptr %i.afs, align 8, !tbaa !436
  %i.aft = load ptr, ptr %i.afk, align 8, !tbaa !404
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afr
  store i8 0, ptr %i.afu, align 1, !tbaa !435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.afw = load i8, ptr %23, align 8, !tbaa !967, !range !400, !noundef !401
  store i8 %i.afw, ptr %i.afv, align 8, !tbaa !967
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !404 ; 6 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.aga = icmp eq ptr %i.afy, %i.afz
  %i.agb = load ptr, ptr %i.afk, align 8, !tbaa !404 ; 6 uses
  %i.agc = icmp eq ptr %i.agb, %i.afl             ; 2 uses
  br i1 %i.aga, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %bb.ct
  br i1 %i.agc, label %bb.cu, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i483: ; preds = %bb.ct
  br i1 %i.agc, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  %i.agd = load i64, ptr %i.afs, align 8, !tbaa !436 ; 3 uses
  %i.age = icmp ult i64 %i.agd, 16
  call void @llvm.assume(i1 %i.age)
  %.not21.i.i = icmp eq ptr %23, %i.afv
  br i1 %.not21.i.i, label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit, label %bb.cv, !prof !433

bb.cv:                                            ; preds = %bb.cu
  switch i64 %i.agd, label %bb.cx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.agf = load i8, ptr %i.agb, align 1, !tbaa !435
  store i8 %i.agf, ptr %i.afy, align 1, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afy, ptr align 1 %i.agb, i64 %i.agd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.agg = load i64, ptr %i.afs, align 8, !tbaa !436 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.agg, ptr %i.agh, align 8, !tbaa !436
  %i.agi = load ptr, ptr %i.afx, align 8, !tbaa !404
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agg
  store i8 0, ptr %i.agj, align 1, !tbaa !435
  %.pre.i.i = load ptr, ptr %i.afk, align 8, !tbaa !404
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  %i.agk = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.agb, ptr %i.afx, align 8, !tbaa !404
  %i.agl = load <2 x i64>, ptr %i.afs, align 8, !tbaa !435
  store <2 x i64> %i.agl, ptr %i.agk, align 8, !tbaa !435
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i483
  %i.agm = load i64, ptr %i.afz, align 8, !tbaa !435
  store ptr %i.agb, ptr %i.afx, align 8, !tbaa !404
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ago = load <2 x i64>, ptr %i.afs, align 8, !tbaa !435
  store <2 x i64> %i.ago, ptr %i.agn, align 8, !tbaa !435
  %.not.i.i = icmp eq ptr %i.afy, null
  br i1 %.not.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.afy, ptr %i.afk, align 8, !tbaa !404
  store i64 %i.agm, ptr %i.afl, align 8, !tbaa !435
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.afl, ptr %i.afk, align 8, !tbaa !404
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit

_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit: ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.cy, %bb.cz
  %i.agp = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.afy, %bb.cy ], [ %i.afl, %bb.cz ], [ %i.agb, %bb.cu ]
  store i64 0, ptr %i.afs, align 8, !tbaa !436
  store i8 0, ptr %i.agp, align 1, !tbaa !435
  %i.agq = load ptr, ptr %i.afk, align 8, !tbaa !404 ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.afl
  br i1 %i.agr, label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i485

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i485: ; preds = %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit
  call void @_ZdlPv(ptr noundef %i.agq) #23
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit488

_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit488: ; preds = %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i485
  %i.ags = load ptr, ptr %24, align 8, !tbaa !404 ; 2 uses
  %i.agt = icmp eq ptr %i.ags, %i.aex
  br i1 %i.agt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit488
  call void @_ZdlPv(ptr noundef %i.ags) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit488, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.0.i238, ptr %i.agu, align 8, !tbaa !2723
  %i.agv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 %.sroa.0.0.insert.insert.i.i.i263, ptr %i.agv, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 %.sroa.0.0.insert.insert.i.i.i279, ptr %i.agw, align 2
  %i.agx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 %.sroa.0.0.insert.insert.i.i.i293, ptr %i.agx, align 8, !tbaa !422
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.0.i305, ptr %i.agy, align 8, !tbaa !2724
  %i.agz = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i16 %i.ps, ptr %i.agz, align 2
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sink8.i.i.i.i316, ptr %i.aha, align 8, !tbaa !422
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.qx, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !423
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ahc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EEaSERKSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.ahb, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEaSERKSB_.exit unwind label %bb.fe ; 0 uses

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEaSERKSB_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491
  %i.ahd = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !404 ; 6 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ahg = icmp eq ptr %i.ahe, %i.ahf
  %i.ahh = load ptr, ptr %13, align 8, !tbaa !404 ; 6 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ahj = icmp eq ptr %i.ahh, %i.ahi             ; 2 uses
  br i1 %i.ahg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i499, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i499: ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEaSERKSB_.exit
  br i1 %i.ahj, label %bb.da, label %.thread.i500

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i493: ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEaSERKSB_.exit
  br i1 %i.ahj, label %bb.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i494

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i493, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i499
  %i.ahk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !436 ; 3 uses
  %i.ahm = icmp ult i64 %i.ahl, 16
  call void @llvm.assume(i1 %i.ahm)
  %.not21.i496 = icmp eq ptr %13, %i.ahd
  br i1 %.not21.i496, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501, label %bb.db, !prof !433

bb.db:                                            ; preds = %bb.da
  switch i64 %i.ahl, label %bb.dd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497
    i64 1, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db
  %i.ahn = load i8, ptr %i.ahh, align 1, !tbaa !435
  store i8 %i.ahn, ptr %i.ahe, align 1, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497

bb.dd:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahe, ptr align 1 %i.ahh, i64 %i.ahl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497: ; preds = %bb.dd, %bb.dc, %bb.db
  %i.aho = load i64, ptr %i.ahk, align 8, !tbaa !436 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 %i.aho, ptr %i.ahp, align 8, !tbaa !436
  %i.ahq = load ptr, ptr %i.ahd, align 8, !tbaa !404
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.aho
  store i8 0, ptr %i.ahr, align 1, !tbaa !435
  %.pre.i498 = load ptr, ptr %13, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501

.thread.i500:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i499
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.ahh, ptr %i.ahd, align 8, !tbaa !404
  %i.aht = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ahu = load <2 x i64>, ptr %i.aht, align 8, !tbaa !435
  store <2 x i64> %i.ahu, ptr %i.ahs, align 8, !tbaa !435
  br label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i494: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i493
  %i.ahv = load i64, ptr %i.ahf, align 8, !tbaa !435
  store ptr %i.ahh, ptr %i.ahd, align 8, !tbaa !404
  %i.ahw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ahy = load <2 x i64>, ptr %i.ahw, align 8, !tbaa !435
  store <2 x i64> %i.ahy, ptr %i.ahx, align 8, !tbaa !435
  %.not.i495 = icmp eq ptr %i.ahe, null
  br i1 %.not.i495, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i494
  store ptr %i.ahe, ptr %13, align 8, !tbaa !404
  store i64 %i.ahv, ptr %i.ahi, align 8, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i494, %.thread.i500
  store ptr %i.ahi, ptr %13, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501: ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497, %bb.de, %bb.df
  %i.ahz = phi ptr [ %.pre.i498, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i497 ], [ %i.ahe, %bb.de ], [ %i.ahi, %bb.df ], [ %i.ahh, %bb.da ]
  %i.aia = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.aia, align 8, !tbaa !436
  store i8 0, ptr %i.ahz, align 1, !tbaa !435
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 713
  store i8 %.0.i345, ptr %i.aib, align 1, !tbaa !2725
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !964 ; 2 uses
  %.not.i.i.i502 = icmp eq ptr %i.aid, null
  br i1 %.not.i.i.i502, label %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit510, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !1002 ; 2 uses
  %i.aig = ptrtoint ptr %i.aif to i64
  %i.aih = ptrtoint ptr %i.aid to i64
  %i.aii = sub i64 %i.aig, %i.aih
  %i.aij = ashr exact i64 %i.aii, 3
  %i.aik = sub nsw i64 0, %i.aij
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.aif, i64 %i.aik
  call void @_ZdlPv(ptr noundef %i.ail) #23
  store ptr null, ptr %i.aic, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i503 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i503, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i504 = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i504, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i505 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i505, align 8
  br label %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit510

_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit510:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit501, %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aic, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false)
  store ptr null, ptr %14, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i506 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i506, align 8
  %.sroa.51.0..sroa_idx.i.i.i.i.i507 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i.i.i507, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i508 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i508, align 8
  %.sroa.72.0..sroa_idx.i.i.i.i.i509 = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.72.0..sroa_idx.i.i.i.i.i509, align 8
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ain = load i8, ptr %15, align 8, !tbaa !967, !range !400, !noundef !401
  store i8 %i.ain, ptr %i.aim, align 8, !tbaa !967
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aip = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.aio, ptr noundef nonnull align 8 dereferenceable(32) %i.aip)
          to label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit unwind label %bb.fe

_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit: ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEEaSEOS2_.exit510
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !429 ; 4 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !428 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aiv = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aiw = load <2 x ptr>, ptr %18, align 16, !tbaa !426
  store <2 x ptr> %i.aiw, ptr %i.aiq, align 8, !tbaa !426
  %i.aix = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aiy = load ptr, ptr %i.aix, align 16, !tbaa !432
  store ptr %i.aiy, ptr %i.aiu, align 8, !tbaa !432
  %.not4.i.i.i.i.i.i512 = icmp eq ptr %i.air, %i.ait
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i512, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i518, label %.lr.ph.i.i.i.i.i.i513

.lr.ph.i.i.i.i.i.i513:                            ; preds = %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516
  %.05.i.i.i.i.i.i514 = phi ptr [ %i.ajc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516 ], [ %i.air, %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit ] ; 3 uses
  %i.aiz = load ptr, ptr %.05.i.i.i.i.i.i514, align 8, !tbaa !404 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i514, i64 16
  %i.ajb = icmp eq ptr %i.aiz, %i.aja
  br i1 %i.ajb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i515

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i515: ; preds = %.lr.ph.i.i.i.i.i.i513
  call void @_ZdlPv(ptr noundef %i.aiz) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516: ; preds = %.lr.ph.i.i.i.i.i.i513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i515
  %i.ajc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i514, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i517 = icmp eq ptr %i.ajc, %i.ait
  br i1 %.not.i.i.i.i.i.i517, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i518, label %.lr.ph.i.i.i.i.i.i513, !llvm.loop !16

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i518: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i516, %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit
  %.not.i.i1.i.i.i.i519 = icmp eq ptr %i.air, null
  br i1 %.not.i.i1.i.i.i.i519, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i518
  call void @_ZdlPv(ptr noundef nonnull %i.air) #23
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i518, %bb.dh
  %i.ajd = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !531 ; 4 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !532 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aji = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ajj = load <2 x ptr>, ptr %19, align 16, !tbaa !533
  store <2 x ptr> %i.ajj, ptr %i.ajd, align 8, !tbaa !533
  %i.ajk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ajl = load ptr, ptr %i.ajk, align 16, !tbaa !534
  store ptr %i.ajl, ptr %i.ajh, align 8, !tbaa !534
  %.not4.i.i.i.i.i.i522 = icmp eq ptr %i.aje, %i.ajg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i522, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i523

.lr.ph.i.i.i.i.i.i523:                            ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521, %.lr.ph.i.i.i.i.i.i523
  %.05.i.i.i.i.i.i524 = phi ptr [ %i.ajm, %.lr.ph.i.i.i.i.i.i523 ], [ %i.aje, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i524) #22
  %i.ajm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i524, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i525 = icmp eq ptr %i.ajm, %i.ajg
  br i1 %.not.i.i.i.i.i.i525, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i523, !llvm.loop !45

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i523, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit521
  %.not.i.i1.i.i.i.i526 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i1.i.i.i.i526, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aje) #23
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.di
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ajn, ptr noundef nonnull align 8 dereferenceable(56) %20)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit unwind label %bb.dj

bb.dj:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.ajo = landingpad { ptr, i32 }
          catch ptr null
  %i.ajp = extractvalue { ptr, i32 } %i.ajo, 0
  call void @__clang_call_terminate(ptr %i.ajp) #26
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.ajq = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 %.0.i392, ptr %i.ajq, align 8, !tbaa !2726
  %i.ajr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i16 %.sroa.02.0.i, ptr %i.ajr, align 4
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.0.i413, ptr %i.ajs, align 8, !tbaa !2727
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 5 uses
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !404 ; 6 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ajw = icmp eq ptr %i.aju, %i.ajv
  %i.ajx = load ptr, ptr %21, align 8, !tbaa !404 ; 6 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ajz = icmp eq ptr %i.ajx, %i.ajy             ; 2 uses
  br i1 %i.ajw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i533, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i527

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i533: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit
  br i1 %i.ajz, label %bb.dk, label %.thread.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i527: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEaSEOSD_.exit
  br i1 %i.ajz, label %bb.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i528

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i527, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i533
  %i.aka = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !436 ; 3 uses
  %i.akc = icmp ult i64 %i.akb, 16
  call void @llvm.assume(i1 %i.akc)
  %.not21.i530 = icmp eq ptr %21, %i.ajt
  br i1 %.not21.i530, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535, label %bb.dl, !prof !433

bb.dl:                                            ; preds = %bb.dk
  switch i64 %i.akb, label %bb.dn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531
    i64 1, label %bb.dm
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.akd = load i8, ptr %i.ajx, align 1, !tbaa !435
  store i8 %i.akd, ptr %i.aju, align 1, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aju, ptr align 1 %i.ajx, i64 %i.akb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.ake = load i64, ptr %i.aka, align 8, !tbaa !436 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %i.ake, ptr %i.akf, align 8, !tbaa !436
  %i.akg = load ptr, ptr %i.ajt, align 8, !tbaa !404
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.ake
  store i8 0, ptr %i.akh, align 1, !tbaa !435
  %.pre.i532 = load ptr, ptr %21, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535

.thread.i534:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i533
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.ajx, ptr %i.ajt, align 8, !tbaa !404
  %i.akj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.akk = load <2 x i64>, ptr %i.akj, align 8, !tbaa !435
  store <2 x i64> %i.akk, ptr %i.aki, align 8, !tbaa !435
  br label %bb.dp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i528: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i527
  %i.akl = load i64, ptr %i.ajv, align 8, !tbaa !435
  store ptr %i.ajx, ptr %i.ajt, align 8, !tbaa !404
  %i.akm = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ako = load <2 x i64>, ptr %i.akm, align 8, !tbaa !435
  store <2 x i64> %i.ako, ptr %i.akn, align 8, !tbaa !435
  %.not.i529 = icmp eq ptr %i.aju, null
  br i1 %.not.i529, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i528
  store ptr %i.aju, ptr %21, align 8, !tbaa !404
  store i64 %i.akl, ptr %i.ajy, align 8, !tbaa !435
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535

bb.dp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i528, %.thread.i534
  store ptr %i.ajy, ptr %21, align 8, !tbaa !404
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535: ; preds = %bb.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531, %bb.do, %bb.dp
  %i.akp = phi ptr [ %.pre.i532, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i531 ], [ %i.aju, %bb.do ], [ %i.ajy, %bb.dp ], [ %i.ajx, %bb.dk ]
  %i.akq = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.akq, align 8, !tbaa !436
  store i8 0, ptr %i.akp, align 1, !tbaa !435
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %.sroa.0.0.insert.insert.i.i.i431, ptr %i.akr, align 8, !tbaa !422
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.akt = load ptr, ptr %1, align 8, !tbaa !322
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 40
  %i.akv = load ptr, ptr %i.aku, align 8
  %i.akw = invoke noundef zeroext i1 %i.akv(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 142, ptr noundef nonnull @.str.280)
          to label %.noexc536 unwind label %bb.fe, !inline_history !4 ; 2 uses

.noexc536:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit535
  br i1 %i.akw, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.noexc536
  %i.akx = load ptr, ptr %1, align 8, !tbaa !322
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 104
  %i.akz = load ptr, ptr %i.aky, align 8
  %i.ala = invoke noundef zeroext i1 %i.akz(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc537 unwind label %bb.fe, !inline_history !4

.noexc537:                                        ; preds = %bb.dq
  %i.alb = zext i1 %i.ala to i8
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc537, %.noexc536
  %.sink8.i = phi i8 [ %i.alb, %.noexc537 ], [ 0, %.noexc536 ]
  store i8 %.sink8.i, ptr %i.aks, align 8, !tbaa !422
  %i.alc = load ptr, ptr %1, align 8, !tbaa !322
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 48
  %i.ale = load ptr, ptr %i.ald, align 8
  invoke void %i.ale(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.akw)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit unwind label %bb.fe, !inline_history !4

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit: ; preds = %bb.dr
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.alg = load ptr, ptr %1, align 8, !tbaa !322
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 24
  %i.ali = load ptr, ptr %i.alh, align 8
  invoke void %i.ali(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 143, ptr noundef nonnull @.str.281)
          to label %.noexc541 unwind label %bb.fe, !inline_history !2690

.noexc541:                                        ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEEvtPKcRT_.exit
  %i.alj = load ptr, ptr %1, align 8, !tbaa !322
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 56
  %i.all = load ptr, ptr %i.alk, align 8
  invoke void %i.all(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc542 unwind label %bb.fe, !inline_history !2690

.noexc542:                                        ; preds = %.noexc541
  %i.alm = load ptr, ptr %1, align 8, !tbaa !322
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 40
  %i.alo = load ptr, ptr %i.aln, align 8
  %i.alp = invoke noundef zeroext i1 %i.alo(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.472)
          to label %.noexc543 unwind label %bb.fe, !inline_history !2690 ; 2 uses

.noexc543:                                        ; preds = %.noexc542
  br i1 %i.alp, label %bb.ds, label %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionImEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i539

bb.ds:                                            ; preds = %.noexc543
  %i.alq = load ptr, ptr %1, align 8, !tbaa !322
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 104
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = invoke noundef zeroext i1 %i.als(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc544 unwind label %bb.fe, !inline_history !2690

.noexc544:                                        ; preds = %bb.ds
  %i.alu = zext i1 %i.alt to i8
  br label %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionImEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i539

_ZN6duckdb12Deserializer4ReadINS_9CSVOptionImEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i539: ; preds = %.noexc544, %.noexc543
  %.sink8.i.i.i.i540 = phi i8 [ %i.alu, %.noexc544 ], [ 0, %.noexc543 ]
  %i.alv = load ptr, ptr %1, align 8, !tbaa !322
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 48
  %i.alx = load ptr, ptr %i.alw, align 8
  invoke void %i.alx(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.alp)
          to label %.noexc545 unwind label %bb.fe, !inline_history !2690

.noexc545:                                        ; preds = %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionImEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i539
  %i.aly = load ptr, ptr %1, align 8, !tbaa !322
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 24
  %i.ama = load ptr, ptr %i.alz, align 8
  invoke void %i.ama(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.70)
          to label %.noexc546 unwind label %bb.fe, !inline_history !2690

.noexc546:                                        ; preds = %.noexc545
  %i.amb = load ptr, ptr %1, align 8, !tbaa !322
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 176
  %i.amd = load ptr, ptr %i.amc, align 8
  %i.ame = invoke noundef i64 %i.amd(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc547 unwind label %bb.fe, !inline_history !2690

.noexc547:                                        ; preds = %.noexc546
  %i.amf = load ptr, ptr %1, align 8, !tbaa !322
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 32
  %i.amh = load ptr, ptr %i.amg, align 8
  invoke void %i.amh(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc548 unwind label %bb.fe, !inline_history !2690

.noexc548:                                        ; preds = %.noexc547
  %i.ami = load ptr, ptr %1, align 8, !tbaa !322
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 64
  %i.amk = load ptr, ptr %i.amj, align 8
  invoke void %i.amk(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc549 unwind label %bb.fe, !inline_history !2690

.noexc549:                                        ; preds = %.noexc548
  store i8 %.sink8.i.i.i.i540, ptr %i.alf, align 8, !tbaa !422
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.ame, ptr %.sroa.41.0..sroa_idx.i, align 8, !tbaa !423
  %i.aml = load ptr, ptr %1, align 8, !tbaa !322
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 32
  %i.amn = load ptr, ptr %i.amm, align 8
  invoke void %i.amn(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionImEEEEvtPKcRT_.exit unwind label %bb.fe, !inline_history !2690

bb.dt:                                            ; preds = %_ZN6duckdb12Deserializer4ReadINS_19FileCompressionTypeEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueES4_E4typeEv.exit.i, %bb.i, %bb.f, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEEEET_tPKc.exit
  %i.amo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.du:                                            ; preds = %bb.k, %bb.j, %_ZN6duckdb12Deserializer12ReadPropertyINS_19FileCompressionTypeEEET_tPKc.exit
  %i.amp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dv:                                            ; preds = %.noexc174, %.noexc173, %.noexc172, %.noexc171, %.noexc170, %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionImEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i, %bb.l, %.noexc167, %.noexc166, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEET_tPKc.exit
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dw:                                            ; preds = %bb.n, %bb.m, %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionImEEEET_tPKc.exit
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dx:                                            ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEET_tPKc.exit181
  %i.ams = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit641

bb.dy:                                            ; preds = %bb.q, %bb.p, %bb.o
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.dz:                                            ; preds = %bb.s, %bb.r, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEET_tPKc.exit187
  %i.amu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.ea:                                            ; preds = %bb.u, %bb.t, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit193
  %i.amv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.eb:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEET_tPKc.exit199
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %.body203

bb.ec:                                            ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit
  %i.amx = landingpad { ptr, i32 }
          cleanup
  br label %.body212

bb.ed:                                            ; preds = %bb.ac, %bb.ab, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultIbEET_tPKc.exit220, %bb.aa, %bb.z, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit214
  %i.amy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ee:                                            ; preds = %.noexc225, %.noexc224, %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %.body227

bb.ef:                                            ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_16MultiFileOptionsEEET_tPKc.exit
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit633

bb.eg:                                            ; preds = %bb.ah, %bb.af, %._crit_edge.i.i
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %.body234

.body234:                                         ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.eg
  %eh.lpad-body235 = phi { ptr, i32 } [ %i.anb, %bb.eg ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.iq, %bb.ai ] ; 2 uses
  %i.anc = load ptr, ptr %11, align 8, !tbaa !404 ; 2 uses
  %i.and = icmp eq ptr %i.anc, %i.hs
  br i1 %i.and, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553.sink.split

bb.eh:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i243.invoke, %bb.al, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit242, %bb.ak, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.an
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ei:                                            ; preds = %.noexc257, %.noexc256, %.noexc255, %.noexc254, %.noexc253, %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIcEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i, %bb.ap, %.noexc250, %.noexc249, %bb.ao
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.ej:                                            ; preds = %.noexc272, %.noexc271, %.noexc270, %.noexc269, %.noexc268, %_ZN6duckdb12Deserializer4ReadINS_9CSVOptionIcEEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES5_E4typeEv.exit.i259, %bb.aq, %.noexc265, %.noexc264, %_ZN6duckdb12Deserializer12ReadPropertyINS_9CSVOptionIcEEEET_tPKc.exit
  %i.ang = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6duckdb11DataPointer11DeserializeERNS_12DeserializerE:bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !322    ; 2 uses
  br i1 %i.e, label %bb.b, label %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3613 ; 0 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !322
  br label %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit

_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit: ; preds = %bb.a, %bb.b
  %.sink4.i = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sink4.i, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.e), !inline_history !228
  %i.m = load ptr, ptr %1, align 8, !tbaa !322
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.439), !inline_history !96 ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !322    ; 2 uses
  br i1 %i.p, label %bb.c, label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit

bb.c:                                             ; preds = %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !128
  %i.u = load ptr, ptr %1, align 8, !tbaa !322
  br label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit, %bb.c
  %.sink7.i = phi ptr [ %i.u, %bb.c ], [ %i.q, %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit ]
  %.0.i = phi i64 [ %i.t, %bb.c ], [ 0, %_ZN6duckdb12Deserializer19ReadDeletedPropertyImEEvtPKc.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sink7.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.p), !inline_history !96
  %i.x = load ptr, ptr %1, align 8, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 102, ptr noundef nonnull @.str.440), !inline_history !3614
  %i.aa = load ptr, ptr %1, align 8, !tbaa !322
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3615
  %i.ad = load ptr, ptr %1, align 8, !tbaa !322
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.437), !inline_history !3616
  %i.ag = load ptr, ptr %1, align 8, !tbaa !322
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3617
  %i.ak = load ptr, ptr %1, align 8, !tbaa !322
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3616
  %i.an = load ptr, ptr %1, align 8, !tbaa !322
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.170), !inline_history !3618 ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !322   ; 2 uses
  br i1 %i.aq, label %bb.d, label %_ZN6duckdb12Deserializer12ReadPropertyINS_12BlockPointerEEET_tPKc.exit

bb.d:                                             ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3619
  %i.av = load ptr, ptr %1, align 8, !tbaa !322
  %i.aw = zext i32 %i.au to i64
  br label %_ZN6duckdb12Deserializer12ReadPropertyINS_12BlockPointerEEET_tPKc.exit

_ZN6duckdb12Deserializer12ReadPropertyINS_12BlockPointerEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit, %bb.d
  %.sink7.i.i.i.i = phi ptr [ %i.av, %bb.d ], [ %i.ar, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit ]
  %.0.i.i.i.i = phi i64 [ %i.aw, %bb.d ], [ 0, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultImEET_tPKc.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink7.i.i.i.i, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.aq), !inline_history !3618
  %i.az = load ptr, ptr %1, align 8, !tbaa !322
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3615
  %i.bc = load ptr, ptr %1, align 8, !tbaa !322
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3614
  %i.bf = load ptr, ptr %1, align 8, !tbaa !322
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 103, ptr noundef nonnull @.str.196), !inline_history !3620
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !403, !range !400, !noundef !401
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_12BlockPointerEEET_tPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bl = load ptr, ptr %1, align 8, !tbaa !322
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 216
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3621
  %i.bo = load ptr, ptr %3, align 8, !tbaa !404
  %i.bp = invoke noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_PKc(ptr noundef %i.bo)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %3, align 8, !tbaa !404   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.bq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN6duckdb12Deserializer12ReadPropertyINS_15CompressionTypeEEET_tPKc.exit

bb.g:                                             ; preds = %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !404   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.bu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

common.resume:                                    ; preds = %bb.u, %common.resume.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %common.resume.op.i, %common.resume.i ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

bb.h:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_12BlockPointerEEET_tPKc.exit
  %i.bx = load ptr, ptr %1, align 8, !tbaa !322
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef zeroext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3622
  br label %_ZN6duckdb12Deserializer12ReadPropertyINS_15CompressionTypeEEET_tPKc.exit

_ZN6duckdb12Deserializer12ReadPropertyINS_15CompressionTypeEEET_tPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %.0.i.i = phi i8 [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ca, %bb.h ] ; 2 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !322
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(632) %1), !inline_history !3620
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ce = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3634
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !3634
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 104, ptr noundef nonnull @.str.441), !noalias !3634, !inline_history !3625
  %i.ch = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3635
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !3635
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !3635, !inline_history !3628
  call void @_ZN6duckdb14BaseStatistics11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.ck = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3635
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_14BaseStatisticsEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %bb.i

common.resume.i:                                  ; preds = %bb.j, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.cn, %bb.i ], [ %i.cr, %bb.j ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  br label %common.resume

bb.i:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_15CompressionTypeEEET_tPKc.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_14BaseStatisticsEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_15CompressionTypeEEET_tPKc.exit
  %i.co = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3634
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_14BaseStatisticsEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_14BaseStatisticsEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %4) #22
  invoke void @_ZN6duckdb11DataPointerC1ENS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %5)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0.i, ptr %i.cs, align 8, !tbaa !3652
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %i.ct, align 8, !tbaa !423
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !320
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.0.i.i, ptr %i.cu, align 8, !tbaa !3653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.cv = zext i8 %.0.i.i to i64                  ; 2 uses
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !423
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !467 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !468
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %.not.i.i.i.i.i = icmp eq ptr %i.cx, %i.da
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !423
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.db, ptr %i.cw, align 8, !tbaa !467
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.de = load ptr, ptr %1, align 8, !tbaa !322
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 105, ptr noundef nonnull @.str.442)
          to label %.noexc15 unwind label %bb.t, !inline_history !3629 ; 2 uses

.noexc15:                                         ; preds = %bb.n
  br i1 %i.dh, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc15
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !1376 ; 2 uses
  store ptr null, ptr %i.dd, align 8, !tbaa !1376
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split

bb.p:                                             ; preds = %.noexc15
  %i.dj = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3654
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !3654
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc17 unwind label %bb.t, !inline_history !3629

.noexc17:                                         ; preds = %bb.p
  br i1 %i.dm, label %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.q

_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %.noexc17
  %i.dn = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3654
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !3654
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc18 unwind label %bb.t, !inline_history !3629

.noexc18:                                         ; preds = %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !3654
  invoke void @_ZN6duckdb18ColumnSegmentState11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2396") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc19 unwind label %bb.t

.noexc19:                                         ; preds = %.noexc18
  %i.dq = load ptr, ptr %2, align 8, !tbaa !1376, !noalias !3654 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !3654
  %i.dr = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3654
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !3654
  invoke void %i.dt(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.q unwind label %bb.r, !noalias !3654

bb.q:                                             ; preds = %.noexc19, %.noexc17
  %.sroa.0.0.i = phi ptr [ %i.dq, %.noexc19 ], [ null, %.noexc17 ] ; 2 uses
  %i.du = load ptr, ptr %1, align 8, !tbaa !322, !noalias !3654
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !3654
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i unwind label %bb.r, !noalias !3654

bb.r:                                             ; preds = %bb.q, %.noexc19
  %.ph.i.i = phi ptr [ %i.dq, %.noexc19 ], [ %.sroa.0.0.i, %bb.q ] ; 3 uses
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %.ph.i.i, null
  br i1 %.not.i6.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i7.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i7.i.i: ; preds = %bb.r
  %i.dx = load ptr, ptr %.ph.i.i, align 8, !tbaa !322, !noalias !3654
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !3654
  call void %i.dz(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.ph.i.i) #22, !noalias !3654, !inline_history !3632
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.q
  %i.ea = load ptr, ptr %i.dd, align 8, !tbaa !1376 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.dd, align 8, !tbaa !1376
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke, label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split

_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split: ; preds = %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i, %bb.o
  %.sink34 = phi ptr [ %i.di, %bb.o ], [ %i.ea, %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i ] ; 2 uses
  %i.eb = load ptr, ptr %.sink34, align 8, !tbaa !322
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.sink34) #22
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke

_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke: ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split, %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i, %bb.o
  %i.ee = phi i1 [ false, %bb.o ], [ true, %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i ], [ %i.dh, %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke.sink.split ]
  %i.ef = load ptr, ptr %1, align 8, !tbaa !322
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.ee)
          to label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit unwind label %bb.t, !inline_history !3629

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6duckdb17SerializationData5UnsetINS_15CompressionTypeEEEvv(ptr noundef nonnull align 8 dereferenceable(616) %i.ei)
          to label %_ZN6duckdb12Deserializer5UnsetINS_15CompressionTypeEEEvv.exit unwind label %bb.t

bb.s:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_14BaseStatisticsEEET_tPKc.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ColumnSegmentStateESt14default_deleteIS1_EED2Ev.exit9.i.invoke, %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit, %.noexc18, %_ZN6duckdb10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %bb.p, %bb.n, %bb.m
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i7.i.i, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ek, %bb.t ], [ %lpad.thr_comm.split-lp.i.i, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i7.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1376 ; 3 uses
  %.not.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i, label %_ZN6duckdb11DataPointerD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i: ; preds = %.body
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !322
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.em) #22, !inline_history !3633
  br label %_ZN6duckdb11DataPointerD2Ev.exit

_ZN6duckdb11DataPointerD2Ev.exit:                 ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb18ColumnSegmentStateEEclEPS1_.exit.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.u

_ZN6duckdb12Deserializer5UnsetINS_15CompressionTypeEEEvv.exit: ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_10unique_ptrINS_18ColumnSegmentStateESt14default_deleteIS3_ELb1EEEEEvtPKcRT_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.u:                                             ; preds = %_ZN6duckdb11DataPointerD2Ev.exit, %bb.s
  %.sink = phi ptr [ %i.eq, %_ZN6duckdb11DataPointerD2Ev.exit ], [ %5, %bb.s ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN6duckdb11DataPointerD2Ev.exit ], [ %i.ej, %bb.s ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.sink) #22
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #7

declare void @_ZN6duckdb11DataPointerC1ENS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18DistinctStatistics9SerializeERNS_10SerializerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !424, !range !400, !noundef !401
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp ne i64 %i.b, 0
  %or.cond.not.i = select i1 %i.e, i1 true, i1 %i.f ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !322
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.227, i1 noundef zeroext false), !inline_history !59
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_.exit

bb.c:                                             ; preds = %bb.a
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.227, i1 noundef zeroext true), !inline_history !59
  %i.j = load ptr, ptr %1, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i64 noundef %i.b), !inline_history !59
  br label %_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_.exit

_ZN6duckdb10Serializer24WritePropertyWithDefaultImEEvtPKcRKT_.exit: ; preds = %bb.b, %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb17SerializationData5UnsetINS_15CompressionTypeEEEvv:bb.a
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !551  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !551
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN6duckdb17SerializationData14AssertNotEmptyImEEvRKSt5stackIT_St5dequeIS3_SaIS3_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.465, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !404    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17SerializationData14AssertNotEmptyImEEvRKSt5stackIT_St5dequeIS3_SaIS3_EEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1475 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyImEEvRKSt5stackIT_St5dequeIS3_SaIS3_EEE.exit
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %_ZNSt5stackImSt5dequeImSaImEEE3popEv.exit

bb.j:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyImEEvRKSt5stackIT_St5dequeIS3_SaIS3_EEE.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1474
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !553
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !535  ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !552
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.s, ptr %i.t, align 8, !tbaa !1471
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 504
  br label %_ZNSt5stackImSt5dequeImSaImEEE3popEv.exit

_ZNSt5stackImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.n, %bb.i ], [ %i.u, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !467
  ret void
}

declare void @_ZNK6duckdb11HyperLogLog9SerializeERNS_10SerializerE(ptr noundef nonnull align 1 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #2

declare void @_ZN6duckdb11HyperLogLog11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.2405") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEEvRKNS_6vectorIT_Lb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1550
  %i.c = load ptr, ptr %1, align 8, !tbaa !1383
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %i.h = load ptr, ptr %0, align 8, !tbaa !322
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.g)
  %i.k = load ptr, ptr %1, align 8, !tbaa !1381   ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1381 ; 2 uses
  %.not9 = icmp eq ptr %i.k, %i.l
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !322
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(680) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit
  %.sroa.06.010 = phi ptr [ %i.k, %.lr.ph ], [ %i.av, %_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit ] ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !322
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !285
  %i.t = load ptr, ptr %0, align 8, !tbaa !322
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.437), !inline_history !286
  %i.w = load i64, ptr %.sroa.06.010, align 8, !tbaa !423
  %i.x = load ptr, ptr %0, align 8, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.w), !inline_history !286
  %i.aa = load ptr, ptr %0, align 8, !tbaa !322
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !286
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.m, align 1, !tbaa !424, !range !400, !noundef !401
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i32, ptr %i.ad, align 8
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not.i.i.i = select i1 %i.af, i1 true, i1 %i.ah ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !322
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  br i1 %or.cond.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.170, i1 noundef zeroext false), !inline_history !287
  br label %_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit

bb.d:                                             ; preds = %bb.b
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.170, i1 noundef zeroext true), !inline_history !287
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !320
  %i.am = load ptr, ptr %0, align 8, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(680) %0, i32 noundef %i.al), !inline_history !287
  br label %_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit

_ZN6duckdb10Serializer10WriteValueINS_12BlockPointerEEENSt9enable_ifIXsr13has_serializeIT_EE5valueEvE4typeERKS4_.exit: ; preds = %bb.c, %bb.d
  %i.ap = load ptr, ptr %0, align 8, !tbaa !322
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(680) %0, i1 noundef zeroext %or.cond.not.i.i.i), !inline_history !287
  %i.as = load ptr, ptr %0, align 8, !tbaa !322
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !285
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_12BlockPointerELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.2423") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !322
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit, %.preheader
  %.lcssa21 = phi ptr [ null, %.preheader ], [ %i.bh, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  store ptr %.lcssa21, ptr %0, align 8
  %i.g = load ptr, ptr %1, align 8, !tbaa !322
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.k unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.j = phi ptr [ %.lcssa21, %._crit_edge ], [ null, %bb.a ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit
  %2 = phi ptr [ null, %.lr.ph ], [ %3, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ]
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !322
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc unwind label %.loopexit, !inline_history !4867

.noexc:                                           ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !322
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.437)
          to label %.noexc9 unwind label %.loopexit, !inline_history !4867

.noexc9:                                          ; preds = %.noexc
  %i.t = load ptr, ptr %1, align 8, !tbaa !322
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc10 unwind label %.loopexit, !inline_history !4867 ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.x = load ptr, ptr %1, align 8, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc11 unwind label %.loopexit, !inline_history !4867

.noexc11:                                         ; preds = %.noexc10
  %i.aa = load ptr, ptr %1, align 8, !tbaa !322
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.170)
          to label %.noexc12 unwind label %.loopexit, !inline_history !4867 ; 2 uses

.noexc12:                                         ; preds = %.noexc11
  %i.ae = load ptr, ptr %1, align 8, !tbaa !322   ; 2 uses
  br i1 %i.ad, label %bb.d, label %_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE.exit.i

bb.d:                                             ; preds = %.noexc12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc13 unwind label %.loopexit, !inline_history !4867

.noexc13:                                         ; preds = %bb.d
  %i.ai = load ptr, ptr %1, align 8, !tbaa !322
  %i.aj = zext i32 %i.ah to i64
  br label %_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE.exit.i

_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE.exit.i: ; preds = %.noexc13, %.noexc12
  %.sink7.i.i.i = phi ptr [ %i.ai, %.noexc13 ], [ %i.ae, %.noexc12 ]
  %.0.i.i.i = phi i64 [ %i.aj, %.noexc13 ], [ 0, %.noexc12 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink7.i.i.i, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(632) %1, i1 noundef zeroext %i.ad)
          to label %.noexc14 unwind label %.loopexit, !inline_history !4867

.noexc14:                                         ; preds = %_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE.exit.i
  %i.am = load ptr, ptr %1, align 8, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit unwind label %.loopexit, !inline_history !4867

_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit: ; preds = %.noexc14
  %.not.i.i = icmp eq ptr %i.l, %2
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  store i64 %i.w, ptr %i.l, align 8, !tbaa !423
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.0.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !320
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !1550
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  %i.aq = ptrtoint ptr %2 to i64
  %i.ar = ptrtoint ptr %i.m to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.g, label %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.458) #25
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #24
          to label %.noexc17 unwind label %.loopexit ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i64 %i.w, ptr %i.bb, align 8, !tbaa !423
  %.sroa.6.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.0.i.i.i, ptr %.sroa.6.0..sroa_idx19, align 8, !tbaa !320
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %2
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc17, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ba, %.noexc17 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !4873, !alias.scope !4874
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4871

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc17
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.noexc17 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #23
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.be, ptr %i.e, align 8, !tbaa !1550
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.bf, ptr %i.f, align 8, !tbaa !1384
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.e
  %3 = phi ptr [ %i.bf, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %2, %bb.e ]
  %i.bg = phi ptr [ %i.be, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ap, %bb.e ]
  %i.bh = phi ptr [ %i.ba, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.bi = add nuw i64 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !4872

.loopexit:                                        ; preds = %bb.c, %.noexc, %.noexc9, %.noexc10, %.noexc11, %bb.d, %_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE.exit.i, %.noexc14, %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %i.bj = phi ptr [ %i.j, %bb.b ], [ %i.m, %.loopexit ], [ %i.m, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #23
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_22FixedSizeAllocatorInfoELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.2429") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::FixedSizeAllocatorInfo", align 8 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !322
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit, %.preheader
  %i.q = load ptr, ptr %1, align 8, !tbaa !322
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph, %_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.u = load ptr, ptr %1, align 8, !tbaa !322, !noalias !4879
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !noalias !4879
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc unwind label %bb.k, !inline_history !4877

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb22FixedSizeAllocatorInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::FixedSizeAllocatorInfo") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc11 unwind label %bb.k

.noexc11:                                         ; preds = %.noexc
  %i.x = load ptr, ptr %1, align 8, !tbaa !322, !noalias !4879
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_22FixedSizeAllocatorInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc11
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb22FixedSizeAllocatorInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #22
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_22FixedSizeAllocatorInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit: ; preds = %.noexc11
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1388 ; 14 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !1391
  %.not.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZN6duckdb12Deserializer4ReadINS_22FixedSizeAllocatorInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  %i.ad = load i64, ptr %2, align 8, !tbaa !1556
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !1556
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load <2 x ptr>, ptr %i.g, align 8, !tbaa !535
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !535
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !545
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load <2 x ptr>, ptr %i.i, align 8, !tbaa !1381
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !1381
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !1384
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !1384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.an = load <2 x ptr>, ptr %i.k, align 8, !tbaa !535
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !535
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !545
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ar = load <2 x ptr>, ptr %i.m, align 8, !tbaa !535
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !535
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !545
  store ptr %i.at, ptr %i.as, align 8, !tbaa !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.av = load <2 x ptr>, ptr %i.o, align 8, !tbaa !535
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !535
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !545
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !1388
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_22FixedSizeAllocatorInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  invoke void @_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit unwind label %bb.l

_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !538 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit.thread, %bb.f, %_ZNSt6vectorIN6duckdb22FixedSizeAllocatorInfoESaIS1_EE9push_backEOS1_.exit
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !538 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.az) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i

_ZNSt6vectorImSaImEED2Ev.exit2.i:                 ; preds = %bb.g, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !538 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorImSaImEED2Ev.exit4.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit4.i

_ZNSt6vectorImSaImEED2Ev.exit4.i:                 ; preds = %bb.h, %_ZNSt6vectorImSaImEED2Ev.exit2.i
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !1383 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i5.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4.i
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorImSaImEED2Ev.exit4.i
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !538 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i6.i, label %_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #23
  br label %_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit

_ZN6duckdb22FixedSizeAllocatorInfoD2Ev.exit:      ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit.i, %bb.j
end_hunk_3
