Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/numa_topo?download=true
inline.NumInlined: 880
inline.NumDeleted: 386
begin_hunk_0_@_ZN7xgboost6common14GetNumaMemBindEv:bb.a

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.011 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bx, %bb.v ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.050.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = ptrtoint ptr %.sroa.10.0 to i64
  %i.bz = ptrtoint ptr %.sroa.050.0 to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.ca) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cb = ptrtoint ptr %.sroa.10.0 to i64
  %i.cc = ptrtoint ptr %.sroa.050.0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.cd) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit46

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.x, %bb.w, %bb.a
  %.112 = phi i1 [ false, %bb.a ], [ %.011, %bb.w ], [ %.011, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i1 %.112

_ZNSt6vectorImSaImEED2Ev.exit46:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.y, %bb.f
  %.pn14.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %.pn14.pn.pn.pn, %bb.y ], [ %.pn14.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  resume { ptr, i32 } %.pn14.pn.pn.pn.pn.pn.pn

bb.z:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable
}

declare { i32, ptr } @_ZN7xgboost5error11SystemErrorEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 0) i32 @_ZN7xgboost6common15GetNumaNumNodesEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %1 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 7 uses
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 12 uses
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 10 uses
  %6 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA25_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.12, i8 noundef zeroext 2)
  %i.c = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.c, 255
  %.off = add nsw i64 %i.d, -1
  %switch = icmp ult i64 %.off, 254
  br i1 %switch, label %bb.d, label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.ai

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.e

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.f, ptr %2, align 8, !tbaa !94, !alias.scope !95
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !44, !alias.scope !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread131

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread131: ; preds = %bb.e
  %i.l = load i32, ptr %i.j, align 4, !tbaa !35
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !35
  store ptr %i.f, ptr %2, align 8, !tbaa !94, !alias.scope !96
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.n, align 8, !tbaa !44, !alias.scope !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br label %bb.f

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.g, align 8, !tbaa !44 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !94, !alias.scope !96
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.p, align 8, !tbaa !44, !alias.scope !96
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.not.i.i.i42 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread131, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.q = phi ptr [ %i.n, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread131 ], [ %i.p, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr134 = phi ptr [ %i.h, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread131 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr134, i64 8 ; 7 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i43 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !35
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !35
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.p, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.i, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !97
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !98
  %i.w = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %.pr134, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !47
  %i.aa = load ptr, ptr %.pr134, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.pr134) #13, !inline_history !87
  %i.ad = load ptr, ptr %.pr134, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %.pr134) #13, !inline_history !87
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

bb.k:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.r, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.m:                                             ; preds = %bb.k
  %i.ai = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i48 = phi i32 [ %i.y, %bb.l ], [ %i.ai, %bb.m ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.aj, label %bb.n, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49, !prof !33

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr134) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.n
  %i.ak = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread ], [ %i.q, %bb.n ], [ %i.q, %bb.j ], [ %i.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !44 ; 9 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49
  %.0 = phi i32 [ 0, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49 ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.ar, %.pre
  br i1 %.not, label %bb.p, label %bb.aj

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i50 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i50, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.as, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !47
  %i.ax = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13, !inline_history !87
  %i.ba = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13, !inline_history !87
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i51 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i53 = phi i32 [ %i.av, %bb.t ], [ %i.bf, %bb.u ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i53, 1
  br i1 %i.bg, label %bb.v, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split, !prof !33

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52, %bb.r
  %.pr96 = load ptr, ptr %i.ak, align 8, !tbaa !44
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split, %bb.p
  %11 = phi ptr [ %.pr96, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split ], [ %i.ar, %bb.p ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not.i.i.i55 = icmp eq ptr %11, null
  br i1 %.not.i.i.i55, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, label %bb.w

bb.w:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bh, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !47
  %i.bm = load ptr, ptr %11, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %11) #13, !inline_history !87
  %i.bp = load ptr, ptr %11, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %11) #13, !inline_history !87
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59

bb.y:                                             ; preds = %bb.w
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i56 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

bb.aa:                                            ; preds = %bb.y
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i58 = phi i32 [ %i.bk, %bb.z ], [ %i.bu, %bb.aa ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i58, 1
  br i1 %i.bv, label %bb.ab, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, !prof !33

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !44  ; 8 uses
  %.not.i.i.i60 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i60, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bx, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !47
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #13, !inline_history !87
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #13, !inline_history !87
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64

bb.ae:                                            ; preds = %bb.ac
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i61 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i61, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62

bb.ag:                                            ; preds = %bb.ae
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i63 = phi i32 [ %i.ca, %bb.af ], [ %i.ck, %bb.ag ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i63, 1
  br i1 %i.cl, label %bb.ah, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64, !prof !33

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.cm = icmp eq i32 %.0, 0
  br i1 %i.cm, label %bb.av, label %bb.bs

bb.ai:                                            ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bd

bb.aj:                                            ; preds = %bb.o
  %i.co = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.co)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.cp = load ptr, ptr %5, align 8, !tbaa !20, !noalias !101 ; 3 uses
  %i.cq = load i64, ptr %i.am, align 8, !tbaa !18, !noalias !101 ; 5 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !15, !alias.scope !101
  %i.cr = icmp eq ptr %i.cp, null
  %i.cs = icmp ne i64 %i.cq, 0
  %or.cond.i.i.i = and i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.al

.noexc.i:                                         ; preds = %bb.ak
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !101
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !32, !noalias !101
  %i.ct = icmp ugt i64 %i.cq, 15
  br i1 %i.ct, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.al
  %i.cu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc65 unwind label %.loopexit ; 2 uses

.noexc65:                                         ; preds = %.noexc.i.i.i
  store ptr %i.cu, ptr %4, align 8, !tbaa !20, !alias.scope !101
  %i.cv = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !101
  store i64 %i.cv, ptr %i.an, align 8, !tbaa !19, !alias.scope !101
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc65, %bb.al
  %i.cw = phi ptr [ %i.cu, %.noexc65 ], [ %i.an, %bb.al ] ; 2 uses
  switch i64 %i.cq, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cx = load i8, ptr %i.cp, align 1, !tbaa !19
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !19
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cp, i64 %i.cq, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i.i.i
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !101 ; 2 uses
  store i64 %i.cy, ptr %i.ao, align 8, !tbaa !18, !alias.scope !101
  %i.cz = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !101
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !101
  %i.db = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i66, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.db) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ap, %bb.ao
  %i.dc = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.aq
  br i1 %i.dd, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.de = load i64, ptr %i.aq, align 8, !tbaa !19
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 4) #13
  %i.dh = icmp eq i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %spec.select = add nuw nsw i32 %.0, %i.di
  %i.dj = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.an
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
