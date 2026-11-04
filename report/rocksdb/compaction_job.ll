Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJob47MaybeResumeSubcompactionProgressOnInputIteratorEPNS_18SubcompactionStateEPNS_20InternalIteratorBaseINS_5SliceEEE:bb.a
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !384, !alias.scope !1681
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !72
  store i64 0, ptr %i.cl, align 8, !tbaa !384
  store i8 0, ptr %i.cc, align 8, !tbaa !73
  store ptr %i.cj, ptr %14, align 8, !tbaa !489
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ck, ptr %i.cn, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  store ptr @.str, ptr %18, align 8, !tbaa !489
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !490
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103 unwind label %bb.ag

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.cp = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ca
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103
  %i.cr = load i64, ptr %i.ca, align 8, !tbaa !73
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %i.ct = load ptr, ptr %16, align 8, !tbaa !72   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !73
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !437 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i110, label %_ZN7rocksdb6StatusD2Ev.exit112, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit112

_ZN7rocksdb6StatusD2Ev.exit112:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bo

bb.z:                                             ; preds = %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.br

bb.aa:                                            ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit121

bb.ab:                                            ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ac:                                            ; preds = %bb.t
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ac
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !73
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.ab
  %.pn83 = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.dd, %bb.ac ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !437 ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i119, label %_ZN7rocksdb6StatusD2Ev.exit121, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  call void @_ZdaPv(ptr noundef nonnull %i.dk) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit121

_ZN7rocksdb6StatusD2Ev.exit121:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.aa
  %.pn83.pn = phi { ptr, i32 } [ %i.db, %bb.aa ], [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn83, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.br

bb.ad:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit100
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit130

bb.ae:                                            ; preds = %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.af:                                            ; preds = %bb.w
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.ag:                                            ; preds = %bb.y
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.dp = load ptr, ptr %15, align 8, !tbaa !72   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ca
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.ag
  %i.dr = load i64, ptr %i.ca, align 8, !tbaa !73
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.af
  %.pn86 = phi { ptr, i32 } [ %i.dn, %bb.af ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.do, %bb.ag ] ; 2 uses
  %i.dt = load ptr, ptr %16, align 8, !tbaa !72   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !73
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.ae
  %.pn86.pn = phi { ptr, i32 } [ %i.dm, %bb.ae ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !437 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i128, label %_ZN7rocksdb6StatusD2Ev.exit130, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  call void @_ZdaPv(ptr noundef nonnull %i.dz) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit130

_ZN7rocksdb6StatusD2Ev.exit130:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ad
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ad ], [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn86.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.br

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 1552
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !1073 ; 2 uses
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ee = zext i1 %i.ec to i8
  store i8 %i.ee, ptr %i.ed, align 8, !tbaa !1068
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %i.eb, ptr %i.ef, align 8, !tbaa !1070
  %i.eg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 5008
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %21, i64 5 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 5
  %i.em = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 1520 ; 9 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread
  %.not = phi i1 [ false, %bb.ah ], [ true, %.thread ] ; 4 uses
  br i1 %.not, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ew = load ptr, ptr %2, align 8, !tbaa !700
  %i.ex = invoke noundef zeroext i1 @_ZNK7rocksdb10Compaction23SupportsPerKeyPlacementEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.ew)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ex, label %bb.am, label %bb.bn

bb.al:                                            ; preds = %bb.aj, %bb.h, %bb.j
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %i.ez = phi ptr [ %i.eh, %bb.ak ], [ %i.e, %bb.ai ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  store ptr null, ptr %i.eg, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 6, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  invoke void @_ZN7rocksdb13CompactionJob30ReadOutputFilesTablePropertiesERKNS_10autovectorINS_12FileMetaDataELm8EEERKNS_11ReadOptionsERSt6vectorISt10shared_ptrIKNS_15TablePropertiesEESaISD_EEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %21, ptr noundef nonnull align 8 dereferenceable(1896) %1, ptr noundef nonnull align 8 dereferenceable(3432) %i.fa, ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext false)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.fb = load <4 x i8>, ptr %21, align 8, !tbaa !73
  store <4 x i8> %i.fb, ptr %19, align 8, !tbaa !73
  store <4 x i8> zeroinitializer, ptr %21, align 8, !tbaa !73
  %i.fc = load i8, ptr %i.ei, align 4, !tbaa !438, !range !408, !noundef !409
  store i8 %i.fc, ptr %i.ej, align 4, !tbaa !504
  store i8 0, ptr %i.ei, align 4, !tbaa !504
  %i.fd = load i8, ptr %i.ek, align 1, !tbaa !73
  store i8 %i.fd, ptr %i.el, align 1, !tbaa !505
  store i8 0, ptr %i.ek, align 1, !tbaa !505
  %i.fe = load ptr, ptr %i.em, align 8, !tbaa !437
  store ptr null, ptr %i.em, align 8, !tbaa !437
  %i.ff = load ptr, ptr %i.eg, align 8, !tbaa !437 ; 2 uses
  store ptr %i.fe, ptr %i.eg, align 8, !tbaa !437
  %.not.i.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.ff) #34
  %.pr = load ptr, ptr %i.em, align 8, !tbaa !437 ; 2 uses
  %.not.i.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i.i131, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #34
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.an, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i132, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %i.fg = load i8, ptr %19, align 8, !tbaa !500
  %i.fh = icmp eq i8 %i.fg, 0                     ; 2 uses
  br i1 %i.fh, label %bb.bb, label %bb.ao

