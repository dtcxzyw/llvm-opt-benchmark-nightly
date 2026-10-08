Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/write_batch?download=true
inline.NumInlined: 3984
inline.NumDeleted: 1401
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_116MemTableInserter13DeleteRangeCFEjRKNS_5SliceES4_:bb.a
  %i.em = load <4 x i8>, ptr %15, align 8, !tbaa !27
  store <4 x i8> %i.em, ptr %6, align 8, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !125, !range !126, !noundef !127
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.eo, ptr %i.ep, align 4, !tbaa !128
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.er, ptr %i.es, align 1, !tbaa !129
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !111
  %i.ev = load ptr, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  store ptr %i.eu, ptr %i.u, align 8, !tbaa !111
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit83, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.at
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit83

_ZN7rocksdb6StatusD2Ev.exit83:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.ba

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn53 = phi { ptr, i32 } [ %i.ex, %bb.av ], [ %i.ew, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bg

bb.ax:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10DeleteImplEjRKNS_5SliceES4_NS_9ValueTypeEPKNS_18ProtectionInfoKVOSImEE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 15, ptr noundef null)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load <4 x i8>, ptr %16, align 8, !tbaa !27
  store <4 x i8> %i.ey, ptr %6, align 8, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !125, !range !126, !noundef !127
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.fa, ptr %i.fb, align 4, !tbaa !128
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !27
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !129
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !111
  %i.fh = load ptr, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  store ptr %i.fg, ptr %i.u, align 8, !tbaa !111
  %.not.i.i.i.i.i85 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i85, label %_ZN7rocksdb6StatusD2Ev.exit90, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i86

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i86: ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.fh) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit90

_ZN7rocksdb6StatusD2Ev.exit90:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i86, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bg

bb.ba:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit90, %_ZN7rocksdb6StatusD2Ev.exit83
  %i.fj = load i8, ptr %6, align 8, !tbaa !124    ; 2 uses
  %i.fk = icmp eq i8 %i.fj, 13
  br i1 %i.fk, label %.critedge61.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !269 ; 2 uses
  %.not107 = icmp eq ptr %i.fm, null
  br i1 %.not107, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95, label %bb.bc, !prof !130

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  invoke void @_ZN7rocksdb18WriteBatchInternal11DeleteRangeEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %17, ptr noundef nonnull %i.fm, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %17) #37 ; 0 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !111 ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i91, label %.critedge61, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92: ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.fp) #35
  br label %.critedge61

bb.be:                                            ; preds = %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.bg

.critedge61:                                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %.pr103.pre = load i8, ptr %6, align 8, !tbaa !124 ; 2 uses
  %i.fr = icmp eq i8 %.pr103.pre, 13
  br i1 %i.fr, label %.critedge61.thread, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95, !prof !104

.critedge61.thread:                               ; preds = %bb.ba, %.critedge61
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !256
  %.not.i94 = icmp eq ptr %i.fs, null
  br i1 %.not.i94, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95, label %bb.bf

bb.bf:                                            ; preds = %.critedge61.thread
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !257
  %i.fv = add i64 %i.fu, -1
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !257
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95: ; preds = %bb.bb, %bb.bf, %.critedge61.thread, %.critedge61
  %i.fw = phi i8 [ %.pr103.pre, %.critedge61 ], [ 13, %.critedge61.thread ], [ 13, %bb.bf ], [ %i.fj, %bb.bb ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.fx, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i96 = icmp eq ptr %0, %6
  br i1 %.not.i.i96, label %.critedge59, label %.critedge59.thread

.critedge59.thread:                               ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95
  store i8 %i.fw, ptr %0, align 8, !tbaa !124
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ga = load <4 x i8>, ptr %i.fy, align 1, !tbaa !27
  store <4 x i8> %i.ga, ptr %i.fz, align 1, !tbaa !27
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !129
  %i.ge = load ptr, ptr %i.u, align 8, !tbaa !111
  store ptr %i.ge, ptr %i.fx, align 8, !tbaa !111
  br label %_ZN7rocksdb6StatusD2Ev.exit99

.critedge59:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit95, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit
  %.pr104 = load ptr, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  %.not.i.i97 = icmp eq ptr %.pr104, null
  br i1 %.not.i.i97, label %_ZN7rocksdb6StatusD2Ev.exit99, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98: ; preds = %.critedge59
  call void @_ZdaPv(ptr noundef nonnull %.pr104) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit99

_ZN7rocksdb6StatusD2Ev.exit99:                    ; preds = %.critedge59.thread, %.critedge59, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bh

bb.bg:                                            ; preds = %bb.v, %bb.al, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.af, %bb.be, %bb.az, %bb.aw, %bb.n, %bb.m
  %.pn56 = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.al, %bb.n ], [ %i.fq, %bb.be ], [ %.pn53, %bb.aw ], [ %i.fi, %bb.az ], [ %i.bm, %bb.v ], [ %i.df, %bb.af ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.ec, %bb.am ], [ %i.eb, %bb.al ]
  %i.gf = load ptr, ptr %i.u, align 8, !tbaa !111 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i100, label %_ZN7rocksdb6StatusD2Ev.exit102, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i101

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i101: ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.gf) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit102

_ZN7rocksdb6StatusD2Ev.exit102:                   ; preds = %bb.bg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn56

