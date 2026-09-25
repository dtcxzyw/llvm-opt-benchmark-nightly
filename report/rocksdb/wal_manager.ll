Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wal_manager?download=true
inline.NumInlined: 1462
inline.NumDeleted: 630
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb10WalManager15ReadFirstRecordENS_11WalFileTypeEmPm:bb.a
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %.noexc
  store ptr %i.dh, ptr %7, align 8, !tbaa !26, !alias.scope !314
  %i.do = load i64, ptr %i.di, align 8, !tbaa !27
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !27, !alias.scope !314
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.af
  %i.dp = phi ptr [ %i.dg, %bb.af ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ]
  %i.dq = phi i64 [ %i.dl, %bb.af ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !77, !alias.scope !314
  store ptr %i.di, ptr %i.df, align 8, !tbaa !26
  store i64 0, ptr %i.dr, align 8, !tbaa !77
  store i8 0, ptr %i.di, align 8, !tbaa !27
  store ptr %i.dp, ptr %6, align 8, !tbaa !170
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dq, ptr %i.dt, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr @.str, ptr %9, align 8, !tbaa !170
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.du, align 8, !tbaa !171
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit unwind label %bb.aj

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.dv = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dg
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  %i.dx = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  %i.dz = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bt
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.eb = load i64, ptr %i.bt, align 8, !tbaa !27
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit138

bb.ah:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.p
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ah
  %i.eg = load i64, ptr %i.p, align 8, !tbaa !27
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit141

bb.ai:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit75
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.aj:                                            ; preds = %bb.ag
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ek = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dg
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aj
  %i.em = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ai
  %.pn52 = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.ej, %bb.aj ]
  %i.eo = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.bt
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.eq = load i64, ptr %i.bt, align 8, !tbaa !27
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit141

bb.ak:                                            ; preds = %bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !172
  %.not.not.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not.not.i.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 296
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.sroa.06.0.in.i.i = phi ptr [ %i.ew, %bb.al ], [ %.sroa.06.0.i.i, %bb.an ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !173 ; 4 uses
  %i.ex = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.ex, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !28
  %i.fa = icmp eq i64 %3, %i.ez
  br i1 %i.fa, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %bb.am, !llvm.loop !307

bb.ao:                                            ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !174 ; 2 uses
  %i.fd = urem i64 %3, %i.fc                      ; 2 uses
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !175
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !173 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !28
  %i.fk = icmp eq i64 %3, %i.fj
  br i1 %i.fk, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.aq:                                            ; preds = %bb.ar
  %i.fl = icmp eq i64 %3, %i.fo
  br i1 %i.fl, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap, %bb.aq
  %.020.i.i.i.i = phi ptr [ %i.fm, %bb.aq ], [ %i.fh, %bb.ap ]
  %i.fm = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !173 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !28 ; 2 uses
  %i.fp = urem i64 %i.fo, %i.fc
  %.not19.i.i.i.i = icmp eq i64 %i.fp, %i.fd
  br i1 %.not19.i.i.i.i, label %bb.aq, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ar
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread, !llvm.loop !4

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit: ; preds = %bb.aq, %bb.an, %bb.ap
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.an ], [ %i.fh, %bb.ap ], [ %i.fm, %bb.aq ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !316
  store i64 %i.fr, ptr %4, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.fs, align 8, !tbaa !103, !alias.scope !317
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !317
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.am, %bb.ao, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit
  %i.ft = phi i1 [ false, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit ], [ true, %..loopexit_crit_edge21.i.i.i.i ], [ true, %bb.am ], [ true, %bb.ao ], [ true, %.lr.ph.i.i.i.i ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit93 unwind label %bb.as

bb.as:                                            ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  tail call void @__clang_call_terminate(ptr %i.fv) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit93:                 ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit.thread
  br i1 %i.ft, label %bb.at, label %_ZN7rocksdb6StatusD2Ev.exit138

bb.at:                                            ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit93
  %trunc = trunc nuw i32 %2 to i1
  br i1 %trunc, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !74, !nonnull !75, !align !76
  invoke void @_ZN7rocksdb11LogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, i64 noundef %3)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN7rocksdb10WalManager13ReadFirstLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %3, ptr noundef nonnull %4)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit unwind label %bb.az

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.av
  %i.fy = load i8, ptr %11, align 8, !tbaa !93    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ga = load <4 x i8>, ptr %i.fz, align 1, !tbaa !27 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !27  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !92 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.gf = icmp eq i8 %i.fy, 0                     ; 2 uses
  br i1 %i.gf, label %.critedge56, label %bb.aw

