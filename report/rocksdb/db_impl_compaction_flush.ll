Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl20BackgroundCompactionEPbPNS_10JobContextEPNS_9LogBufferEPNS0_19PrepickedCompactionENS_3Env8PriorityE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #34
  %i.zg = load ptr, ptr %42, align 8, !tbaa !1278
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 824
  %i.zi = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !683 ; 2 uses
  %i.zl = and i64 %i.zk, 4611686018427387903
  %i.zm = lshr i64 %i.zk, 62
  %i.zn = trunc nuw nsw i64 %i.zm to i32
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %i.zh, i64 noundef %i.zl, i32 noundef %i.zn)
          to label %bb.eq unwind label %bb.ew

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #34
  %i.zo = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 824
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 11440
  %i.zr = load i32, ptr %i.zq, align 16, !tbaa !1328
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %i.zp, i64 noundef %i.zf, i32 noundef %i.zr)
          to label %bb.er unwind label %bb.ex

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  store i64 0, ptr %i.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #34
  %i.zs = load ptr, ptr %i.vx, align 32, !tbaa !1462 ; 2 uses
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !466
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 200
  %i.zv = load ptr, ptr %i.zu, align 8
  invoke void %i.zv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %60, ptr noundef nonnull align 8 dereferenceable(32) %i.zs, ptr noundef nonnull %i.i)
          to label %bb.es unwind label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.zw = load i8, ptr %60, align 8, !tbaa !694
  %i.zx = icmp eq i8 %i.zw, 0
  br i1 %i.zx, label %bb.fb, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zy = load ptr, ptr %42, align 8, !tbaa !1278
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 9136
  %i.aaa = load ptr, ptr %i.zz, align 16, !tbaa !1324
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %61, ptr noundef nonnull align 8 dereferenceable(16) %60)
          to label %bb.eu unwind label %bb.ez

bb.eu:                                            ; preds = %bb.et
  %i.aad = load ptr, ptr %61, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.117, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.aac, ptr noundef %i.aad)
          to label %bb.ev unwind label %bb.fa

bb.ev:                                            ; preds = %bb.eu
  %i.aae = load ptr, ptr %61, align 8, !tbaa !64  ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.vy
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562: ; preds = %bb.ev
  %i.aag = load i64, ptr %i.vy, align 8, !tbaa !65
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i562
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #34
  br label %bb.fb

bb.ew:                                            ; preds = %bb.ep
  %i.aai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

bb.ex:                                            ; preds = %bb.eq
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809

bb.ey:                                            ; preds = %bb.er
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit806

bb.ez:                                            ; preds = %bb.et
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567

bb.fa:                                            ; preds = %bb.eu
  %i.aam = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aan = load ptr, ptr %61, align 8, !tbaa !64  ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.vy
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i565

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i565: ; preds = %bb.fa
  %i.aap = load i64, ptr %i.vy, align 8, !tbaa !65
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i565, %bb.ez
  %.pn375 = phi { ptr, i32 } [ %i.aal, %bb.ez ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i565 ], [ %i.aam, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #34
  br label %bb.jx

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, %bb.es
  %i.aar = load i64, ptr %i.i, align 8, !tbaa !776
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #34
  invoke void @_ZN7rocksdb11FileOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %62, ptr noundef nonnull align 8 dereferenceable(216) %i.vz)
          to label %bb.fc unwind label %bb.fo

bb.fc:                                            ; preds = %bb.fb
  %i.aas = load ptr, ptr %42, align 8, !tbaa !1278
  %i.aat = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.aas, i1 noundef zeroext false)
          to label %bb.fd unwind label %bb.fp

bb.fd:                                            ; preds = %bb.fc
  store i8 %i.aat, ptr %i.wa, align 8, !tbaa !1489
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #34
  store ptr null, ptr %63, align 8, !tbaa !2319
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #34
  store ptr null, ptr %64, align 8, !tbaa !2320
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #34
  %i.aau = load ptr, ptr %i.wb, align 16, !tbaa !2321 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !466
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 200
  %i.aax = load ptr, ptr %i.aaw, align 8
  invoke void %i.aax(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %65, ptr noundef nonnull align 8 dereferenceable(32) %i.aau, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(216) %62, ptr noundef nonnull %64, ptr noundef null)
          to label %bb.fe unwind label %bb.fq

bb.fe:                                            ; preds = %bb.fd
  %i.aay = load i8, ptr %65, align 8, !tbaa !694  ; 2 uses
  %i.aaz = icmp eq i8 %i.aay, 0                   ; 2 uses
  br i1 %i.aaz, label %bb.fv, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i8 %i.aay, ptr %52, align 8, !tbaa !694
  %i.aba = load i8, ptr %i.wc, align 1, !tbaa !695
  store i8 %i.aba, ptr %i.of, align 1, !tbaa !695
  %i.abb = load i8, ptr %i.wd, align 1, !tbaa !711, !range !83, !noundef !84
  store i8 %i.abb, ptr %i.we, align 1, !tbaa !711
  %i.abc = load i8, ptr %i.wf, align 4, !tbaa !82, !range !83, !noundef !84
  store i8 %i.abc, ptr %i.wg, align 4, !tbaa !82
  %i.abd = load i8, ptr %i.wh, align 1, !tbaa !85
  store i8 %i.abd, ptr %i.wi, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #34
  %i.abe = load ptr, ptr %i.wj, align 8, !tbaa !86 ; 2 uses
  %.not.i.i569 = icmp eq ptr %i.abe, null
  br i1 %.not.i.i569, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %36, ptr noundef nonnull %i.abe)
          to label %.noexc577 unwind label %bb.gy

.noexc577:                                        ; preds = %bb.fg
  %.pre.i570 = load ptr, ptr %36, align 8, !tbaa !86
  br label %bb.fh

bb.fh:                                            ; preds = %.noexc577, %bb.ff
  %i.abf = phi ptr [ %.pre.i570, %.noexc577 ], [ null, %bb.ff ]
  store ptr null, ptr %36, align 8, !tbaa !86
  %i.abg = load ptr, ptr %i.oh, align 8, !tbaa !86 ; 2 uses
  store ptr %i.abf, ptr %i.oh, align 8, !tbaa !86
  %.not.i.i.i.i.i571 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i.i.i571, label %bb.fi, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i572

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i572: ; preds = %bb.fh
  call void @_ZdaPv(ptr noundef nonnull %i.abg) #33
  %.pr.i573 = load ptr, ptr %36, align 8, !tbaa !86 ; 2 uses
  %.not.i10.i574 = icmp eq ptr %.pr.i573, null
  br i1 %.not.i10.i574, label %bb.fi, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i575

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i575: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i572
  call void @_ZdaPv(ptr noundef nonnull %.pr.i573) #33
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i575, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i572, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #34
  %i.abh = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 9136
  %i.abj = load ptr, ptr %i.abi, align 16, !tbaa !1324
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !64
  %i.abm = load ptr, ptr %59, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.abn = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.abh, i1 noundef zeroext false)
          to label %bb.fj unwind label %bb.fr     ; 3 uses

bb.fj:                                            ; preds = %bb.fi
  store i8 %i.abn, ptr %i.j, align 1, !tbaa !1044
  %i.abo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.abo, null
  br i1 %.not10.i.i.i.i, label %.critedge.i579, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fj, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.abo, %bb.fj ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.fj ]
  %i.abp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !1044
  %i.abr = icmp ult i8 %i.abq, %i.abn             ; 2 uses
  %.19.i.i.i.i = select i1 %i.abr, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.abr, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.abs = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.abs, label %.critedge.i579, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.abt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !1044
  %i.abv = icmp ult i8 %i.abn, %i.abu
  br i1 %i.abv, label %.critedge.i579, label %bb.fl

.critedge.i579:                                   ; preds = %bb.fk, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.fj
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.fk ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.fj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #34
  store ptr %i.j, ptr %34, align 8, !tbaa !668, !alias.scope !2322
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #34
  %i.abw = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc580 unwind label %bb.fr

.noexc580:                                        ; preds = %.critedge.i579
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #34
  br label %bb.fl

bb.fl:                                            ; preds = %.noexc580, %bb.fk
  %.sroa.06.0.i = phi ptr [ %i.abw, %.noexc580 ], [ %.19.i.i.i.i, %bb.fk ]
  %i.abx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.fm unwind label %bb.fs

bb.fm:                                            ; preds = %bb.fl
  %i.abz = load ptr, ptr %66, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.118, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.abl, ptr noundef %i.abm, ptr noundef %i.aby, ptr noundef %i.abz)
          to label %bb.fn unwind label %bb.ft

bb.fn:                                            ; preds = %bb.fm
  %i.aca = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.acb = icmp eq ptr %i.aca, %i.wk
  br i1 %i.acb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %bb.fn
  %i.acc = load i64, ptr %i.wk, align 8, !tbaa !65
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.acd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br label %_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit

bb.fo:                                            ; preds = %bb.fb
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.fp:                                            ; preds = %bb.fc
  %i.acf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.fq:                                            ; preds = %bb.fd
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit670

bb.fr:                                            ; preds = %.critedge.i579, %bb.fi
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fl
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586

bb.ft:                                            ; preds = %bb.fm
  %i.acj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ack = load ptr, ptr %66, align 8, !tbaa !64  ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.wk
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584: ; preds = %bb.ft
  %i.acm = load i64, ptr %i.wk, align 8, !tbaa !65
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584, %bb.fs
  %.pn377 = phi { ptr, i32 } [ %i.aci, %bb.fs ], [ %i.acj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i584 ], [ %i.acj, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #34
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586, %bb.fr
  %.pn377.pn = phi { ptr, i32 } [ %.pn377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit586 ], [ %i.ach, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br label %bb.ha

bb.fv:                                            ; preds = %bb.fe
  %i.aco = load i64, ptr %i.wl, align 64, !tbaa !65
  %i.acp = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #36
          to label %bb.fw unwind label %bb.gy     ; 3 uses

bb.fw:                                            ; preds = %bb.fv
  %i.acq = load ptr, ptr %i.vx, align 32, !tbaa !1462
  %i.acr = load ptr, ptr %i.wm, align 8, !tbaa !2323
  %i.acs = load ptr, ptr %42, align 8, !tbaa !1278
  %i.act = load ptr, ptr %i.wn, align 8, !tbaa !2324
  %i.acu = and i64 %i.aco, 4
  %i.acv = icmp ne i64 %i.acu, 0
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 352
  invoke void @_ZN7rocksdb18WritableFileWriterC2EOSt10unique_ptrINS_14FSWritableFileESt14default_deleteIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11FileOptionsEPNS_11SystemClockERKSt10shared_ptrINS_8IOTracerEEPNS_10StatisticsENS_10HistogramsERKSt6vectorISK_INS_13EventListenerEESaISU_EEPNS_22FileChecksumGenFactoryEbbm(ptr noundef nonnull align 8 dereferenceable(258) %i.acp, ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(216) %62, ptr noundef %i.acq, ptr noundef nonnull align 8 dereferenceable(16) %i.wo, ptr noundef %i.acr, i32 noundef 26, ptr noundef nonnull align 8 dereferenceable(24) %i.acw, ptr noundef %i.act, i1 noundef zeroext %i.acv, i1 noundef zeroext false, i64 noundef 0)
          to label %bb.fx unwind label %bb.gz

bb.fx:                                            ; preds = %bb.fw
  %i.acx = load ptr, ptr %63, align 8, !tbaa !1493 ; 3 uses
  store ptr %i.acp, ptr %63, align 8, !tbaa !1493
  %.not.i.i587 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i587, label %_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb18WritableFileWriterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb18WritableFileWriterEEclEPS1_.exit.i.i: ; preds = %bb.fx
  call void @_ZN7rocksdb18WritableFileWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(258) dereferenceable(258) %i.acx) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.acx, i64 noundef 264) #33
  br label %_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb18WritableFileWriterEEclEPS1_.exit.i.i, %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583
  %.2 = phi i32 [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583 ], [ 0, %bb.fx ], [ 0, %_ZNKSt14default_deleteIN7rocksdb18WritableFileWriterEEclEPS1_.exit.i.i ]
  %i.acy = load ptr, ptr %i.wj, align 8, !tbaa !86 ; 2 uses
  %.not.i.i588 = icmp eq ptr %i.acy, null
  br i1 %.not.i.i588, label %_ZN7rocksdb6StatusD2Ev.exit591, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i589

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i589: ; preds = %_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.acy) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit591