bb.bh:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit99, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter7MergeCFEjRKNS_5SliceES4_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::variant", align 8      ; 10 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 30 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::LookupKey", align 8 ; 9 uses
  %11 = alloca %"class.rocksdb::PinnableWideColumns", align 8 ; 13 uses
  %12 = alloca %"class.rocksdb::SnapshotImpl", align 8 ; 9 uses
  %13 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 22 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.i = alloca i8, align 1                       ; 8 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %17 = alloca %"class.std::vector.760", align 8  ; 12 uses
  %.sroa.0227 = alloca %"class.rocksdb::Slice", align 8 ; 5 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %19 = alloca %"class.std::vector.760", align 8  ; 12 uses
  %.sroa.0225 = alloca %"class.rocksdb::Slice", align 8 ; 5 uses
  %20 = alloca %"class.rocksdb::ProtectionInfoKVOS", align 8 ; 5 uses
  %21 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %25 = alloca %"class.rocksdb::ProtectionInfoKVOS", align 8 ; 5 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %27 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %28 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !256  ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !257  ; 4 uses
  %i.n = icmp ult i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr i8, ptr %i.t, i64 -64
  %.0.i.i = select i1 %i.n, ptr %i.q, ptr %i.u
  %i.v = add i64 %i.m, 1
  store i64 %i.v, ptr %i.l, align 8, !tbaa !257
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.x = load i8, ptr %i.w, align 1, !tbaa !286, !range !126, !noundef !127
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !269 ; 2 uses
  %.not249 = icmp eq ptr %i.aa, null
  br i1 %.not249, label %.critedge, label %bb.d, !prof !130

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb18WriteBatchInternal5MergeEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %i.aa, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %bb.dn

.critedge:                                        ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 6, i1 false)
  %i.ac = invoke fastcc noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18SeekToColumnFamilyEjPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %2, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %.critedge
  br i1 %i.ac, label %bb.r, label %bb.f, !prof !130

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %6, align 8, !tbaa !124    ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269 ; 2 uses
  %.not109 = icmp eq ptr %i.ag, null
  br i1 %.not109, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7rocksdb18WriteBatchInternal5MergeEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull %i.ag, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #37 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #35
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ak = load i8, ptr %6, align 8, !tbaa !124    ; 2 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit

bb.k:                                             ; preds = %bb.j
  %i.am = invoke fastcc noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter17IsDuplicateKeySeqEjRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !253, !range !126, !noundef !127
  %i.ap = zext i1 %i.am to i8
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split.sink.split, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split

bb.m:                                             ; preds = %bb.k, %.critedge
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.n:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.dm

bb.o:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.au = load i8, ptr %i.at, align 8, !tbaa !253, !range !126, !noundef !127
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split.sink.split, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split.sink.split: ; preds = %bb.o, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !229
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !229
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split: ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split.sink.split, %bb.l, %bb.o
  %.pr = load i8, ptr %6, align 8, !tbaa !124
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit: ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split, %bb.f, %bb.j
  %i.az = phi i8 [ %.pr, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exitthread-pre-split ], [ %i.ad, %bb.f ], [ %i.ak, %bb.j ]
  %i.ba = icmp eq i8 %i.az, 13
  br i1 %i.ba, label %bb.p, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit, !prof !80

bb.p:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !256
  %.not.i115 = icmp eq ptr %i.bb, null
  br i1 %.not.i115, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !257
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !257
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit: ; preds = %bb.q, %bb.p, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit
  call void @_ZN7rocksdb6StatusC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.r:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !230 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.s unwind label %bb.u       ; 14 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 7656 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !818
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr @.str.89, ptr %8, align 8, !tbaa !109
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 63, ptr %i.bo, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  store ptr @.str, ptr %9, align 8, !tbaa !109
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !110
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.v

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.u:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.v:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.dm

bb.w:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 7632 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !819
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %.thread240, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !236
  %.not86 = icmp eq ptr %i.bv, null
  br i1 %.not86, label %.thread240, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !234
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.z, label %.thread240

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !229
  invoke void @_ZN7rocksdb9LookupKeyC1ERKNS_5SliceEmPS2_(ptr noundef nonnull align 8 dereferenceable(224) %10, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ca, ptr noundef null)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cb = load i64, ptr %i.bs, align 8, !tbaa !819
  %i.cc = invoke noundef i64 @_ZN7rocksdb8MemTable27CountSuccessiveMergeEntriesERKNS_9LookupKeyEm(ptr noundef nonnull align 16 dereferenceable(10624) %i.bk, ptr noundef nonnull align 8 dereferenceable(224) %10, i64 noundef %i.cb)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i64, ptr %i.bs, align 8, !tbaa !819
  %.not88.not = icmp ult i64 %i.cc, %i.cd
  %i.ce = load ptr, ptr %10, align 8, !tbaa !821  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.not.i116 = icmp eq ptr %i.ce, %i.cf
  %i.cg = icmp eq ptr %i.ce, null
  %or.cond.i = or i1 %.not.i116, %i.cg
  br i1 %or.cond.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #35
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9LookupKeyD2Ev.exit119

bb.ae:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %10, align 8, !tbaa !821  ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.not.i117 = icmp eq ptr %i.cj, %i.ck
  %i.cl = icmp eq ptr %i.cj, null
  %or.cond.i118 = or i1 %.not.i117, %i.cl
  br i1 %or.cond.i118, label %_ZN7rocksdb9LookupKeyD2Ev.exit119, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #35
  br label %_ZN7rocksdb9LookupKeyD2Ev.exit119

