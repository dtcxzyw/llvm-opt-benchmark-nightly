Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb27ExternalSstFileIngestionJob7PrepareERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_SB_RKS1_IPKNS_16PreparedFileInfoESaISE_EERKSt8optionalINS_8RangeOptEERKNS_11TemperatureEmPNS_12SuperVersionE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.ai

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store ptr @.str, ptr %22, align 8, !tbaa !385
  store i64 0, ptr %i.u, align 8, !tbaa !386
  store i64 72057594037927935, ptr %i.v, align 8, !tbaa !390
  store i8 0, ptr %i.w, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.cu = load ptr, ptr %26, align 8, !tbaa !44
  store ptr %i.cu, ptr %24, align 8, !tbaa !385
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !46
  store i64 %i.cv, ptr %i.x, align 8, !tbaa !386
  invoke void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %22, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.x
  %i.cw = load i8, ptr %23, align 8, !tbaa !190
  %i.cx = load ptr, ptr %i.z, align 8, !tbaa !189 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %bb.y, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %.noexc
  call void @_ZdaPv(ptr noundef nonnull %i.cx) #29
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %.noexc
  %i.cy = icmp eq i8 %i.cw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br i1 %i.cy, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  store ptr @.str, ptr %19, align 8, !tbaa !385
  store i64 0, ptr %i.ab, align 8, !tbaa !386
  store i64 72057594037927935, ptr %i.ac, align 8, !tbaa !390
  store i8 0, ptr %i.ad, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !44
  store ptr %i.cz, ptr %21, align 8, !tbaa !385
  %i.da = load i64, ptr %i.af, align 8, !tbaa !46
  store i64 %i.da, ptr %i.ae, align 8, !tbaa !386
  invoke void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull %19, i1 noundef zeroext false)
          to label %.noexc384 unwind label %bb.m

.noexc384:                                        ; preds = %bb.z
  %i.db = load i8, ptr %20, align 8, !tbaa !190
  %i.dc = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 2 uses
  %.not.i.i.i382 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i382, label %bb.aa, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i383

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i383: ; preds = %.noexc384
  call void @_ZdaPv(ptr noundef nonnull %i.dc) #29
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i383, %.noexc384
  %i.dd = icmp eq i8 %i.db, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br i1 %i.dd, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  store ptr @.str.43, ptr %33, align 8, !tbaa !385
  %i.de = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 35, ptr %i.de, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  store ptr @.str, ptr %34, align 8, !tbaa !385
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.df, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit unwind label %bb.ac

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.ai

bb.ad:                                            ; preds = %bb.aa
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !392 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 8
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !393
  %i.dk = add nuw nsw i64 %i.dh, 1
  store i64 %i.dk, ptr %i.ah, align 8, !tbaa !392
  %i.dl = getelementptr inbounds nuw [1208 x i8], ptr %i.dj, i64 %i.dh
  invoke void @_ZN7rocksdb16IngestedFileInfoC2EOS0_(ptr noundef nonnull align 8 dereferenceable(1208) %i.dl, ptr noundef nonnull align 8 dereferenceable(1208) %26)
          to label %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit unwind label %bb.m

bb.af:                                            ; preds = %bb.ad
  %i.dm = load ptr, ptr %i.ai, align 8, !tbaa !394 ; 3 uses
  %i.dn = load ptr, ptr %i.aj, align 8, !tbaa !395
  %.not.i.i387 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i387, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7rocksdb16IngestedFileInfoC2EOS0_(ptr noundef nonnull align 8 dereferenceable(1208) %i.dm, ptr noundef nonnull align 8 dereferenceable(1208) %26)
          to label %.noexc389 unwind label %bb.m

.noexc389:                                        ; preds = %bb.ag
  %i.do = load ptr, ptr %i.ai, align 8, !tbaa !394
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1208
  store ptr %i.dp, ptr %i.ai, align 8, !tbaa !394
  br label %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorIN7rocksdb16IngestedFileInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(1208) %26)
          to label %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit unwind label %bb.m

_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit: ; preds = %.noexc389, %bb.ae, %bb.ah
  call void @_ZN7rocksdb16IngestedFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1208) dereferenceable(1208) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.dq = add nuw i64 %.01701207, 1               ; 2 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.ds = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 5
  %.not262 = icmp ult i64 %i.dq, %i.dw
  br i1 %.not262, label %bb.b, label %.critedge355, !llvm.loop !776