_ZN7rocksdb6StatusD2Ev.exit591:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb18WritableFileWriterESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #34
  %i.acz = load ptr, ptr %64, align 8, !tbaa !1494 ; 3 uses
  %.not.i592 = icmp eq ptr %i.acz, null
  br i1 %.not.i592, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit591
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !466
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adc = load ptr, ptr %i.adb, align 8
  call void %i.adc(ptr noundef nonnull align 8 dereferenceable(33) %i.acz) #34, !inline_history !40
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit591, %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #34
  br i1 %i.aaz, label %bb.fy, label %bb.ji

bb.fy:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit
  %i.add = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 9136
  %i.adf = load ptr, ptr %i.ade, align 16, !tbaa !1324
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !64
  %i.adi = load ptr, ptr %58, align 8, !tbaa !64
  %i.adj = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 191 ; 2 uses
  %i.adl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i593 = icmp eq ptr %i.adl, null
  br i1 %.not10.i.i.i.i593, label %.critedge.i604, label %.lr.ph.i.i.i.i594

.lr.ph.i.i.i.i594:                                ; preds = %bb.fy
  %i.adm = load i8, ptr %i.adk, align 1, !tbaa !1044 ; 2 uses
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %.lr.ph.i.i.i.i594
  %.012.i.i.i.i595 = phi ptr [ %i.adl, %.lr.ph.i.i.i.i594 ], [ %.1.i.i.i.i600, %bb.fz ] ; 3 uses
  %.0811.i.i.i.i596 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i594 ], [ %.19.i.i.i.i597, %bb.fz ]
  %i.adn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i595, i64 32
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !1044
  %i.adp = icmp ult i8 %i.ado, %i.adm             ; 2 uses
  %.19.i.i.i.i597 = select i1 %i.adp, ptr %.0811.i.i.i.i596, ptr %.012.i.i.i.i595 ; 5 uses
  %.1.in.v.i.i.i.i598 = select i1 %i.adp, i64 24, i64 16
  %.1.in.i.i.i.i599 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i595, i64 %.1.in.v.i.i.i.i598
  %.1.i.i.i.i600 = load ptr, ptr %.1.in.i.i.i.i599, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i601 = icmp eq ptr %.1.i.i.i.i600, null
  br i1 %.not.i.i.i.i601, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i602, label %bb.fz, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i602: ; preds = %bb.fz
  %i.adq = icmp eq ptr %.19.i.i.i.i597, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.adq, label %.critedge.i604, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i602
  %i.adr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i597, i64 32
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !1044
  %i.adt = icmp ult i8 %i.adm, %i.ads
  br i1 %i.adt, label %.critedge.i604, label %bb.gb

.critedge.i604:                                   ; preds = %bb.ga, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i602, %bb.fy
  %.08.lcssa.i.i.i11.i605 = phi ptr [ %.19.i.i.i.i597, %bb.ga ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i602 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.fy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #34
  store ptr %i.adk, ptr %32, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #34
  %i.adu = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i605, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %.noexc606 unwind label %bb.hb

.noexc606:                                        ; preds = %.critedge.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #34
  %.pre1386 = load ptr, ptr %42, align 8, !tbaa !1278
  br label %bb.gb

bb.gb:                                            ; preds = %.noexc606, %bb.ga
  %i.adv = phi ptr [ %.pre1386, %.noexc606 ], [ %i.add, %bb.ga ]
  %.sroa.06.0.i603 = phi ptr [ %i.adu, %.noexc606 ], [ %.19.i.i.i.i597, %bb.ga ]
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i603, i64 40
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !64
  %i.ady = load ptr, ptr %59, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #34
  %i.adz = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.adv, i1 noundef zeroext false)
          to label %bb.gc unwind label %bb.hc     ; 3 uses

bb.gc:                                            ; preds = %bb.gb
  store i8 %i.adz, ptr %i.k, align 1, !tbaa !1044
  %i.aea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i607 = icmp eq ptr %i.aea, null
  br i1 %.not10.i.i.i.i607, label %.critedge.i618, label %.lr.ph.i.i.i.i608

.lr.ph.i.i.i.i608:                                ; preds = %bb.gc, %.lr.ph.i.i.i.i608
  %.012.i.i.i.i609 = phi ptr [ %.1.i.i.i.i614, %.lr.ph.i.i.i.i608 ], [ %i.aea, %bb.gc ] ; 3 uses
  %.0811.i.i.i.i610 = phi ptr [ %.19.i.i.i.i611, %.lr.ph.i.i.i.i608 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.gc ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i609, i64 32
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !1044
  %i.aed = icmp ult i8 %i.aec, %i.adz             ; 2 uses
  %.19.i.i.i.i611 = select i1 %i.aed, ptr %.0811.i.i.i.i610, ptr %.012.i.i.i.i609 ; 5 uses
  %.1.in.v.i.i.i.i612 = select i1 %i.aed, i64 24, i64 16
  %.1.in.i.i.i.i613 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i609, i64 %.1.in.v.i.i.i.i612
  %.1.i.i.i.i614 = load ptr, ptr %.1.in.i.i.i.i613, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i615 = icmp eq ptr %.1.i.i.i.i614, null
  br i1 %.not.i.i.i.i615, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i616, label %.lr.ph.i.i.i.i608, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i616: ; preds = %.lr.ph.i.i.i.i608
  %i.aee = icmp eq ptr %.19.i.i.i.i611, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.aee, label %.critedge.i618, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i616
  %i.aef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i611, i64 32
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !1044
  %i.aeh = icmp ult i8 %i.adz, %i.aeg
  br i1 %i.aeh, label %.critedge.i618, label %bb.ge

.critedge.i618:                                   ; preds = %bb.gd, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i616, %bb.gc
  %.08.lcssa.i.i.i11.i619 = phi ptr [ %.19.i.i.i.i611, %bb.gd ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i616 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.gc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #34
  store ptr %i.k, ptr %30, align 8, !tbaa !668, !alias.scope !2325
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #34
  %i.aei = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i619, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %.noexc620 unwind label %bb.hc

.noexc620:                                        ; preds = %.critedge.i618
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #34
  br label %bb.ge

bb.ge:                                            ; preds = %.noexc620, %bb.gd
  %.sroa.06.0.i617 = phi ptr [ %i.aei, %.noexc620 ], [ %.19.i.i.i.i611, %bb.gd ]
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i617, i64 40
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !64
  %i.ael = load ptr, ptr %42, align 8, !tbaa !1278
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 1224
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !2326
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.119, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.adh, ptr noundef %i.adi, ptr noundef %i.adx, ptr noundef %i.ady, ptr noundef %i.aek, i64 noundef %i.aen)
          to label %bb.gf unwind label %bb.hc

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #34
  store i64 0, ptr %67, align 8
  store i8 0, ptr %i.wp, align 8, !tbaa !1006
  store ptr %i.wt, ptr %i.ws, align 8, !tbaa !1009
  store i64 1, ptr %i.wu, align 8, !tbaa !1010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ww, align 8, !tbaa !993
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.wx, i8 0, i64 19, i1 false)
  store i32 0, ptr %i.wq, align 4, !tbaa !1007
  store i8 0, ptr %i.wr, align 8, !tbaa !1008
  store i8 1, ptr %i.wy, align 1, !tbaa !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #34
  %i.aeo = load ptr, ptr %i.wb, align 16, !tbaa !2321
  %i.aep = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 191
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !1282
  %i.aes = load ptr, ptr %42, align 8, !tbaa !1278
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 1224
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %69, ptr noundef nonnull align 8 dereferenceable(84) %67, i64 17, i1 false)
  store ptr null, ptr %i.wz, align 8, !tbaa !1009
  store i64 1, ptr %i.xa, align 8, !tbaa !1010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i64 16, i1 false), !tbaa.struct !1432
  store ptr null, ptr %i.xe, align 8, !tbaa !1495
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #34
  store ptr %i.wz, ptr %29, align 8, !tbaa !1497
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.wz, ptr noundef nonnull align 8 dereferenceable(56) %i.ws, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.gg unwind label %bb.hd

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #34
  %i.aev = load i32, ptr %i.xg, align 8
  store i32 %i.aev, ptr %i.xf, align 8
  store i8 1, ptr %i.xh, align 8, !tbaa !2328
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %70, ptr noundef nonnull align 8 dereferenceable(84) %67, i64 17, i1 false)
  store ptr null, ptr %i.xi, align 8, !tbaa !1009
  %i.aew = load i64, ptr %i.wu, align 8, !tbaa !1010
  store i64 %i.aew, ptr %i.xj, align 8, !tbaa !1010
  store ptr null, ptr %i.xk, align 8, !tbaa !995
  %i.aex = load i64, ptr %i.xc, align 8, !tbaa !1498
  store i64 %i.aex, ptr %i.xl, align 8, !tbaa !1498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xm, ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i64 16, i1 false), !tbaa.struct !1432
  store ptr null, ptr %i.xn, align 8, !tbaa !1495
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  store ptr %i.xi, ptr %28, align 8, !tbaa !1497
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.xi, ptr noundef nonnull align 8 dereferenceable(56) %i.ws, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.gh unwind label %bb.he

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  %i.aey = load i32, ptr %i.xg, align 8
  store i32 %i.aey, ptr %i.xo, align 8
  store i8 1, ptr %i.xp, align 8, !tbaa !2328
  invoke void @_ZN7rocksdb8CopyFileEPNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11TemperatureERSt10unique_ptrINS_18WritableFileWriterESt14default_deleteISC_EEmbRKSt10shared_ptrINS_8IOTracerEEmRKSt8optionalINS_9IOOptionsEESQ_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %68, ptr noundef %i.aeo, ptr noundef nonnull align 8 dereferenceable(32) %58, i8 noundef zeroext %i.aer, ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef 0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i64 noundef %i.aeu, ptr noundef nonnull align 8 dereferenceable(96) %69, ptr noundef nonnull align 8 dereferenceable(96) %70)
          to label %bb.gi unwind label %bb.hf

bb.gi:                                            ; preds = %bb.gh
  %i.aez = load i8, ptr %i.xp, align 8, !tbaa !2328, !range !83, !noundef !84
  %i.afa = trunc nuw i8 %i.aez to i1
  br i1 %i.afa, label %bb.gj, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit

bb.gj:                                            ; preds = %bb.gi
  store i8 0, ptr %i.xp, align 8, !tbaa !2328
  %i.afb = load ptr, ptr %i.xk, align 8, !tbaa !1012 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.afb, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1058

.lr.ph.i.i.i1058:                                 ; preds = %bb.gj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.afc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.afb, %bb.gj ] ; 6 uses
  %i.afc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !995 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.afe = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !64 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1058
  %i.afi = load i64, ptr %i.afg, align 8, !tbaa !65
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i1058, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.afk = load ptr, ptr %i.afd, align 8, !tbaa !64 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !65
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #33
  %.not.i.i.i1059 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i1059, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i1058, !llvm.loop !10

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.gj
  %i.afp = load ptr, ptr %i.xi, align 8, !tbaa !1009
  %i.afq = load i64, ptr %i.xj, align 8, !tbaa !1010
  %i.afr = shl i64 %i.afq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.afp, i8 0, i64 %i.afr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xk, i8 0, i64 16, i1 false)
  %i.afs = load ptr, ptr %i.xi, align 8, !tbaa !1009 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, %i.xn
  br i1 %i.aft, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.afu = load i64, ptr %i.xj, align 8, !tbaa !1010
  %i.afv = shl i64 %i.afu, 3
  call void @_ZdlPvm(ptr noundef %i.afs, i64 noundef %i.afv) #33
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit: ; preds = %bb.gk, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #34
  %i.afw = load i8, ptr %i.xh, align 8, !tbaa !2328, !range !83, !noundef !84
  %i.afx = trunc nuw i8 %i.afw to i1
  br i1 %i.afx, label %bb.gl, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625

bb.gl:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.xh, align 8, !tbaa !2328
  %i.afy = load ptr, ptr %i.xb, align 8, !tbaa !1012 ; 2 uses
  %.not5.i.i.i1060 = icmp eq ptr %i.afy, null
  br i1 %.not5.i.i.i1060, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1068, label %.lr.ph.i.i.i1061

.lr.ph.i.i.i1061:                                 ; preds = %bb.gl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066
  %.06.i.i.i1062 = phi ptr [ %i.afz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066 ], [ %i.afy, %bb.gl ] ; 6 uses
  %i.afz = load ptr, ptr %.06.i.i.i1062, align 8, !tbaa !995 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.06.i.i.i1062, i64 8
  %i.agb = getelementptr inbounds nuw i8, ptr %.06.i.i.i1062, i64 40
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !64 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.06.i.i.i1062, i64 56 ; 2 uses
  %i.age = icmp eq ptr %i.agc, %i.agd
  br i1 %i.age, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1064, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1063: ; preds = %.lr.ph.i.i.i1061
  %i.agf = load i64, ptr %i.agd, align 8, !tbaa !65
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1064

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1064: ; preds = %.lr.ph.i.i.i1061, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1063
  %i.agh = load ptr, ptr %i.aga, align 8, !tbaa !64 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.06.i.i.i1062, i64 24 ; 2 uses
  %i.agj = icmp eq ptr %i.agh, %i.agi
  br i1 %i.agj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1065

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1065: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1064
  %i.agk = load i64, ptr %i.agi, align 8, !tbaa !65
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agl) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1064, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1065
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1062, i64 noundef 80) #33
  %.not.i.i.i1067 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i.i1067, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1068, label %.lr.ph.i.i.i1061, !llvm.loop !10

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1068: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1066, %bb.gl
  %i.agm = load ptr, ptr %i.wz, align 8, !tbaa !1009
  %i.agn = load i64, ptr %i.xa, align 8, !tbaa !1010
  %i.ago = shl i64 %i.agn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.agm, i8 0, i64 %i.ago, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i8 0, i64 16, i1 false)
  %i.agp = load ptr, ptr %i.wz, align 8, !tbaa !1009 ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.xe
  br i1 %i.agq, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625, label %bb.gm

bb.gm:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1068
  %i.agr = load i64, ptr %i.xa, align 8, !tbaa !1010
  %i.ags = shl i64 %i.agr, 3
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #33
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625

_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625: ; preds = %bb.gm, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1068, %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #34
  %i.agt = load ptr, ptr %63, align 8, !tbaa !1493 ; 2 uses
  %.not1226 = icmp eq ptr %i.agt, null
  br i1 %.not1226, label %bb.hr, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #34
  store i64 0, ptr %71, align 8
  store i8 0, ptr %i.xq, align 8, !tbaa !1006
  store ptr %i.xu, ptr %i.xt, align 8, !tbaa !1009
  store i64 1, ptr %i.xv, align 8, !tbaa !1010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.xx, align 8, !tbaa !993
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.xy, i8 0, i64 19, i1 false)
  store i32 0, ptr %i.xr, align 4, !tbaa !1007
  store i8 0, ptr %i.xs, align 8, !tbaa !1008
  store i8 1, ptr %i.xz, align 1, !tbaa !1011
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #34
  invoke void @_ZN7rocksdb18WritableFileWriter5CloseERKNS_9IOOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %72, ptr noundef nonnull align 8 dereferenceable(258) %i.agt, ptr noundef nonnull align 8 dereferenceable(84) %71)
          to label %bb.go unwind label %bb.hi

bb.go:                                            ; preds = %bb.gn
  %i.agu = load i8, ptr %72, align 8, !tbaa !709
  store i8 %i.agu, ptr %52, align 8, !tbaa !694
  store i8 0, ptr %72, align 8, !tbaa !694
  %i.agv = load i8, ptr %i.ya, align 1, !tbaa !710
  store i8 %i.agv, ptr %i.of, align 1, !tbaa !695
  store i8 0, ptr %i.ya, align 1, !tbaa !695
  %i.agw = load i8, ptr %i.yb, align 1, !tbaa !711, !range !83, !noundef !84
  store i8 %i.agw, ptr %i.we, align 1, !tbaa !711
  %i.agx = load i8, ptr %i.yc, align 4, !tbaa !82, !range !83, !noundef !84
  store i8 %i.agx, ptr %i.wg, align 4, !tbaa !82
  %i.agy = load i8, ptr %i.yd, align 1, !tbaa !85
  store i8 %i.agy, ptr %i.wi, align 1, !tbaa !85
  store i8 0, ptr %i.yd, align 1, !tbaa !85
  %i.agz = load ptr, ptr %i.ye, align 8, !tbaa !86
  store ptr null, ptr %i.ye, align 8, !tbaa !86
  %i.aha = load ptr, ptr %i.oh, align 8, !tbaa !86 ; 2 uses
  store ptr %i.agz, ptr %i.oh, align 8, !tbaa !86
  %.not.i.i.i.i.i627 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i.i.i.i627, label %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread, label %_ZN7rocksdb8IOStatusaSEOS0_.exit

_ZN7rocksdb8IOStatusaSEOS0_.exit:                 ; preds = %bb.go
  call void @_ZdaPv(ptr noundef nonnull %i.aha) #33
  %.pr1198 = load ptr, ptr %i.ye, align 8, !tbaa !86 ; 2 uses
  %.not.i.i630 = icmp eq ptr %.pr1198, null
  br i1 %.not.i.i630, label %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i631

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i631: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr1198) #33
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit.thread:          ; preds = %bb.go, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i631, %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #34
  %i.ahb = load i8, ptr %52, align 8, !tbaa !694
  %i.ahc = icmp eq i8 %i.ahb, 0                   ; 2 uses
  br i1 %i.ahc, label %bb.ho, label %bb.gp

bb.gp:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread
  %i.ahd = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 9136
  %i.ahf = load ptr, ptr %i.ahe, align 16, !tbaa !1324
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !64
  %i.ahi = load ptr, ptr %58, align 8, !tbaa !64
  %i.ahj = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 191 ; 2 uses
  %i.ahl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i634 = icmp eq ptr %i.ahl, null
  br i1 %.not10.i.i.i.i634, label %.critedge.i645, label %.lr.ph.i.i.i.i635