_ZN7rocksdb9LookupKeyD2Ev.exit119:                ; preds = %bb.af, %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.ad ], [ %i.ci, %bb.ae ], [ %i.ci, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.dm

bb.ag:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.not88.not, label %.thread240, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb12SnapshotImplE, i64 16), ptr %12, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 1, ptr %i.cm, align 8, !tbaa !446
  %i.cn = load i64, ptr %i.bz, align 8, !tbaa !229
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !447
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cq, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.cp, align 4, !tbaa !461
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 -1, ptr %i.cr, align 8, !tbaa !462
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i8 0, ptr %i.cs, align 8, !tbaa !463
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 72
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ct, align 8, !tbaa !125
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i8 1, ptr %i.cu, align 4, !tbaa !464
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i8 0, i64 32, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.cv, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.cx, align 8, !tbaa !465
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 153
  store i8 0, ptr %i.cy, align 1, !tbaa !466
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 154
  store i8 0, ptr %i.cz, align 2, !tbaa !467
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.db, align 8, !tbaa !468
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 184
  store ptr null, ptr %i.dc, align 8, !tbaa !469
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bk, i64 7640
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !822, !range !126, !noundef !127
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 1, ptr %i.dg, align 8, !tbaa !823
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store ptr %12, ptr %13, align 8, !tbaa !470
  %i.dh = load ptr, ptr %i.bf, align 8, !tbaa !230 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.ak unwind label %bb.am     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dn = load ptr, ptr %i.bu, align 8, !tbaa !236 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 64, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1256
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef ptr %i.dq(ptr noundef nonnull align 64 dereferenceable(7336) %i.dn)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.077 = phi ptr [ %i.dl, %bb.ak ], [ %i.dr, %bb.al ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !236 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 64, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 320
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 64 dereferenceable(7336) %i.dt, ptr noundef nonnull align 8 dereferenceable(192) %13, ptr noundef %.077, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %11)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dx = load i8, ptr %14, align 8, !tbaa !124
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.aq, label %_ZN7rocksdb6StatusD2Ev.exit167

bb.ap:                                            ; preds = %bb.an
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit181

bb.aq:                                            ; preds = %bb.ao
  %i.ea = load ptr, ptr %i.bl, align 8, !tbaa !818 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ec, ptr %15, align 8, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  store i64 0, ptr %i.ed, align 8, !tbaa !67
  store i8 0, ptr %i.ec, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !207
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !208 ; 4 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp eq i64 %i.ej, 32
  br i1 %i.ek, label %bb.ar, label %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !110 ; 2 uses
  %i.en = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, i64 8), align 8, !tbaa !110
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit, label %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread

_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit: ; preds = %bb.ar
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !109
  %i.eq = load ptr, ptr @_ZN7rocksdb22kDefaultWideColumnNameE, align 8, !tbaa !109
  %bcmp.i.i = call i32 @bcmp(ptr %i.ep, ptr %i.eq, i64 %i.em)
  %i.er = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.er, label %bb.as, label %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread

bb.as:                                            ; preds = %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0227)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0227, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.et = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %bb.av unwind label %bb.at     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %17, align 8, !tbaa !825  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i4.i, label %.body, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !826
  br label %.body.sink.split

bb.av:                                            ; preds = %bb.as
  store ptr %i.et, ptr %17, align 8, !tbaa !825
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0227, i64 16, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !827
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bk, i64 7664
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !828
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bk, i64 7648
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !471
  %i.ff = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %bb.aw unwind label %bb.be

bb.aw:                                            ; preds = %bb.av
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !830
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37, !noalias !831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !tbaa.struct !112, !noalias !831
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i8 1, ptr %i.fh, align 8, !tbaa !473, !noalias !831
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_PNS_9ValueTypeE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(25) %5, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %i.fc, ptr noundef %i.fe, ptr noundef %i.fg, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %i.i)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !473, !noalias !831
  %i.fj = icmp eq i8 %i.fi, 2
  br i1 %i.fj, label %bb.ay, label %_ZN7rocksdb6StatusaSEOS0_.exit

bb.ay:                                            ; preds = %bb.ax
  %i.fk = load ptr, ptr %5, align 8, !tbaa !208, !noalias !831 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !210, !noalias !831
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #35
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

bb.ba:                                            ; preds = %bb.aw
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load i8, ptr %i.fh, align 8, !tbaa !473, !noalias !831
  %i.fs = icmp eq i8 %i.fr, 2
  br i1 %i.fs, label %bb.bb, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

bb.bb:                                            ; preds = %bb.ba
  %i.ft = load ptr, ptr %5, align 8, !tbaa !208, !noalias !831 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i12.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !210, !noalias !831
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #35
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37, !noalias !831
  br label %.body120

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37, !noalias !831
  %i.fz = load i8, ptr %16, align 8, !tbaa !198
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %16, i8 0, i64 6, i1 false)
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !111
  store ptr null, ptr %i.ga, align 8, !tbaa !111
  %i.gc = load ptr, ptr %17, align 8, !tbaa !825  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.gd = load ptr, ptr %i.ez, align 8, !tbaa !826
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gg) #35
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit:   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0227)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bn

bb.be:                                            ; preds = %bb.av
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body120

.body120:                                         ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i, %bb.be
  %eh.lpad-body121 = phi { ptr, i32 } [ %i.gh, %bb.be ], [ %i.fq, %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit13.i ] ; 2 uses
  %i.gi = load ptr, ptr %17, align 8, !tbaa !825  ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i127, label %.body, label %bb.bf

bb.bf:                                            ; preds = %.body120
  %i.gj = load ptr, ptr %i.ez, align 8, !tbaa !826
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.au, %bb.bf
  %.sink300 = phi ptr [ %i.gj, %bb.bf ], [ %i.ex, %bb.au ]
  %.sink299 = phi ptr [ %i.gi, %bb.bf ], [ %i.ev, %bb.au ] ; 2 uses
  %.pn91.ph = phi { ptr, i32 } [ %eh.lpad-body121, %bb.bf ], [ %i.eu, %bb.au ]
  %i.gk = ptrtoint ptr %.sink300 to i64
  %i.gl = ptrtoint ptr %.sink299 to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %.sink299, i64 noundef %i.gm) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body120, %bb.at
  %.pn91 = phi { ptr, i32 } [ %i.eu, %bb.at ], [ %eh.lpad-body121, %.body120 ], [ %.pn91.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0227)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.cd