bb.ai:                                            ; preds = %bb.ac, %bb.w, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %bb.m, %bb.l
  %.pn259 = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %i.bx, %bb.m ], [ %i.dg, %bb.ac ], [ %i.cm, %bb.t ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380 ], [ %i.bw, %bb.l ]
  call void @_ZN7rocksdb16IngestedFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1208) dereferenceable(1208) %26) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.k
  %.pn259.pn = phi { ptr, i32 } [ %.pn259, %bb.ai ], [ %i.bv, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.le

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit381
  call void @_ZN7rocksdb16IngestedFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1208) dereferenceable(1208) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.ld

.critedge355:                                     ; preds = %_ZN7rocksdb10autovectorINS_16IngestedFileInfoELm8EE12emplace_backIJS1_EEEvDpOT_.exit, %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 8 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !392
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 9800 ; 15 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9808 ; 7 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !394
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !397
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 1208
  %i.eh = add i64 %i.eg, %i.dy                    ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.critedge355
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  store ptr @.str.44, ptr %35, align 8, !tbaa !385
  %i.ej = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 26, ptr %i.ej, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  store ptr @.str, ptr %36, align 8, !tbaa !385
  %i.ek = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit392 unwind label %bb.am

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit392: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.ld

bb.al:                                            ; preds = %bb.an
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.am:                                            ; preds = %bb.ak
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.le

bb.an:                                            ; preds = %.critedge355
  %i.en = invoke noundef zeroext i1 @_ZNK7rocksdb27ExternalSstFileIngestionJob19ComputeFilesOverlapERKNS_10autovectorINS_16IngestedFileInfoELm8EEE(ptr noundef nonnull align 8 dereferenceable(17528) %1, ptr noundef nonnull align 8 dereferenceable(9704) %i.dx)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 17448 ; 2 uses
  %i.ep = zext i1 %i.en to i8
  store i8 %i.ep, ptr %i.eo, align 8, !tbaa !398
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !795, !range !174, !noundef !175
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ap, label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 9888 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 9952 ; 3 uses
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !399, !range !174, !noundef !175
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %i.eu, align 8, !tbaa !399
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 9920
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !44 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 9936 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !45
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i.i:      ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fd = load ptr, ptr %i.et, align 8, !tbaa !44 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 9904 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i.i
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !45
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i, %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 9904 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, i8 0, i64 48, i1 false)
  store ptr %i.fi, ptr %i.et, align 8, !tbaa !40
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 9896 ; 3 uses
  store i64 0, ptr %i.fj, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 9920 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 9936
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !40
  store i8 1, ptr %i.eu, align 8, !tbaa !399
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !386
  %.not1009 = icmp eq i64 %i.fn, -1
  br i1 %.not1009, label %bb.bc, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !386
  %.not1010 = icmp eq i64 %i.fp, -1
  br i1 %.not1010, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !400
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  %i.fv = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 8 uses
  store ptr %i.fv, ptr %37, align 8, !tbaa !40
  %i.fw = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 0, ptr %i.fw, align 8, !tbaa !46
  store i8 0, ptr %i.fv, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  %i.fx = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 8 uses
  store ptr %i.fx, ptr %38, align 8, !tbaa !40
  %i.fy = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.fy, align 8, !tbaa !46
  store i8 0, ptr %i.fx, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  invoke void @_ZN7rocksdb25MaybeAddTimestampsToRangeERKNS_8OptSliceES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.257") align 8 %39, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 noundef %i.fu, ptr noundef nonnull %37, ptr noundef nonnull %38, i1 noundef zeroext true)
          to label %bb.at unwind label %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ga = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !410 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !412
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 72057594037927935, ptr %i.gb, align 8, !tbaa !390
  %i.gc = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 %i.ga, ptr %i.gc, align 8, !tbaa !391
  store i64 0, ptr %i.fj, align 8, !tbaa !46
  %i.gd = load ptr, ptr %i.et, align 8, !tbaa !44
  store i8 0, ptr %i.gd, align 1, !tbaa !45
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %i.et, ptr noundef nonnull align 8 dereferenceable(25) %18)
          to label %bb.au unwind label %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !412
  %i.ge = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 72057594037927935, ptr %i.ge, align 8, !tbaa !390
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 %i.ga, ptr %i.gf, align 8, !tbaa !391
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 9928 ; 3 uses
  store i64 0, ptr %i.gg, align 8, !tbaa !46
  %i.gh = load ptr, ptr %i.fk, align 8, !tbaa !44
  store i8 0, ptr %i.gh, align 1, !tbaa !45
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(25) %17)
          to label %_ZN7rocksdb11InternalKey3SetERKNS_5SliceEmNS_9ValueTypeE.exit395 unwind label %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb11InternalKey3SetERKNS_5SliceEmNS_9ValueTypeE.exit395: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 9792
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.aw

bb.av:                                            ; preds = %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit
  %i.go = add nuw i64 %.01711209, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.go, %i.eh
  br i1 %exitcond.not, label %.critedge357, label %bb.aw, !llvm.loop !777

