Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/memtable?download=true
inline.NumInlined: 3338
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7rocksdb6StatusaSEOS0_:bb.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !523
  store i8 0, ptr %i.e, align 1, !tbaa !523
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !383
  store ptr null, ptr %i.h, align 8, !tbaa !383
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !383  ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !383
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #38
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !471
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_ZN7rocksdb13PerfStepTimer4StopEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !464, !range !104, !noundef !105
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !470  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %..i.i = select i1 %i.e, i64 176, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i64 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc unwind label %bb.e, !inline_history !20

.noexc:                                           ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !471
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = load i8, ptr %0, align 8, !tbaa !463, !range !104, !noundef !105
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !466  ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !169
  %i.s = add i64 %i.r, %i.m
  store i64 %i.s, ptr %i.q, align 8, !tbaa !169
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !467  ; 3 uses
  %.not2.i = icmp eq ptr %i.u, null
  br i1 %.not2.i, label %_ZN7rocksdb13PerfStepTimer4StopEv.exit, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !465
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(33) %i.u, i32 noundef %i.w, i64 noundef %i.m)
          to label %_ZN7rocksdb13PerfStepTimer4StopEv.exit unwind label %bb.e, !inline_history !20

_ZN7rocksdb13PerfStepTimer4StopEv.exit:           ; preds = %bb.d, %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i, %bb.a
  ret void

bb.e:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7rocksdbL9SaveValueEPvPKc(ptr nofree noundef %0, ptr noundef %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.std::optional.432", align 8 ; 7 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 9 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %24 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %28 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %29 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %30 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %31 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %32 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %33 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %34 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %35 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %36 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.std::allocator", align 1   ; 4 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %49 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %50 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !508  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !509  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i32 0, ptr %i.b, align 4, !tbaa !162
  %i.j = load i8, ptr %1, align 1, !tbaa !55      ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i8 %i.j to i32                 ; 2 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

.thread.i:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.o = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !162
  br label %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit

_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit:        ; preds = %bb.b, %.thread.i
  %i.p = phi i32 [ %.pre, %.thread.i ], [ %i.l, %bb.b ]
  %.1.i = phi ptr [ %i.o, %.thread.i ], [ %i.m, %bb.b ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.q = add i32 %i.p, -8
  %i.r = zext i32 %i.q to i64
  store ptr %.1.i, ptr %2, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !507
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 7576
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !357  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !502 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !473 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !474
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %reass.sub = sub i64 %i.af, %i.ag
  %i.ah = add i64 %reass.sub, -8
  store ptr %i.ac, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br i1 %i.am, label %bb.c, label %bb.eh

bb.c:                                             ; preds = %_ZN7rocksdb14GetVarint32PtrEPKcS1_Pj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 0, ptr %i.an, align 8, !tbaa !526
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !513, !range !104, !noundef !105
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !507 ; 2 uses
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !502 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !473 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !474
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %reass.sub410 = sub i64 %i.ax, %i.ay
  %i.az = add i64 %reass.sub410, -8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 10352 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 10360
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !360
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !359
  %i.be = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.au, i64 noundef %i.az)
          to label %_ZNSt19_Optional_base_implIN7rocksdb8ReadLockESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i unwind label %bb.u

_ZNSt19_Optional_base_implIN7rocksdb8ReadLockESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.d
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !359
  store i8 0, ptr %i.an, align 8, !tbaa !526
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = call noundef i64 @llvm.umulh.i64(i64 %i.bj, i64 %i.be)
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.bk ; 2 uses
  store ptr %i.bl, ptr %4, align 8, !tbaa !528
  invoke void @_ZN7rocksdb4port7RWMutex8ReadLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bl)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %_ZNSt19_Optional_base_implIN7rocksdb8ReadLockESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.an, align 8, !tbaa !526
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !522 ; 2 uses
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !521, !range !104, !noundef !105
  %i.bq = trunc nuw i8 %i.bp to i1
  invoke void @_ZN7rocksdb8MemTable19VerifyEntryChecksumEPKcjb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %5, ptr noundef nonnull %1, i32 noundef %i.bn, i1 noundef zeroext %i.bq)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %0, align 8, !tbaa !499   ; 5 uses
  %.not.i = icmp eq ptr %i.br, %5
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load <4 x i8>, ptr %5, align 8, !tbaa !55
  store <4 x i8> %i.bs, ptr %i.br, align 8, !tbaa !55
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !440, !range !104, !noundef !105
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.bu, ptr %i.bv, align 4, !tbaa !524
  store i8 0, ptr %i.bt, align 4, !tbaa !524
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !523
  store i8 0, ptr %i.bw, align 1, !tbaa !523
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !383
  store ptr null, ptr %i.bz, align 8, !tbaa !383
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !383 ; 2 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !383
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #38
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.h, %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !383 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #38
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.cf = load ptr, ptr %0, align 8, !tbaa !499   ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !382
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !500
  store i8 1, ptr %i.cj, align 1, !tbaa !440
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !512
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !383
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 3, ptr noundef %i.cl, ptr noundef nonnull @.str.68, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.cn)
          to label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread399 unwind label %bb.u