_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread: ; preds = %bb.ar, %bb.aq, %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0225)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0225, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.gn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %bb.bi unwind label %bb.bg     ; 3 uses

bb.bg:                                            ; preds = %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %19, align 8, !tbaa !825  ; 2 uses
  %.not.i.i4.i130 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i4.i130, label %.body132, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !826
  br label %.body132.sink.split

bb.bi:                                            ; preds = %_ZN7rocksdb17WideColumnsHelper20HasDefaultColumnOnlyERKSt6vectorINS_10WideColumnESaIS2_EE.exit.thread
  store ptr %i.gn, ptr %19, align 8, !tbaa !825
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0225, i64 16, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !827
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bk, i64 7664
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !828
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bk, i64 7648
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !471
  %i.gz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !830
  invoke void @_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDnPNS_9ValueTypeEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_16WideBaseValueTagERKSt6vectorINS_10WideColumnESaISK_EERKSJ_ISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %18, ptr noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %i.gw, ptr noundef %i.gy, ptr noundef %i.ha, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %15, ptr null, ptr noundef nonnull %i.i)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit138 unwind label %bb.bl

_ZN7rocksdb6StatusaSEOS0_.exit138:                ; preds = %bb.bj
  %i.hb = load i8, ptr %18, align 8, !tbaa !198
  %i.hc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %18, i8 0, i64 6, i1 false)
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !111
  store ptr null, ptr %i.hc, align 8, !tbaa !111
  %i.he = load ptr, ptr %19, align 8, !tbaa !825  ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144, label %bb.bk

bb.bk:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit138
  %i.hf = load ptr, ptr %i.gt, align 8, !tbaa !826
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hi) #35
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit138, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %19, align 8, !tbaa !825  ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i145, label %.body132, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hl = load ptr, ptr %i.gt, align 8, !tbaa !826
  br label %.body132.sink.split

.body132.sink.split:                              ; preds = %bb.bh, %bb.bm
  %.sink306 = phi ptr [ %i.hl, %bb.bm ], [ %i.gr, %bb.bh ]
  %.sink305 = phi ptr [ %i.hk, %bb.bm ], [ %i.gp, %bb.bh ] ; 2 uses
  %.pn89.ph = phi { ptr, i32 } [ %i.hj, %bb.bm ], [ %i.go, %bb.bh ]
  %i.hm = ptrtoint ptr %.sink306 to i64
  %i.hn = ptrtoint ptr %.sink305 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sink305, i64 noundef %i.ho) #35
  br label %.body132

.body132:                                         ; preds = %.body132.sink.split, %bb.bl, %bb.bg
  %.pn89 = phi { ptr, i32 } [ %i.go, %bb.bg ], [ %i.hj, %bb.bl ], [ %.pn89.ph, %.body132.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0225)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.cd

bb.bn:                                            ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144
  %.sroa.17229.0 = phi ptr [ %i.gb, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit ], [ %i.hd, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144 ] ; 4 uses
  %.sroa.0228.0 = phi i8 [ %i.fz, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit ], [ %i.hb, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EED2Ev.exit144 ]
  %i.hp = icmp eq i8 %.sroa.0228.0, 0             ; 3 uses
  br i1 %i.hp, label %bb.bo, label %29

bb.bo:                                            ; preds = %bb.bn
  %.not94 = icmp eq ptr %.0.i, null
  br i1 %.not94, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %2, ptr %i.h, align 4, !tbaa !96
  %i.hq = load i64, ptr %.0.i, align 8, !tbaa !103
  %i.hr = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 5344283794842014764)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hs = load i64, ptr %i.bz, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.hs, ptr %i.g, align 8, !tbaa !95
  %i.ht = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.g, i64 noundef 8, i64 noundef 8619898864558898977)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.hu = xor i64 %i.hr, %i.hq
  %i.hv = xor i64 %i.hu, %i.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.hw = load ptr, ptr %15, align 8, !tbaa !26
  %i.hx = load i64, ptr %i.ed, align 8, !tbaa !67
  %i.hy = load ptr, ptr %4, align 8, !tbaa !109
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !110
  %i.ib = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.hy, i64 noundef %i.ia, i64 noundef -3275615069716884213)
          to label %.noexc unwind label %bb.bw

.noexc:                                           ; preds = %bb.br
  %i.ic = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.hw, i64 noundef %i.hx, i64 noundef -3275615069716884213)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %.noexc
  %i.id = xor i64 %i.ib, %i.ic
  %i.ie = xor i64 %i.id, %i.hv
  %i.if = load i8, ptr %i.i, align 1, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.e, align 1, !tbaa !193
  store i8 %i.if, ptr %i.f, align 1, !tbaa !193
  %i.ig = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef -6551230139433768426)
          to label %.noexc149 unwind label %bb.bx