bb.aw:                                            ; preds = %_ZN7rocksdb11InternalKey3SetERKNS_5SliceEmNS_9ValueTypeE.exit395, %bb.av
  %.01711209 = phi i64 [ 0, %_ZN7rocksdb11InternalKey3SetERKNS_5SliceEmNS_9ValueTypeE.exit395 ], [ %i.go, %bb.av ] ; 4 uses
  %i.gp = icmp ult i64 %.01711209, 8
  %i.gq = load ptr, ptr %i.gj, align 8
  %i.gr = getelementptr inbounds nuw [1208 x i8], ptr %i.gq, i64 %.01711209
  %i.gs = load ptr, ptr %i.dz, align 8
  %i.gt = getelementptr [1208 x i8], ptr %i.gs, i64 %.01711209
  %i.gu = getelementptr i8, ptr %i.gt, i64 -9664
  %.0.i = select i1 %i.gp, ptr %i.gr, ptr %i.gu   ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.gw = load i64, ptr %i.fj, align 8, !tbaa !46 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 0
  %i.gy = load i64, ptr %i.gg, align 8
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gx, i1 true, i1 %i.gz
  br i1 %i.ha, label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !46 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !46
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = load ptr, ptr %i.gi, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.hi = load ptr, ptr %i.et, align 8, !tbaa !44
  store ptr %i.hi, ptr %15, align 8
  store i64 %i.gw, ptr %i.gk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.hj = load ptr, ptr %.0.i, align 8, !tbaa !44
  store ptr %i.hj, ptr %16, align 8
  store i64 %i.hc, ptr %i.gl, align 8
  %i.hk = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.noexc396 unwind label %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc396:                                        ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.hl = icmp slt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ba, label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread

bb.ba:                                            ; preds = %.noexc396
  %i.hm = load ptr, ptr %i.gi, align 8, !tbaa !413
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.hn = load ptr, ptr %i.fk, align 8, !tbaa !44
  %i.ho = load i64, ptr %i.gg, align 8, !tbaa !46
  store ptr %i.hn, ptr %13, align 8
  store i64 %i.ho, ptr %i.gm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.hp = load ptr, ptr %i.gv, align 8, !tbaa !44
  %i.hq = load i64, ptr %i.he, align 8, !tbaa !46
  store ptr %i.hp, ptr %14, align 8
  store i64 %i.hq, ptr %i.gn, align 8
  %i.hr = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit unwind label %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.av, label %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread

_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread: ; preds = %bb.ax, %bb.aw, %.noexc396, %bb.ay, %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store ptr @.str.45, ptr %40, align 8, !tbaa !385
  %i.ht = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 47, ptr %i.ht, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  store ptr @.str, ptr %41, align 8, !tbaa !385
  %i.hu = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.hu, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit399 unwind label %bb.bb

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit399: ; preds = %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %i.hv = load ptr, ptr %38, align 8, !tbaa !44   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fx
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit399
  %i.hx = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.hz = load ptr, ptr %37, align 8, !tbaa !44   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.fv
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.ib = load i64, ptr %i.fv, align 8, !tbaa !45
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.ld

.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ba, %bb.az, %bb.au, %bb.at, %bb.as
  %lpad.loopexit.split-lp1675 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1032

bb.bb:                                            ; preds = %_ZN7rocksdb24ExternalFileRangeChecker8ContainsERKNS_12KeyRangeInfoES3_.exit.thread
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %.loopexit.split-lp1032