.lr.ph.i.i.i.i635:                                ; preds = %bb.gp
  %i.ahm = load i8, ptr %i.ahk, align 1, !tbaa !1044 ; 2 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %.lr.ph.i.i.i.i635
  %.012.i.i.i.i636 = phi ptr [ %i.ahl, %.lr.ph.i.i.i.i635 ], [ %.1.i.i.i.i641, %bb.gq ] ; 3 uses
  %.0811.i.i.i.i637 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i635 ], [ %.19.i.i.i.i638, %bb.gq ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i636, i64 32
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !1044
  %i.ahp = icmp ult i8 %i.aho, %i.ahm             ; 2 uses
  %.19.i.i.i.i638 = select i1 %i.ahp, ptr %.0811.i.i.i.i637, ptr %.012.i.i.i.i636 ; 5 uses
  %.1.in.v.i.i.i.i639 = select i1 %i.ahp, i64 24, i64 16
  %.1.in.i.i.i.i640 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i636, i64 %.1.in.v.i.i.i.i639
  %.1.i.i.i.i641 = load ptr, ptr %.1.in.i.i.i.i640, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i642 = icmp eq ptr %.1.i.i.i.i641, null
  br i1 %.not.i.i.i.i642, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i643, label %bb.gq, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i643: ; preds = %bb.gq
  %i.ahq = icmp eq ptr %.19.i.i.i.i638, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.ahq, label %.critedge.i645, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i643
  %i.ahr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i638, i64 32
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !1044
  %i.aht = icmp ult i8 %i.ahm, %i.ahs
  br i1 %i.aht, label %.critedge.i645, label %bb.gs

.critedge.i645:                                   ; preds = %bb.gr, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i643, %bb.gp
  %.08.lcssa.i.i.i11.i646 = phi ptr [ %.19.i.i.i.i638, %bb.gr ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i643 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.gp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #34
  store ptr %i.ahk, ptr %26, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #34
  %i.ahu = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i646, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %.noexc647 unwind label %bb.hj

.noexc647:                                        ; preds = %.critedge.i645
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #34
  %.pre1387 = load ptr, ptr %42, align 8, !tbaa !1278
  br label %bb.gs

bb.gs:                                            ; preds = %.noexc647, %bb.gr
  %i.ahv = phi ptr [ %.pre1387, %.noexc647 ], [ %i.ahd, %bb.gr ]
  %.sroa.06.0.i644 = phi ptr [ %i.ahu, %.noexc647 ], [ %.19.i.i.i.i638, %bb.gr ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i644, i64 40
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !64
  %i.ahy = load ptr, ptr %59, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #34
  %i.ahz = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.ahv, i1 noundef zeroext false)
          to label %bb.gt unwind label %bb.hk     ; 3 uses

bb.gt:                                            ; preds = %bb.gs
  store i8 %i.ahz, ptr %i.l, align 1, !tbaa !1044
  %i.aia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i649 = icmp eq ptr %i.aia, null
  br i1 %.not10.i.i.i.i649, label %.critedge.i660, label %.lr.ph.i.i.i.i650

.lr.ph.i.i.i.i650:                                ; preds = %bb.gt, %.lr.ph.i.i.i.i650
  %.012.i.i.i.i651 = phi ptr [ %.1.i.i.i.i656, %.lr.ph.i.i.i.i650 ], [ %i.aia, %bb.gt ] ; 3 uses
  %.0811.i.i.i.i652 = phi ptr [ %.19.i.i.i.i653, %.lr.ph.i.i.i.i650 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.gt ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i651, i64 32
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !1044
  %i.aid = icmp ult i8 %i.aic, %i.ahz             ; 2 uses
  %.19.i.i.i.i653 = select i1 %i.aid, ptr %.0811.i.i.i.i652, ptr %.012.i.i.i.i651 ; 5 uses
  %.1.in.v.i.i.i.i654 = select i1 %i.aid, i64 24, i64 16
  %.1.in.i.i.i.i655 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i651, i64 %.1.in.v.i.i.i.i654
  %.1.i.i.i.i656 = load ptr, ptr %.1.in.i.i.i.i655, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i657 = icmp eq ptr %.1.i.i.i.i656, null
  br i1 %.not.i.i.i.i657, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i658, label %.lr.ph.i.i.i.i650, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i658: ; preds = %.lr.ph.i.i.i.i650
  %i.aie = icmp eq ptr %.19.i.i.i.i653, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.aie, label %.critedge.i660, label %bb.gu

bb.gu:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i658
  %i.aif = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i653, i64 32
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !1044
  %i.aih = icmp ult i8 %i.ahz, %i.aig
  br i1 %i.aih, label %.critedge.i660, label %bb.gv

.critedge.i660:                                   ; preds = %bb.gu, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i658, %bb.gt
  %.08.lcssa.i.i.i11.i661 = phi ptr [ %.19.i.i.i.i653, %bb.gu ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i658 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.gt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  store ptr %i.l, ptr %24, align 8, !tbaa !668, !alias.scope !2329
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.aii = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i661, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %.noexc662 unwind label %bb.hk

.noexc662:                                        ; preds = %.critedge.i660
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %bb.gv

bb.gv:                                            ; preds = %.noexc662, %bb.gu
  %.sroa.06.0.i659 = phi ptr [ %i.aii, %.noexc662 ], [ %.19.i.i.i.i653, %bb.gu ]
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i659, i64 40
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.gw unwind label %bb.hl

bb.gw:                                            ; preds = %bb.gv
  %i.ail = load ptr, ptr %73, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.120, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.ahh, ptr noundef %i.ahi, ptr noundef %i.ahx, ptr noundef %i.ahy, ptr noundef %i.aik, ptr noundef %i.ail)
          to label %bb.gx unwind label %bb.hm

bb.gx:                                            ; preds = %bb.gw
  %i.aim = load ptr, ptr %73, align 8, !tbaa !64  ; 2 uses
  %i.ain = icmp eq ptr %i.aim, %i.yf
  br i1 %i.ain, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664: ; preds = %bb.gx
  %i.aio = load i64, ptr %i.yf, align 8, !tbaa !65
  %i.aip = add i64 %i.aio, 1
  call void @_ZdlPvm(ptr noundef %i.aim, i64 noundef %i.aip) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  br label %bb.ho

bb.gy:                                            ; preds = %bb.fg, %bb.fv
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gz:                                            ; preds = %bb.fw
  %i.air = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.acp, i64 noundef 264) #33
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gy, %bb.gz, %bb.fu
  %.pn380.pn = phi { ptr, i32 } [ %i.aiq, %bb.gy ], [ %.pn377.pn, %bb.fu ], [ %i.air, %bb.gz ] ; 2 uses
  %i.ais = load ptr, ptr %i.wj, align 8, !tbaa !86 ; 2 uses
  %.not.i.i667 = icmp eq ptr %i.ais, null
  br i1 %.not.i.i667, label %_ZN7rocksdb6StatusD2Ev.exit670, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i668

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i668: ; preds = %bb.ha
  call void @_ZdaPv(ptr noundef nonnull %i.ais) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit670

_ZN7rocksdb6StatusD2Ev.exit670:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i668, %bb.ha, %bb.fq
  %.pn380.pn.pn = phi { ptr, i32 } [ %i.acg, %bb.fq ], [ %.pn380.pn, %bb.ha ], [ %.pn380.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i668 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #34
  %i.ait = load ptr, ptr %64, align 8, !tbaa !1494 ; 3 uses
  %.not.i671 = icmp eq ptr %i.ait, null
  br i1 %.not.i671, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit673, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i672

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i672: ; preds = %_ZN7rocksdb6StatusD2Ev.exit670
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !466
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8
  call void %i.aiw(ptr noundef nonnull align 8 dereferenceable(33) %i.ait) #34, !inline_history !40
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit673

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit673: ; preds = %_ZN7rocksdb6StatusD2Ev.exit670, %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i672
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #34
  br label %bb.ju

bb.hb:                                            ; preds = %.critedge.i604
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.hc:                                            ; preds = %.critedge.i618, %bb.ge, %bb.gb
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #34
  br label %bb.ju

bb.hd:                                            ; preds = %bb.gf
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit675

bb.he:                                            ; preds = %bb.gg
  %i.aja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674

bb.hf:                                            ; preds = %bb.gh
  %i.ajb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajc = load i8, ptr %i.xp, align 8, !tbaa !2328, !range !83, !noundef !84
  %i.ajd = trunc nuw i8 %i.ajc to i1
  br i1 %i.ajd, label %bb.hg, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674

bb.hg:                                            ; preds = %bb.hf
  store i8 0, ptr %i.xp, align 8, !tbaa !2328
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.xi) #34
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674

_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674: ; preds = %bb.hg, %bb.hf, %bb.he
  %.pn384 = phi { ptr, i32 } [ %i.aja, %bb.he ], [ %i.ajb, %bb.hf ], [ %i.ajb, %bb.hg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #34
  %i.aje = load i8, ptr %i.xh, align 8, !tbaa !2328, !range !83, !noundef !84
  %i.ajf = trunc nuw i8 %i.aje to i1
  br i1 %i.ajf, label %bb.hh, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit675

bb.hh:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674
  store i8 0, ptr %i.xh, align 8, !tbaa !2328
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wz) #34
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit675

_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit675: ; preds = %bb.hh, %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674, %bb.hd
  %.pn384.pn = phi { ptr, i32 } [ %i.aiz, %bb.hd ], [ %.pn384, %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit674 ], [ %.pn384, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit802

bb.hi:                                            ; preds = %bb.gn
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #34
  br label %bb.hq

bb.hj:                                            ; preds = %.critedge.i645
  %i.ajh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hq

bb.hk:                                            ; preds = %.critedge.i660, %bb.gs
  %i.aji = landingpad { ptr, i32 }
          cleanup
  br label %bb.hn

bb.hl:                                            ; preds = %bb.gv
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.hm:                                            ; preds = %bb.gw
  %i.ajk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajl = load ptr, ptr %73, align 8, !tbaa !64  ; 2 uses
  %i.ajm = icmp eq ptr %i.ajl, %i.yf
  br i1 %i.ajm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.hm
  %i.ajn = load i64, ptr %i.yf, align 8, !tbaa !65
  %i.ajo = add i64 %i.ajn, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.hl
  %.pn387 = phi { ptr, i32 } [ %i.ajj, %bb.hl ], [ %i.ajk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.ajk, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #34
  br label %bb.hn

bb.hn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, %bb.hk
  %.pn387.pn = phi { ptr, i32 } [ %.pn387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678 ], [ %i.aji, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #34
  br label %bb.hq

bb.ho:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
  %.3 = phi i32 [ 6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666 ], [ 0, %_ZN7rocksdb8IOStatusaSEOS0_.exit.thread ]
  %i.ajp = load ptr, ptr %i.xw, align 8, !tbaa !1012 ; 2 uses
  %.not5.i.i.i1072 = icmp eq ptr %i.ajp, null
  br i1 %.not5.i.i.i1072, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1080, label %.lr.ph.i.i.i1073

.lr.ph.i.i.i1073:                                 ; preds = %bb.ho, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078
  %.06.i.i.i1074 = phi ptr [ %i.ajq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078 ], [ %i.ajp, %bb.ho ] ; 6 uses
  %i.ajq = load ptr, ptr %.06.i.i.i1074, align 8, !tbaa !995 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.06.i.i.i1074, i64 8
  %i.ajs = getelementptr inbounds nuw i8, ptr %.06.i.i.i1074, i64 40
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !64 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.06.i.i.i1074, i64 56 ; 2 uses
  %i.ajv = icmp eq ptr %i.ajt, %i.aju
  br i1 %i.ajv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1075

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1075: ; preds = %.lr.ph.i.i.i1073
  %i.ajw = load i64, ptr %i.aju, align 8, !tbaa !65
  %i.ajx = add i64 %i.ajw, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1076: ; preds = %.lr.ph.i.i.i1073, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1075
  %i.ajy = load ptr, ptr %i.ajr, align 8, !tbaa !64 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %.06.i.i.i1074, i64 24 ; 2 uses
  %i.aka = icmp eq ptr %i.ajy, %i.ajz
  br i1 %i.aka, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1077: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1076
  %i.akb = load i64, ptr %i.ajz, align 8, !tbaa !65
  %i.akc = add i64 %i.akb, 1
  call void @_ZdlPvm(ptr noundef %i.ajy, i64 noundef %i.akc) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1076, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1077
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i1074, i64 noundef 80) #33
  %.not.i.i.i1079 = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i.i1079, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1080, label %.lr.ph.i.i.i1073, !llvm.loop !10

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1080: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i1078, %bb.ho
  %i.akd = load ptr, ptr %i.xt, align 8, !tbaa !1009
  %i.ake = load i64, ptr %i.xv, align 8, !tbaa !1010
  %i.akf = shl i64 %i.ake, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.akd, i8 0, i64 %i.akf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xw, i8 0, i64 16, i1 false)
  %i.akg = load ptr, ptr %i.xt, align 8, !tbaa !1009 ; 2 uses
  %i.akh = icmp eq ptr %i.akg, %i.xu
  br i1 %i.akh, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1083, label %bb.hp

bb.hp:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1080
  %i.aki = load i64, ptr %i.xv, align 8, !tbaa !1010
  %i.akj = shl i64 %i.aki, 3
  call void @_ZdlPvm(ptr noundef %i.akg, i64 noundef %i.akj) #33
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1083

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1083: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i1080, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #34
  br i1 %i.ahc, label %bb.hr, label %bb.jg

bb.hq:                                            ; preds = %bb.hn, %bb.hj, %bb.hi
  %.pn387.pn.pn = phi { ptr, i32 } [ %.pn387.pn, %bb.hn ], [ %i.ajh, %bb.hj ], [ %i.ajg, %bb.hi ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.xt) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #34
  br label %bb.jt

bb.hr:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit1083, %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit625
  %i.akk = load i8, ptr %68, align 8, !tbaa !694
  store i8 %i.akk, ptr %52, align 8, !tbaa !694
  %i.akl = load i8, ptr %i.yg, align 1, !tbaa !695
  store i8 %i.akl, ptr %i.of, align 1, !tbaa !695
  %i.akm = load i8, ptr %i.yh, align 1, !tbaa !711, !range !83, !noundef !84
  store i8 %i.akm, ptr %i.we, align 1, !tbaa !711
  %i.akn = load i8, ptr %i.yi, align 4, !tbaa !82, !range !83, !noundef !84
  store i8 %i.akn, ptr %i.wg, align 4, !tbaa !82
  %i.ako = load i8, ptr %i.yj, align 1, !tbaa !85
  store i8 %i.ako, ptr %i.wi, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %i.akp = load ptr, ptr %i.yk, align 8, !tbaa !86 ; 2 uses
  %.not.i.i680 = icmp eq ptr %i.akp, null
  br i1 %.not.i.i680, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %23, ptr noundef nonnull %i.akp)
          to label %.noexc688 unwind label %bb.ie

.noexc688:                                        ; preds = %bb.hs
  %.pre.i681 = load ptr, ptr %23, align 8, !tbaa !86
  br label %bb.ht

bb.ht:                                            ; preds = %.noexc688, %bb.hr
  %i.akq = phi ptr [ %.pre.i681, %.noexc688 ], [ null, %bb.hr ]
  store ptr null, ptr %23, align 8, !tbaa !86
  %i.akr = load ptr, ptr %i.oh, align 8, !tbaa !86 ; 2 uses
  store ptr %i.akq, ptr %i.oh, align 8, !tbaa !86
  %.not.i.i.i.i.i682 = icmp eq ptr %i.akr, null
  br i1 %.not.i.i.i.i.i682, label %bb.hu, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i683

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i683: ; preds = %bb.ht
  call void @_ZdaPv(ptr noundef nonnull %i.akr) #33
  %.pr.i684 = load ptr, ptr %23, align 8, !tbaa !86 ; 2 uses
  %.not.i10.i685 = icmp eq ptr %.pr.i684, null
  br i1 %.not.i10.i685, label %bb.hu, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i686

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i686: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i683
  call void @_ZdaPv(ptr noundef nonnull %.pr.i684) #33
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i683, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i686
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  %i.aks = load i8, ptr %52, align 8, !tbaa !694
  %i.akt = icmp eq i8 %i.aks, 0
  %i.aku = load ptr, ptr %42, align 8, !tbaa !1278 ; 3 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 9136
  %i.akw = load ptr, ptr %i.akv, align 16, !tbaa !1324
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !64 ; 2 uses
  %i.akz = load ptr, ptr %58, align 8, !tbaa !64  ; 2 uses
  %i.ala = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 191 ; 4 uses
  %i.alc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 3 uses
  %.not10.i.i.i.i726 = icmp eq ptr %i.alc, null   ; 2 uses
  br i1 %i.akt, label %bb.ij, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  br i1 %.not10.i.i.i.i726, label %.critedge.i701, label %.lr.ph.i.i.i.i691

.lr.ph.i.i.i.i691:                                ; preds = %bb.hv
  %i.ald = load i8, ptr %i.alb, align 1, !tbaa !1044 ; 2 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hw, %.lr.ph.i.i.i.i691
  %.012.i.i.i.i692 = phi ptr [ %i.alc, %.lr.ph.i.i.i.i691 ], [ %.1.i.i.i.i697, %bb.hw ] ; 3 uses
  %.0811.i.i.i.i693 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i691 ], [ %.19.i.i.i.i694, %bb.hw ]
  %i.ale = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i692, i64 32
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !1044
  %i.alg = icmp ult i8 %i.alf, %i.ald             ; 2 uses
  %.19.i.i.i.i694 = select i1 %i.alg, ptr %.0811.i.i.i.i693, ptr %.012.i.i.i.i692 ; 5 uses
  %.1.in.v.i.i.i.i695 = select i1 %i.alg, i64 24, i64 16
  %.1.in.i.i.i.i696 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i692, i64 %.1.in.v.i.i.i.i695
  %.1.i.i.i.i697 = load ptr, ptr %.1.in.i.i.i.i696, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i698 = icmp eq ptr %.1.i.i.i.i697, null
  br i1 %.not.i.i.i.i698, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i699, label %bb.hw, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i699: ; preds = %bb.hw
  %i.alh = icmp eq ptr %.19.i.i.i.i694, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.alh, label %.critedge.i701, label %bb.hx

bb.hx:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i699
  %i.ali = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i694, i64 32
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !1044
  %i.alk = icmp ult i8 %i.ald, %i.alj
  br i1 %i.alk, label %.critedge.i701, label %bb.hy

.critedge.i701:                                   ; preds = %bb.hx, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i699, %bb.hv
  %.08.lcssa.i.i.i11.i702 = phi ptr [ %.19.i.i.i.i694, %bb.hx ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i699 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.hv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  store ptr %i.alb, ptr %21, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  %i.all = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i702, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %.noexc703 unwind label %bb.ie

.noexc703:                                        ; preds = %.critedge.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  %.pre1388 = load ptr, ptr %42, align 8, !tbaa !1278
  br label %bb.hy

bb.hy:                                            ; preds = %.noexc703, %bb.hx
  %i.alm = phi ptr [ %.pre1388, %.noexc703 ], [ %i.aku, %bb.hx ]
  %.sroa.06.0.i700 = phi ptr [ %i.all, %.noexc703 ], [ %.19.i.i.i.i694, %bb.hx ]
  %i.aln = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i700, i64 40
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !64
  %i.alp = load ptr, ptr %59, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #34
  %i.alq = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.alm, i1 noundef zeroext false)
          to label %bb.hz unwind label %bb.if     ; 3 uses

bb.hz:                                            ; preds = %bb.hy
  store i8 %i.alq, ptr %i.m, align 1, !tbaa !1044
  %i.alr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i705 = icmp eq ptr %i.alr, null
  br i1 %.not10.i.i.i.i705, label %.critedge.i716, label %.lr.ph.i.i.i.i706

.lr.ph.i.i.i.i706:                                ; preds = %bb.hz, %.lr.ph.i.i.i.i706
  %.012.i.i.i.i707 = phi ptr [ %.1.i.i.i.i712, %.lr.ph.i.i.i.i706 ], [ %i.alr, %bb.hz ] ; 3 uses
  %.0811.i.i.i.i708 = phi ptr [ %.19.i.i.i.i709, %.lr.ph.i.i.i.i706 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.hz ]
  %i.als = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i707, i64 32
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !1044
  %i.alu = icmp ult i8 %i.alt, %i.alq             ; 2 uses
  %.19.i.i.i.i709 = select i1 %i.alu, ptr %.0811.i.i.i.i708, ptr %.012.i.i.i.i707 ; 5 uses
  %.1.in.v.i.i.i.i710 = select i1 %i.alu, i64 24, i64 16
  %.1.in.i.i.i.i711 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i707, i64 %.1.in.v.i.i.i.i710
  %.1.i.i.i.i712 = load ptr, ptr %.1.in.i.i.i.i711, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i713 = icmp eq ptr %.1.i.i.i.i712, null
  br i1 %.not.i.i.i.i713, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i714, label %.lr.ph.i.i.i.i706, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i714: ; preds = %.lr.ph.i.i.i.i706
  %i.alv = icmp eq ptr %.19.i.i.i.i709, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.alv, label %.critedge.i716, label %bb.ia

bb.ia:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i714
  %i.alw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i709, i64 32
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !1044
  %i.aly = icmp ult i8 %i.alq, %i.alx
  br i1 %i.aly, label %.critedge.i716, label %bb.ib

.critedge.i716:                                   ; preds = %bb.ia, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i714, %bb.hz
  %.08.lcssa.i.i.i11.i717 = phi ptr [ %.19.i.i.i.i709, %bb.ia ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i714 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.hz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  store ptr %i.m, ptr %19, align 8, !tbaa !668, !alias.scope !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.alz = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i717, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc718 unwind label %bb.if

.noexc718:                                        ; preds = %.critedge.i716
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.ib

bb.ib:                                            ; preds = %.noexc718, %bb.ia
  %.sroa.06.0.i715 = phi ptr [ %i.alz, %.noexc718 ], [ %.19.i.i.i.i709, %bb.ia ]
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i715, i64 40
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.ic unwind label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  %i.amc = load ptr, ptr %74, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.121, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.aky, ptr noundef %i.akz, ptr noundef %i.alo, ptr noundef %i.alp, ptr noundef %i.amb, ptr noundef %i.amc)
          to label %bb.id unwind label %bb.ih

bb.id:                                            ; preds = %bb.ic
  %i.amd = load ptr, ptr %74, align 8, !tbaa !64  ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.yl
  br i1 %i.ame, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720: ; preds = %bb.id
  %i.amf = load i64, ptr %i.yl, align 8, !tbaa !65
  %i.amg = add i64 %i.amf, 1
  call void @_ZdlPvm(ptr noundef %i.amd, i64 noundef %i.amg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722: ; preds = %bb.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i720
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  br label %bb.jg

bb.ie:                                            ; preds = %.critedge.i737, %.critedge.i701, %bb.hs
  %i.amh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.if:                                            ; preds = %.critedge.i716, %bb.hy
  %i.ami = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

bb.ig:                                            ; preds = %bb.ib
  %i.amj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

bb.ih:                                            ; preds = %bb.ic
  %i.amk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aml = load ptr, ptr %74, align 8, !tbaa !64  ; 2 uses
  %i.amm = icmp eq ptr %i.aml, %i.yl
  br i1 %i.amm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723: ; preds = %bb.ih
  %i.amn = load i64, ptr %i.yl, align 8, !tbaa !65
  %i.amo = add i64 %i.amn, 1
  call void @_ZdlPvm(ptr noundef %i.aml, i64 noundef %i.amo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725: ; preds = %bb.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723, %bb.ig
  %.pn392 = phi { ptr, i32 } [ %i.amj, %bb.ig ], [ %i.amk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i723 ], [ %i.amk, %bb.ih ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #34
  br label %bb.ii

bb.ii:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725, %bb.if
  %.pn392.pn = phi { ptr, i32 } [ %.pn392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725 ], [ %i.ami, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  br label %bb.jt

bb.ij:                                            ; preds = %bb.hu
  br i1 %.not10.i.i.i.i726, label %.critedge.i737, label %.lr.ph.i.i.i.i727

.lr.ph.i.i.i.i727:                                ; preds = %bb.ij
  %i.amp = load i8, ptr %i.alb, align 1, !tbaa !1044 ; 2 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ik, %.lr.ph.i.i.i.i727
  %.012.i.i.i.i728 = phi ptr [ %i.alc, %.lr.ph.i.i.i.i727 ], [ %.1.i.i.i.i733, %bb.ik ] ; 3 uses
  %.0811.i.i.i.i729 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i727 ], [ %.19.i.i.i.i730, %bb.ik ]
  %i.amq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i728, i64 32
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !1044
  %i.ams = icmp ult i8 %i.amr, %i.amp             ; 2 uses
  %.19.i.i.i.i730 = select i1 %i.ams, ptr %.0811.i.i.i.i729, ptr %.012.i.i.i.i728 ; 5 uses
  %.1.in.v.i.i.i.i731 = select i1 %i.ams, i64 24, i64 16
  %.1.in.i.i.i.i732 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i728, i64 %.1.in.v.i.i.i.i731
  %.1.i.i.i.i733 = load ptr, ptr %.1.in.i.i.i.i732, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i734 = icmp eq ptr %.1.i.i.i.i733, null
  br i1 %.not.i.i.i.i734, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i735, label %bb.ik, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i735: ; preds = %bb.ik
  %i.amt = icmp eq ptr %.19.i.i.i.i730, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.amt, label %.critedge.i737, label %bb.il

bb.il:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i735
  %i.amu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i730, i64 32
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !1044
  %i.amw = icmp ult i8 %i.amp, %i.amv
  br i1 %i.amw, label %.critedge.i737, label %bb.im

.critedge.i737:                                   ; preds = %bb.il, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i735, %bb.ij
  %.08.lcssa.i.i.i11.i738 = phi ptr [ %.19.i.i.i.i730, %bb.il ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i735 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.ij ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  store ptr %i.alb, ptr %17, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.amx = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i738, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %.noexc739 unwind label %bb.ie

.noexc739:                                        ; preds = %.critedge.i737
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  %.pre1389 = load ptr, ptr %42, align 8, !tbaa !1278
  br label %bb.im

bb.im:                                            ; preds = %.noexc739, %bb.il
  %i.amy = phi ptr [ %.pre1389, %.noexc739 ], [ %i.aku, %bb.il ]
  %.sroa.06.0.i736 = phi ptr [ %i.amx, %.noexc739 ], [ %.19.i.i.i.i730, %bb.il ]
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i736, i64 40
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !64
  %i.anb = load ptr, ptr %59, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #34
  %i.anc = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.amy, i1 noundef zeroext false)
          to label %bb.in unwind label %bb.jk     ; 3 uses

bb.in:                                            ; preds = %bb.im
  store i8 %i.anc, ptr %i.n, align 1, !tbaa !1044
  %i.and = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i741 = icmp eq ptr %i.and, null
  br i1 %.not10.i.i.i.i741, label %.critedge.i752, label %.lr.ph.i.i.i.i742

.lr.ph.i.i.i.i742:                                ; preds = %bb.in, %.lr.ph.i.i.i.i742
  %.012.i.i.i.i743 = phi ptr [ %.1.i.i.i.i748, %.lr.ph.i.i.i.i742 ], [ %i.and, %bb.in ] ; 3 uses
  %.0811.i.i.i.i744 = phi ptr [ %.19.i.i.i.i745, %.lr.ph.i.i.i.i742 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.in ]
  %i.ane = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i743, i64 32
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !1044
  %i.ang = icmp ult i8 %i.anf, %i.anc             ; 2 uses
  %.19.i.i.i.i745 = select i1 %i.ang, ptr %.0811.i.i.i.i744, ptr %.012.i.i.i.i743 ; 5 uses
  %.1.in.v.i.i.i.i746 = select i1 %i.ang, i64 24, i64 16
  %.1.in.i.i.i.i747 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i743, i64 %.1.in.v.i.i.i.i746
  %.1.i.i.i.i748 = load ptr, ptr %.1.in.i.i.i.i747, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i749 = icmp eq ptr %.1.i.i.i.i748, null
  br i1 %.not.i.i.i.i749, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i750, label %.lr.ph.i.i.i.i742, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i750: ; preds = %.lr.ph.i.i.i.i742
  %i.anh = icmp eq ptr %.19.i.i.i.i745, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.anh, label %.critedge.i752, label %bb.io

bb.io:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i750
  %i.ani = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i745, i64 32
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !1044
  %i.ank = icmp ult i8 %i.anc, %i.anj
  br i1 %i.ank, label %.critedge.i752, label %bb.ip

.critedge.i752:                                   ; preds = %bb.io, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i750, %bb.in
  %.08.lcssa.i.i.i11.i753 = phi ptr [ %.19.i.i.i.i745, %bb.io ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i750 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.in ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  store ptr %i.n, ptr %15, align 8, !tbaa !668, !alias.scope !2331
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  %i.anl = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i753, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc754 unwind label %bb.jk

.noexc754:                                        ; preds = %.critedge.i752
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.ip

bb.ip:                                            ; preds = %.noexc754, %bb.io
  %.sroa.06.0.i751 = phi ptr [ %i.anl, %.noexc754 ], [ %.19.i.i.i.i745, %bb.io ]
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i751, i64 40
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.iq unwind label %bb.jl

bb.iq:                                            ; preds = %bb.ip
  %i.ano = load ptr, ptr %75, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.122, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.aky, ptr noundef %i.akz, ptr noundef %i.ana, ptr noundef %i.anb, ptr noundef %i.ann, ptr noundef %i.ano)
          to label %bb.ir unwind label %bb.jm

bb.ir:                                            ; preds = %bb.iq
  %i.anp = load ptr, ptr %75, align 8, !tbaa !64  ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.ym
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756: ; preds = %bb.ir
  %i.anr = load i64, ptr %i.ym, align 8, !tbaa !65
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.anp, i64 noundef %i.ans) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i756
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #34
  %i.ant = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 11440
  %i.anv = load i32, ptr %i.anu, align 16, !tbaa !1328
  %i.anw = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016 ; 5 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 24
  %i.any = load i64, ptr %i.anx, align 8, !tbaa !684
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anw, i64 48
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anw, i64 80
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anw, i64 32
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anw, i64 40
  %i.aod = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.ant, i1 noundef zeroext false)
          to label %bb.is unwind label %bb.jo

bb.is:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit758
  %i.aoe = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 192
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !1283
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoe, i64 200
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !1284
  %i.aoj = load ptr, ptr %42, align 8, !tbaa !1278
  %i.aok = invoke noundef i64 @_ZNK7rocksdb10Compaction23MinInputFileEpochNumberEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.aoj)
          to label %bb.it unwind label %bb.jo

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #34
  %i.aol = load ptr, ptr %63, align 8, !tbaa !1493
  invoke void @_ZN7rocksdb18WritableFileWriter15GetFileChecksumB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr noundef nonnull align 8 dereferenceable(258) %i.aol)
          to label %bb.iu unwind label %bb.jp

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #34
  %i.aom = load ptr, ptr %63, align 8, !tbaa !1493
  %i.aon = invoke noundef ptr @_ZNK7rocksdb18WritableFileWriter23GetFileChecksumFuncNameEv(ptr noundef nonnull align 8 dereferenceable(258) %i.aom)
          to label %bb.iv unwind label %.loopexit.split-lp1236.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.iv:                                            ; preds = %bb.iu
  store ptr %i.yn, ptr %78, align 8, !tbaa !670
  %i.aoo = icmp eq ptr %i.aon, null
  br i1 %i.aoo, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.132) #35
          to label %.noexc759 unwind label %.loopexit.split-lp1236.loopexit.split-lp.loopexit.split-lp

