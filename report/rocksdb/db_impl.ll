Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7rocksdb6DBImpl19IngestExternalFilesERKSt6vectorINS_21IngestExternalFileArgESaIS2_EE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !1583
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !243
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.noexc unwind label %bb.h, !inline_history !85 ; 2 uses

.noexc:                                           ; preds = %bb.d
  store i64 %i.u, ptr %i.o, align 8, !tbaa !1587
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit, %.noexc
  %i.v = phi ptr [ %i.m, %.noexc ], [ null, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  %i.w = phi i64 [ %i.u, %.noexc ], [ 0, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  store ptr null, ptr %4, align 8, !tbaa !3551
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  %i.x = load ptr, ptr %1, align 64, !tbaa !243
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1160
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %i.aa = load i8, ptr %5, align 8, !tbaa !824    ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ac, align 8, !tbaa !623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i10 = icmp eq ptr %0, %5
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.aa, ptr %0, align 8, !tbaa !824
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = load <4 x i8>, ptr %i.ad, align 1, !tbaa !158
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !158
  store <4 x i8> %i.ag, ptr %i.ae, align 1, !tbaa !158
  store i8 0, ptr %i.af, align 4, !tbaa !839
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !158
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !840
  store i8 0, ptr %i.ah, align 1, !tbaa !840
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !737
  store ptr null, ptr %i.ak, align 8, !tbaa !737
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !737
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.h:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit22

bb.j:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %4, align 8, !tbaa !1965
  store i64 %i.ao, ptr %6, align 8, !tbaa !1965
  store ptr null, ptr %4, align 8, !tbaa !1965
  %i.ap = load ptr, ptr %1, align 64, !tbaa !243
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1184
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %6, align 8, !tbaa !1965  ; 3 uses
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i: ; preds = %bb.k
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !243
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #44, !inline_history !3549
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !1965  ; 3 uses
  %.not.i12 = icmp eq ptr %i.ax, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i13: ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !243
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #44, !inline_history !3549
  br label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i, %bb.k, %bb.f, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !737 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i15, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.bd = load ptr, ptr %4, align 8, !tbaa !1965  ; 3 uses
  %.not.i16 = icmp eq ptr %i.bd, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i17: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !243
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #44, !inline_history !3549
  br label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %.not.i.i19 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i19, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit18
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !243
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.noexc.i unwind label %bb.o, !inline_history !86

.noexc.i:                                         ; preds = %bb.m
  br i1 %i.e, label %bb.n, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

bb.n:                                             ; preds = %.noexc.i
  %i.bl = sub i64 %i.bk, %i.w
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !821
  %i.bn = add i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !821
  br label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #45
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %.noexc.i, %bb.n, %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  ret void

_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i13, %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !737 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.br, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14
  call void @_ZdaPv(ptr noundef nonnull %i.br) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21, %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.aw, %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit14 ], [ %i.aw, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.bs = load ptr, ptr %4, align 8, !tbaa !1965  ; 3 uses
  %.not.i23 = icmp eq ptr %i.bs, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i24: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !243
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) #44, !inline_history !3549
  br label %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit25: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22, %_ZNKSt14default_deleteIN7rocksdb19FileIngestionHandleEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit25, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt10unique_ptrIN7rocksdb19FileIngestionHandleESt14default_deleteIS1_EED2Ev.exit25 ], [ %i.am, %bb.h ]
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl28CreateColumnFamilyWithImportERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_25ImportColumnFamilyOptionsERKSt6vectorIPKNS_25ExportImportFilesMetaDataESaISI_EEPPNS_18ColumnFamilyHandleE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(976) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.57", align 8 ; 4 uses
  %8 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 22 uses
  %9 = alloca %"struct.rocksdb::WriteOptions", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::vector.1647", align 8 ; 12 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::ImportColumnFamilyJob", align 8 ; 11 uses
  %15 = alloca %"struct.rocksdb::SuperVersionContext", align 8 ; 14 uses
  %16 = alloca %"class.rocksdb::VersionEdit", align 8 ; 47 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %18 = alloca %"class.std::function.488", align 8 ; 11 uses
  %19 = alloca %"class.std::function.491", align 8 ; 11 uses
  %20 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %21 = alloca %"struct.rocksdb::SuperVersionContext", align 8 ; 14 uses
  %22 = alloca %"struct.rocksdb::WriteThread::Writer", align 8 ; 19 uses
  %23 = alloca %"struct.rocksdb::WriteThread::Writer", align 8 ; 19 uses
  %24 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %25 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %26 = alloca %"class.std::function.488", align 8 ; 11 uses
  %27 = alloca %"class.std::function.491", align 8 ; 11 uses
  %28 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %8, i8 0, i64 44, i1 false)
  store i32 4, ptr %i.a, align 4, !tbaa !1248
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 -1, ptr %i.b, align 8, !tbaa !1249
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i8 0, ptr %i.c, align 8, !tbaa !1250
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 72
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.d, align 8, !tbaa !709
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 76
  store i8 1, ptr %i.e, align 4, !tbaa !1251
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.f, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.h, align 8, !tbaa !1252
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 153
  store i8 0, ptr %i.i, align 1, !tbaa !1253
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 154
  store i8 0, ptr %i.j, align 2, !tbaa !1254
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.l, align 8, !tbaa !1255
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 184
  store ptr null, ptr %i.m, align 8, !tbaa !1256
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 6, i1 false)
  store i32 4, ptr %i.n, align 8, !tbaa !1193
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !1194
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 -1, ptr %i.p, align 8, !tbaa !1195
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1662 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !243
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %bb.b unwind label %bb.l       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !244
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.197) #42
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #44 ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #42
          to label %.noexc101 unwind label %bb.m

