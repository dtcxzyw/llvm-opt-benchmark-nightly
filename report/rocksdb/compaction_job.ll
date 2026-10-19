Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob47MaybeResumeSubcompactionProgressOnInputIteratorEPNS_18SubcompactionStateEPNS_20InternalIteratorBaseINS_5SliceEEE:bb.a
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !384, !alias.scope !1679
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !72
  store i64 0, ptr %i.cm, align 8, !tbaa !384
  store i8 0, ptr %i.cd, align 8, !tbaa !73
  store ptr %i.ck, ptr %14, align 8, !tbaa !489
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.cl, ptr %i.co, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  store ptr @.str, ptr %18, align 8, !tbaa !489
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !490
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103 unwind label %bb.ah

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.cq = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cb
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103
  %i.cs = load i64, ptr %i.cb, align 8, !tbaa !73
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %i.cu = load ptr, ptr %16, align 8, !tbaa !72   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !73
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !437 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.da, null
  br i1 %.not.i.i110, label %_ZN7rocksdb6StatusD2Ev.exit112, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  call void @_ZdaPv(ptr noundef nonnull %i.da) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit112

_ZN7rocksdb6StatusD2Ev.exit112:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bp

bb.aa:                                            ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.bs

bb.ab:                                            ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit121

bb.ac:                                            ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ad:                                            ; preds = %bb.u
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ad
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !73
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.ac
  %.pn83 = phi { ptr, i32 } [ %i.dd, %bb.ac ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.de, %bb.ad ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !437 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i119, label %_ZN7rocksdb6StatusD2Ev.exit121, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit121

_ZN7rocksdb6StatusD2Ev.exit121:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.ab
  %.pn83.pn = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn83, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bs

bb.ae:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit100
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit130

bb.af:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.ag:                                            ; preds = %bb.x
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.ah:                                            ; preds = %bb.z
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.dq = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cb
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.ah
  %i.ds = load i64, ptr %i.cb, align 8, !tbaa !73
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.ag
  %.pn86 = phi { ptr, i32 } [ %i.do, %bb.ag ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.dp, %bb.ah ] ; 2 uses
  %i.du = load ptr, ptr %16, align 8, !tbaa !72   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !73
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.af
  %.pn86.pn = phi { ptr, i32 } [ %i.dn, %bb.af ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !437 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i128, label %_ZN7rocksdb6StatusD2Ev.exit130, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit130

_ZN7rocksdb6StatusD2Ev.exit130:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ae
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ae ], [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn86.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bs

bb.ai:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1073 ; 2 uses
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ef = zext i1 %i.ed to i8
  store i8 %i.ef, ptr %i.ee, align 8, !tbaa !1068
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.ec, ptr %i.eg, align 8, !tbaa !1070
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 5008
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %21, i64 5 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 5
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 9 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread
  %.not = phi i1 [ false, %bb.ai ], [ true, %.thread ] ; 4 uses
  br i1 %.not, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %2, align 8, !tbaa !700
  %i.ey = invoke noundef zeroext i1 @_ZNK7rocksdb10Compaction23SupportsPerKeyPlacementEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.ex)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.ey, label %bb.an, label %.thread

bb.am:                                            ; preds = %bb.ak
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.fa = phi ptr [ %i.ei, %bb.al ], [ %i.e, %bb.aj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  store ptr null, ptr %i.eh, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 6, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  invoke void @_ZN7rocksdb13CompactionJob30ReadOutputFilesTablePropertiesERKNS_10autovectorINS_12FileMetaDataELm8EEERKNS_11ReadOptionsERSt6vectorISt10shared_ptrIKNS_15TablePropertiesEESaISD_EEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1896) %1, ptr noundef nonnull align 8 dereferenceable(3432) %i.fb, ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.fc = load <4 x i8>, ptr %21, align 8, !tbaa !73
  store <4 x i8> %i.fc, ptr %19, align 8, !tbaa !73
  store <4 x i8> zeroinitializer, ptr %21, align 8, !tbaa !73
  %i.fd = load i8, ptr %i.ej, align 4, !tbaa !438, !range !408, !noundef !409
  store i8 %i.fd, ptr %i.ek, align 4, !tbaa !504
  store i8 0, ptr %i.ej, align 4, !tbaa !504
  %i.fe = load i8, ptr %i.el, align 1, !tbaa !73
  store i8 %i.fe, ptr %i.em, align 1, !tbaa !505
  store i8 0, ptr %i.el, align 1, !tbaa !505
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !437
  store ptr null, ptr %i.en, align 8, !tbaa !437
  %i.fg = load ptr, ptr %i.eh, align 8, !tbaa !437 ; 2 uses
  store ptr %i.ff, ptr %i.eh, align 8, !tbaa !437
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #34
  %.pr = load ptr, ptr %i.en, align 8, !tbaa !437 ; 2 uses
  %.not.i.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i.i131, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #34
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.ao, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %i.fh = load i8, ptr %19, align 8, !tbaa !500
  %i.fi = icmp eq i8 %i.fh, 0                     ; 2 uses
  br i1 %i.fi, label %bb.bc, label %bb.ap

bb.ap:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.fj = load ptr, ptr %i.o, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.fk = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.fl = load i32, ptr %i.s, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fm = select i1 %.not, ptr @.str.144, ptr @.str
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fo = load ptr, ptr %22, align 8, !tbaa !72
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull @.str.143, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.fk, i32 noundef %i.fl, ptr noundef nonnull %i.fm, ptr noundef %i.fo)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %22, align 8, !tbaa !72   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.eo
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ar
  %i.fr = load i64, ptr %i.eo, align 8, !tbaa !73
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.as unwind label %bb.az

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.145, i64 noundef 55)
          to label %.noexc140 unwind label %bb.ba ; 6 uses