bb.ao:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.fi = load ptr, ptr %i.n, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.fk = load i32, ptr %i.r, align 8, !tbaa !391
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.fl = select i1 %.not, ptr @.str.144, ptr @.str
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fn = load ptr, ptr %22, align 8, !tbaa !72
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull @.str.143, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.fj, i32 noundef %i.fk, ptr noundef nonnull %i.fl, ptr noundef %i.fn)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %22, align 8, !tbaa !72   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.en
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aq
  %i.fq = load i64, ptr %i.en, align 8, !tbaa !73
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.fs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.145, i64 noundef 55)
          to label %.noexc140 unwind label %bb.az ; 6 uses

.noexc140:                                        ; preds = %bb.ar
  store ptr %i.eo, ptr %24, align 8, !tbaa !383, !alias.scope !1682
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !72 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 5 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

bb.as:                                            ; preds = %.noexc140
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !384 ; 3 uses
  %i.fy = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add nuw nsw i64 %i.fx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(1) %i.fu, i64 %i.fz, i1 false)
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %.noexc140
  store ptr %i.ft, ptr %24, align 8, !tbaa !72, !alias.scope !1682
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !73
  store i64 %i.ga, ptr %i.eo, align 8, !tbaa !73, !alias.scope !1682
  %.phi.trans.insert.i138 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.pre.i139 = load i64, ptr %.phi.trans.insert.i138, align 8, !tbaa !384
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.as
  %i.gb = phi i64 [ %i.fx, %bb.as ], [ %.pre.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.gb, ptr %i.ep, align 8, !tbaa !384, !alias.scope !1682
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !72
  store i64 0, ptr %i.gc, align 8, !tbaa !384
  store i8 0, ptr %i.fu, align 8, !tbaa !73
  %i.gd = load ptr, ptr %24, align 8, !tbaa !72
  store ptr %i.gd, ptr %23, align 8, !tbaa !489
  %i.ge = load i64, ptr %i.ep, align 8, !tbaa !384
  store i64 %i.ge, ptr %i.eq, align 8, !tbaa !490
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  store ptr @.str, ptr %26, align 8, !tbaa !489
  store i64 0, ptr %i.er, align 8, !tbaa !490
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %26, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143 unwind label %bb.ba

_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  %i.gf = load ptr, ptr %24, align 8, !tbaa !72   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.eo
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143
  %i.gh = load i64, ptr %i.eo, align 8, !tbaa !73
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  %i.gj = load ptr, ptr %25, align 8, !tbaa !72   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.es
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %i.gl = load i64, ptr %i.es, align 8, !tbaa !73
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %.loopexit

bb.au:                                            ; preds = %bb.am
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bm

bb.av:                                            ; preds = %bb.bb
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aw:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.ax:                                            ; preds = %bb.ap
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %22, align 8, !tbaa !72   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.en
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.ax
  %i.gt = load i64, ptr %i.en, align 8, !tbaa !73
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.aw
  %.pn71 = phi { ptr, i32 } [ %i.gp, %bb.aw ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.gq, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  br label %bb.bm

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

bb.az:                                            ; preds = %bb.ar
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
end_hunk_0
begin_hunk_1_@_ZN7rocksdb13CompactionJob47MaybeResumeSubcompactionProgressOnInputIteratorEPNS_18SubcompactionStateEPNS_20InternalIteratorBaseINS_5SliceEEE:bb.a
  %i.hr = add i64 %i.hg, -1
  %xtraiter = and i64 %i.hp, 1
  %i.hs = sub nsw i64 0, %i.ho
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %.epil.preheader, label %.lr.ph189.new

.lr.ph189.new:                                    ; preds = %.lr.ph189
  %unroll_iter = and i64 %i.hp, -2
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.1, %.lr.ph189.new
  %.sroa.5.0187 = phi i64 [ 0, %.lr.ph189.new ], [ %i.jf, %._crit_edge.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph189.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.hu = icmp ult i64 %.sroa.5.0187, 8
  %i.hv = load ptr, ptr %i.hq, align 8
  %i.hw = getelementptr inbounds nuw [424 x i8], ptr %i.hv, i64 %.sroa.5.0187
  %i.hx = load ptr, ptr %i.hh, align 8
  %i.hy = getelementptr [424 x i8], ptr %i.hx, i64 %.sroa.5.0187
  %i.hz = getelementptr i8, ptr %i.hy, i64 -3392
  %.0.i.i = select i1 %i.hu, ptr %i.hw, ptr %i.hz
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !632
  %i.ic = and i64 %i.ib, 4611686018427387903      ; 2 uses
  %i.id = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 216
  %i.if = atomicrmw add ptr %i.ie, i64 1 seq_cst, align 8
  %.not82185 = icmp ugt i64 %i.if, %i.ic
  br i1 %.not82185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd, %.lr.ph
  %i.ig = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 216
  %i.ii = atomicrmw add ptr %i.ih, i64 1 seq_cst, align 8 ; 0 uses
  %i.ij = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 216
  %i.il = atomicrmw add ptr %i.ik, i64 1 seq_cst, align 8
  %.not82 = icmp ugt i64 %i.il, %i.ic
  br i1 %.not82, label %._crit_edge, label %.lr.ph, !llvm.loop !1677

._crit_edge:                                      ; preds = %.lr.ph, %bb.bd
  %i.im = or disjoint i64 %.sroa.5.0187, 1        ; 2 uses
  %i.in = icmp ult i64 %.sroa.5.0187, 8
  %i.io = load ptr, ptr %i.hq, align 8
  %i.ip = getelementptr inbounds nuw [424 x i8], ptr %i.io, i64 %i.im
  %i.iq = load ptr, ptr %i.hh, align 8
  %i.ir = getelementptr [424 x i8], ptr %i.iq, i64 %i.im
  %i.is = getelementptr i8, ptr %i.ir, i64 -3392
  %.0.i.i.1 = select i1 %i.in, ptr %i.ip, ptr %i.is
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !632
  %i.iv = and i64 %i.iu, 4611686018427387903      ; 2 uses
  %i.iw = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 216
  %i.iy = atomicrmw add ptr %i.ix, i64 1 seq_cst, align 8
  %.not82185.1 = icmp ugt i64 %i.iy, %i.iv
  br i1 %.not82185.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %i.iz = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 216
  %i.jb = atomicrmw add ptr %i.ja, i64 1 seq_cst, align 8 ; 0 uses
  %i.jc = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 216
  %i.je = atomicrmw add ptr %i.jd, i64 1 seq_cst, align 8
  %.not82.1 = icmp ugt i64 %i.je, %i.iv
  br i1 %.not82.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !1677

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.jf = add nuw i64 %.sroa.5.0187, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bd

.loopexit.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph189
  %.sroa.5.0187.epil.init = phi i64 [ 0, %.lr.ph189 ], [ %i.jf, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod243 = trunc i64 %i.hp to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.jg = icmp ult i64 %.sroa.5.0187.epil.init, 8
  %i.jh = load ptr, ptr %i.hq, align 8
  %i.ji = getelementptr inbounds nuw [424 x i8], ptr %i.jh, i64 %.sroa.5.0187.epil.init
  %i.jj = load ptr, ptr %i.hh, align 8
  %i.jk = getelementptr [424 x i8], ptr %i.jj, i64 %.sroa.5.0187.epil.init
  %i.jl = getelementptr i8, ptr %i.jk, i64 -3392
  %.0.i.i.epil = select i1 %i.jg, ptr %i.ji, ptr %i.jl
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i.i.epil, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !632
  %i.jo = and i64 %i.jn, 4611686018427387903      ; 2 uses
  %i.jp = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 216
  %i.jr = atomicrmw add ptr %i.jq, i64 1 seq_cst, align 8
  %.not82185.epil = icmp ugt i64 %i.jr, %i.jo
  br i1 %.not82185.epil, label %.loopexit, label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.epil.preheader, %.lr.ph.epil
  %i.js = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 216
  %i.ju = atomicrmw add ptr %i.jt, i64 1 seq_cst, align 8 ; 0 uses
  %i.jv = load ptr, ptr %i.et, align 8, !tbaa !413
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 216
  %i.jx = atomicrmw add ptr %i.jw, i64 1 seq_cst, align 8
  %.not82.epil = icmp ugt i64 %i.jx, %i.jo
  br i1 %.not82.epil, label %.loopexit, label %.lr.ph.epil, !llvm.loop !1677

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.epil.preheader, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %i.jy = load ptr, ptr %20, align 8, !tbaa !1079 ; 3 uses
  %i.jz = load ptr, ptr %i.eu, align 8, !tbaa !1080 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jy, %i.jz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i ], [ %i.jy, %.loopexit ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !394 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.kc, align 8, !tbaa !397
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !398
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !75
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #37, !inline_history !1678
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !75
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #37, !inline_history !1678
  br label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !381
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kf, %bb.bh ], [ %i.kp, %bb.bi ]
  %i.kq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.kq, label %bb.bj, label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i, !prof !385

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #37
  br label %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i: ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bf, %.lr.ph.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kr, %i.jz
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN7rocksdb15TablePropertiesEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !1079
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.ks = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.jy, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i
  %i.kt = load ptr, ptr %i.ev, align 8, !tbaa !1081
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kw) #34
  br label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN7rocksdb15TablePropertiesEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.kx = load ptr, ptr %i.eg, align 8, !tbaa !437 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i159, label %bb.bl, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160: ; preds = %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.kx) #34
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i160, %_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br i1 %i.fh, label %.thread, label %bb.bo

.thread:                                          ; preds = %bb.bl
  br i1 %.not, label %bb.bn, label %bb.ai

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.av, %bb.au
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.au ], [ %i.go, %bb.av ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ]
  call void @_ZNSt6vectorISt10shared_ptrIKN7rocksdb15TablePropertiesEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.ky = load ptr, ptr %i.eg, align 8, !tbaa !437 ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i162, label %_ZN7rocksdb6StatusD2Ev.exit164, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163: ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.ky) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit164