.noexc149:                                        ; preds = %bb.bs
  %i.ih = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef -6551230139433768426)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %.noexc149
  %i.ii = xor i64 %i.ig, %i.ih
  %i.ij = xor i64 %i.ii, %i.ie
  store i64 %i.ij, ptr %20, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.ik = load i64, ptr %i.bz, align 8, !tbaa !229
  %i.il = load i8, ptr %i.i, align 1, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  %i.im = load ptr, ptr %15, align 8, !tbaa !26
  store ptr %i.im, ptr %22, align 8, !tbaa !109
  %i.in = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.io = load i64, ptr %i.ed, align 8, !tbaa !67
  store i64 %i.io, ptr %i.in, align 8, !tbaa !110
  invoke void @_ZN7rocksdb8MemTable3AddEmNS_9ValueTypeERKNS_5SliceES4_PKNS_18ProtectionInfoKVOSImEEbPNS_23MemTablePostProcessInfoEPPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %21, ptr noundef nonnull align 16 dereferenceable(10624) %i.bk, i64 noundef %i.ik, i8 noundef zeroext %i.il, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %20, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ip = load <4 x i8>, ptr %21, align 8, !tbaa !27
  store <4 x i8> %i.ip, ptr %6, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %21, align 8, !tbaa !27
  %i.iq = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !125, !range !126, !noundef !127
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.ir, ptr %i.is, align 4, !tbaa !128
  store i8 0, ptr %i.iq, align 4, !tbaa !128
  %i.it = getelementptr inbounds nuw i8, ptr %21, i64 5 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !27
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !129
  store i8 0, ptr %i.it, align 1, !tbaa !129
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !111
  store ptr null, ptr %i.iw, align 8, !tbaa !111
  %i.iy = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  store ptr %i.ix, ptr %i.ab, align 8, !tbaa !111
  %.not.i.i.i.i.i152 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i152, label %_ZN7rocksdb6StatusD2Ev.exit157, label %_ZN7rocksdb6StatusaSEOS0_.exit154

_ZN7rocksdb6StatusaSEOS0_.exit154:                ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.iy) #35
  %.pr235 = load ptr, ptr %i.iw, align 8, !tbaa !111 ; 2 uses
  %.not.i.i155 = icmp eq ptr %.pr235, null
  br i1 %.not.i.i155, label %_ZN7rocksdb6StatusD2Ev.exit157, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit154
  call void @_ZdaPv(ptr noundef nonnull %.pr235) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit157

_ZN7rocksdb6StatusD2Ev.exit157:                   ; preds = %bb.bu, %_ZN7rocksdb6StatusaSEOS0_.exit154, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %29

bb.bv:                                            ; preds = %bb.bq, %bb.bp
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %.noexc, %bb.br
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bx:                                            ; preds = %.noexc149, %bb.bs
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bt
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.pn95 = phi { ptr, i32 } [ %i.jc, %bb.by ], [ %i.jb, %bb.bx ], [ %i.ja, %bb.bw ], [ %i.iz, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.jd = load i64, ptr %i.bz, align 8, !tbaa !229
  %i.je = load i8, ptr %i.i, align 1, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  %i.jf = load ptr, ptr %15, align 8, !tbaa !26
  store ptr %i.jf, ptr %24, align 8, !tbaa !109
  %i.jg = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jh = load i64, ptr %i.ed, align 8, !tbaa !67
  store i64 %i.jh, ptr %i.jg, align 8, !tbaa !110
  invoke void @_ZN7rocksdb8MemTable3AddEmNS_9ValueTypeERKNS_5SliceES4_PKNS_18ProtectionInfoKVOSImEEbPNS_23MemTablePostProcessInfoEPPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %23, ptr noundef nonnull align 16 dereferenceable(10624) %i.bk, i64 noundef %i.jd, i8 noundef zeroext %i.je, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ji = load <4 x i8>, ptr %23, align 8, !tbaa !27
  store <4 x i8> %i.ji, ptr %6, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %23, align 8, !tbaa !27
  %i.jj = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 4, !tbaa !125, !range !126, !noundef !127
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.jk, ptr %i.jl, align 4, !tbaa !128
  store i8 0, ptr %i.jj, align 4, !tbaa !128
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 5 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !27
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !129
  store i8 0, ptr %i.jm, align 1, !tbaa !129
  %i.jp = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !111
  store ptr null, ptr %i.jp, align 8, !tbaa !111
  %i.jr = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  store ptr %i.jq, ptr %i.ab, align 8, !tbaa !111
  %.not.i.i.i.i.i159 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i159, label %_ZN7rocksdb6StatusD2Ev.exit164, label %_ZN7rocksdb6StatusaSEOS0_.exit161

_ZN7rocksdb6StatusaSEOS0_.exit161:                ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.jr) #35
  %.pr237 = load ptr, ptr %i.jp, align 8, !tbaa !111 ; 2 uses
  %.not.i.i162 = icmp eq ptr %.pr237, null
  br i1 %.not.i.i162, label %_ZN7rocksdb6StatusD2Ev.exit164, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit161
  call void @_ZdaPv(ptr noundef nonnull %.pr237) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit164

_ZN7rocksdb6StatusD2Ev.exit164:                   ; preds = %bb.cb, %_ZN7rocksdb6StatusaSEOS0_.exit161, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %29

bb.cc:                                            ; preds = %bb.ca
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.cd

29:                                               ; preds = %bb.bn, %_ZN7rocksdb6StatusD2Ev.exit157, %_ZN7rocksdb6StatusD2Ev.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %30 = load ptr, ptr %15, align 8, !tbaa !26     ; 2 uses
  %31 = icmp eq ptr %30, %i.ec
  br i1 %31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %29
  %32 = load i64, ptr %i.ec, align 8, !tbaa !27
  %33 = add i64 %32, 1
  call void @_ZdlPvm(ptr noundef %30, i64 noundef %33) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %.not.i.i165 = icmp eq ptr %.sroa.17229.0, null
  br i1 %.not.i.i165, label %_ZN7rocksdb6StatusD2Ev.exit167, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i166

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.17229.0) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit167