.noexc140:                                        ; preds = %bb.as
  store ptr %i.ep, ptr %24, align 8, !tbaa !383, !alias.scope !1680
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !72 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

bb.at:                                            ; preds = %.noexc140
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !384 ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 16
  call void @llvm.assume(i1 %i.fz)
  %i.ga = add nuw nsw i64 %i.fy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ep, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.ga, i1 false)
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %.noexc140
  store ptr %i.fu, ptr %24, align 8, !tbaa !72, !alias.scope !1680
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !73
  store i64 %i.gb, ptr %i.ep, align 8, !tbaa !73, !alias.scope !1680
  %.phi.trans.insert.i138 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre.i139 = load i64, ptr %.phi.trans.insert.i138, align 8, !tbaa !384
  br label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.at
  %i.gc = phi i64 [ %i.fy, %bb.at ], [ %.pre.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store i64 %i.gc, ptr %i.eq, align 8, !tbaa !384, !alias.scope !1680
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !72
  store i64 0, ptr %i.gd, align 8, !tbaa !384
  store i8 0, ptr %i.fv, align 8, !tbaa !73
  %i.ge = load ptr, ptr %24, align 8, !tbaa !72
  store ptr %i.ge, ptr %23, align 8, !tbaa !489
  %i.gf = load i64, ptr %i.eq, align 8, !tbaa !384
  store i64 %i.gf, ptr %i.er, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  store ptr @.str, ptr %26, align 8, !tbaa !489
  store i64 0, ptr %i.es, align 8, !tbaa !490
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %26, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143 unwind label %bb.bb

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  %i.gg = load ptr, ptr %24, align 8, !tbaa !72   ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ep
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143
  %i.gi = load i64, ptr %i.ep, align 8, !tbaa !73
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.gk = load ptr, ptr %25, align 8, !tbaa !72   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.et
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.gm = load i64, ptr %i.et, align 8, !tbaa !73
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %.loopexit

bb.av:                                            ; preds = %bb.an
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bn

bb.aw:                                            ; preds = %bb.bc
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ax:                                            ; preds = %bb.ap
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.ay:                                            ; preds = %bb.aq
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %22, align 8, !tbaa !72   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.eo
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.ay
  %i.gu = load i64, ptr %i.eo, align 8, !tbaa !73
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.ax
  %.pn71 = phi { ptr, i32 } [ %i.gq, %bb.ax ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.gr, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.bn

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.ba:                                            ; preds = %bb.as
  %i.gx = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN7rocksdb13CompactionJob47MaybeResumeSubcompactionProgressOnInputIteratorEPNS_18SubcompactionStateEPNS_20InternalIteratorBaseINS_5SliceEEE:bb.a
  %i.hs = add i64 %i.hh, -1
  %xtraiter = and i64 %i.hq, 1
  %i.ht = sub nsw i64 0, %i.hp
  %i.hu = icmp eq i64 %i.hs, %i.ht
  br i1 %i.hu, label %.epil.preheader, label %.lr.ph189.new

.lr.ph189.new:                                    ; preds = %.lr.ph189
  %unroll_iter = and i64 %i.hq, -2
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge.1, %.lr.ph189.new
  %.sroa.5.0187 = phi i64 [ 0, %.lr.ph189.new ], [ %i.jg, %._crit_edge.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph189.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.hv = icmp ult i64 %.sroa.5.0187, 8
  %i.hw = load ptr, ptr %i.hr, align 8
  %i.hx = getelementptr inbounds nuw [424 x i8], ptr %i.hw, i64 %.sroa.5.0187
  %i.hy = load ptr, ptr %i.hi, align 8
  %i.hz = getelementptr [424 x i8], ptr %i.hy, i64 %.sroa.5.0187
  %i.ia = getelementptr i8, ptr %i.hz, i64 -3392
  %.0.i.i = select i1 %i.hv, ptr %i.hx, ptr %i.ia
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !632
  %i.id = and i64 %i.ic, 4611686018427387903      ; 2 uses
  %i.ie = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 216
  %i.ig = atomicrmw add ptr %i.if, i64 1 seq_cst, align 8
  %.not82185 = icmp ugt i64 %i.ig, %i.id
  br i1 %.not82185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be, %.lr.ph
  %i.ih = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 216
  %i.ij = atomicrmw add ptr %i.ii, i64 1 seq_cst, align 8 ; 0 uses
  %i.ik = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 216
  %i.im = atomicrmw add ptr %i.il, i64 1 seq_cst, align 8
  %.not82 = icmp ugt i64 %i.im, %i.id
  br i1 %.not82, label %._crit_edge, label %.lr.ph, !llvm.loop !1675

._crit_edge:                                      ; preds = %.lr.ph, %bb.be
  %i.in = or disjoint i64 %.sroa.5.0187, 1        ; 2 uses
  %i.io = icmp ult i64 %.sroa.5.0187, 8
  %i.ip = load ptr, ptr %i.hr, align 8
  %i.iq = getelementptr inbounds nuw [424 x i8], ptr %i.ip, i64 %i.in
  %i.ir = load ptr, ptr %i.hi, align 8
  %i.is = getelementptr [424 x i8], ptr %i.ir, i64 %i.in
  %i.it = getelementptr i8, ptr %i.is, i64 -3392
  %.0.i.i.1 = select i1 %i.io, ptr %i.iq, ptr %i.it
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !632
  %i.iw = and i64 %i.iv, 4611686018427387903      ; 2 uses
  %i.ix = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 216
  %i.iz = atomicrmw add ptr %i.iy, i64 1 seq_cst, align 8
  %.not82185.1 = icmp ugt i64 %i.iz, %i.iw
  br i1 %.not82185.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %i.ja = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 216
  %i.jc = atomicrmw add ptr %i.jb, i64 1 seq_cst, align 8 ; 0 uses
  %i.jd = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 216
  %i.jf = atomicrmw add ptr %i.je, i64 1 seq_cst, align 8
  %.not82.1 = icmp ugt i64 %i.jf, %i.iw
  br i1 %.not82.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !1675

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.jg = add nuw i64 %.sroa.5.0187, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.be

.loopexit.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph189
  %.sroa.5.0187.epil.init = phi i64 [ 0, %.lr.ph189 ], [ %i.jg, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod243 = trunc i64 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.jh = icmp ult i64 %.sroa.5.0187.epil.init, 8
  %i.ji = load ptr, ptr %i.hr, align 8
  %i.jj = getelementptr inbounds nuw [424 x i8], ptr %i.ji, i64 %.sroa.5.0187.epil.init
  %i.jk = load ptr, ptr %i.hi, align 8
  %i.jl = getelementptr [424 x i8], ptr %i.jk, i64 %.sroa.5.0187.epil.init
  %i.jm = getelementptr i8, ptr %i.jl, i64 -3392
  %.0.i.i.epil = select i1 %i.jh, ptr %i.jj, ptr %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i.i.epil, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !632
  %i.jp = and i64 %i.jo, 4611686018427387903      ; 2 uses
  %i.jq = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 216
  %i.js = atomicrmw add ptr %i.jr, i64 1 seq_cst, align 8
  %.not82185.epil = icmp ugt i64 %i.js, %i.jp
  br i1 %.not82185.epil, label %.loopexit, label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.epil.preheader, %.lr.ph.epil
  %i.jt = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 216
  %i.jv = atomicrmw add ptr %i.ju, i64 1 seq_cst, align 8 ; 0 uses
  %i.jw = load ptr, ptr %i.eu, align 8, !tbaa !413
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 216
  %i.jy = atomicrmw add ptr %i.jx, i64 1 seq_cst, align 8
  %.not82.epil = icmp ugt i64 %i.jy, %i.jp
  br i1 %.not82.epil, label %.loopexit, label %.lr.ph.epil, !llvm.loop !1675

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.jz = load ptr, ptr %20, align 8, !tbaa !1079 ; 3 uses
  %i.ka = load ptr, ptr %i.ev, align 8, !tbaa !1080 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jz, %i.ka
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ks, %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i ], [ %i.jz, %.loopexit ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !394 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 4 uses
  %i.ke = load atomic i64, ptr %i.kd acquire, align 8 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 4294967297
  %i.kg = trunc i64 %i.ke to i32                  ; 2 uses
  br i1 %i.kf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.kd, align 8, !tbaa !397
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i32 0, ptr %i.kh, align 4, !tbaa !398
  %i.ki = load ptr, ptr %i.kc, align 8, !tbaa !75
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #37, !inline_history !1676
  %i.kl = load ptr, ptr %i.kc, align 8, !tbaa !75
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #37, !inline_history !1676
  br label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ko = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ko, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kp = add nsw i32 %i.kg, -1
  store i32 %i.kp, ptr %i.kd, align 8, !tbaa !381
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.kq = atomicrmw volatile add ptr %i.kd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kg, %bb.bi ], [ %i.kq, %bb.bj ]
  %i.kr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.kr, label %bb.bk, label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i, !prof !385

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kc) #37
  br label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bg, %.lr.ph.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ks, %i.ka
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !1079
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.kt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.jz, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i
  %i.ku = load ptr, ptr %i.ew, align 8, !tbaa !1081
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kx) #34
  br label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.ky = load ptr, ptr %i.eh, align 8, !tbaa !437 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i159, label %bb.bm, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160: ; preds = %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ky) #34
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160, %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br i1 %i.fi, label %.thread, label %bb.bp