.loopexit.split-lp1032:                           ; preds = %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb
  %.pn263.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bb ], [ %lpad.loopexit.split-lp1675, %.loopexit.split-lp1032.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %i.ie = load ptr, ptr %38, align 8, !tbaa !44   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.fx
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %.loopexit.split-lp1032
  %i.ig = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %.loopexit.split-lp1032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.ii = load ptr, ptr %37, align 8, !tbaa !44   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.fv
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.ik = load i64, ptr %i.fv, align 8, !tbaa !45
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.le

.critedge357:                                     ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  %i.im = load ptr, ptr %38, align 8, !tbaa !44   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.fx
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %.critedge357
  %i.io = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %.critedge357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.iq = load ptr, ptr %37, align 8, !tbaa !44   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.fv
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.is = load i64, ptr %i.fv, align 8, !tbaa !45
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2.i.i.i.i.i, %bb.ao
  %i.iu = load i8, ptr %i.eo, align 8, !tbaa !398, !range !174, !noundef !175
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 9854
  %i.ix = load i8, ptr %i.iw, align 2, !tbaa !414, !range !174, !noundef !175
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  store ptr @.str.46, ptr %42, align 8, !tbaa !385
  %i.iz = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 76, ptr %i.iz, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  store ptr @.str, ptr %43, align 8, !tbaa !385
  %i.ja = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 0, ptr %i.ja, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit unwind label %bb.bf

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  br label %bb.ld

bb.bf:                                            ; preds = %bb.be
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  br label %bb.le

bb.bg:                                            ; preds = %bb.bd
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 9852
  %i.jd = load i8, ptr %i.jc, align 4, !tbaa !415, !range !174, !noundef !175
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 9874
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !383, !range !174, !noundef !175
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  store ptr @.str.47, ptr %44, align 8, !tbaa !385
  %i.ji = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 83, ptr %i.ji, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  store ptr @.str, ptr %45, align 8, !tbaa !385
  %i.jj = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.jj, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %45, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit420 unwind label %bb.bj

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit420: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.ld

bb.bj:                                            ; preds = %bb.bi
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  br label %bb.le

bb.bk:                                            ; preds = %bb.bh, %bb.bg
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !400
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !409
  %.not268 = icmp eq i64 %i.jo, 0
  br i1 %.not268, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  store ptr @.str.48, ptr %46, align 8, !tbaa !385
  %i.jp = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 102, ptr %i.jp, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  store ptr @.str, ptr %47, align 8, !tbaa !385
  %i.jq = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 0, ptr %i.jq, align 8, !tbaa !386
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 8 dereferenceable(16) %47, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit422 unwind label %bb.bm

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit422: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %bb.ld

bb.bm:                                            ; preds = %bb.bl
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %bb.le

bb.bn:                                            ; preds = %bb.bc, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  %i.js = getelementptr inbounds nuw i8, ptr %48, i64 48 ; 2 uses
  store ptr %i.js, ptr %48, align 8, !tbaa !422
  %i.jt = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  store i64 1, ptr %i.jt, align 8, !tbaa !423
  %i.ju = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %48, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jv, align 8, !tbaa !424
  %i.jw = getelementptr inbounds nuw i8, ptr %48, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  %i.jx = load i64, ptr %i.dx, align 8, !tbaa !392, !noalias !796
  %i.jy = load ptr, ptr %i.ea, align 8, !tbaa !394, !noalias !796
  %i.jz = load ptr, ptr %i.dz, align 8, !tbaa !397, !noalias !796
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = sdiv exact i64 %i.kc, 1208
  %i.ke = add i64 %i.kd, %i.jx                    ; 2 uses
  %.not10111210 = icmp eq i64 %i.ke, 0
  br i1 %.not10111210, label %.loopexit1025, label %.lr.ph1212

.lr.ph1212:                                       ; preds = %bb.bn
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 9792
  %i.kg = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 9 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 9848
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 9849
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.kt = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %53, i64 24 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %53, i64 72 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.kz = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.la = getelementptr inbounds nuw i8, ptr %53, i64 83
  %i.lb = getelementptr inbounds nuw i8, ptr %51, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %51, i64 5 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %25, i64 5 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 9850
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.li = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ll = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.lm = getelementptr inbounds nuw i8, ptr %56, i64 56
  %i.ln = getelementptr inbounds nuw i8, ptr %56, i64 60
  %i.lo = getelementptr inbounds nuw i8, ptr %56, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %56, i64 72 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %56, i64 120 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %56, i64 80 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %56, i64 104
  %i.lu = getelementptr inbounds nuw i8, ptr %56, i64 112
  %i.lv = getelementptr inbounds nuw i8, ptr %56, i64 131
  %i.lw = getelementptr inbounds nuw i8, ptr %56, i64 136
  %i.lx = getelementptr inbounds nuw i8, ptr %56, i64 137
  %i.ly = getelementptr inbounds nuw i8, ptr %56, i64 138
  %i.lz = getelementptr inbounds nuw i8, ptr %56, i64 140
  %i.ma = getelementptr inbounds nuw i8, ptr %56, i64 144 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %56, i64 160 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %56, i64 152
  %i.md = getelementptr inbounds nuw i8, ptr %56, i64 176 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %56, i64 192 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %56, i64 184
  %i.mg = getelementptr inbounds nuw i8, ptr %56, i64 208
  %i.mh = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %57, i64 12
  %i.mj = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %57, i64 72 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %57, i64 40 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %57, i64 56
  %i.mp = getelementptr inbounds nuw i8, ptr %57, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %57, i64 83
  %i.mr = getelementptr inbounds nuw i8, ptr %54, i64 4 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %54, i64 5 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 9854
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 9873
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 673
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 672 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 17456
  %i.nb = getelementptr inbounds nuw i8, ptr %62, i64 88 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %63, i64 88 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %61, i64 4 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %61, i64 5 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %63, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %62, i64 40 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %62, i64 72
  %i.no = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i512
  %.sroa.5.01211 = phi i64 [ 0, %.lr.ph1212 ], [ %i.abl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i512 ] ; 4 uses
  %i.nq = icmp ult i64 %.sroa.5.01211, 8
  %i.nr = load ptr, ptr %i.kf, align 8
  %i.ns = getelementptr inbounds nuw [1208 x i8], ptr %i.nr, i64 %.sroa.5.01211
  %i.nt = load ptr, ptr %i.dz, align 8
  %i.nu = getelementptr [1208 x i8], ptr %i.nt, i64 %.sroa.5.01211
  %i.nv = getelementptr i8, ptr %i.nu, i64 -9664
  %.0.i.i423 = select i1 %i.nq, ptr %i.ns, ptr %i.nv ; 10 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 1092 ; 4 uses
  store i8 0, ptr %i.nw, align 4, !tbaa !425
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.nx = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 64
  store ptr %i.kg, ptr %49, align 8, !tbaa !40
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !44 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 72
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !46 ; 8 uses
  %i.ob = icmp ugt i64 %i.oa, 15
  br i1 %i.ob, label %bb.bp, label %._crit_edge.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.oc = icmp slt i64 %i.oa, 0
  br i1 %i.oc, label %.noexc.i, label %bb.bq

.noexc.i:                                         ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #26
          to label %.noexc424 unwind label %.loopexit.split-lp1027.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc424:                                        ; preds = %.noexc.i
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.od = add nuw i64 %i.oa, 1                    ; 2 uses
  %i.oe = icmp slt i64 %i.od, 0
  br i1 %i.oe, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !41

.noexc6.i:                                        ; preds = %bb.bq
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc425 unwind label %.loopexit.split-lp1027.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc425:                                        ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.bq
  %i.of = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #28
          to label %.noexc426 unwind label %.loopexit.split-lp1027.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc426:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.of, ptr %49, align 8, !tbaa !44
  store i64 %i.oa, ptr %i.kg, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc426, %bb.bo
  %i.og = phi ptr [ %i.of, %.noexc426 ], [ %i.kg, %bb.bo ] ; 3 uses
  switch i64 %i.oa, label %bb.bs [
    i64 1, label %bb.br
    i64 0, label %bb.bt
  ]

bb.br:                                            ; preds = %._crit_edge.i.i
  %i.oh = load i8, ptr %i.ny, align 1, !tbaa !45
  store i8 %i.oh, ptr %i.og, align 1, !tbaa !45
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.og, ptr align 1 %i.ny, i64 %i.oa, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %._crit_edge.i.i
  store i64 %i.oa, ptr %i.kh, align 8, !tbaa !46
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oa
  store i8 0, ptr %i.oi, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.oj = load ptr, ptr %i.ki, align 8, !tbaa !194
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1856
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 1016 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !426 ; 2 uses
  %i.on = and i64 %i.om, 4611686018427387903
  %i.oo = lshr i64 %i.om, 62
  %i.op = trunc nuw nsw i64 %i.oo to i32
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %i.ok, i64 noundef %i.on, i32 noundef %i.op)
          to label %bb.bu unwind label %bb.dq

