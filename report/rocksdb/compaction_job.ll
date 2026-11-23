Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob26FinishCompactionOutputFileERKNS_6StatusERKNS_17ParsedInternalKeyERKNS_5SliceEPS8_SA_PKNS_18CompactionIteratorEPNS_18SubcompactionStateERNS_17CompactionOutputsE:._crit_edge.i.i
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(72) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i8, ptr %30, align 8, !tbaa !500
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load ptr, ptr %i.ct, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !72
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !391
  %i.hw = getelementptr inbounds i8, ptr %i.b, i64 -314
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !1698, !range !408, !noundef !409
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = select i1 %i.hy, ptr @.str.106, ptr @.str
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull @.str.105, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.ht, i32 noundef %i.hv, i64 noundef %i.f, ptr noundef nonnull %i.hz)
          to label %bb.bb unwind label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.az:                                            ; preds = %bb.av
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit192

bb.ba:                                            ; preds = %bb.ax
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !437 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i189, label %_ZN7rocksdb6StatusD2Ev.exit192, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190: ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit192

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !784 ; 4 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -504 ; 2 uses
  store ptr %i.ig, ptr %i.a, align 8, !tbaa !784
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 -8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !394 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 4 uses
  %i.ik = load atomic i64, ptr %i.ij acquire, align 8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 4294967297
  %i.im = trunc i64 %i.ik to i32                  ; 2 uses
  br i1 %i.il, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.ij, align 8, !tbaa !397
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !398
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !75
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37, !inline_history !1690
  %i.ir = load ptr, ptr %i.ii, align 8, !tbaa !75
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37, !inline_history !1690
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !381
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.bf ], [ %i.iw, %bb.bg ]
  %i.ix = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ix, label %bb.bh, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !385

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bd, %bb.bb
  %i.iy = getelementptr inbounds i8, ptr %i.if, i64 -72
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !72 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.if, i64 -56 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !73
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #34
  br label %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit

_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit: ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(504) %i.ig) #37
  %i.je = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !437 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i193, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194: ; preds = %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jf) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit196

_ZN7rocksdb6StatusD2Ev.exit196:                   ; preds = %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.jg = load ptr, ptr %29, align 8, !tbaa !72   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit196
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !73
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %.pre342 = load i8, ptr %0, align 8, !tbaa !500
  br label %bb.bi

_ZN7rocksdb6StatusD2Ev.exit192:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190, %bb.ba, %bb.az
  %.pn119 = phi { ptr, i32 } [ %i.ib, %bb.az ], [ %i.ic, %bb.ba ], [ %i.ic, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.jl = load ptr, ptr %29, align 8, !tbaa !72   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZN7rocksdb6StatusD2Ev.exit192
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !73
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZN7rocksdb6StatusD2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.ay
  %.pn119.pn = phi { ptr, i32 } [ %i.ia, %bb.ay ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %.pn119, %_ZN7rocksdb6StatusD2Ev.exit192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.ds

bb.bi:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.jq = phi i8 [ %.pre342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre341, %bb.at ]
  %.0 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.at ] ; 6 uses
  %i.jr = icmp eq i8 %i.jq, 0
  br i1 %i.jr, label %bb.bj, label %.thread428

bb.bj:                                            ; preds = %bb.bi
  %i.js = load i64, ptr %i.hb, align 8
  %i.jt = icmp eq i64 %i.js, 0
  %or.cond7.not = select i1 %i.ha, i1 %i.jt, i1 false
  br i1 %or.cond7.not, label %.thread428, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN7rocksdb17CompactionOutputs21UpdateTablePropertiesEv(ptr noundef nonnull align 8 dereferenceable(544) %9)
          to label %bb.bl unwind label %bb.ar

bb.bl:                                            ; preds = %bb.bk
  %i.ju = load ptr, ptr %i.ct, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.jv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !72
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !391
  %i.jz = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1699
  %i.kb = getelementptr inbounds nuw i8, ptr %.0, i64 190
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !1698, !range !408, !noundef !409
  %i.kd = getelementptr inbounds nuw i8, ptr %.0, i64 191 ; 2 uses
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !862 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bl
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !1090 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.bm ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.bm ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !1090
  %i.ki = icmp ult i8 %i.kh, %i.kf                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ki, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ki, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %bb.bm, !llvm.loop !1691

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.bm
  %i.kj = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.kj, label %.critedge.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !1090
  %i.km = icmp ult i8 %i.kf, %i.kl
  br i1 %i.km, label %.critedge.i, label %bb.bo

.critedge.i:                                      ; preds = %bb.bn, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.bl
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.bn ], [ %.19.i.i.i.i, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  store ptr %i.kd, ptr %14, align 8, !tbaa !395
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.kn = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc200 unwind label %bb.ar

.noexc200:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc200, %bb.bn
  %.sroa.06.0.i = phi ptr [ %i.kn, %.noexc200 ], [ %.19.i.i.i.i, %bb.bn ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.kp = trunc nuw i8 %i.kc to i1
  %i.kq = select i1 %i.kp, ptr @.str.106, ptr @.str
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !72
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull @.str.107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.jw, i32 noundef %i.jy, i64 noundef %i.f, i64 noundef %i.bs, i64 noundef %i.ka, ptr noundef nonnull %i.kq, ptr noundef %i.ks)
          to label %.thread428 unwind label %bb.ar

.thread428:                                       ; preds = %bb.ap, %bb.bo, %bb.bj, %bb.bi
  %.0430 = phi ptr [ %.0, %bb.bi ], [ %.0, %bb.bo ], [ %.0, %bb.bj ], [ %i.c, %bb.ap ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 8 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !383
  %i.ku = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  store i64 0, ptr %i.ku, align 8, !tbaa !384
  store i8 0, ptr %i.kt, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %32, i8 0, i64 16, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.kw = invoke noundef i64 @_ZN7rocksdb23PackFileNumberAndPathIdEmm(i64 noundef 0, i64 noundef 0)
          to label %bb.bp unwind label %bb.cc

bb.bp:                                            ; preds = %.thread428
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !632
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i64 0, ptr %i.kx, align 8, !tbaa !605
  %i.ky = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i64 72057594037927935, ptr %i.ky, align 8, !tbaa !1091
  %i.kz = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i64 0, ptr %i.kz, align 8, !tbaa !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.la = load <4 x i8>, ptr %0, align 8, !tbaa !73
  store <4 x i8> %i.la, ptr %33, align 8, !tbaa !73
  %i.lb = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 2 uses
  %i.lc = load i8, ptr %i.q, align 4, !tbaa !504, !range !408, !noundef !409
  store i8 %i.lc, ptr %i.lb, align 4, !tbaa !504
  %i.ld = getelementptr inbounds nuw i8, ptr %33, i64 5 ; 2 uses
  %i.le = load i8, ptr %i.t, align 1, !tbaa !505
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !505
  %i.lf = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 9 uses
  store ptr null, ptr %i.lf, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.lg = load ptr, ptr %i.w, align 8, !tbaa !437 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i202, label %.thread.i214, label %bb.bq

.thread.i214:                                     ; preds = %bb.bp
  store ptr null, ptr %i.lf, align 8, !tbaa !437
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull %i.lg)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.pre.i206 = load ptr, ptr %13, align 8, !tbaa !437
  %.pre16.i207 = load ptr, ptr %i.lf, align 8, !tbaa !437 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !437
  store ptr %.pre.i206, ptr %i.lf, align 8, !tbaa !437
  %.not.i.i.i.i.i208 = icmp eq ptr %.pre16.i207, null
  br i1 %.not.i.i.i.i.i208, label %bb.bt, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209: ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i207) #34
  %.pr.i210 = load ptr, ptr %13, align 8, !tbaa !437 ; 2 uses
  %.not.i11.i211 = icmp eq ptr %.pr.i210, null
  br i1 %.not.i11.i211, label %bb.bt, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209
  call void @_ZdaPv(ptr noundef nonnull %.pr.i210) #34
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !437 ; 2 uses
  %.not.i12.i203 = icmp eq ptr %i.li, null
  br i1 %.not.i12.i203, label %.body215, label %.body215.sink.split