.thread:                                          ; preds = %bb.bm, %bb.al
  br i1 %.not, label %bb.bo, label %bb.aj

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.aw, %bb.av
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.av ], [ %i.gp, %bb.aw ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ]
  call void @_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.kz = load ptr, ptr %i.eh, align 8, !tbaa !437 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i162, label %_ZN7rocksdb6StatusD2Ev.exit164, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163: ; preds = %bb.bn
  call void @_ZdaPv(ptr noundef nonnull %i.kz) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit164

_ZN7rocksdb6StatusD2Ev.exit164:                   ; preds = %bb.bn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.bs

bb.bo:                                            ; preds = %.thread
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.la, align 8, !tbaa !95, !alias.scope !1682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1682
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bo, %_ZN7rocksdb6StatusD2Ev.exit112, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZN7rocksdb6Status8NotFoundERKNS_5SliceES3_.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !507 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i165, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.le = invoke noundef zeroext i1 %i.lc(ptr noundef nonnull align 8 dereferenceable(32) %i.ld, ptr noundef nonnull align 8 dereferenceable(32) %i.ld, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.br ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #38
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.bs:                                            ; preds = %bb.am, %_ZN7rocksdb6StatusD2Ev.exit164, %_ZN7rocksdb6StatusD2Ev.exit130, %_ZN7rocksdb6StatusD2Ev.exit121, %bb.aa, %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.e, %bb.d
  %.pn90 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn86.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit130 ], [ %.pn83.pn, %_ZN7rocksdb6StatusD2Ev.exit121 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.m, %bb.d ], [ %i.db, %bb.aa ], [ %i.ba, %bb.p ], [ %i.az, %bb.o ], [ %.pn76.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit164 ], [ %i.ez, %bb.am ]
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !507 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.li, null
  br i1 %.not.i.i166, label %_ZN7rocksdb11ReadOptionsD2Ev.exit167, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.lk = invoke noundef zeroext i1 %i.li(ptr noundef nonnull align 8 dereferenceable(32) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %i.lj, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit167 unwind label %bb.bu ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #38
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit167:             ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn90
}

