Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/blob_file_cache?download=true
inline.NumInlined: 251
inline.NumDeleted: 143
begin_hunk_0_@_ZN7rocksdb13BlobFileCache17GetBlobFileReaderERKNS_11ReadOptionsEmPNS_16CacheHandleGuardINS_14BlobFileReaderEEEb:bb.a
  br label %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.by = load i32, ptr %i.bm, align 8, !tbaa !46
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !49
  invoke void @_ZN7rocksdb14BlobFileReader6CreateERKNS_16ImmutableOptionsERKNS_11ReadOptionsERKNS_11FileOptionsEjPNS_13HistogramImplEmRKSt10shared_ptrINS_8IOTracerEEbPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(875) %i.bw, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.bx, i32 noundef %i.by, ptr noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i1 noundef zeroext true, ptr noundef nonnull %8)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit
  %.not.i57 = icmp eq ptr %0, %9
  br i1 %.not.i57, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load <4 x i8>, ptr %9, align 8, !tbaa !48
  store <4 x i8> %i.cb, ptr %0, align 8, !tbaa !48
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !48
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !30, !range !31, !noundef !32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cd, ptr %i.ce, align 4, !tbaa !128
  store i8 0, ptr %i.cc, align 4, !tbaa !128
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !48
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !129
  store i8 0, ptr %i.cf, align 1, !tbaa !129
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !130
  store ptr null, ptr %i.ci, align 8, !tbaa !130
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !130 ; 2 uses
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !130
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #14
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.n, %bb.o, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !130 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i58, label %bb.s, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #14
  br label %bb.s

bb.p:                                             ; preds = %bb.e, %bb.j, %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.q:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ad

bb.s:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr = load i8, ptr %0, align 8, !tbaa !126
  %i.cr = icmp eq i8 %.pr, 0
  br i1 %i.cr, label %.critedge44, label %.thread94

.thread94:                                        ; preds = %bb.l, %bb.s
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 592
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !161
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !49
  %i.cw = load i32, ptr %i.bm, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %.thread94
  %i.cx = load ptr, ptr %10, align 8, !tbaa !162
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.cu, ptr noundef nonnull @.str, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 32), i64 noundef %i.cv, i32 noundef %i.cw, ptr noundef %i.cx)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cy = load ptr, ptr %10, align 8, !tbaa !162  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !48
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br i1 %.not.i55, label %.critedge39, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(33) %i.bf, i32 noundef 75, i64 noundef 1)
          to label %.critedge39 unwind label %bb.q, !inline_history !3

bb.w:                                             ; preds = %.thread94
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.x:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %10, align 8, !tbaa !162  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.x
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !48
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.w ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.dh, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ad

.critedge44:                                      ; preds = %bb.k, %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !130 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.do, null
  br i1 %.not.i.i65, label %_ZN7rocksdb6StatusD2Ev.exit67, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66: ; preds = %.critedge44
  call void @_ZdaPv(ptr noundef nonnull %i.do) #14
  br label %_ZN7rocksdb6StatusD2Ev.exit67

_ZN7rocksdb6StatusD2Ev.exit67:                    ; preds = %.critedge44, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i66
  %i.dp = load ptr, ptr %8, align 8, !tbaa !127
  %i.dq = load ptr, ptr %1, align 8, !tbaa !17, !noalias !163 ; 2 uses
  %i.dr = load atomic i8, ptr @_ZGVZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper acquire, align 8, !noalias !163
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.y, label %_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i, !prof !131

bb.y:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit67
  %i.dt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper) #13, !noalias !163
  %.not.i.i68 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i68, label %_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @_ZN7rocksdb24BasicTypedCacheHelperFnsINS_14BlobFileReaderEE6DeleteEPvPNS_15MemoryAllocatorE, ptr @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, align 8, !tbaa !135, !noalias !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, i64 8), i8 0, i64 24, i1 false), !noalias !163
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, i64 32), align 8, !tbaa !136, !noalias !163
  store ptr @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, i64 40), align 8, !tbaa !137, !noalias !163
  %i.du = call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper), !noalias !163 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper) #13, !noalias !163
  br label %_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i