bb.l:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.eg

bb.m:                                             ; preds = %bb.j, %bb.f
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !162
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %.0.copyload.i = load i64, ptr %i.cs, align 1   ; 3 uses
  %i.ct = lshr i64 %.0.copyload.i, 8              ; 7 uses
  %i.cu = trunc i64 %.0.copyload.i to i8          ; 3 uses
  %i.cv = getelementptr i8, ptr %0, i64 136
  %.val = load ptr, ptr %i.cv, align 8, !tbaa !518 ; 5 uses
  %.not.i246 = icmp eq ptr %.val, null
  br i1 %.not.i246, label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !819
  %i.cy = icmp ult i64 %i.ct, %i.cx
  br i1 %i.cy, label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !820
  %i.db = icmp ult i64 %i.da, %i.ct
  br i1 %i.db, label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread399, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %.val, align 8, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.ct)
          to label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit unwind label %bb.u, !inline_history !813

_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit: ; preds = %bb.p
  br i1 %i.df, label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread, label %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread399

_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread: ; preds = %bb.n, %bb.m, %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !506
  %i.di = icmp eq i64 %i.dh, 72057594037927935
  br i1 %i.di, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.q:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread
  store i64 %i.ct, ptr %i.dg, align 8, !tbaa !506
  %i.dj = icmp ugt i64 %i.ct, %i.g
  br i1 %i.dj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %cond = icmp eq i64 %i.y, 0
  br i1 %cond, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !505 ; 3 uses
  %.not203 = icmp eq ptr %i.dl, null
  br i1 %.not203, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = load ptr, ptr %2, align 8, !tbaa !39
  %i.dn = load i64, ptr %i.s, align 8, !tbaa !40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn
  %i.dp = sub i64 0, %i.y
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !56
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef 0, i64 noundef %i.ds, ptr noundef nonnull %i.dq, i64 noundef %i.y)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit.thread unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.au, %bb.p, %_ZNSt19_Optional_base_implIN7rocksdb8ReadLockESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, %bb.d, %bb.k, %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.v:                                             ; preds = %bb.q
  store i64 %i.g, ptr %i.dg, align 8, !tbaa !506
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.v, %_ZN7rocksdb12_GLOBAL__N_15Saver13CheckCallbackEm.exit.thread
  %.not204 = icmp eq i64 %i.y, 0
  br i1 %.not204, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit.thread: ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !505
  %.not205 = icmp eq ptr %i.dw, null
  br i1 %.not205, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.dx, ptr %6, align 8, !tbaa !51
  %i.dy = icmp ugt i64 %i.y, 15
  br i1 %i.dy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dz = icmp slt i64 %i.y, 0
  br i1 %i.dz, label %.noexc.i, label %bb.y

.noexc.i:                                         ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #36
          to label %.noexc250 unwind label %bb.ag

.noexc250:                                        ; preds = %.noexc.i
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ea = add nuw i64 %i.y, 1                     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb16ReadOnlyMemTable15HandleTypeMergeERKNS_5SliceES3_bbPNS_12MergeContextEPKNS_13MergeOperatorEPNS_11SystemClockEPNS_10StatisticsEPNS_6LoggerEPNS_6StatusEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE:bb.a
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
  br i1 %i.aj, label %bb.l, label %bb.w

bb.l:                                             ; preds = %_ZNK7rocksdb12MergeContext28GetOperandsDirectionBackwardEv.exit
  %i.ak = icmp ne ptr %10, null
  %i.al = icmp ne ptr %11, null
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.m, label %_ZN7rocksdb6StatusD2Ev.exit47

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !602 ; 5 uses
  %.not.i.i31 = icmp eq ptr %i.am, null
  br i1 %.not.i.i31, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !603, !range !104, !noundef !105
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.o, label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !487 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !487 ; 2 uses
  %i.at = icmp ne ptr %i.aq, %i.as
  %.sroa.0.010.i.i.i.i.i = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  %.not11.i.i.i.i.i = icmp ult ptr %i.aq, %.sroa.0.010.i.i.i.i.i
  %or.cond.i.i.i.i.i = select i1 %i.at, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i, %bb.o ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.aq, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !531
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp ult ptr %i.au, %.sroa.0.0.i.i.i.i.i
  br i1 %.not.i.i.i.i.i32, label %.lr.ph.i.i.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, !llvm.loop !25

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.pre.i.i = load ptr, ptr %i.w, align 8, !tbaa !602
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i: ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i, %bb.o
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.loopexit.i.i ], [ %i.am, %bb.o ]
  store i8 0, ptr %i.an, align 8, !tbaa !603
  br label %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit

_ZNK7rocksdb12MergeContext11GetOperandsEv.exit:   ; preds = %bb.m, %bb.n, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i
  %.0.i.i = phi ptr [ @_ZN7rocksdbL18empty_operand_listE, %bb.m ], [ %i.am, %bb.n ], [ %.pre.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35, !noalias !1040
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store i8 0, ptr %i.av, align 8, !tbaa !605, !noalias !1040
  invoke void @_ZN7rocksdb11MergeHelper18TimedFullMergeImplEPKNS_13MergeOperatorERKNS_5SliceEOSt7variantIJSt9monostateS4_St6vectorINS_10WideColumnESaISA_EEEERKS9_IS4_SaIS4_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNS1_14OpFailureScopeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %19, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, ptr noundef %8, ptr noundef %7, ptr noundef %6, i1 noundef zeroext true, ptr noundef null, ptr noundef %10, ptr noundef %11)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !605, !noalias !1040
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.q, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %13, align 8, !tbaa !599, !noalias !1040 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !600, !noalias !1040
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #38
  br label %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit

bb.s:                                             ; preds = %_ZNK7rocksdb12MergeContext11GetOperandsEv.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i8, ptr %i.av, align 8, !tbaa !605, !noalias !1040
  %i.bg = icmp eq i8 %i.bf, 2
  br i1 %i.bg, label %bb.t, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

bb.t:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %13, align 8, !tbaa !599, !noalias !1040 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i11.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !600, !noalias !1040
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #38
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN7rocksdb5SliceESt6vectorINS3_10WideColumnESaIS6_EEEED2Ev.exit12.i: ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35, !noalias !1040
  resume { ptr, i32 } %i.be

_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit: ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35, !noalias !1040
  %.not.i33 = icmp eq ptr %9, %19
  br i1 %.not.i33, label %_ZN7rocksdb6StatusaSEOS0_.exit36, label %bb.v

bb.v:                                             ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit
  %i.bn = load <4 x i8>, ptr %19, align 8, !tbaa !55
  store <4 x i8> %i.bn, ptr %9, align 8, !tbaa !55
  store <4 x i8> zeroinitializer, ptr %19, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !440, !range !104, !noundef !105
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 %i.bp, ptr %i.bq, align 4, !tbaa !524
  store i8 0, ptr %i.bo, align 4, !tbaa !524
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 5 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 5
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !523
  store i8 0, ptr %i.br, align 1, !tbaa !523
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !383
  store ptr null, ptr %i.bu, align 8, !tbaa !383
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !383 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !383
  %.not.i.i.i.i.i34 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i34, label %_ZN7rocksdb6StatusaSEOS0_.exit36, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i35

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i35: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #38
  br label %_ZN7rocksdb6StatusaSEOS0_.exit36

_ZN7rocksdb6StatusaSEOS0_.exit36:                 ; preds = %_ZN7rocksdb11MergeHelper14TimedFullMergeIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19PinnableWideColumnsEEEENS_6StatusEPKNS_13MergeOperatorERKNS_5SliceENS0_14NoBaseValueTagERKSt6vectorISF_SaISF_EEPNS_6LoggerEPNS_10StatisticsEPNS_11SystemClockEbPNSC_14OpFailureScopeEDpT_.exit, %bb.v, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i35
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !383 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i37, label %_ZN7rocksdb6StatusD2Ev.exit39, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i38

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i38: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit36
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit39

_ZN7rocksdb6StatusD2Ev.exit39:                    ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit36, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit47

bb.w:                                             ; preds = %_ZNK7rocksdb12MergeContext28GetOperandsDirectionBackwardEv.exit, %bb.h
  %i.ca = load ptr, ptr %4, align 8, !tbaa !1041  ; 4 uses
  %.not27 = icmp eq ptr %i.ca, null
  br i1 %.not27, label %_ZN7rocksdb6StatusD2Ev.exit47, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !335
  %.not.i.i.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.not.i, label %_ZN7rocksdb6StatusD2Ev.exit47, label %_ZNKSt8functionIFbN7rocksdb5SliceEEEclES1_.exit