bb.bt:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209, %bb.br, %.thread.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.lj = icmp ne ptr %.0430, null                ; 3 uses
  br i1 %i.lj, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  %i.lk = getelementptr inbounds nuw i8, ptr %.0430, i64 16 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !632
  %i.lm = and i64 %i.ll, 4611686018427387903
  %i.ln = load ptr, ptr %1, align 8, !tbaa !75
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(1896) %1, i64 noundef %i.lm)
          to label %bb.bv unwind label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load ptr, ptr %31, align 8, !tbaa !72   ; 6 uses
  %i.lr = icmp eq ptr %i.lq, %i.kt
  %i.ls = load ptr, ptr %34, align 8, !tbaa !72   ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt                ; 2 uses
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bv
  br i1 %i.lu, label %bb.bw, label %.thread.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bv
  br i1 %i.lu, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !384 ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 16
  call void @llvm.assume(i1 %i.lx)
  switch i64 %i.lw, label %bb.by [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.ly = load i8, ptr %i.ls, align 1, !tbaa !73
  store i8 %i.ly, ptr %i.lq, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr align 1 %i.ls, i64 %i.lw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.by, %bb.bx, %bb.bw
  %i.lz = load i64, ptr %i.lv, align 8, !tbaa !384 ; 2 uses
  store i64 %i.lz, ptr %i.ku, align 8, !tbaa !384
  %i.ma = load ptr, ptr %31, align 8, !tbaa !72
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lz
  store i8 0, ptr %i.mb, align 1, !tbaa !73
  %.pre.i219 = load ptr, ptr %34, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i220:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ls, ptr %31, align 8, !tbaa !72
  %i.mc = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.md = load <2 x i64>, ptr %i.mc, align 8, !tbaa !73
  store <2 x i64> %i.md, ptr %i.ku, align 8, !tbaa !73
  br label %bb.ca

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.me = load i64, ptr %i.kt, align 8, !tbaa !73
  store ptr %i.ls, ptr %31, align 8, !tbaa !72
  %i.mf = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.mg = load <2 x i64>, ptr %i.mf, align 8, !tbaa !73
  store <2 x i64> %i.mg, ptr %i.ku, align 8, !tbaa !73
  %.not.i218 = icmp eq ptr %i.lq, null
  br i1 %.not.i218, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.lq, ptr %34, align 8, !tbaa !72
  store i64 %i.me, ptr %i.lt, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i220
  store ptr %i.lt, ptr %34, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bz, %bb.ca
  %i.mh = phi ptr [ %.pre.i219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.lq, %bb.bz ], [ %i.lt, %bb.ca ]
  %i.mi = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.mi, align 8, !tbaa !384
  store i8 0, ptr %i.mh, align 1, !tbaa !73
  %i.mj = load ptr, ptr %34, align 8, !tbaa !72   ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !73
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  %i.mo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb17PinnedTableReaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %.0430)
          to label %bb.cb unwind label %bb.cq     ; 0 uses

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.mp = load <4 x i64>, ptr %i.lk, align 8, !tbaa !421
  store <4 x i64> %i.mp, ptr %i.kv, align 8, !tbaa !421
end_hunk_0