_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i: ; preds = %bb.z, %bb.y, %_ZN7rocksdb6StatusD2Ev.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !163
  store ptr @.str.2, ptr %6, align 8, !tbaa !64, !noalias !163
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dv, align 8, !tbaa !65, !noalias !163
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !51, !noalias !163
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !163
  invoke void %i.dy(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.dp, ptr noundef nonnull @_ZZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEvE7kHelper, i64 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
          to label %bb.aa unwind label %bb.ai, !inline_history !4

bb.aa:                                            ; preds = %_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !163
  %i.dz = load i8, ptr %0, align 8, !tbaa !126
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i55, label %.critedge39, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 176
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(33) %i.bf, i32 noundef 75, i64 noundef 1)
          to label %.critedge39 unwind label %bb.ae, !inline_history !3

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.r, %bb.q
  %.pn29 = phi { ptr, i32 } [ %i.cp, %bb.q ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.cq, %bb.r ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !130 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i73, label %_ZN7rocksdb6StatusD2Ev.exit75, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74: ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.ef) #14
  br label %_ZN7rocksdb6StatusD2Ev.exit75

bb.ae:                                            ; preds = %bb.ac
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %i.dn, align 8, !tbaa !130 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit75, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.eh) #14
  br label %_ZN7rocksdb6StatusD2Ev.exit75

.critedge:                                        ; preds = %bb.aa
  %i.ei = load ptr, ptr %i.dn, align 8, !tbaa !130 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i79, label %_ZN7rocksdb6StatusD2Ev.exit81, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.ei) #14
  br label %_ZN7rocksdb6StatusD2Ev.exit81

_ZN7rocksdb6StatusD2Ev.exit81:                    ; preds = %.critedge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i80
  store ptr null, ptr %8, align 8, !tbaa !127
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !53  ; 3 uses
  %.not.i82 = icmp eq ptr %i.ej, null
  br i1 %.not.i82, label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_14BlobFileReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5GuardEPNS5_11TypedHandleE.exit84, label %bb.af

bb.af:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit81
  %i.ek = load ptr, ptr %1, align 8, !tbaa !17, !noalias !164 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !51, !noalias !164
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 192
  %i.en = load ptr, ptr %i.em, align 8, !noalias !164
  %i.eo = invoke noundef ptr %i.en(ptr noundef nonnull align 8 dereferenceable(80) %i.ek, ptr noundef nonnull %i.ej)
          to label %_ZN7rocksdb24BasicTypedCacheInterfaceINS_14BlobFileReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5GuardEPNS5_11TypedHandleE.exit84 unwind label %bb.ai, !noalias !164, !inline_history !1

_ZN7rocksdb24BasicTypedCacheInterfaceINS_14BlobFileReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5GuardEPNS5_11TypedHandleE.exit84: ; preds = %_ZN7rocksdb6StatusD2Ev.exit81, %bb.af
  %.sroa.0.0 = phi ptr [ %i.ek, %bb.af ], [ null, %_ZN7rocksdb6StatusD2Ev.exit81 ]
  %.sroa.9.0 = phi ptr [ %i.eo, %bb.af ], [ null, %_ZN7rocksdb6StatusD2Ev.exit81 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !57 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i85, label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit90, label %bb.ag

bb.ag:                                            ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_14BlobFileReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5GuardEPNS5_11TypedHandleE.exit84
  %i.er = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 184
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(80) %i.er, ptr noundef nonnull %i.eq, i1 noundef zeroext false)
          to label %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit90 unwind label %bb.ah, !inline_history !2 ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #15
  unreachable

_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit90: ; preds = %_ZN7rocksdb24BasicTypedCacheInterfaceINS_14BlobFileReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE5GuardEPNS5_11TypedHandleE.exit84, %bb.ag
  store ptr %.sroa.0.0, ptr %4, align 8, !tbaa !58
  store ptr %i.ej, ptr %i.ep, align 8, !tbaa !57
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.9.0, ptr %i.ey, align 8, !tbaa !59
  store ptr null, ptr %i.dn, align 8, !tbaa !62, !alias.scope !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !165
  br label %.critedge39

bb.ai:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %_ZN7rocksdb21BasicTypedCacheHelperINS_14BlobFileReaderELNS_14CacheEntryRoleE13EE14GetBasicHelperEv.exit.i, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit75

.critedge39:                                      ; preds = %bb.ac, %bb.ab, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit90
  %i.fa = load ptr, ptr %8, align 8, !tbaa !127   ; 3 uses
  %.not.i91 = icmp eq ptr %i.fa, null
  br i1 %.not.i91, label %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev.exit.a, label %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i: ; preds = %.critedge39
  call void @_ZN7rocksdb14BlobFileReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.fa) #13
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 64) #14
  br label %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev.exit.a