bb.bu:                                            ; preds = %bb.bt
  %i.oq = load i8, ptr %i.kj, align 8, !tbaa !427, !range !174, !noundef !175
  %i.or = trunc nuw i8 %i.oq to i1
end_hunk_0
begin_hunk_1_@_ZN7rocksdb27ExternalSstFileIngestionJob7PrepareERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESB_SB_RKS1_IPKNS_16PreparedFileInfoESaISE_EERKSt8optionalINS_8RangeOptEERKNS_11TemperatureEmPNS_12SuperVersionE:bb.a

bb.dp:                                            ; preds = %bb.do
  %i.vk = load ptr, ptr %58, align 8, !tbaa !44   ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.mu
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.dp
  %i.vm = load i64, ptr %i.mu, align 8, !tbaa !45
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %bb.dv

.loopexit.split-lp1027.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519

bb.dq:                                            ; preds = %bb.bt
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516

bb.dr:                                            ; preds = %bb.cg
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ku) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  call void @_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit471

bb.ds:                                            ; preds = %bb.da
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.mk) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call void @_ZN7rocksdb11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit471

.thread:                                          ; preds = %bb.dk
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i470

bb.dt:                                            ; preds = %bb.dn
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464

bb.du:                                            ; preds = %bb.do
  %i.vt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vu = load ptr, ptr %58, align 8, !tbaa !44   ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.mu
  br i1 %i.vv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.du
  %i.vw = load i64, ptr %i.mu, align 8, !tbaa !45
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464