declare void @_ZN7rocksdb11MergeHelperC1EPNS_3EnvEPKNS_10ComparatorEPKNS_13MergeOperatorEPKNS_16CompactionFilterEPNS_6LoggerEbmPKNS_15SnapshotCheckerEiPNS_10StatisticsEPKSt6atomicIbE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #8

declare void @_ZN7rocksdb18CompactionIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(1505)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob21FinalizeSubcompactionEPNS_18SubcompactionStateENS_6StatusERKSt8functionIFS3_RNS_17CompactionOutputsEEERKS4_IFS3_RKS3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EEPNS_15BlobFileBuilderEPSJ_PNS_20InternalIteratorBaseISG_EEmmRKNS0_25CompactionIOStatsSnapshotE(ptr noundef nonnull align 8 dereferenceable(1896) %0, ptr noundef %1, ptr nofree noundef align 8 captures(address) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, ptr noundef %6, ptr nofree readnone captures(none) %7, i64 noundef %8, i64 noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %10) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.a = load <4 x i8>, ptr %2, align 8, !tbaa !73
  store <4 x i8> %i.a, ptr %15, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !504, !range !408, !noundef !409
  store i8 %i.d, ptr %i.b, align 4, !tbaa !504
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 5 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !505
  store i8 %i.g, ptr %i.e, align 1, !tbaa !505
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 7 uses
  store ptr null, ptr %i.h, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !437  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store ptr null, ptr %i.h, align 8, !tbaa !437
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !437
  %.pre16.i = load ptr, ptr %i.h, align 8, !tbaa !437 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !437
  store ptr %.pre.i, ptr %i.h, align 8, !tbaa !437
  %.not.i.i.i.i.i = icmp eq ptr %.pre16.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i) #34
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !437 ; 2 uses
  %.not.i11.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i11.i, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #34
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !437  ; 2 uses
  %.not.i12.i = icmp eq ptr %i.l, null
  br i1 %.not.i12.i, label %common.resume, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #34
  br label %common.resume