bb.cd:                                            ; preds = %bb.cc, %bb.bz, %.body132, %.body
  %.sroa.17229.1 = phi ptr [ %.sroa.17229.0, %bb.cc ], [ %.sroa.17229.0, %bb.bz ], [ null, %.body ], [ null, %.body132 ] ; 2 uses
  %.pn95.pn = phi { ptr, i32 } [ %i.js, %bb.cc ], [ %.pn95, %bb.bz ], [ %.pn91, %.body ], [ %.pn89, %.body132 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  %i.jt = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.ec
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.cd
  %i.jv = load i64, ptr %i.ec, align 8, !tbaa !27
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %.not.i.i171 = icmp eq ptr %.sroa.17229.1, null
  br i1 %.not.i.i171, label %_ZN7rocksdb6StatusD2Ev.exit173, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i172

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  call void @_ZdaPv(ptr noundef nonnull %.sroa.17229.1) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit173

_ZN7rocksdb6StatusD2Ev.exit167:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %.381 = phi i1 [ false, %bb.ao ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hp, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i166 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !111 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i174, label %_ZN7rocksdb6StatusD2Ev.exit176, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i175

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i175: ; preds = %_ZN7rocksdb6StatusD2Ev.exit167
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit176

_ZN7rocksdb6StatusD2Ev.exit176:                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit167, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !217 ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i177, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit176
  %i.kb = invoke noundef zeroext i1 %i.ka(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.cf ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #39
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %_ZN7rocksdb6StatusD2Ev.exit176, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7rocksdb8SnapshotD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !474 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZN7rocksdb11ReadOptionsD2Ev.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !475
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kk) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.cg, %_ZN7rocksdb11ReadOptionsD2Ev.exit
  %34 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.kl = load ptr, ptr %34, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !210
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kl to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kq) #35
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i: ; preds = %bb.ch, %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.kr = load ptr, ptr %11, align 8, !tbaa !478  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.kr, null
  br i1 %.not12.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ks, %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i ], [ %i.kr, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i ] ; 5 uses
  %i.ks = load ptr, ptr %.013.i.i.i, align 8, !tbaa !478 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !26 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !27
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #35
  br label %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i

_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.kz) #37
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 104) #35
  %.not.i.i.i178 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i178, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN7rocksdb6StatusD2Ev.exit173:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !111 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i179, label %_ZN7rocksdb6StatusD2Ev.exit181, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i180

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i180: ; preds = %_ZN7rocksdb6StatusD2Ev.exit173
  call void @_ZdaPv(ptr noundef nonnull %i.lb) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit181

_ZN7rocksdb6StatusD2Ev.exit181:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i180, %_ZN7rocksdb6StatusD2Ev.exit173, %bb.ap
  %.pn95.pn.pn.pn = phi { ptr, i32 } [ %i.dz, %bb.ap ], [ %.pn95.pn, %_ZN7rocksdb6StatusD2Ev.exit173 ], [ %.pn95.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit181, %bb.am
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit181 ], [ %i.ds, %bb.am ]
  %i.lc = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !217 ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i182, label %_ZN7rocksdb11ReadOptionsD2Ev.exit183, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit183 unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #39
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit183:             ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7rocksdb8SnapshotD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @_ZN7rocksdb19PinnableWideColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.dm

.loopexit:                                        ; preds = %_ZSt10destroy_atIN7rocksdb13PinnableSliceEEvPT_.exit.i.i.i, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.381, label %bb.db, label %.thread240

.thread240:                                       ; preds = %bb.w, %bb.x, %bb.y, %bb.ag, %.loopexit
  %.not101 = icmp eq ptr %.0.i, null
  br i1 %.not101, label %bb.cv, label %bb.cl

bb.cl:                                            ; preds = %.thread240
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %2, ptr %i.d, align 4, !tbaa !96
  %i.lh = load i64, ptr %.0.i, align 8, !tbaa !103
  %i.li = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 5344283794842014764)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.lk, ptr %i.c, align 8, !tbaa !95
  %i.ll = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.c, i64 noundef 8, i64 noundef 8619898864558898977)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.lm = xor i64 %i.li, %i.lh
  %i.ln = xor i64 %i.lm, %i.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.ln, ptr %25, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  %i.lo = load i64, ptr %i.lj, align 8, !tbaa !229
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !237, !range !126, !noundef !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !479
  %i.lr = trunc nuw i8 %i.lq to i1                ; 2 uses
  br i1 %i.lr, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !238, !range !126, !noundef !127
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i8 0, i64 24, i1 false)
  store ptr %i.lw, ptr %i.lx, align 8, !tbaa !271
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.lw, ptr %i.ly, align 8, !tbaa !480
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 0, ptr %i.lz, align 8, !tbaa !481
  store i8 1, ptr %i.ls, align 1, !tbaa !238
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i: ; preds = %bb.cp, %bb.co
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.mb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIPN7rocksdb8MemTableENS0_23MemTablePostProcessInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cn, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i
  %.0.i188 = phi ptr [ null, %bb.cn ], [ %i.mb, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN7rocksdb8MemTable3AddEmNS_9ValueTypeERKNS_5SliceES4_PKNS_18ProtectionInfoKVOSImEEbPNS_23MemTablePostProcessInfoEPPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %26, ptr noundef nonnull align 16 dereferenceable(10624) %i.bk, i64 noundef %i.lo, i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %25, i1 noundef zeroext %i.lr, ptr noundef %.0.i188, ptr noundef null)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.mc = load <4 x i8>, ptr %26, align 8, !tbaa !27
  store <4 x i8> %i.mc, ptr %6, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %26, align 8, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %26, i64 4 ; 2 uses
  %i.me = load i8, ptr %i.md, align 4, !tbaa !125, !range !126, !noundef !127
  %i.mf = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.me, ptr %i.mf, align 4, !tbaa !128
  store i8 0, ptr %i.md, align 4, !tbaa !128
  %i.mg = getelementptr inbounds nuw i8, ptr %26, i64 5 ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !27
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !129
  store i8 0, ptr %i.mg, align 1, !tbaa !129
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !111
  store ptr null, ptr %i.mj, align 8, !tbaa !111
  %i.ml = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  store ptr %i.mk, ptr %i.ab, align 8, !tbaa !111
  %.not.i.i.i.i.i191 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i.i.i191, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZN7rocksdb6StatusaSEOS0_.exit193