bb.dv:                                            ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit454
  %.not.i.i466 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i466, label %_ZN7rocksdb6StatusD2Ev.exit468, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i467

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i467: ; preds = %bb.dv
  call void @_ZdaPv(ptr noundef nonnull %i.sm) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464: ; preds = %bb.du, %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  %.pn280 = phi { ptr, i32 } [ %i.vs, %bb.dt ], [ %i.vt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463 ], [ %i.vt, %bb.du ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br i1 %.not.i.i456, label %_ZN7rocksdb6StatusD2Ev.exit471, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i470

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i470: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464
  %.pn280.pn973 = phi { ptr, i32 } [ %i.vr, %.thread ], [ %.pn280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i464 ]
  call void @_ZdaPv(ptr noundef nonnull %i.sm) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit471

bb.dw:                                            ; preds = %bb.cp
  %i.vy = load i8, ptr %i.lg, align 2, !tbaa !800, !range !174, !noundef !175
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %bb.dw
  store i8 1, ptr %i.nw, align 4, !tbaa !425
  %i.wa = load ptr, ptr %i.lh, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.wb = load ptr, ptr %49, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %59, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 56
  %i.wd = load ptr, ptr %59, align 8, !tbaa !44
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.wc, ptr noundef nonnull @.str.50, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.wb, ptr noundef %i.wd)
          to label %bb.dz unwind label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.we = load ptr, ptr %59, align 8, !tbaa !44   ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.li
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.dz
  %i.wg = load i64, ptr %i.li, align 8, !tbaa !45
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit468

bb.ea:                                            ; preds = %bb.dx
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

bb.eb:                                            ; preds = %bb.dy
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = load ptr, ptr %59, align 8, !tbaa !44   ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.li
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.eb
  %i.wm = load i64, ptr %i.li, align 8, !tbaa !45
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475, %bb.ea
  %.pn274 = phi { ptr, i32 } [ %i.wi, %bb.ea ], [ %i.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475 ], [ %i.wj, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit471

bb.ec:                                            ; preds = %bb.cp, %bb.dw
  %i.wo = load ptr, ptr %i.lh, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.wp = load ptr, ptr %49, align 8, !tbaa !44
  %i.wq = load ptr, ptr %50, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 56
  %i.ws = load ptr, ptr %60, align 8, !tbaa !44
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.wr, ptr noundef nonnull @.str.51, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.wp, ptr noundef %i.wq, ptr noundef %i.ws)
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %i.wt = load ptr, ptr %60, align 8, !tbaa !44   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.mv
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.ee
  %i.wv = load i64, ptr %i.mv, align 8, !tbaa !45
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit468

bb.ef:                                            ; preds = %bb.ec
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

