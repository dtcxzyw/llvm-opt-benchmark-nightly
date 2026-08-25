Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/plain_table_builder?download=true
inline.NumInlined: 1297
inline.NumDeleted: 661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb17PlainTableBuilder3AddERKNS_5SliceES3_:bb.a
_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i58: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr84) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit59

_ZN7rocksdb6StatusD2Ev.exit59:                    ; preds = %bb.y, %_ZN7rocksdb8IOStatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.eb = load i8, ptr %i.al, align 8, !tbaa !131, !range !324, !noundef !141
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit59
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !133
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !132 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = invoke { ptr, i64 } %i.ek(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %.noexc60 unwind label %bb.ad, !inline_history !332 ; 2 uses

.noexc60:                                         ; preds = %bb.aa
  %i.em = extractvalue { ptr, i64 } %i.el, 0
  %i.en = extractvalue { ptr, i64 } %i.el, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc60, %bb.z
  %.sroa.3.0.i.i = phi i64 [ %i.en, %.noexc60 ], [ 0, %bb.z ]
  %.sroa.0.0.i.i = phi ptr [ %i.em, %.noexc60 ], [ @.str, %bb.z ]
  invoke void @_ZN7rocksdb22PlainTableIndexBuilder12AddKeyPrefixENS_5SliceEj(ptr noundef nonnull align 8 dereferenceable(1992) %i.ee, ptr %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i, i32 noundef %i.df)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.av

bb.ad:                                            ; preds = %bb.aa, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ae:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit59, %bb.ab
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !14 ; 2 uses
  %i.es = load i8, ptr %i.dj, align 8, !tbaa !193
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.af, label %.thread92

bb.af:                                            ; preds = %bb.ae
  %i.eu = trunc i64 %i.er to i32
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !298
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  %i.ex = invoke noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.ew, i32 noundef %i.eu)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.a to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  store i64 %i.fa, ptr %i.b, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.fb = load ptr, ptr %i.dh, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr %i.a, ptr %12, align 8, !tbaa !9
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.fa, ptr %i.fc, align 8, !tbaa !14
  invoke void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %11, ptr noundef nonnull align 8 dereferenceable(258) %i.fb, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 0)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fd = load i8, ptr %11, align 8, !tbaa !328
  store i8 %i.fd, ptr %i.dj, align 8, !tbaa !193
  store i8 0, ptr %11, align 8, !tbaa !193
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !329
  store i8 %i.ff, ptr %i.dn, align 1, !tbaa !330
  store i8 0, ptr %i.fe, align 1, !tbaa !330
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !331, !range !324, !noundef !141
  store i8 %i.fh, ptr %i.dq, align 1, !tbaa !331
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !325, !range !324, !noundef !141
  store i8 %i.fj, ptr %i.dt, align 4, !tbaa !325
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !326
  store i8 %i.fl, ptr %i.dw, align 1, !tbaa !326
  store i8 0, ptr %i.fk, align 1, !tbaa !326
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !194
  store ptr null, ptr %i.fm, align 8, !tbaa !194
  %i.fo = load ptr, ptr %i.dy, align 16, !tbaa !194 ; 2 uses
  store ptr %i.fn, ptr %i.dy, align 16, !tbaa !194
  %.not.i.i.i.i.i62 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i62, label %_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread, label %_ZN7rocksdb8IOStatusaSEOS0_.exit64

_ZN7rocksdb8IOStatusaSEOS0_.exit64:               ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.fo) #29
  %.pr86 = load ptr, ptr %i.fm, align 8, !tbaa !194 ; 2 uses
  %.not.i.i65 = icmp eq ptr %.pr86, null
  br i1 %.not.i.i65, label %_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit64
  call void @_ZdaPv(ptr noundef nonnull %.pr86) #29
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread

bb.ai:                                            ; preds = %bb.ar, %.thread92
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aj:                                            ; preds = %bb.af
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ak:                                            ; preds = %bb.ag
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.av