.noexc759:                                        ; preds = %bb.iw
  unreachable

bb.ix:                                            ; preds = %bb.iv
  %i.aop = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aon) #34 ; 8 uses
  %i.aoq = icmp ugt i64 %i.aop, 15
  br i1 %i.aoq, label %bb.iy, label %._crit_edge.i.i

bb.iy:                                            ; preds = %bb.ix
  %i.aor = icmp slt i64 %i.aop, 0
  br i1 %i.aor, label %.noexc.i, label %bb.iz

.noexc.i:                                         ; preds = %bb.iy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
          to label %.noexc760 unwind label %.loopexit.split-lp1236.loopexit.split-lp.loopexit.split-lp

.noexc760:                                        ; preds = %.noexc.i
  unreachable

bb.iz:                                            ; preds = %bb.iy
  %i.aos = add nuw i64 %i.aop, 1                  ; 2 uses
  %i.aot = icmp slt i64 %i.aos, 0
  br i1 %i.aot, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !672

.noexc11.i:                                       ; preds = %bb.iz
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc761 unwind label %.loopexit.split-lp1236.loopexit.split-lp.loopexit.split-lp

.noexc761:                                        ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.iz
  %i.aou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aos) #36
          to label %.noexc762 unwind label %.loopexit.split-lp1236.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc762:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.aou, ptr %78, align 8, !tbaa !64
  store i64 %i.aop, ptr %i.yn, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc762, %bb.ix
  %i.aov = phi ptr [ %i.aou, %.noexc762 ], [ %i.yn, %bb.ix ] ; 3 uses
  switch i64 %i.aop, label %bb.jb [
    i64 1, label %bb.ja
    i64 0, label %bb.jc
  ]