bb.eg:                                            ; preds = %bb.ed
  %i.wy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wz = load ptr, ptr %60, align 8, !tbaa !44   ; 2 uses
  %i.xa = icmp eq ptr %i.wz, %i.mv
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.eg
  %i.xb = load i64, ptr %i.mv, align 8, !tbaa !45
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.xc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481, %bb.ef
  %.pn272 = phi { ptr, i32 } [ %i.wx, %bb.ef ], [ %i.wy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481 ], [ %i.wy, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit471

bb.eh:                                            ; preds = %bb.bv
  store i8 1, ptr %i.nw, align 4, !tbaa !425
  br label %_ZN7rocksdb6StatusD2Ev.exit468

_ZN7rocksdb6StatusD2Ev.exit468:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i467, %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, %bb.eh
  %i.xd = load i8, ptr %i.nw, align 4, !tbaa !425, !range !174, !noundef !175
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.ei, label %bb.fb

bb.ei:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit468
  %i.xf = load i8, ptr %i.mw, align 2, !tbaa !414, !range !174, !noundef !175
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xh = load i8, ptr %i.mx, align 1, !tbaa !477, !range !174, !noundef !175
  %i.xi = trunc nuw i8 %i.xh to i1
  %spec.select = select i1 %i.xi, ptr %i.mz, ptr %i.my
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.in = phi ptr [ %i.mz, %bb.ei ], [ %spec.select, %bb.ej ]
  %i.xj = load i8, ptr %.in, align 1, !tbaa !788  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  %i.xk = load ptr, ptr %i.km, align 8, !tbaa !428 ; 2 uses
  %.not.i484 = icmp eq ptr %i.xk, null
  br i1 %.not.i484, label %_ZNK7rocksdb13FileSystemPtr3getEv.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 104
  %i.xm = load i8, ptr %i.xl, align 8, !tbaa !436, !range !174, !noundef !175
  %i.xn = shl nuw nsw i8 %i.xm, 5
  %spec.select.idx.i = zext nneg i8 %i.xn to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 %spec.select.idx.i
  br label %_ZNK7rocksdb13FileSystemPtr3getEv.exit

_ZNK7rocksdb13FileSystemPtr3getEv.exit:           ; preds = %bb.ek, %bb.el
  %.0.in.i = phi ptr [ %i.kl, %bb.ek ], [ %spec.select.i, %bb.el ]
  %.0.i485 = load ptr, ptr %.0.in.i, align 8, !tbaa !438
  %i.xo = getelementptr inbounds nuw i8, ptr %.0.i.i423, i64 1160 ; 2 uses
  %i.xp = load i8, ptr %i.xo, align 8, !tbaa !75
  %i.xq = load ptr, ptr %i.lh, align 8, !tbaa !191, !nonnull !175, !align !192
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 104
  %i.xs = load i8, ptr %i.xr, align 8, !tbaa !475, !range !174, !noundef !175
  %i.xt = trunc nuw i8 %i.xs to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  store i8 0, ptr %i.nb, align 8, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  store i8 0, ptr %i.nc, align 8, !tbaa !802
  invoke void @_ZN7rocksdb8CopyFileEPNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11TemperatureES9_SA_mbRKSt10shared_ptrINS_8IOTracerEEmRKSt8optionalINS_9IOOptionsEESK_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %61, ptr noundef %.0.i485, ptr noundef nonnull align 8 dereferenceable(32) %49, i8 noundef zeroext %i.xp, ptr noundef nonnull align 8 dereferenceable(32) %50, i8 noundef zeroext %i.xj, i64 noundef 0, i1 noundef zeroext %i.xt, ptr noundef nonnull align 8 dereferenceable(16) %i.na, i64 noundef 4096, ptr noundef nonnull align 8 dereferenceable(96) %62, ptr noundef nonnull align 8 dereferenceable(96) %63)
          to label %bb.em unwind label %bb.ev

bb.em:                                            ; preds = %_ZNK7rocksdb13FileSystemPtr3getEv.exit
  %i.xu = load <4 x i8>, ptr %61, align 8, !tbaa !45
  store <4 x i8> %i.xu, ptr %25, align 8, !tbaa !45
  store <4 x i8> zeroinitializer, ptr %61, align 8, !tbaa !45
  %i.xv = load i8, ptr %i.nd, align 4, !tbaa !177, !range !174, !noundef !175
  store i8 %i.xv, ptr %i.lc, align 4, !tbaa !187
  store i8 0, ptr %i.nd, align 4, !tbaa !187
  %i.xw = load i8, ptr %i.ne, align 1, !tbaa !45
  store i8 %i.xw, ptr %i.le, align 1, !tbaa !188
  store i8 0, ptr %i.ne, align 1, !tbaa !188
  %i.xx = load ptr, ptr %i.nf, align 8, !tbaa !189
  store ptr null, ptr %i.nf, align 8, !tbaa !189
  %i.xy = load ptr, ptr %i.b, align 8, !tbaa !189 ; 2 uses
  store ptr %i.xx, ptr %i.b, align 8, !tbaa !189
  %.not.i.i.i.i.i487 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i.i.i.i487, label %_ZN7rocksdb6StatusD2Ev.exit493, label %_ZN7rocksdb6StatusaSEOS0_.exit490

_ZN7rocksdb6StatusaSEOS0_.exit490:                ; preds = %bb.em
  call void @_ZdaPv(ptr noundef nonnull %i.xy) #29
  %.pr975 = load ptr, ptr %i.nf, align 8, !tbaa !189 ; 2 uses
  %.not.i.i491 = icmp eq ptr %.pr975, null
  br i1 %.not.i.i491, label %_ZN7rocksdb6StatusD2Ev.exit493, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i492

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i492: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit490
  call void @_ZdaPv(ptr noundef nonnull %.pr975) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit493

_ZN7rocksdb6StatusD2Ev.exit493:                   ; preds = %bb.em, %_ZN7rocksdb6StatusaSEOS0_.exit490, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i492
  %i.xz = load i8, ptr %i.nc, align 8, !tbaa !802, !range !174, !noundef !175
  %i.ya = trunc nuw i8 %i.xz to i1
  br i1 %i.ya, label %bb.en, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit

bb.en:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit493
  store i8 0, ptr %i.nc, align 8, !tbaa !802
  %i.yb = load ptr, ptr %i.nh, align 8, !tbaa !457 ; 2 uses
  %.not5.i.i.i905 = icmp eq ptr %i.yb, null
  br i1 %.not5.i.i.i905, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i913, label %.lr.ph.i.i.i906