common.resume:                                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit57, %_ZN7rocksdb6StatusD2Ev.exit61, %bb.d, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i
  %common.resume.op = phi { ptr, i32 } [ %i.az, %_ZN7rocksdb6StatusD2Ev.exit61 ], [ %i.k, %bb.d ], [ %i.k, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i13.i ], [ %i.ax, %_ZN7rocksdb6StatusD2Ev.exit57 ]
  resume { ptr, i32 } %common.resume.op

_ZN7rocksdb6StatusC2ERKS0_.exit:                  ; preds = %.thread.i, %bb.c, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  invoke void @_ZN7rocksdb18SubcompactionState20CloseCompactionFilesERKNS_6StatusERKSt8functionIFS1_RNS_17CompactionOutputsEEERKS4_IFS1_S3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8456) %1, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7rocksdb13CompactionJob22CleanupCompactionFilesEPNS_18SubcompactionStateENS_6StatusERKSt8functionIFS3_RNS_17CompactionOutputsEEERKS4_IFS3_RKS3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EE.exit unwind label %bb.l

_ZN7rocksdb13CompactionJob22CleanupCompactionFilesEPNS_18SubcompactionStateENS_6StatusERKSt8functionIFS3_RNS_17CompactionOutputsEEERKS4_IFS3_RKS3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EE.exit: ; preds = %_ZN7rocksdb6StatusC2ERKS0_.exit
  %.not.i = icmp eq ptr %2, %14
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb13CompactionJob22CleanupCompactionFilesEPNS_18SubcompactionStateENS_6StatusERKSt8functionIFS3_RNS_17CompactionOutputsEEERKS4_IFS3_RKS3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EE.exit
  %i.m = load <4 x i8>, ptr %14, align 8, !tbaa !73
  store <4 x i8> %i.m, ptr %2, align 8, !tbaa !73
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !438, !range !408, !noundef !409
  store i8 %i.o, ptr %i.c, align 4, !tbaa !504
  store i8 0, ptr %i.n, align 4, !tbaa !504
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !73
  store i8 %i.q, ptr %i.f, align 1, !tbaa !505
  store i8 0, ptr %i.p, align 1, !tbaa !505
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !437
  store ptr null, ptr %i.r, align 8, !tbaa !437
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !437  ; 2 uses
  store ptr %i.s, ptr %i.i, align 8, !tbaa !437
  %.not.i.i.i.i.i15 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i15, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.t) #34
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb13CompactionJob22CleanupCompactionFilesEPNS_18SubcompactionStateENS_6StatusERKSt8functionIFS3_RNS_17CompactionOutputsEEERKS4_IFS3_RKS3_RKNS_17ParsedInternalKeyERKNS_5SliceEPKNS_18CompactionIteratorES6_EE.exit, %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !437  ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.v, null
  br i1 %.not.i.i17, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.v) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !437  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.w, null
  br i1 %.not.i.i19, label %_ZN7rocksdb6StatusD2Ev.exit21, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.w) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit21

_ZN7rocksdb6StatusD2Ev.exit21:                    ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.x = load <4 x i8>, ptr %2, align 8, !tbaa !73
  store <4 x i8> %i.x, ptr %17, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.z = load i8, ptr %i.c, align 4, !tbaa !504, !range !408, !noundef !409
  store i8 %i.z, ptr %i.y, align 4, !tbaa !504
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 5
  %i.ab = load i8, ptr %i.f, align 1, !tbaa !505
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !505
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !437 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i22, label %_ZN7rocksdb6StatusC2ERKS0_.exit34, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit21
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef nonnull %i.ad)
  %.pre.i26 = load ptr, ptr %12, align 8, !tbaa !437
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit34

end_hunk_1