bb.ja:                                            ; preds = %._crit_edge.i.i
  %i.aow = load i8, ptr %i.aon, align 1, !tbaa !65
  store i8 %i.aow, ptr %i.aov, align 1, !tbaa !65
  br label %bb.jc

bb.jb:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aov, ptr nonnull align 1 %i.aon, i64 %i.aop, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %._crit_edge.i.i
  store i64 %i.aop, ptr %i.yo, align 8, !tbaa !671
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aop
  store i8 0, ptr %i.aox, align 1, !tbaa !65
  %i.aoy = load ptr, ptr %.sroa.01129.01365, align 8, !tbaa !1016 ; 6 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 288
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 176
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !1287
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoy, i64 304
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !1288
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoy, i64 312
  %i.apf = load i8, ptr %i.ape, align 8, !tbaa !691, !range !83, !noundef !84
  %i.apg = trunc nuw i8 %i.apf to i1
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aoy, i64 320
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoy, i64 352
  invoke void @_ZN7rocksdb12FileMetaDataC2EmjmRKNS_11InternalKeyES3_RKmS5_bNS_11TemperatureEmmmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_St5arrayImLm2EEmmbSE_SE_(ptr noundef nonnull align 8 dereferenceable(417) %76, i64 noundef %i.zf, i32 noundef %i.anv, i64 noundef %i.any, ptr noundef nonnull align 8 dereferenceable(32) %i.anz, ptr noundef nonnull align 8 dereferenceable(32) %i.aoa, ptr noundef nonnull align 8 dereferenceable(8) %i.aob, ptr noundef nonnull align 8 dereferenceable(8) %i.aoc, i1 noundef zeroext false, i8 noundef zeroext %i.aod, i64 noundef %i.aog, i64 noundef %i.aoi, i64 noundef %i.aar, i64 noundef %i.aok, ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull byval(%"struct.std::array.618") align 8 %i.aoz, i64 noundef %i.apb, i64 noundef %i.apd, i1 noundef zeroext %i.apg, ptr noundef nonnull align 8 dereferenceable(32) %i.aph, ptr noundef nonnull align 8 dereferenceable(32) %i.api)
          to label %bb.jd unwind label %bb.jq

bb.jd:                                            ; preds = %bb.jc
  %i.apj = load ptr, ptr %78, align 8, !tbaa !64  ; 2 uses
  %i.apk = icmp eq ptr %i.apj, %i.yn
  br i1 %i.apk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763: ; preds = %bb.jd
  %i.apl = load i64, ptr %i.yn, align 8, !tbaa !65
  %i.apm = add i64 %i.apl, 1
  call void @_ZdlPvm(ptr noundef %i.apj, i64 noundef %i.apm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765: ; preds = %bb.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #34
  %i.apn = load ptr, ptr %77, align 8, !tbaa !64  ; 2 uses
  %i.apo = icmp eq ptr %i.apn, %i.yp
  br i1 %i.apo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765
  %i.app = load i64, ptr %i.yp, align 8, !tbaa !65
  %i.apq = add i64 %i.app, 1
  call void @_ZdlPvm(ptr noundef %i.apn, i64 noundef %i.apq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #34
  %i.apr = load ptr, ptr %i.yq, align 8, !tbaa !967 ; 3 uses
  %i.aps = load ptr, ptr %i.yr, align 8, !tbaa !953
  %.not.i.i769 = icmp eq ptr %i.apr, %i.aps
  br i1 %.not.i.i769, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768
  invoke void @_ZN7rocksdb12FileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(417) %i.apr, ptr noundef nonnull align 8 dereferenceable(417) %76)
          to label %.noexc770 unwind label %bb.jr

.noexc770:                                        ; preds = %bb.je
  %i.apt = load ptr, ptr %i.yq, align 8, !tbaa !967
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 424
  store ptr %i.apu, ptr %i.yq, align 8, !tbaa !967
  br label %_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE9push_backEOS1_.exit

bb.jf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768
  invoke void @_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr %i.apr, ptr noundef nonnull align 8 dereferenceable(417) %76)
          to label %_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE9push_backEOS1_.exit unwind label %bb.jr