_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread:        ; preds = %bb.ah, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66, %_ZN7rocksdb8IOStatusaSEOS0_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.pr88 = load i8, ptr %i.dj, align 8, !tbaa !193
  %i.fs = icmp eq i8 %.pr88, 0
  br i1 %i.fs, label %bb.al, label %.thread92

bb.al:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ft = load ptr, ptr %i.dh, align 8, !tbaa !36
  invoke void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %13, ptr noundef nonnull align 8 dereferenceable(258) %i.ft, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fu = load i8, ptr %13, align 8, !tbaa !328
  store i8 %i.fu, ptr %i.dj, align 8, !tbaa !193
  store i8 0, ptr %13, align 8, !tbaa !193
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !329
  store i8 %i.fw, ptr %i.dn, align 1, !tbaa !330
  store i8 0, ptr %i.fv, align 1, !tbaa !330
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !331, !range !324, !noundef !141
  store i8 %i.fy, ptr %i.dq, align 1, !tbaa !331
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ga = load i8, ptr %i.fz, align 4, !tbaa !325, !range !324, !noundef !141
  store i8 %i.ga, ptr %i.dt, align 4, !tbaa !325
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !326
  store i8 %i.gc, ptr %i.dw, align 1, !tbaa !326
  store i8 0, ptr %i.gb, align 1, !tbaa !326
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !194
  store ptr null, ptr %i.gd, align 8, !tbaa !194
  %i.gf = load ptr, ptr %i.dy, align 16, !tbaa !194 ; 2 uses
  store ptr %i.ge, ptr %i.dy, align 16, !tbaa !194
  %.not.i.i.i.i.i69 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i69, label %_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread, label %_ZN7rocksdb8IOStatusaSEOS0_.exit71

_ZN7rocksdb8IOStatusaSEOS0_.exit71:               ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.gf) #29
  %.pr89 = load ptr, ptr %i.gd, align 8, !tbaa !194 ; 2 uses
  %.not.i.i72 = icmp eq ptr %.pr89, null
  br i1 %.not.i.i72, label %_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit71
  call void @_ZdaPv(ptr noundef nonnull %.pr89) #29
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread

bb.an:                                            ; preds = %bb.al
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.av

_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread:        ; preds = %bb.am, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i73, %_ZN7rocksdb8IOStatusaSEOS0_.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.gh = and i64 %i.er, 4294967295
  %i.gi = load i64, ptr %i.b, align 8, !tbaa !298
  %i.gj = add i64 %i.gi, %i.gh
  %i.gk = load i64, ptr %i.dd, align 16, !tbaa !102
  %i.gl = add i64 %i.gj, %i.gk
  store i64 %i.gl, ptr %i.dd, align 16, !tbaa !102
  %.pr91 = load i8, ptr %i.dj, align 8, !tbaa !193
  %i.gm = icmp eq i8 %.pr91, 0
  br i1 %i.gm, label %bb.ao, label %.thread92