_ZNKSt8functionIFbN7rocksdb5SliceEEEclES1_.exit:  ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !383
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %.sroa.0.0.copyload, ptr %12, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1043
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %12), !inline_history !1038
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %i.ch, label %_ZN7rocksdb6StatusD2Ev.exit47, label %bb.y

bb.y:                                             ; preds = %_ZNKSt8functionIFbN7rocksdb5SliceEEEclES1_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %9, i8 0, i64 6, i1 false)
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !383 ; 2 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !383
  %.not.i.i.i.i.i42 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i42, label %_ZN7rocksdb6StatusD2Ev.exit47, label %_ZN7rocksdb6StatusaSEOS0_.exit44

_ZN7rocksdb6StatusaSEOS0_.exit44:                 ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #38
  br label %_ZN7rocksdb6StatusD2Ev.exit47

_ZN7rocksdb6StatusD2Ev.exit47:                    ; preds = %bb.y, %_ZN7rocksdb6StatusaSEOS0_.exit44, %bb.w, %bb.x, %_ZNKSt8functionIFbN7rocksdb5SliceEEEclES1_.exit, %_ZN7rocksdb6StatusD2Ev.exit39, %bb.l, %_ZN7rocksdb6StatusD2Ev.exit
  %.0 = phi i1 [ true, %_ZN7rocksdb6StatusD2Ev.exit ], [ true, %_ZN7rocksdb6StatusD2Ev.exit39 ], [ false, %bb.w ], [ true, %bb.l ], [ false, %_ZNKSt8functionIFbN7rocksdb5SliceEEEclES1_.exit ], [ false, %bb.x ], [ true, %_ZN7rocksdb6StatusaSEOS0_.exit44 ], [ true, %bb.y ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN7rocksdb8ReadLockELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !526, !range !104, !noundef !105
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !526
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN7rocksdb8ReadLockELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !528
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_ZNSt17_Optional_payloadIN7rocksdb8ReadLockELb0ELb0ELb0EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #39
  unreachable

_ZNSt17_Optional_payloadIN7rocksdb8ReadLockELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13PinnableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !55
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt14_Fwd_list_baseIN7rocksdb13PinnableSliceESaIS1_EE14_M_create_nodeIJEEEPSt14_Fwd_list_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 11 uses
  store ptr null, ptr %i.a, align 8, !tbaa !596
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #35 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #38
  invoke void @__cxa_rethrow() #36
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.k, align 8, !tbaa !56
  store i8 0, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 0, ptr %i.l, align 8, !tbaa !597
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.i, ptr %i.m, align 8, !tbaa !549
  ret ptr %i.a

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #39
  unreachable

bb.g:                                             ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb12MergeContext11PushOperandERKNS_5SliceEb(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  tail call void @_ZN7rocksdb12MergeContext10InitializeEv(ptr noundef nonnull align 8 dereferenceable(25) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !603, !range !104, !noundef !105
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNK7rocksdb12MergeContext20SetDirectionBackwardEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !602  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !487  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !487  ; 2 uses
  %i.i = icmp ne ptr %i.f, %i.h
  %.sroa.0.010.i.i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %.not11.i.i.i = icmp ult ptr %i.f, %.sroa.0.010.i.i.i
  %or.cond.i.i.i = select i1 %i.i, i1 %.not11.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.0.013.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.010.i.i.i, %bb.b ] ; 3 uses
  %.sroa.07.012.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i, i64 16, i1 false), !tbaa.struct !531
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !531
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i, i64 16 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i, i64 -16 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.j, %.sroa.0.0.i.i.i
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i, !llvm.loop !25

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !603
  br label %_ZNK7rocksdb12MergeContext20SetDirectionBackwardEv.exit

_ZNK7rocksdb12MergeContext20SetDirectionBackwardEv.exit: ; preds = %bb.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7rocksdb5SliceESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.i
  br i1 %2, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK7rocksdb12MergeContext20SetDirectionBackwardEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !602  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1057 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !587
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !531
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1057
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.m, align 8, !tbaa !1057
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !586  ; 5 uses
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775792
  br i1 %i.w, label %bb.f, label %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #36
  unreachable

_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.x = ashr exact i64 %i.v, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 576460752303423487)
  %i.ab = select i1 %i.z, i64 576460752303423487, i64 %i.aa ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !531
  %.not10.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !531, !alias.scope !1058
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1047

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN7rocksdb5SliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !587
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ak) #38
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

end_hunk_1