_ZN7rocksdb6StatusaSEOS0_.exit193:                ; preds = %bb.cr
  call void @_ZdaPv(ptr noundef nonnull %i.ml) #35
  %.pr242 = load ptr, ptr %i.mj, align 8, !tbaa !111 ; 2 uses
  %.not.i.i194 = icmp eq ptr %.pr242, null
  br i1 %.not.i.i194, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit193
  call void @_ZdaPv(ptr noundef nonnull %.pr242) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit196

_ZN7rocksdb6StatusD2Ev.exit196:                   ; preds = %bb.cr, %_ZN7rocksdb6StatusaSEOS0_.exit193, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %bb.db

bb.cs:                                            ; preds = %bb.cm, %bb.cl
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i, %bb.cq
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn102 = phi { ptr, i32 } [ %i.mn, %bb.ct ], [ %i.mm, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  br label %bb.dm

bb.cv:                                            ; preds = %.thread240
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !229
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.mr = load i8, ptr %i.mq, align 8, !tbaa !237, !range !126, !noundef !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !479
  %i.ms = trunc nuw i8 %i.mr to i1                ; 2 uses
  br i1 %i.ms, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !238, !range !126, !noundef !127
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, i8 0, i64 24, i1 false)
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !271
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.mx, ptr %i.mz, align 8, !tbaa !480
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 0, ptr %i.na, align 8, !tbaa !481
  store i8 1, ptr %i.mt, align 1, !tbaa !238
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198: ; preds = %bb.cx, %bb.cw
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.nc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapIPN7rocksdb8MemTableENS0_23MemTablePostProcessInfoESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.nb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cv, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198
  %.0.i197 = phi ptr [ null, %bb.cv ], [ %i.nc, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN7rocksdb8MemTable3AddEmNS_9ValueTypeERKNS_5SliceES4_PKNS_18ProtectionInfoKVOSImEEbPNS_23MemTablePostProcessInfoEPPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %27, ptr noundef nonnull align 16 dereferenceable(10624) %i.bk, i64 noundef %i.mp, i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef null, i1 noundef zeroext %i.ms, ptr noundef %.0.i197, ptr noundef null)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.nd = load <4 x i8>, ptr %27, align 8, !tbaa !27
  store <4 x i8> %i.nd, ptr %6, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %27, align 8, !tbaa !27
  %i.ne = getelementptr inbounds nuw i8, ptr %27, i64 4 ; 2 uses
  %i.nf = load i8, ptr %i.ne, align 4, !tbaa !125, !range !126, !noundef !127
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.nf, ptr %i.ng, align 4, !tbaa !128
  store i8 0, ptr %i.ne, align 4, !tbaa !128
  %i.nh = getelementptr inbounds nuw i8, ptr %27, i64 5 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !27
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 5
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !129
  store i8 0, ptr %i.nh, align 1, !tbaa !129
  %i.nk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !111
  store ptr null, ptr %i.nk, align 8, !tbaa !111
  %i.nm = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  store ptr %i.nl, ptr %i.ab, align 8, !tbaa !111
  %.not.i.i.i.i.i202 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i202, label %_ZN7rocksdb6StatusD2Ev.exit207, label %_ZN7rocksdb6StatusaSEOS0_.exit204

_ZN7rocksdb6StatusaSEOS0_.exit204:                ; preds = %bb.cz
  call void @_ZdaPv(ptr noundef nonnull %i.nm) #35
  %.pr244 = load ptr, ptr %i.nk, align 8, !tbaa !111 ; 2 uses
  %.not.i.i205 = icmp eq ptr %.pr244, null
  br i1 %.not.i.i205, label %_ZN7rocksdb6StatusD2Ev.exit207, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit204
  call void @_ZdaPv(ptr noundef nonnull %.pr244) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit207

_ZN7rocksdb6StatusD2Ev.exit207:                   ; preds = %bb.cz, %_ZN7rocksdb6StatusaSEOS0_.exit204, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %bb.db

bb.da:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter10GetPostMapEv.exit.i198, %bb.cy
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %bb.dm

bb.db:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit196, %_ZN7rocksdb6StatusD2Ev.exit207, %.loopexit
  %i.no = load i8, ptr %6, align 8, !tbaa !124    ; 2 uses
  switch i8 %i.no, label %.critedge113 [
    i8 13, label %bb.dc
    i8 0, label %bb.de
  ], !prof !482

bb.dc:                                            ; preds = %bb.db
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !253, !range !126, !noundef !127
  %.not250 = icmp eq i8 %i.nq, 0
  br i1 %.not250, label %.critedge113.thread293, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !229
  %i.nt = add i64 %i.ns, 1
  store i64 %i.nt, ptr %i.nr, align 8, !tbaa !229
  br label %.critedge113.thread293

bb.de:                                            ; preds = %bb.db
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.nv = load i8, ptr %i.nu, align 8, !tbaa !253, !range !126, !noundef !127
  %i.nw = icmp eq i8 %i.nv, 0
  br i1 %i.nw, label %bb.df, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit209

bb.df:                                            ; preds = %bb.de
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !229
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !229
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit209

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit209: ; preds = %bb.de, %bb.df
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter17CheckMemtableFullEv(ptr noundef nonnull align 8 dereferenceable(304) %1)
          to label %thread-pre-split unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit209
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