end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl20BackgroundCompactionEPbPNS_10JobContextEPNS_9LogBufferEPNS0_19PrepickedCompactionENS_3Env8PriorityE:bb.a
bb.kr:                                            ; preds = %bb.kq
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.awz = load ptr, ptr %i.awy, align 16, !tbaa !608 ; 6 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 760 ; 2 uses
  %.not.i831 = icmp eq ptr %52, %i.axa
  br i1 %.not.i831, label %_ZN7rocksdb8IOStatusaSERKS0_.exit841, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.axb = load i8, ptr %i.axa, align 8, !tbaa !694
  store i8 %i.axb, ptr %52, align 8, !tbaa !694
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awz, i64 761
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !695
  store i8 %i.axd, ptr %i.of, align 1, !tbaa !695
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awz, i64 763
  %i.axf = load i8, ptr %i.axe, align 1, !tbaa !711, !range !83, !noundef !84
  %i.axg = getelementptr inbounds nuw i8, ptr %52, i64 3
  store i8 %i.axf, ptr %i.axg, align 1, !tbaa !711
  %i.axh = getelementptr inbounds nuw i8, ptr %i.awz, i64 764
  %i.axi = load i8, ptr %i.axh, align 4, !tbaa !82, !range !83, !noundef !84
  %i.axj = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i8 %i.axi, ptr %i.axj, align 4, !tbaa !82
  %i.axk = getelementptr inbounds nuw i8, ptr %i.awz, i64 765
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !85
  %i.axm = getelementptr inbounds nuw i8, ptr %52, i64 5
  store i8 %i.axl, ptr %i.axm, align 1, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awz, i64 768
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !86 ; 2 uses
  %.not.i.i832 = icmp eq ptr %i.axo, null
  br i1 %.not.i.i832, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %14, ptr noundef nonnull %i.axo)
          to label %.noexc840 unwind label %.loopexit.split-lp1231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc840:                                        ; preds = %bb.kt
  %.pre.i833 = load ptr, ptr %14, align 8, !tbaa !86
  br label %bb.ku

bb.ku:                                            ; preds = %.noexc840, %bb.ks
  %i.axp = phi ptr [ %.pre.i833, %.noexc840 ], [ null, %bb.ks ]
  store ptr null, ptr %14, align 8, !tbaa !86
  %i.axq = load ptr, ptr %i.oh, align 8, !tbaa !86 ; 2 uses
  store ptr %i.axp, ptr %i.oh, align 8, !tbaa !86
  %.not.i.i.i.i.i834 = icmp eq ptr %i.axq, null
  br i1 %.not.i.i.i.i.i834, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i839, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i835

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i835: ; preds = %bb.ku
  call void @_ZdaPv(ptr noundef nonnull %i.axq) #33
  %.pr.i836 = load ptr, ptr %14, align 8, !tbaa !86 ; 2 uses
  %.not.i10.i837 = icmp eq ptr %.pr.i836, null
  br i1 %.not.i10.i837, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i839, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i838

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i838: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i835
  call void @_ZdaPv(ptr noundef nonnull %.pr.i836) #33
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i839

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i839: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i838, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i835, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %_ZN7rocksdb8IOStatusaSERKS0_.exit841

_ZN7rocksdb8IOStatusaSERKS0_.exit841:             ; preds = %bb.jy, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i839, %bb.kr, %bb.kq
  %i.axr = load ptr, ptr %42, align 8, !tbaa !1278
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 9136
  %i.axt = load ptr, ptr %i.axs, align 16, !tbaa !1324
  %i.axu = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !1025
  %i.axw = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 3 uses
  store i8 0, ptr %i.axw, align 8, !tbaa !788
  invoke void @_ZN7rocksdb6DBImpl34InstallSuperVersionAndScheduleWorkEPNS_16ColumnFamilyDataEPNS_19SuperVersionContextESt8optionalISt10shared_ptrINS_18SeqnoToTimeMappingEEE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef %i.axt, ptr noundef %i.axv, ptr noundef nonnull align 8 %82)
          to label %bb.kv unwind label %bb.lf

bb.kv:                                            ; preds = %_ZN7rocksdb8IOStatusaSERKS0_.exit841
  %i.axx = load i8, ptr %i.axw, align 8, !tbaa !788, !range !83, !noundef !84
  %i.axy = trunc nuw i8 %i.axx to i1
  br i1 %i.axy, label %bb.kw, label %bb.ld

bb.kw:                                            ; preds = %bb.kv
  store i8 0, ptr %i.axw, align 8, !tbaa !788
  %i.axz = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !667 ; 8 uses
  %.not.i.i.i.i.i.i842 = icmp eq ptr %i.aya, null
  br i1 %.not.i.i.i.i.i.i842, label %bb.ld, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 8 ; 4 uses
  %i.ayc = load atomic i64, ptr %i.ayb acquire, align 8 ; 2 uses
  %i.ayd = icmp eq i64 %i.ayc, 4294967297
  %i.aye = trunc i64 %i.ayc to i32                ; 2 uses
  br i1 %i.ayd, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  store i32 0, ptr %i.ayb, align 8, !tbaa !675
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aya, i64 12
  store i32 0, ptr %i.ayf, align 4, !tbaa !676
  %i.ayg = load ptr, ptr %i.aya, align 8, !tbaa !466
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayi = load ptr, ptr %i.ayh, align 8
  call void %i.ayi(ptr noundef nonnull align 8 dereferenceable(16) %i.aya) #34, !inline_history !5
  %i.ayj = load ptr, ptr %i.aya, align 8, !tbaa !466
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 24
  %i.ayl = load ptr, ptr %i.ayk, align 8
  call void %i.ayl(ptr noundef nonnull align 8 dereferenceable(16) %i.aya) #34, !inline_history !5
  br label %bb.ld

bb.kz:                                            ; preds = %bb.kx
  %i.aym = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i843 = icmp eq i8 %i.aym, 0
  br i1 %.not.i.i.i.i.i.i.i843, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ayn = add nsw i32 %i.aye, -1
  store i32 %i.ayn, ptr %i.ayb, align 8, !tbaa !669
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i844

bb.lb:                                            ; preds = %bb.kz
  %i.ayo = atomicrmw volatile add ptr %i.ayb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i844

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i844: ; preds = %bb.lb, %bb.la
  %.0.i.i.i.i.i.i.i.i845 = phi i32 [ %i.aye, %bb.la ], [ %i.ayo, %bb.lb ]
  %i.ayp = icmp eq i32 %.0.i.i.i.i.i.i.i.i845, 1
  br i1 %i.ayp, label %bb.lc, label %bb.ld, !prof !672

bb.lc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i844
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aya) #34
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i844, %bb.ky, %bb.kw, %bb.kv
  %i.ayq = load i8, ptr %44, align 8, !tbaa !694
  %i.ayr = icmp eq i8 %i.ayq, 0
  %i.ays = load i8, ptr %52, align 8
  %i.ayt = icmp eq i8 %i.ays, 0
  %or.cond1215 = select i1 %i.ayr, i1 %i.ayt, i1 false
  br i1 %or.cond1215, label %bb.le, label %bb.lg

bb.le:                                            ; preds = %bb.ld
  invoke void @_ZN7rocksdb6DBImpl26UpdateFIFOCompactionStatusERKSt10unique_ptrINS_10CompactionESt14default_deleteIS2_EE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %.loopexit1229 unwind label %.loopexit.split-lp1231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lf:                                            ; preds = %_ZN7rocksdb8IOStatusaSERKS0_.exit841
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #34
  br label %.loopexit.split-lp1231

bb.lg:                                            ; preds = %bb.ld
  %i.ayv = load ptr, ptr %42, align 8, !tbaa !1278
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 11528
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !1266 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !1265 ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayx, i64 16
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !1265 ; 2 uses
  %i.azc = icmp eq ptr %i.ayz, %i.azb
  br i1 %i.azc, label %.loopexit1229, label %.lr.ph1376

.lr.ph1376:                                       ; preds = %bb.lg
  %i.azd = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 4 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 4 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 4 uses
  br label %bb.lh

bb.lh:                                            ; preds = %.lr.ph1376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885
  %.sroa.01114.01374 = phi ptr [ %i.ayz, %.lr.ph1376 ], [ %i.bbj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #34
  %i.azg = load ptr, ptr %42, align 8, !tbaa !1278
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 824
  %i.azi = load ptr, ptr %.sroa.01114.01374, align 8, !tbaa !1016
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !683 ; 2 uses
  %i.azl = and i64 %i.azk, 4611686018427387903
  %i.azm = lshr i64 %i.azk, 62
  %i.azn = trunc nuw nsw i64 %i.azm to i32
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(24) %i.azh, i64 noundef %i.azl, i32 noundef %i.azn)
          to label %bb.li unwind label %bb.ls

bb.li:                                            ; preds = %bb.lh
  %i.azo = load ptr, ptr %42, align 8, !tbaa !1278 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 9136
  %i.azq = load ptr, ptr %i.azp, align 16, !tbaa !1324
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 8
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !64
  %i.azt = load ptr, ptr %83, align 8, !tbaa !64
  %i.azu = load ptr, ptr %.sroa.01114.01374, align 8, !tbaa !1016
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 191 ; 2 uses
  %i.azw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i847 = icmp eq ptr %i.azw, null
  br i1 %.not10.i.i.i.i847, label %.critedge.i858, label %.lr.ph.i.i.i.i848

.lr.ph.i.i.i.i848:                                ; preds = %bb.li
  %i.azx = load i8, ptr %i.azv, align 1, !tbaa !1044 ; 2 uses
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lj, %.lr.ph.i.i.i.i848
  %.012.i.i.i.i849 = phi ptr [ %i.azw, %.lr.ph.i.i.i.i848 ], [ %.1.i.i.i.i854, %bb.lj ] ; 3 uses
  %.0811.i.i.i.i850 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i848 ], [ %.19.i.i.i.i851, %bb.lj ]
  %i.azy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i849, i64 32
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !1044
  %i.baa = icmp ult i8 %i.azz, %i.azx             ; 2 uses
  %.19.i.i.i.i851 = select i1 %i.baa, ptr %.0811.i.i.i.i850, ptr %.012.i.i.i.i849 ; 5 uses
  %.1.in.v.i.i.i.i852 = select i1 %i.baa, i64 24, i64 16
  %.1.in.i.i.i.i853 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i849, i64 %.1.in.v.i.i.i.i852
  %.1.i.i.i.i854 = load ptr, ptr %.1.in.i.i.i.i853, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i855 = icmp eq ptr %.1.i.i.i.i854, null
  br i1 %.not.i.i.i.i855, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i856, label %bb.lj, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i856: ; preds = %bb.lj
  %i.bab = icmp eq ptr %.19.i.i.i.i851, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.bab, label %.critedge.i858, label %bb.lk

bb.lk:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i856
  %i.bac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i851, i64 32
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !1044
  %i.bae = icmp ult i8 %i.azx, %i.bad
  br i1 %i.bae, label %.critedge.i858, label %bb.ll