.lr.ph.i.i.i906:                                  ; preds = %bb.en, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911
  %.06.i.i.i907 = phi ptr [ %i.yc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911 ], [ %i.yb, %bb.en ] ; 6 uses
  %i.yc = load ptr, ptr %.06.i.i.i907, align 8, !tbaa !458 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.06.i.i.i907, i64 8
  %i.ye = getelementptr inbounds nuw i8, ptr %.06.i.i.i907, i64 40
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !44 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.06.i.i.i907, i64 56 ; 2 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i909, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i908: ; preds = %.lr.ph.i.i.i906
  %i.yi = load i64, ptr %i.yg, align 8, !tbaa !45
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i909

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i909: ; preds = %.lr.ph.i.i.i906, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i908
  %i.yk = load ptr, ptr %i.yd, align 8, !tbaa !44 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.06.i.i.i907, i64 24 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i910

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i910: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i909
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !45
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yo) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i909, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i910
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i907, i64 noundef 80) #29
  %.not.i.i.i912 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i912, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i913, label %.lr.ph.i.i.i906, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i913: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i911, %bb.en
  %i.yp = load ptr, ptr %i.ng, align 8, !tbaa !452
  %i.yq = load i64, ptr %i.ni, align 8, !tbaa !453
  %i.yr = shl i64 %i.yq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.yp, i8 0, i64 %i.yr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nh, i8 0, i64 16, i1 false)
  %i.ys = load ptr, ptr %i.ng, align 8, !tbaa !452 ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.nj
  br i1 %i.yt, label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i913
  %i.yu = load i64, ptr %i.ni, align 8, !tbaa !453
  %i.yv = shl i64 %i.yu, 3
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #29
  br label %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit: ; preds = %bb.eo, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i913, %_ZN7rocksdb6StatusD2Ev.exit493
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  %i.yw = load i8, ptr %i.nb, align 8, !tbaa !802, !range !174, !noundef !175
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %bb.ep, label %bb.er

bb.ep:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit
  store i8 0, ptr %i.nb, align 8, !tbaa !802
  %i.yy = load ptr, ptr %i.nl, align 8, !tbaa !457 ; 2 uses
  %.not5.i.i.i917 = icmp eq ptr %i.yy, null
  br i1 %.not5.i.i.i917, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i925, label %.lr.ph.i.i.i918

.lr.ph.i.i.i918:                                  ; preds = %bb.ep, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923
  %.06.i.i.i919 = phi ptr [ %i.yz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923 ], [ %i.yy, %bb.ep ] ; 6 uses
  %i.yz = load ptr, ptr %.06.i.i.i919, align 8, !tbaa !458 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %.06.i.i.i919, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %.06.i.i.i919, i64 40
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !44 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.06.i.i.i919, i64 56 ; 2 uses
  %i.ze = icmp eq ptr %i.zc, %i.zd
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i921, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i920

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i920: ; preds = %.lr.ph.i.i.i918
  %i.zf = load i64, ptr %i.zd, align 8, !tbaa !45
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i921

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i921: ; preds = %.lr.ph.i.i.i918, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i920
  %i.zh = load ptr, ptr %i.za, align 8, !tbaa !44 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %.06.i.i.i919, i64 24 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i922

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i922: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i921
  %i.zk = load i64, ptr %i.zi, align 8, !tbaa !45
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zl) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i921, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i922
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i919, i64 noundef 80) #29
  %.not.i.i.i924 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i924, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i925, label %.lr.ph.i.i.i918, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i925: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i923, %bb.ep
  %i.zm = load ptr, ptr %i.nk, align 8, !tbaa !452
  %i.zn = load i64, ptr %i.nm, align 8, !tbaa !453
  %i.zo = shl i64 %i.zn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.zm, i8 0, i64 %i.zo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, i8 0, i64 16, i1 false)
  %i.zp = load ptr, ptr %i.nk, align 8, !tbaa !452 ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.nn
  br i1 %i.zq, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i925
  %i.zr = load i64, ptr %i.nm, align 8, !tbaa !453
  %i.zs = shl i64 %i.zr, 3
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #29
  br label %bb.er

bb.er:                                            ; preds = %_ZNSt14_Optional_baseIN7rocksdb9IOOptionsELb0ELb0EED2Ev.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i925, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  store i8 %i.xj, ptr %i.xo, align 8, !tbaa !75
  %i.zt = load i8, ptr %25, align 8, !tbaa !190
  %i.zu = icmp eq i8 %i.zt, 0
  br i1 %i.zu, label %.thread978, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.zv = load ptr, ptr %i.lh, align 8, !tbaa !191, !nonnull !175, !align !192
end_hunk_1