_ZN7rocksdb6StatusD2Ev.exit164:                   ; preds = %bb.bm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.br

bb.bn:                                            ; preds = %bb.ak, %.thread
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.kz, align 8, !tbaa !95, !alias.scope !1684
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !1684
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %_ZN7rocksdb6StatusD2Ev.exit112, %_ZN7rocksdb6Status10CorruptionERKNS_5SliceES3_.exit, %_ZN7rocksdb6Status8NotFoundERKNS_5SliceES3_.exit
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !507 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i165, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.ld = invoke noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(32) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lc, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #38
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.br:                                            ; preds = %bb.al, %_ZN7rocksdb6StatusD2Ev.exit164, %_ZN7rocksdb6StatusD2Ev.exit130, %_ZN7rocksdb6StatusD2Ev.exit121, %bb.z, %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.d
  %.pn90 = phi { ptr, i32 } [ %i.m, %bb.d ], [ %.pn86.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit130 ], [ %.pn83.pn, %_ZN7rocksdb6StatusD2Ev.exit121 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.ey, %bb.al ], [ %i.da, %bb.z ], [ %i.az, %bb.o ], [ %i.ay, %bb.n ], [ %.pn76.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit164 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !507 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i166, label %_ZN7rocksdb11ReadOptionsD2Ev.exit167, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.lj = invoke noundef zeroext i1 %i.lh(ptr noundef nonnull align 8 dereferenceable(32) %i.li, ptr noundef nonnull align 8 dereferenceable(32) %i.li, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit167 unwind label %bb.bt ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #38
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit167:             ; preds = %bb.br, %bb.bs
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