bb.ao:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !333
  %i.gp = add i64 %i.go, 1
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !333
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !14
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 2 uses
  %i.gr = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.gs = load <2 x i64>, ptr %i.gq, align 8, !tbaa !298
  %16 = insertelement <2 x i64> poison, i64 %15, i64 0
  %i.gt = insertelement <2 x i64> %16, i64 %i.gr, i64 1
  %i.gu = add <2 x i64> %i.gs, %i.gt
  store <2 x i64> %i.gu, ptr %i.gq, align 8, !tbaa !298
  %i.gv = load i8, ptr %i.o, align 8, !tbaa !322
  switch i8 %i.gv, label %.thread92 [
    i8 7, label %.thread92.sink.split
    i8 0, label %.thread92.sink.split
    i8 2, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  br label %.thread92.sink.split

.thread92.sink.split:                             ; preds = %bb.ao, %bb.ao, %bb.ap
  %.sink117 = phi i64 [ 2592, %bb.ap ], [ 2584, %bb.ao ], [ 2584, %bb.ao ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink117 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !298
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !298
  br label %.thread92

.thread92:                                        ; preds = %.thread92.sink.split, %bb.ae, %_ZN7rocksdb8IOStatusaSEOS0_.exit64.thread, %bb.ao, %_ZN7rocksdb8IOStatusaSEOS0_.exit71.thread
  %i.gz = load i64, ptr %i.dd, align 16, !tbaa !102
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.hc = load ptr, ptr %i.hb, align 16, !tbaa !140, !nonnull !141, !align !142
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 592
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !195
  %i.hf = invoke noundef zeroext i1 @_ZN7rocksdb33NotifyCollectTableCollectorsOnAddERKNS_5SliceES2_mRKSt6vectorISt10unique_ptrINS_19InternalTblPropCollESt14default_deleteIS5_EESaIS8_EEPNS_6LoggerE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef %i.he)
          to label %bb.aq unwind label %bb.ai     ; 0 uses

bb.aq:                                            ; preds = %.thread92
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.hh = load <4 x i8>, ptr %i.dj, align 8, !tbaa !28
  store <4 x i8> %i.hh, ptr %i.hg, align 8, !tbaa !28
  %i.hi = load i8, ptr %i.dt, align 4, !tbaa !325, !range !324, !noundef !141
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 2412
  store i8 %i.hi, ptr %i.hj, align 4, !tbaa !325
  %i.hk = load i8, ptr %i.dw, align 1, !tbaa !326
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 2413
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.hm = load ptr, ptr %i.dy, align 16, !tbaa !194 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i76, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.14") align 8 %3, ptr noundef nonnull %i.hm)
          to label %.noexc79 unwind label %bb.ai

.noexc79:                                         ; preds = %bb.ar
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !194
  br label %bb.as

bb.as:                                            ; preds = %.noexc79, %bb.aq
  %i.hn = phi ptr [ %.pre.i, %.noexc79 ], [ null, %bb.aq ]
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !194
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !194 ; 2 uses
  store ptr %i.hn, ptr %i.ho, align 16, !tbaa !194
  %.not.i.i.i.i.i77 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i.i77, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.as
  call void @_ZdaPv(ptr noundef nonnull %i.hp) #29
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !194  ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #29
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %bb.as, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.at

bb.at:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %_ZN7rocksdb6StatusD2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.hq = load ptr, ptr %i.i, align 8, !tbaa !334 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.hr, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.hq, %bb.at ] ; 6 uses
  %i.hr = load ptr, ptr %.06.i.i.i, align 8, !tbaa !335 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !25 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !28
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !25 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !28
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #29
  %.not.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !336

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.at
  %i.ie = load ptr, ptr %i.f, align 8, !tbaa !315
  %i.if = load i64, ptr %i.h, align 8, !tbaa !316
  %i.ig = shl i64 %i.if, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ie, i8 0, i64 %i.ig, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !315 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.g
  br i1 %i.ii, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ij = load i64, ptr %i.h, align 8, !tbaa !316
  %i.ik = shl i64 %i.ij, 3
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.av:                                            ; preds = %bb.w, %bb.x, %bb.ac, %bb.ad, %bb.aj, %bb.ak, %bb.an, %bb.ai, %bb.o, %bb.f, %bb.c
  %.pn32 = phi { ptr, i32 } [ %i.ak, %bb.f ], [ %i.db, %bb.w ], [ %i.bu, %bb.o ], [ %i.fq, %bb.aj ], [ %i.t, %bb.c ], [ %i.eo, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.fp, %bb.ai ], [ %i.gg, %bb.an ], [ %i.fr, %bb.ak ], [ %i.dc, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn32
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = icmp ult i64 %i.b, 8
  br i1 %i.c, label %_ZNSt7__cxx119to_stringEm.exit, label %bb.l

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !108, !alias.scope !337
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !109, !alias.scope !337
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !28
  %i.g = trunc nuw nsw i64 %i.b to i8
  %i.h = or disjoint i8 %i.g, 48
  store i8 %i.h, ptr %i.d, align 8, !tbaa !28
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.49, i64 noundef 44)
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !108, !alias.scope !340
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109  ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.q, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.k, ptr %6, align 8, !tbaa !25, !alias.scope !340
  %i.r = load i64, ptr %i.l, align 8, !tbaa !28
end_hunk_0