bb.aw:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !73 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !80
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 232
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.gl = load i8, ptr %12, align 8, !tbaa !91
  %i.gm = icmp eq i8 %i.gl, 0
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !92 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.go, null
  br i1 %.not.i.i94, label %.critedge, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95: ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.go) #22
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i95, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %i.gm, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %.critedge56

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %.critedge
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.fy, ptr %0, align 8, !tbaa !91
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.ga, ptr %i.gq, align 1, !tbaa !27
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.gc, ptr %i.gr, align 1, !tbaa !94
  store ptr %i.ge, ptr %i.gp, align 8, !tbaa !92
  %i.gs = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZN7rocksdb6StatusC2EOS0_.exit135.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !27
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #22
  br label %_ZN7rocksdb6StatusC2EOS0_.exit135.thread

_ZN7rocksdb6StatusC2EOS0_.exit135.thread:         ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit138

bb.ay:                                            ; preds = %bb.au
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.az:                                            ; preds = %bb.av
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.35193.0 = phi ptr [ %i.ge, %bb.ba ], [ null, %bb.az ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.ba ], [ %i.gy, %bb.az ] ; 2 uses
  %i.ha = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.bb
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !27
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ay
  %.sroa.35193.1 = phi ptr [ null, %bb.ay ], [ %.sroa.35193.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.sroa.35193.0, %bb.bb ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.ay ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZN7rocksdb9MutexLockD2Ev.exit131

.critedge56:                                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %.critedge
  %i.hf = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %.critedge56
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !27
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108: ; preds = %.critedge56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.gf, label %.thread160, label %bb.bc

bb.bc:                                            ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108
  %.sroa.35193.2 = phi ptr [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108 ], [ null, %bb.at ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !74, !nonnull !75, !align !76
  invoke void @_ZN7rocksdb19ArchivedLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 noundef %3)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN7rocksdb10WalManager13ReadFirstLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %3, ptr noundef nonnull %4)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.hm = load i8, ptr %14, align 8, !tbaa !93    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.hp = load <4 x i8>, ptr %i.hn, align 1, !tbaa !27 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !27
  store i8 0, ptr %i.ho, align 4, !tbaa !102
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !27  ; 2 uses
  store i8 0, ptr %i.hq, align 1, !tbaa !94
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !92 ; 5 uses
  store ptr null, ptr %i.hs, align 8, !tbaa !92
  %.not.i.i.i.i.i110 = icmp eq ptr %.sroa.35193.2, null
  br i1 %.not.i.i.i.i.i110, label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit112

_ZN7rocksdb6StatusaSEOS0_.exit112:                ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %.sroa.35193.2) #22
  %.pr156 = load ptr, ptr %i.hs, align 8, !tbaa !92 ; 2 uses
  %.not.i.i113 = icmp eq ptr %.pr156, null
  br i1 %.not.i.i113, label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112
  call void @_ZdaPv(ptr noundef nonnull %.pr156) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit112.thread

_ZN7rocksdb6StatusaSEOS0_.exit112.thread:         ; preds = %bb.be, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i114, %_ZN7rocksdb6StatusaSEOS0_.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.hu = icmp eq i8 %i.hm, 0                     ; 2 uses
  br i1 %i.hu, label %.critedge60, label %bb.bf

bb.bf:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !73 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !80
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 232
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ia = load i8, ptr %15, align 8, !tbaa !91
  %i.ib = icmp eq i8 %i.ia, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !92 ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.id, null
  br i1 %.not.i.i116, label %.critedge58, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i117

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i117: ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.id) #22
  br label %.critedge58

.critedge58:                                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i117, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %i.ib, label %bb.bk, label %.critedge60

bb.bh:                                            ; preds = %bb.bc
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.bi:                                            ; preds = %bb.bd
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bl