.noexc101:                                        ; preds = %.noexc.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !246

.noexc11.i:                                       ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc102 unwind label %bb.m

.noexc102:                                        ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #43
          to label %.noexc103 unwind label %bb.m  ; 2 uses

.noexc103:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ad, ptr %10, align 8, !tbaa !157
  store i64 %i.y, ptr %i.w, align 8, !tbaa !158
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc103, %bb.d
  %i.ae = phi ptr [ %i.ad, %.noexc103 ], [ %i.w, %bb.d ] ; 3 uses
  switch i64 %i.y, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.v, align 1, !tbaa !158
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !158
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.v, i64 %i.y, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2033 ; 3 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !2034  ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, 384307168202282325
  br i1 %i.ap, label %bb.j, label %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #42
          to label %.noexc104 unwind label %bb.n

.noexc104:                                        ; preds = %bb.j
  unreachable

_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.aq = mul nuw nsw i64 %i.ao, 24               ; 3 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #43
          to label %.noexc105 unwind label %bb.n  ; 4 uses

.noexc105:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ar, ptr %11, align 8, !tbaa !2037
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %i.aq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ar, i64 %i.aq
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !2033
  %.pre268 = load ptr, ptr %5, align 8, !tbaa !2034
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc105
  %i.at = phi ptr [ %.pre268, %.noexc105 ], [ %i.ak, %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc105 ], [ %i.aj, %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ] ; 2 uses
  %.sink.i = phi ptr [ %i.as, %.noexc105 ], [ null, %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc105 ], [ null, %_ZNSt6vectorIS_IPN7rocksdb16LiveFileMetaDataESaIS2_EESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.aw, align 8, !tbaa !2038
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.av, align 8, !tbaa !2039
  %.not262.not = icmp eq ptr %i.au, %i.at
  br i1 %.not262.not, label %.critedge, label %.lr.ph266

bb.l:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.n:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.lr.ph266:                                        ; preds = %bb.k, %._crit_edge
  %i.ba = phi ptr [ %i.bu, %._crit_edge ], [ %i.at, %bb.k ] ; 2 uses
  %i.bb = phi ptr [ %i.bv, %._crit_edge ], [ %i.au, %bb.k ]
  %.043264 = phi i64 [ %i.cd, %._crit_edge ], [ 0, %bb.k ] ; 4 uses
  %.044263 = phi i64 [ %i.cc, %._crit_edge ], [ 0, %bb.k ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.043264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2041 ; 4 uses
  %i.be = load i64, ptr %i.ag, align 8, !tbaa !245 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !245
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread240

bb.o:                                             ; preds = %.lr.ph266
  %i.bi = icmp eq i64 %i.be, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.o
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !157
  %i.bk = load ptr, ptr %10, align 8, !tbaa !157
  %bcmp.i = call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %i.be)
  %i.bl = icmp eq i32 %bcmp.i, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread240

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread240: ; preds = %.lr.ph266, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  store ptr @.str.181, ptr %12, align 8, !tbaa !828
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 24, ptr %i.bm, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  store ptr @.str, ptr %13, align 8, !tbaa !828
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !829
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.p

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread240
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %bb.ed

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread240
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %_ZN7rocksdb6StatusD2Ev.exit212

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2043 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2043 ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit
  %.pre269 = load ptr, ptr %5, align 8, !tbaa !2034 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre269, i64 %.043264
  %.pre270 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2041 ; 2 uses
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %.pre270, i64 40
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8, !tbaa !3556
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %.pre270, i64 32
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8, !tbaa !3557
  %.pre275 = load ptr, ptr %i.ai, align 8, !tbaa !2033
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bu = phi ptr [ %.pre269, %._crit_edge.loopexit ], [ %i.ba, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %i.bv = phi ptr [ %.pre275, %._crit_edge.loopexit ], [ %i.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %i.bw = phi ptr [ %.pre274, %._crit_edge.loopexit ], [ %i.bq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %i.bx = phi ptr [ %.pre272, %._crit_edge.loopexit ], [ %i.bq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 472
  %i.cc = add i64 %i.cb, %.044263                 ; 2 uses
  %i.cd = add nuw i64 %.043264, 1                 ; 2 uses
  %i.ce = ptrtoint ptr %i.bv to i64
  %i.cf = ptrtoint ptr %i.bu to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %.not = icmp ult i64 %i.cd, %i.ch
  br i1 %.not, label %.lr.ph266, label %.critedge, !llvm.loop !3552

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit
  %.sroa.0235.0261 = phi ptr [ %i.di, %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit ], [ %i.bq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 3 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !2037
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.043264 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2046 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2047
  %.not.i.i = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  store ptr %.sroa.0235.0261, ptr %i.cl, align 8, !tbaa !2043
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !2046
  br label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit

bb.r:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !2048 ; 4 uses
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.s, label %_ZNKSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #42
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #43
          to label %.noexc109 unwind label %.loopexit ; 4 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  store ptr %.sroa.0235.0261, ptr %i.db, align 8, !tbaa !2043
  %i.dc = icmp sgt i64 %i.cs, 0
  br i1 %i.dc, label %bb.t, label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc109
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.cp, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.t, %.noexc109
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.de = load ptr, ptr %i.cm, align 8, !tbaa !2047
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dg) #41
  br label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.da, ptr %i.cj, align 8, !tbaa !2048
  store ptr %i.dd, ptr %i.ck, align 8, !tbaa !2046
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dh, ptr %i.cm, align 8, !tbaa !2047
  br label %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0235.0261, i64 472 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bs
  br i1 %i.dj, label %._crit_edge.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb16LiveFileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit212

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit212

.critedge:                                        ; preds = %._crit_edge, %bb.k
  %.044.lcssa = phi i64 [ 0, %bb.k ], [ %i.cc, %._crit_edge ]
  %i.dk = load ptr, ptr %1, align 64, !tbaa !243
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1400
end_hunk_0
begin_hunk_1_@_ZN7rocksdb6DBImpl7GetImplERKNS_11ReadOptionsERKNS_5SliceERNS0_14GetImplOptionsE:bb.a
bb.an:                                            ; preds = %bb.al
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.ao:                                            ; preds = %bb.al
  %i.fw = load i8, ptr %0, align 8, !tbaa !824
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !737 ; 2 uses
  %.not.i.i313 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i313, label %_ZN7rocksdb6StatusD2Ev.exit315, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i314

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i314: ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit315

_ZN7rocksdb6StatusD2Ev.exit315:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i314, %bb.ap, %bb.ak, %_ZN7rocksdb5DeferC2EOSt8functionIFvvEE.exit
  %i.ga = load ptr, ptr %2, align 8, !tbaa !1589  ; 2 uses
  %.not224 = icmp eq ptr %i.ga, null
  br i1 %.not224, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit315
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !3663 ; 3 uses
  %.not226 = icmp eq ptr %i.gc, null
  %.625 = select i1 %.not226, ptr %i.ga, ptr %i.gc
  br label %.sink.split

bb.ar:                                            ; preds = %bb.au, %bb.as
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.as:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit315
  %i.ge = load ptr, ptr %1, align 64, !tbaa !243
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1456
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef i64 %i.gg(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.at unwind label %bb.ar     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !3663 ; 3 uses
  %.not225 = icmp eq ptr %i.gj, null
  br i1 %.not225, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !243
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  invoke void %i.gm(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 noundef %i.gh)
          to label %bb.av unwind label %bb.ar

bb.av:                                            ; preds = %bb.au
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !3663 ; 2 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.av
  %.sink621 = phi ptr [ %i.gn, %bb.av ], [ %.625, %bb.aq ]
  %.ph619 = phi ptr [ %i.gn, %bb.av ], [ %i.gc, %bb.aq ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sink621, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !821
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.at
  %i.gq = phi ptr [ null, %bb.at ], [ %.ph619, %.sink.split ] ; 2 uses
  %.0164 = phi i64 [ %i.gh, %bb.at ], [ %i.gp, %.sink.split ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.gs = load ptr, ptr %4, align 8, !tbaa !1474  ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !243
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = invoke noundef ptr %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !1427
  %.not227 = icmp eq i64 %i.gy, 0
  br i1 %.not227, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i64 %.0164, ptr %i.w, align 8, !tbaa !1592
  store ptr %11, ptr %i.gr, align 8, !tbaa !3663
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #44
  %i.ha = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 8 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ha, align 8, !tbaa !1529
  %i.hc = load ptr, ptr %i.eg, align 8, !tbaa !2065
  store ptr %i.hc, ptr %17, align 8, !tbaa !1526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  store i64 0, ptr %i.f, align 8, !tbaa !821
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.hd, align 8, !tbaa !623
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #44
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !1500
  invoke void @_ZN7rocksdb9LookupKeyC1ERKNS_5SliceEmPS2_(ptr noundef nonnull align 8 dereferenceable(224) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.0164, ptr noundef %i.he)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %.not.i316 = icmp eq i64 %i.di, 0
  br i1 %.not.i316, label %_ZN7rocksdb13PerfStepTimer4StopEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hf = load ptr, ptr %i.dh, align 8, !tbaa !243
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 160
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef i64 %i.hh(ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %.noexc318 unwind label %bb.bi, !inline_history !86

.noexc318:                                        ; preds = %bb.bc
  br i1 %i.cl, label %bb.bd, label %.noexc319

bb.bd:                                            ; preds = %.noexc318
  %i.hj = sub i64 %i.hi, %i.di
  %i.hk = load i64, ptr %i.cj, align 8, !tbaa !821
  %i.hl = add i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %i.cj, align 8, !tbaa !821
  br label %.noexc319

.noexc319:                                        ; preds = %.noexc318, %bb.bd
  store i64 0, ptr %i.df, align 8, !tbaa !1587
  br label %_ZN7rocksdb13PerfStepTimer4StopEv.exit

_ZN7rocksdb13PerfStepTimer4StopEv.exit:           ; preds = %.noexc319, %bb.bb
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !1440
  %i.ho = icmp eq i32 %i.hn, 2
  br i1 %i.ho, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN7rocksdb13PerfStepTimer4StopEv.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 6120
  %i.hq = load atomic i8, ptr %i.hp monotonic, align 8, !range !638, !noundef !639
  %i.hr = trunc nuw i8 %i.hq to i1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN7rocksdb13PerfStepTimer4StopEv.exit
  %i.hs = phi i1 [ false, %_ZN7rocksdb13PerfStepTimer4StopEv.exit ], [ %i.hr, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #44
  store i8 0, ptr %i.g, align 1, !tbaa !709
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !3664 ; 4 uses
  %i.hv = load ptr, ptr %i.d, align 8, !tbaa !1010 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 2728
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !1104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #44
  %i.hy = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hy, ptr %19, align 8, !tbaa !244
  %i.hz = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.hz, align 8, !tbaa !245
  store i8 0, ptr %i.hy, align 8, !tbaa !158
  %i.ia = load i64, ptr %i.gx, align 8, !tbaa !1427
  %.not228 = icmp eq i64 %i.ia, 0
  br i1 %.not228, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ib = load ptr, ptr %i.s, align 8, !tbaa !1744 ; 2 uses
  %.not229 = icmp eq ptr %i.ib, null
  %.not230 = icmp eq ptr %i.hx, null
  %. = select i1 %.not230, ptr null, ptr %19
  %i.ic = select i1 %.not229, ptr %., ptr %i.ib
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ba
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9LookupKeyD2Ev.exit459

bb.bi:                                            ; preds = %bb.bc
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.bj:                                            ; preds = %bb.bg, %bb.bf
  %.0159 = phi ptr [ %i.ic, %bb.bg ], [ null, %bb.bf ] ; 6 uses
  %i.if = icmp eq ptr %i.hx, null                 ; 2 uses
  %i.ig = icmp ne ptr %i.hu, null
  %or.cond = select i1 %i.if, i1 true, i1 %i.ig
  br i1 %or.cond, label %bb.bk, label %.thread

.thread:                                          ; preds = %bb.bj
  %i.ih = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !1473, !range !638, !noundef !639
  %i.ij = trunc nuw i8 %i.ii to i1                ; 2 uses
  %spec.select269 = select i1 %i.ij, ptr %i.g, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #44
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 40
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.il = icmp eq ptr %i.hu, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #44
  %i.im = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  store i8 0, ptr %i.im, align 8, !tbaa !1634
  br i1 %i.if, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread
  %i.in = phi ptr [ %i.ik, %.thread ], [ %i.im, %bb.bk ]
  %i.io = phi i1 [ %i.ij, %.thread ], [ %i.il, %bb.bk ]
  %.0160492 = phi ptr [ %spec.select269, %.thread ], [ %i.hu, %bb.bk ]
  %i.ip = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hv, i64 2712
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !1129
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !1635
  %i.iu = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !1638
  %i.iv = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.is, ptr %i.iv, align 8, !tbaa !1639
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i8 1, ptr %i.iw, align 8, !tbaa !1640
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18VersionBlobFetcherE, i64 16), ptr %20, align 8, !tbaa !243
  %i.ix = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %2, ptr %i.ix, align 8, !tbaa !1642
  store i8 1, ptr %i.in, align 8, !tbaa !1634
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %spec.select505 = phi ptr [ %20, %bb.bl ], [ null, %bb.bk ] ; 4 uses
  %i.iy = phi i1 [ %i.io, %bb.bl ], [ false, %bb.bk ] ; 3 uses
  %.0160491 = phi ptr [ %.0160492, %bb.bl ], [ %i.hu, %bb.bk ] ; 3 uses
  br i1 %i.hs, label %bb.ck, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ja = load i8, ptr %i.iz, align 8, !tbaa !1473, !range !638, !noundef !639
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !1428 ; 4 uses
  br i1 %i.jb, label %bb.bo, label %bb.cc

bb.bo:                                            ; preds = %bb.bn
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !1742 ; 2 uses
  %.not231 = icmp eq ptr %i.jg, null
  br i1 %.not231, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 80
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1599
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.jj = phi ptr [ %i.ji, %bb.bp ], [ null, %bb.bo ]
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !1475
  %i.jm = load ptr, ptr %i.gr, align 8, !tbaa !3663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !243
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 80
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(7560) %i.je, ptr noundef nonnull align 8 dereferenceable(224) %18, ptr noundef %i.jj, ptr noundef %i.jl, ptr noundef %.0159, ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext false, ptr noundef %i.jm, ptr noundef %.0160491, i1 noundef zeroext true, ptr noundef %spec.select505)
          to label %bb.br unwind label %bb.bu, !inline_history !3652

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44
  br i1 %i.jq, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.jr = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !1230
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !1010
  %i.jv = load ptr, ptr %i.jf, align 8, !tbaa !1742
  %i.jw = load ptr, ptr %i.jk, align 8, !tbaa !1475
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !1743
  invoke void @_ZN7rocksdb6DBImpl31PostprocessDirectWriteValueReadERKNS_11ReadOptionsERKNS_5SliceEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPKNS_7VersionEPNS_16ColumnFamilyDataEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNS_6StatusEPbSQ_(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %.0159, i1 noundef zeroext %i.iy, ptr noundef %i.jt, ptr noundef %i.ju, ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef %i.jy)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jz = load ptr, ptr %i.bb, align 32, !tbaa !632 ; 2 uses
  %.not.i321 = icmp eq ptr %i.jz, null
  br i1 %.not.i321, label %bb.cj, label %.invoke

bb.bu:                                            ; preds = %.invoke, %bb.cc, %bb.by, %bb.bq, %bb.cg, %bb.ca, %bb.bs
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.bv:                                            ; preds = %bb.br
  %i.kb = load i8, ptr %0, align 8, !tbaa !824    ; 2 uses
  switch i8 %i.kb, label %.thread493 [
    i8 0, label %bb.bw
    i8 6, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.kc = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !1429
  %i.kf = load ptr, ptr %i.jf, align 8, !tbaa !1742 ; 2 uses
  %.not232 = icmp eq ptr %i.kf, null
  br i1 %.not232, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 80
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1599
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.ki = phi ptr [ %i.kh, %bb.bx ], [ null, %bb.bw ]
  %i.kj = load ptr, ptr %i.jk, align 8, !tbaa !1475
  %i.kk = load ptr, ptr %i.gr, align 8, !tbaa !3663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  %i.kl = invoke noundef zeroext i1 @_ZN7rocksdb19MemTableListVersion3GetERKNS_9LookupKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsESA_PNS_6StatusEPNS_12MergeContextEPmSH_RKNS_11ReadOptionsEPNS_12ReadCallbackEPbPKNS_11BlobFetcherE(ptr noundef nonnull align 8 dereferenceable(80) %i.ke, ptr noundef nonnull align 8 dereferenceable(224) %18, ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef %.0159, ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.kk, ptr noundef %.0160491, ptr noundef %spec.select505)
          to label %bb.bz unwind label %bb.bu

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #44
  br i1 %i.kl, label %bb.ca, label %bb.cj

bb.ca:                                            ; preds = %bb.bz
  %i.km = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !1230
  %i.kp = load ptr, ptr %i.d, align 8, !tbaa !1010
  %i.kq = load ptr, ptr %i.jf, align 8, !tbaa !1742
  %i.kr = load ptr, ptr %i.jk, align 8, !tbaa !1475
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !1743
  invoke void @_ZN7rocksdb6DBImpl31PostprocessDirectWriteValueReadERKNS_11ReadOptionsERKNS_5SliceEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPKNS_7VersionEPNS_16ColumnFamilyDataEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNS_6StatusEPbSQ_(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %.0159, i1 noundef zeroext %i.iy, ptr noundef %i.ko, ptr noundef %i.kp, ptr noundef %i.kq, ptr noundef %i.kr, ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef %i.kt)
          to label %bb.cb unwind label %bb.bu

bb.cb:                                            ; preds = %bb.ca
  %i.ku = load ptr, ptr %i.bb, align 32, !tbaa !632 ; 2 uses
  %.not.i324 = icmp eq ptr %i.ku, null
  br i1 %.not.i324, label %bb.cj, label %.invoke

bb.cc:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.kv = load ptr, ptr %i.je, align 8, !tbaa !243
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 80
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = invoke noundef zeroext i1 %i.kx(ptr noundef nonnull align 8 dereferenceable(7560) %i.je, ptr noundef nonnull align 8 dereferenceable(224) %18, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext false, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %spec.select505)
          to label %bb.cd unwind label %bb.bu, !inline_history !3652

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  br i1 %i.ky, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.kz = load ptr, ptr %i.bb, align 32, !tbaa !632 ; 2 uses
  %.not.i329 = icmp eq ptr %i.kz, null
  br i1 %.not.i329, label %bb.cj, label %.invoke

bb.cf:                                            ; preds = %bb.cd
  %i.la = load i8, ptr %0, align 8, !tbaa !824    ; 2 uses
  switch i8 %i.la, label %.thread493 [
    i8 0, label %bb.cg
    i8 6, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.lb = load ptr, ptr %i.e, align 8, !tbaa !1066
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !1429
  %i.le = invoke noundef zeroext i1 @_ZN7rocksdb19MemTableListVersion16GetMergeOperandsERKNS_9LookupKeyEPNS_6StatusEPNS_12MergeContextEPmRKNS_11ReadOptionsEPKNS_11BlobFetcherE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(224) %18, ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %spec.select505)
          to label %bb.ch unwind label %bb.bu

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.le, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.lf = load ptr, ptr %i.bb, align 32, !tbaa !632 ; 2 uses
  %.not.i332 = icmp eq ptr %i.lf, null
  br i1 %.not.i332, label %bb.cj, label %.invoke

.invoke:                                          ; preds = %bb.ci, %bb.ce, %bb.cb, %bb.bt
  %.sink624 = phi ptr [ %i.kz, %bb.ce ], [ %i.jz, %bb.bt ], [ %i.ku, %bb.cb ], [ %i.lf, %bb.ci ] ; 2 uses
  %i.lg = load ptr, ptr %.sink624, align 8, !tbaa !243
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 176
  %i.li = load ptr, ptr %i.lh, align 8
  invoke void %i.li(ptr noundef nonnull align 8 dereferenceable(33) %.sink624, i32 noundef 45, i64 noundef 1)
          to label %bb.cj unwind label %bb.bu, !inline_history !65

bb.cj:                                            ; preds = %.invoke, %bb.bz, %bb.ch, %bb.bt, %bb.cb, %bb.ce, %bb.ci
  %.0161.ph = phi i1 [ true, %bb.ci ], [ true, %.invoke ], [ true, %bb.bt ], [ false, %bb.bz ], [ true, %bb.cb ], [ false, %bb.ch ], [ true, %bb.ce ] ; 2 uses
  %.pr = load i8, ptr %0, align 8, !tbaa !824     ; 2 uses
  %i.lj = icmp eq i8 %.pr, 0
  br i1 %i.lj, label %bb.ck, label %.thread493

.thread493:                                       ; preds = %bb.cf, %bb.bv, %bb.cj
  %.0161495 = phi i1 [ %.0161.ph, %bb.cj ], [ false, %bb.bv ], [ false, %bb.cf ] ; 2 uses
  %i.lk = phi i8 [ %.pr, %bb.cj ], [ %i.kb, %bb.bv ], [ %i.la, %bb.cf ]
  switch i8 %i.lk, label %bb.fx [
end_hunk_1
begin_hunk_2_@_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.z = load i64, ptr %i.d, align 8, !tbaa !158
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #41
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit

_ZN7rocksdb13PinnableSliceD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  ret void

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @_ZN7rocksdb13PinnableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.rocksdb::PinnableSlice", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store ptr @.str, ptr %6, align 8, !tbaa !828
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !829
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !244
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !245
  store i8 0, ptr %i.d, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !1554
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %5, ptr %i.g, align 8, !tbaa !1599
  %i.h = load ptr, ptr %1, align 8, !tbaa !243, !noalias !3683
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !noalias !3683
  invoke void %i.j(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %6, ptr noundef null)
          to label %bb.b unwind label %bb.d, !inline_history !3684

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %0, align 8, !tbaa !824
  %i.l = icmp eq i8 %i.k, 0
  %i.m = load i8, ptr %i.f, align 8, !range !638
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %6, align 8, !tbaa !828
  %i.p = load i64, ptr %i.a, align 8, !tbaa !829
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !245
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %i.r, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.e ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !737  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.w) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZN7rocksdb13PinnableSliceD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.z = load i64, ptr %i.d, align 8, !tbaa !158
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #41
  br label %_ZN7rocksdb13PinnableSliceD2Ev.exit

_ZN7rocksdb13PinnableSliceD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  ret void

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @_ZN7rocksdb13PinnableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1256
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB9GetEntityERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_19PinnableWideColumnsE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) unnamed_addr #5 comdat align 2 {
bb.a:
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store ptr @.str.237, ptr %6, align 8, !tbaa !828
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 23, ptr %i.a, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  store ptr @.str, ptr %7, align 8, !tbaa !828
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !829
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB9GetEntityERKNS_11ReadOptionsERKNS_5SliceEPSt6vectorINS_22PinnableAttributeGroupESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4) unnamed_addr #5 comdat align 2 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  store ptr @.str.237, ptr %5, align 8, !tbaa !828
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 23, ptr %i.a, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store ptr @.str, ptr %6, align 8, !tbaa !828
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !829
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorIPNS_18ColumnFamilyHandleESaIS6_EERKS4_INS_5SliceESaISB_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EESO_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1139") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.2100", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1597 ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !1598   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 21 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #42
  unreachable

_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread, label %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread: ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw [96 x i8], ptr null, i64 %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %7, align 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2073
  br label %.loopexit

_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN7rocksdb6StatusESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43 ; 5 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !1497
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1498
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.prol ], [ %i.l, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.prol, i8 0, i64 6, i1 false)
  %i.p = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3685

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa92.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ], [ %i.q, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.g, %_ZNSt12_Vector_baseIN7rocksdb6StatusESaIS1_EEC2EmRKS2_.exit.i ], [ %i.p, %.lr.ph.i.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.g, 8
  br i1 %i.r, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, i8 0, i64 6, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store ptr null, ptr %i.w, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 6, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 6, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store ptr null, ptr %i.aa, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 6, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store ptr null, ptr %i.ac, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 6, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store ptr null, ptr %i.ae, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 6, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store ptr null, ptr %i.ag, align 8, !tbaa !623
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 6, i1 false)
  %i.ah = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !78

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa92 = phi ptr [ %.lcssa92.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa92, ptr %i.aj, align 8, !tbaa !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.ak = icmp samesign ugt i64 %i.g, 96076792050570581
  br i1 %i.ak, label %bb.b, label %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i

bb.b:                                             ; preds = %.unr-lcssa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.206) #42
          to label %.noexc36 unwind label %bb.p

.noexc36:                                         ; preds = %bb.b
  unreachable

_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i: ; preds = %.unr-lcssa
  %i.al = mul nuw nsw i64 %i.g, 96
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #43
          to label %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.p ; 7 uses

_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorIN7rocksdb13PinnableSliceEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.am, ptr %7, align 8, !tbaa !2074
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !2075
  %i.ao = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %i.g
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !2073
  br label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i, %bb.c
  %.014.i.i.i.i = phi ptr [ %i.ay, %bb.c ], [ %i.am, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ] ; 10 uses
  %.01013.i.i.i.i = phi i64 [ %i.ax, %bb.c ], [ %i.g, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i ]
  store ptr @.str, ptr %.014.i.i.i.i, align 8, !tbaa !828
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !829
  %i.ar = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 16
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ar)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i55
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 64 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !244
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56
  store i64 0, ptr %i.au, align 8, !tbaa !245
  store i8 0, ptr %i.at, align 8, !tbaa !158
  %i.av = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 88
  store i8 0, ptr %i.av, align 8, !tbaa !1554
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 80
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !1599
  %i.ax = add nsw i64 %.01013.i.i.i.i, -1         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i56 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i56, label %.loopexit, label %.lr.ph.i.i.i.i55, !llvm.loop !3686

bb.d:                                             ; preds = %.lr.ph.i.i.i.i55
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %i.ba) #44 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb13PinnableSliceEEvT_S3_(ptr noundef nonnull %i.am, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #42
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body57 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #45
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

.body57:                                          ; preds = %bb.f
  %.idx = mul nuw nsw i64 %i.g, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %.idx) #41
  br label %.body

.loopexit:                                        ; preds = %bb.c, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread
  %i.bf = phi ptr [ null, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.l, %bb.c ] ; 2 uses
  %.pr.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.am, %bb.c ] ; 7 uses
  %i.bg = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ap, %bb.c ]
  %i.bh = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.an, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7rocksdb13PinnableSliceESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ay, %bb.c ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.bh, align 8, !tbaa !2075
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1089 ; 3 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !1088  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 5                 ; 3 uses
  %i.bp = icmp ugt i64 %i.g, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.bq = sub nuw nsw i64 %i.g, %i.bo
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bq)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %bb.q

bb.j:                                             ; preds = %.loopexit
  %i.br = icmp ult i64 %i.g, %i.bo
  br i1 %i.br, label %bb.k, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.g ; 3 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.bs
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bs, %bb.k ] ; 3 uses
  %i.bt = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !158
end_hunk_2