_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev.exit.a: ; preds = %.critedge39, %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.aj

_ZN7rocksdb6StatusD2Ev.exit75:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77, %bb.ae, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74, %bb.ad, %bb.ai
  %.pn33 = phi { ptr, i32 } [ %i.eg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77 ], [ %i.ez, %bb.ai ], [ %.pn29, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74 ], [ %.pn29, %bb.ad ], [ %i.eg, %bb.ae ]
  call void @_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.al

bb.aj:                                            ; preds = %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit54, %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev.exit.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #15
  unreachable

bb.al:                                            ; preds = %bb.p, %_ZN7rocksdb6StatusD2Ev.exit75
  %.pn36 = phi { ptr, i32 } [ %i.co, %bb.p ], [ %.pn33, %_ZN7rocksdb6StatusD2Ev.exit75 ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit92 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #15
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit92:                 ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %.pn36

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.aj, %_ZN7rocksdb16CacheHandleGuardINS_14BlobFileReaderEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7rocksdb14BlobFileReader6CreateERKNS_16ImmutableOptionsERKNS_11ReadOptionsERKNS_11FileOptionsEjPNS_13HistogramImplEmRKSt10shared_ptrINS_8IOTracerEEbPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(875), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(216), i32 noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit

_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7rocksdb14BlobFileReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.a) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #14
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13BlobFileCache26OpenBlobFileReaderUncachedERKNS_11ReadOptionsEmPSt10unique_ptrINS_14BlobFileReaderESt14default_deleteIS5_EEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 5 uses
  %.not.i = icmp eq ptr %i.d, null                ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(33) %i.d, i32 noundef 74, i64 noundef 1), !inline_history !3
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  tail call void @_ZN7rocksdb14BlobFileReader6CreateERKNS_16ImmutableOptionsERKNS_11ReadOptionsERKNS_11FileOptionsEjPNS_13HistogramImplEmRKSt10shared_ptrINS_8IOTracerEEbPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(875) %i.h, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.j, i32 noundef %i.l, ptr noundef %i.n, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i1 noundef zeroext false, ptr noundef %4)
  %i.p = load i8, ptr %0, align 8, !tbaa !126     ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit19, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i8 %i.p, 2
  %or.cond = and i1 %5, %i.r
  br i1 %or.cond, label %bb.e, label %.thread23

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %4, align 8, !tbaa !127    ; 3 uses
  store ptr null, ptr %4, align 8, !tbaa !127
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i.i: ; preds = %bb.e
  tail call void @_ZN7rocksdb14BlobFileReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.s) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #14
  br label %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN7rocksdb14BlobFileReaderEEclEPS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.v = load i32, ptr %i.k, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !47
  invoke void @_ZN7rocksdb14BlobFileReader6CreateERKNS_16ImmutableOptionsERKNS_11ReadOptionsERKNS_11FileOptionsEjPNS_13HistogramImplEmRKSt10shared_ptrINS_8IOTracerEEbPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(875) %i.t, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %i.u, i32 noundef %i.v, ptr noundef %i.w, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i1 noundef zeroext true, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit
  %.not.i16 = icmp eq ptr %0, %6
  br i1 %.not.i16, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load <4 x i8>, ptr %6, align 8, !tbaa !48
  store <4 x i8> %i.x, ptr %0, align 8, !tbaa !48
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !30, !range !31, !noundef !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.z, ptr %i.aa, align 4, !tbaa !128
  store i8 0, ptr %i.y, align 4, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !129
  store i8 0, ptr %i.ab, align 1, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !130
  store ptr null, ptr %i.ae, align 8, !tbaa !130
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !130 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !130
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #14
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.f, %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i17, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #14
  br label %bb.j

bb.h:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb14BlobFileReaderESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.l

bb.j:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.pr = load i8, ptr %0, align 8, !tbaa !126
  %i.am = icmp eq i8 %.pr, 0
  %brmerge = or i1 %.not.i, %i.am
  br i1 %brmerge, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit19, label %bb.k

.thread23:                                        ; preds = %bb.d
  br i1 %.not.i, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit19, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread23
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(33) %i.d, i32 noundef 75, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit19 unwind label %bb.h, !inline_history !3

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit19: ; preds = %bb.j, %bb.c, %.thread23, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.al, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !130 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #14
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21
  resume { ptr, i32 } %.pn
end_hunk_0