thread-pre-split:                                 ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter15MaybeAdvanceSeqEb.exit209
  %.pr246.pre = load i8, ptr %6, align 8, !tbaa !124 ; 2 uses
  %i.ob = icmp eq i8 %.pr246.pre, 0
  br i1 %i.ob, label %bb.dh, label %.critedge113

bb.dh:                                            ; preds = %thread-pre-split
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !269 ; 2 uses
  %.not251 = icmp eq ptr %i.od, null
  br i1 %.not251, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214, label %bb.di, !prof !130

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  invoke void @_ZN7rocksdb18WriteBatchInternal5MergeEPNS_10WriteBatchEjRKNS_5SliceES5_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %28, ptr noundef nonnull %i.od, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.oe = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %28) #37 ; 0 uses
  %i.of = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !111 ; 2 uses
  %.not.i.i210 = icmp eq ptr %i.og, null
  br i1 %.not.i.i210, label %_ZN7rocksdb6StatusD2Ev.exit212, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i211

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i211: ; preds = %bb.dj
  call void @_ZdaPv(ptr noundef nonnull %i.og) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit212

_ZN7rocksdb6StatusD2Ev.exit212:                   ; preds = %bb.dj, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  %.pre = load i8, ptr %6, align 8, !tbaa !124
  br label %.critedge113

bb.dk:                                            ; preds = %bb.di
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.dm

.critedge113:                                     ; preds = %bb.db, %thread-pre-split, %_ZN7rocksdb6StatusD2Ev.exit212
  %i.oi = phi i8 [ %.pr246.pre, %thread-pre-split ], [ %.pre, %_ZN7rocksdb6StatusD2Ev.exit212 ], [ %i.no, %bb.db ] ; 2 uses
  %i.oj = icmp eq i8 %i.oi, 13
  br i1 %i.oj, label %.critedge113.thread293, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214, !prof !104

.critedge113.thread293:                           ; preds = %bb.dd, %bb.dc, %.critedge113
  %i.ok = load ptr, ptr %i.j, align 8, !tbaa !256
  %.not.i213 = icmp eq ptr %i.ok, null
  br i1 %.not.i213, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214, label %bb.dl

bb.dl:                                            ; preds = %.critedge113.thread293
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !257
  %i.on = add i64 %i.om, -1
  store i64 %i.on, ptr %i.ol, align 8, !tbaa !257
  br label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214: ; preds = %bb.dh, %bb.dl, %.critedge113.thread293, %.critedge113
  %i.oo = phi i8 [ %i.oi, %.critedge113 ], [ 13, %bb.dl ], [ 13, %.critedge113.thread293 ], [ 0, %bb.dh ]
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.op, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i215 = icmp eq ptr %0, %6
  br i1 %.not.i.i215, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZN7rocksdb6StatusC2EOS0_.exit.thread

_ZN7rocksdb6StatusC2EOS0_.exit.thread:            ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214
  store i8 %i.oo, ptr %0, align 8, !tbaa !124
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.os = load <4 x i8>, ptr %i.oq, align 1, !tbaa !27
  store <4 x i8> %i.os, ptr %i.or, align 1, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !27
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !129
  %i.ow = load ptr, ptr %i.ab, align 8, !tbaa !111
  store ptr %i.ow, ptr %i.op, align 8, !tbaa !111
  br label %_ZN7rocksdb6StatusD2Ev.exit218

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit214, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter37DecrementProtectionInfoIdxForTryAgainEv.exit
  %.pr247 = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  %.not.i.i216 = icmp eq ptr %.pr247, null
  br i1 %.not.i.i216, label %_ZN7rocksdb6StatusD2Ev.exit218, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i217

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i217: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr247) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit218

_ZN7rocksdb6StatusD2Ev.exit218:                   ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit.thread, %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.dn

bb.dm:                                            ; preds = %bb.u, %_ZN7rocksdb9LookupKeyD2Ev.exit119, %_ZN7rocksdb11ReadOptionsD2Ev.exit183, %bb.cu, %bb.da, %bb.dg, %bb.dk, %bb.v, %bb.n, %bb.m
  %.pn110 = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.as, %bb.n ], [ %i.bq, %bb.u ], [ %i.br, %bb.v ], [ %i.oh, %bb.dk ], [ %i.oa, %bb.dg ], [ %.pn102, %bb.cu ], [ %i.nn, %bb.da ], [ %.pn95.pn.pn.pn.pn, %_ZN7rocksdb11ReadOptionsD2Ev.exit183 ], [ %.pn, %_ZN7rocksdb9LookupKeyD2Ev.exit119 ]
  %i.ox = load ptr, ptr %i.ab, align 8, !tbaa !111 ; 2 uses
  %.not.i.i219 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i219, label %_ZN7rocksdb6StatusD2Ev.exit221, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i220

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i220: ; preds = %bb.dm
  call void @_ZdaPv(ptr noundef nonnull %i.ox) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit221

_ZN7rocksdb6StatusD2Ev.exit221:                   ; preds = %bb.dm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn110

bb.dn:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit218, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_116MemTableInserter14PutBlobIndexCFEjRKNS_5SliceES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.rocksdb::ProtectionInfoKVOS", align 8 ; 4 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit.thread, label %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  br label %bb.c

_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !257  ; 4 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 -64
  %.0.i.i = select i1 %i.h, ptr %i.k, ptr %i.o    ; 2 uses
  %i.p = add i64 %i.g, 1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !257
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_116MemTableInserter18NextProtectionInfoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !tbaa !96
  %i.r = load i64, ptr %.0.i.i, align 8, !tbaa !103
  %i.s = call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 5344283794842014764)
  %i.t = xor i64 %i.s, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8, !tbaa !95
end_hunk_0