.critedge.i858:                                   ; preds = %bb.lk, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i856, %bb.li
  %.08.lcssa.i.i.i11.i859 = phi ptr [ %.19.i.i.i.i851, %bb.lk ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i856 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.li ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store ptr %i.azv, ptr %12, align 8, !tbaa !668
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.baf = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i859, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc860 unwind label %bb.lt

.noexc860:                                        ; preds = %.critedge.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %.pre1391 = load ptr, ptr %42, align 8, !tbaa !1278
  br label %bb.ll

bb.ll:                                            ; preds = %.noexc860, %bb.lk
  %i.bag = phi ptr [ %.pre1391, %.noexc860 ], [ %i.azo, %bb.lk ]
  %.sroa.06.0.i857 = phi ptr [ %i.baf, %.noexc860 ], [ %.19.i.i.i.i851, %bb.lk ]
  %i.bah = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i857, i64 40
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #34
  %i.baj = invoke noundef zeroext i8 @_ZNK7rocksdb10Compaction20GetOutputTemperatureEb(ptr noundef nonnull align 16 dereferenceable(12020) %i.bag, i1 noundef zeroext false)
          to label %bb.lm unwind label %bb.lu     ; 3 uses

bb.lm:                                            ; preds = %bb.ll
  store i8 %i.baj, ptr %i.o, align 1, !tbaa !1044
  %i.bak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !698 ; 2 uses
  %.not10.i.i.i.i862 = icmp eq ptr %i.bak, null
  br i1 %.not10.i.i.i.i862, label %.critedge.i873, label %.lr.ph.i.i.i.i863

.lr.ph.i.i.i.i863:                                ; preds = %bb.lm, %.lr.ph.i.i.i.i863
  %.012.i.i.i.i864 = phi ptr [ %.1.i.i.i.i869, %.lr.ph.i.i.i.i863 ], [ %i.bak, %bb.lm ] ; 3 uses
  %.0811.i.i.i.i865 = phi ptr [ %.19.i.i.i.i866, %.lr.ph.i.i.i.i863 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.lm ]
  %i.bal = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i864, i64 32
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !1044
  %i.ban = icmp ult i8 %i.bam, %i.baj             ; 2 uses
  %.19.i.i.i.i866 = select i1 %i.ban, ptr %.0811.i.i.i.i865, ptr %.012.i.i.i.i864 ; 5 uses
  %.1.in.v.i.i.i.i867 = select i1 %i.ban, i64 24, i64 16
  %.1.in.i.i.i.i868 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i864, i64 %.1.in.v.i.i.i.i867
  %.1.i.i.i.i869 = load ptr, ptr %.1.in.i.i.i.i868, align 8, !tbaa !1347 ; 2 uses
  %.not.i.i.i.i870 = icmp eq ptr %.1.i.i.i.i869, null
  br i1 %.not.i.i.i.i870, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i871, label %.lr.ph.i.i.i.i863, !llvm.loop !2287

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i871: ; preds = %.lr.ph.i.i.i.i863
  %i.bao = icmp eq ptr %.19.i.i.i.i866, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.bao, label %.critedge.i873, label %bb.ln

bb.ln:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i871
  %i.bap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i866, i64 32
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !1044
  %i.bar = icmp ult i8 %i.baj, %i.baq
  br i1 %i.bar, label %.critedge.i873, label %bb.lo

.critedge.i873:                                   ; preds = %bb.ln, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i871, %bb.lm
  %.08.lcssa.i.i.i11.i874 = phi ptr [ %.19.i.i.i.i866, %bb.ln ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i871 ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.lm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %i.o, ptr %10, align 8, !tbaa !668, !alias.scope !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.bas = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i874, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc875 unwind label %bb.lu

.noexc875:                                        ; preds = %.critedge.i873
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.lo

bb.lo:                                            ; preds = %.noexc875, %bb.ln
  %.sroa.06.0.i872 = phi ptr [ %i.bas, %.noexc875 ], [ %.19.i.i.i.i866, %bb.ln ]
  %i.bat = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i872, i64 40
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr noundef nonnull align 8 dereferenceable(16) %44)
          to label %bb.lp unwind label %bb.lv

bb.lp:                                            ; preds = %bb.lo
  %i.bav = load ptr, ptr %84, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #34
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %85, ptr noundef nonnull align 8 dereferenceable(16) %52)
          to label %bb.lq unwind label %bb.lw

bb.lq:                                            ; preds = %bb.lp
  %i.baw = load ptr, ptr %85, align 8, !tbaa !64
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %4, ptr noundef nonnull @.str.123, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.azs, ptr noundef %i.azt, ptr noundef %i.bai, ptr noundef %i.bau, ptr noundef %i.bav, ptr noundef %i.baw)
          to label %bb.lr unwind label %bb.lx

bb.lr:                                            ; preds = %bb.lq
  %i.bax = load ptr, ptr %85, align 8, !tbaa !64  ; 2 uses
  %i.bay = icmp eq ptr %i.bax, %i.azd
  br i1 %i.bay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877: ; preds = %bb.lr
  %i.baz = load i64, ptr %i.azd, align 8, !tbaa !65
  %i.bba = add i64 %i.baz, 1
  call void @_ZdlPvm(ptr noundef %i.bax, i64 noundef %i.bba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879: ; preds = %bb.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #34
  %i.bbb = load ptr, ptr %84, align 8, !tbaa !64  ; 2 uses
  %i.bbc = icmp eq ptr %i.bbb, %i.aze
  br i1 %i.bbc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879
  %i.bbd = load i64, ptr %i.aze, align 8, !tbaa !65
  %i.bbe = add i64 %i.bbd, 1
  call void @_ZdlPvm(ptr noundef %i.bbb, i64 noundef %i.bbe) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  %i.bbf = load ptr, ptr %83, align 8, !tbaa !64  ; 2 uses
  %i.bbg = icmp eq ptr %i.bbf, %i.azf
  br i1 %i.bbg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882
  %i.bbh = load i64, ptr %i.azf, align 8, !tbaa !65
  %i.bbi = add i64 %i.bbh, 1
  call void @_ZdlPvm(ptr noundef %i.bbf, i64 noundef %i.bbi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #34
  %i.bbj = getelementptr inbounds nuw i8, ptr %.sroa.01114.01374, i64 8 ; 2 uses
  %i.bbk = icmp eq ptr %i.bbj, %i.azb
  br i1 %i.bbk, label %.loopexit1229, label %bb.lh

bb.ls:                                            ; preds = %bb.lh
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894

bb.lt:                                            ; preds = %.critedge.i858
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.lu:                                            ; preds = %.critedge.i873, %bb.ll
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ly

bb.lv:                                            ; preds = %bb.lo
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

bb.lw:                                            ; preds = %bb.lp
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888

bb.lx:                                            ; preds = %bb.lq
  %i.bbq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbr = load ptr, ptr %85, align 8, !tbaa !64  ; 2 uses
  %i.bbs = icmp eq ptr %i.bbr, %i.azd
  br i1 %i.bbs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886: ; preds = %bb.lx
  %i.bbt = load i64, ptr %i.azd, align 8, !tbaa !65
  %i.bbu = add i64 %i.bbt, 1
  call void @_ZdlPvm(ptr noundef %i.bbr, i64 noundef %i.bbu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888: ; preds = %bb.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886, %bb.lw
  %.pn416 = phi { ptr, i32 } [ %i.bbp, %bb.lw ], [ %i.bbq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886 ], [ %i.bbq, %bb.lx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #34
  %i.bbv = load ptr, ptr %84, align 8, !tbaa !64  ; 2 uses
  %i.bbw = icmp eq ptr %i.bbv, %i.aze
  br i1 %i.bbw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888
  %i.bbx = load i64, ptr %i.aze, align 8, !tbaa !65
  %i.bby = add i64 %i.bbx, 1
  call void @_ZdlPvm(ptr noundef %i.bbv, i64 noundef %i.bby) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889, %bb.lv
  %.pn416.pn = phi { ptr, i32 } [ %i.bbo, %bb.lv ], [ %.pn416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889 ], [ %.pn416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #34
  br label %bb.ly

bb.ly:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, %bb.lu
  %.pn416.pn.pn = phi { ptr, i32 } [ %.pn416.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891 ], [ %i.bbn, %bb.lu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #34
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lt
  %.pn416.pn.pn.pn = phi { ptr, i32 } [ %.pn416.pn.pn, %bb.ly ], [ %i.bbm, %bb.lt ] ; 2 uses
  %i.bbz = load ptr, ptr %83, align 8, !tbaa !64  ; 2 uses
  %i.bca = icmp eq ptr %i.bbz, %i.azf
  br i1 %i.bca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892: ; preds = %bb.lz
  %i.bcb = load i64, ptr %i.azf, align 8, !tbaa !65
  %i.bcc = add i64 %i.bcb, 1
  call void @_ZdlPvm(ptr noundef %i.bbz, i64 noundef %i.bcc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892, %bb.ls
  %.pn416.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bbl, %bb.ls ], [ %.pn416.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892 ], [ %.pn416.pn.pn.pn, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #34
  br label %.loopexit.split-lp1231

.loopexit1229:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885, %bb.lg, %bb.le
  store i8 1, ptr %2, align 1, !tbaa !87
  %i.bcd = load ptr, ptr %57, align 8, !tbaa !952 ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !967 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bcd, %i.bcf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit1229, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bcg, %.lr.ph.i.i.i ], [ %i.bcd, %.loopexit1229 ] ; 2 uses
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %.05.i.i.i) #34
  %i.bcg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i895 = icmp eq ptr %i.bcg, %i.bcf
  br i1 %.not.i.i.i895, label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i896 = load ptr, ptr %57, align 8, !tbaa !952
  br label %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.loopexit1229
  %i.bch = phi ptr [ %.pr.i896, %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bcd, %.loopexit1229 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bch, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EED2Ev.exit, label %bb.ma

bb.ma:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i
  %i.bci = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !953
  %i.bck = ptrtoint ptr %i.bcj to i64
  %i.bcl = ptrtoint ptr %i.bch to i64
  %i.bcm = sub i64 %i.bck, %i.bcl
  call void @_ZdlPvm(ptr noundef nonnull %i.bch, i64 noundef %i.bcm) #33
  br label %_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12FileMetaDataES1_EvT_S3_RSaIT0_E.exit.i, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  br label %bb.qi

.loopexit.split-lp1231:                           ; preds = %.loopexit.split-lp1231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894, %bb.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812
  %.pn422 = phi { ptr, i32 } [ %i.awn, %_ZNSt14_Function_baseD2Ev.exit830 ], [ %.pn416.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894 ], [ %i.ayu, %bb.lf ], [ %.pn402.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ], [ %lpad.loopexit.split-lp1748, %.loopexit.split-lp1231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN7rocksdb12FileMetaDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %57) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #34
  br label %.loopexit.split-lp

_ZNK7rocksdb10Compaction26is_trivial_copy_compactionEv.exit.thread: ; preds = %bb.el, %_ZNK7rocksdb10Compaction26is_trivial_copy_compactionEv.exit
  br i1 %i.af, label %bb.no, label %bb.mb

bb.mb:                                            ; preds = %_ZNK7rocksdb10Compaction26is_trivial_copy_compactionEv.exit.thread
  %i.bcn = invoke noundef zeroext i1 @_ZNK7rocksdb10Compaction13IsTrivialMoveEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.oi)
          to label %bb.mc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_1