bb.bk:                                            ; preds = %.critedge58
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ih, align 8, !tbaa !103, !alias.scope !318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !318
  %i.ii = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZN7rocksdb6StatusC2EOS0_.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.bk
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !27
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #22
  br label %_ZN7rocksdb6StatusC2EOS0_.exit135

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.35193.3 = phi ptr [ %i.ht, %bb.bj ], [ %.sroa.35193.2, %bb.bi ] ; 2 uses
  %.pn46 = phi { ptr, i32 } [ %i.ig, %bb.bj ], [ %i.if, %bb.bi ] ; 2 uses
  %i.in = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.bl
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !27
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.bh
  %.sroa.35193.4 = phi ptr [ %.sroa.35193.2, %bb.bh ], [ %.sroa.35193.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.sroa.35193.3, %bb.bl ]
  %.pn46.pn = phi { ptr, i32 } [ %i.ie, %bb.bh ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.pn46, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZN7rocksdb9MutexLockD2Ev.exit131

.critedge60:                                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit112.thread, %.critedge58
  %i.is = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %.critedge60
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !27
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126: ; preds = %.critedge60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %i.hu, label %.thread160, label %_ZN7rocksdb9MutexLockD2Ev.exit130

.thread160:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126
  %.sroa.35193.5 = phi ptr [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ] ; 4 uses
  %.sroa.30.0 = phi i8 [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108 ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ] ; 2 uses
  %i.ix = phi <4 x i8> [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ] ; 2 uses
  %i.iy = load i64, ptr %4, align 8, !tbaa !28
  %.not = icmp eq i64 %i.iy, 0
  br i1 %.not, label %_ZN7rocksdb9MutexLockD2Ev.exit130, label %bb.bm

bb.bm:                                            ; preds = %.thread160
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit unwind label %bb.bo

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit:    ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store i64 %3, ptr %16, align 8, !tbaa !319
  %i.iz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ja = load i64, ptr %4, align 8, !tbaa !28
  store i64 %i.ja, ptr %i.iz, align 8, !tbaa !316
  %i.jb = invoke { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_EEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit unwind label %bb.bp ; 0 uses

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit: ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit130 unwind label %bb.bn

bb.bn:                                            ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #25
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9MutexLockD2Ev.exit131

bb.bp:                                            ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.es)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit131 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit130:                ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit, %.thread160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126
  %.sroa.35193.6 = phi ptr [ %.sroa.35193.5, %.thread160 ], [ %.sroa.35193.5, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ]
  %.sroa.30.1 = phi i8 [ %.sroa.30.0, %.thread160 ], [ %.sroa.30.0, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ]
  %17 = phi i8 [ 0, %.thread160 ], [ 0, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ]
  %i.ji = phi <4 x i8> [ %i.ix, %.thread160 ], [ %i.ix, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE6insertEOS6_.exit ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i126 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %17, ptr %0, align 8, !tbaa !91
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store <4 x i8> %i.ji, ptr %i.jk, align 1, !tbaa !27
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %.sroa.30.1, ptr %i.jl, align 1, !tbaa !94
  store ptr %.sroa.35193.6, ptr %i.jj, align 8, !tbaa !92
  br label %_ZN7rocksdb6StatusD2Ev.exit138

_ZN7rocksdb6StatusC2EOS0_.exit135:                ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.not.i.i136 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i136, label %_ZN7rocksdb6StatusD2Ev.exit138, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit135
  call void @_ZdaPv(ptr noundef nonnull %i.ht) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit138

_ZN7rocksdb9MutexLockD2Ev.exit131:                ; preds = %bb.bo, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.sroa.35193.8 = phi ptr [ %.sroa.35193.5, %bb.bp ], [ %.sroa.35193.5, %bb.bo ], [ %.sroa.35193.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.sroa.35193.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %.pn49.pn = phi { ptr, i32 } [ %i.jf, %bb.bp ], [ %i.je, %bb.bo ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ] ; 2 uses
  %.not.i.i139 = icmp eq ptr %.sroa.35193.8, null
  br i1 %.not.i.i139, label %_ZN7rocksdb6StatusD2Ev.exit141, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i140

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i140: ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit131
  call void @_ZdaPv(ptr noundef nonnull %.sroa.35193.8) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit141

_ZN7rocksdb6StatusD2Ev.exit138:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i137, %_ZN7rocksdb6StatusC2EOS0_.exit135, %_ZN7rocksdb9MutexLockD2Ev.exit130, %_ZN7rocksdb6StatusC2EOS0_.exit135.thread, %_ZN7rocksdb9MutexLockD2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  ret void

_ZN7rocksdb6StatusD2Ev.exit141:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i140, %_ZN7rocksdb9MutexLockD2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn49.pn, %_ZN7rocksdb9MutexLockD2Ev.exit131 ], [ %.pn49.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i140 ]
  resume { ptr, i32 } %.pn52.pn
}

declare void @_ZN7rocksdb11LogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10WalManager13ReadFirstLineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.128", align 8 ; 8 uses
  %6 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %8 = alloca %"struct.rocksdb::FileOptions", align 8 ; 14 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %10 = alloca %"class.std::unique_ptr.136", align 8 ; 9 uses
  %11 = alloca %"class.std::vector.72", align 8   ; 10 uses
  %12 = alloca %struct.LogReporter, align 8       ; 13 uses
  %13 = alloca %"class.rocksdb::log::Reader", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.58", align 16 ; 4 uses
  %15 = alloca %"class.rocksdb::PredecessorWALInfo", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %21 = alloca %"class.rocksdb::WriteBatch", align 8 ; 10 uses
  %22 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr null, ptr %5, align 8, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179, !noalias !328 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !335, !range !115, !noalias !328, !noundef !75
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !180, !noalias !328 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !181, !noalias !328
  store <2 x ptr> %i.j, ptr %7, align 16, !tbaa !181, !alias.scope !328
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNK7rocksdb13FileSystemPtrptEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27, !noalias !328
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !182, !noalias !328
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !182, !noalias !328
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4, !noalias !328 ; 0 uses
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !180, !noalias !328 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.a, align 8, !tbaa !181, !noalias !328
  store <2 x ptr> %i.r, ptr %7, align 16, !tbaa !181, !alias.scope !328
  %.not.i.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1.i, label %_ZNK7rocksdb13FileSystemPtrptEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27, !noalias !328
  %.not.i.i.i.i2.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.s, align 4, !tbaa !182, !noalias !328
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !182, !noalias !328
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit

bb.j:                                             ; preds = %bb.h
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4, !noalias !328 ; 0 uses
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit

_ZNK7rocksdb13FileSystemPtrptEv.exit:             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  %i.x = load ptr, ptr %7, align 16, !tbaa !336   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !179, !noalias !337 ; 2 uses
  %.not.i41 = icmp eq ptr %i.y, null
  br i1 %.not.i41, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZNK7rocksdb13FileSystemPtrptEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !335, !range !115, !noalias !337, !noundef !75
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !180, !noalias !337 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !181, !noalias !337
  store <2 x ptr> %i.af, ptr %9, align 16, !tbaa !181, !alias.scope !337
  %.not.i.i.i.i44 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i44, label %_ZNK7rocksdb13FileSystemPtrptEv.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27, !noalias !337
  %.not.i.i.i.i.i45 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !182, !noalias !337
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !182, !noalias !337
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit46

bb.o:                                             ; preds = %bb.m
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !337 ; 0 uses
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit46

bb.p:                                             ; preds = %bb.k, %_ZNK7rocksdb13FileSystemPtrptEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !180, !noalias !337 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.a, align 8, !tbaa !181, !noalias !337
  store <2 x ptr> %i.an, ptr %9, align 16, !tbaa !181, !alias.scope !337
  %.not.i.i.i1.i42 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i1.i42, label %_ZNK7rocksdb13FileSystemPtrptEv.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27, !noalias !337
  %.not.i.i.i.i2.i43 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i2.i43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !182, !noalias !337
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !182, !noalias !337
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit46

bb.s:                                             ; preds = %bb.q
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4, !noalias !337 ; 0 uses
  br label %_ZNK7rocksdb13FileSystemPtrptEv.exit46

_ZNK7rocksdb13FileSystemPtrptEv.exit46:           ; preds = %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.l
  %i.at = load ptr, ptr %9, align 16, !tbaa !336  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::FileOptions") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(216) %i.au)
          to label %bb.t unwind label %bb.as

bb.t:                                             ; preds = %_ZNK7rocksdb13FileSystemPtrptEv.exit46
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(216) %8, ptr noundef nonnull %5, ptr noundef null)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.bb, align 8, !tbaa !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %6
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZN7rocksdb6StatusC2EOS0_.exit.thread

_ZN7rocksdb6StatusC2EOS0_.exit.thread:            ; preds = %bb.u
  %i.bc = load <4 x i8>, ptr %6, align 8, !tbaa !27
  store <4 x i8> %i.bc, ptr %0, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !114, !range !115, !noundef !75
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.be, ptr %i.bf, align 4, !tbaa !102
end_hunk_0
