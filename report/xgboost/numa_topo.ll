Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/numa_topo?download=true
inline.NumInlined: 880
inline.NumDeleted: 386
begin_hunk_0_@_ZN7xgboost6common14GetNumaMemBindEv:bb.a

bb.v:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !35
  %i.bx = icmp eq i32 %i.bw, 2
  br label %bb.w

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
          to label %bb.b unwind label %bb.bn

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.c, 255
  %.off = add nsw i64 %i.d, -1
  %switch = icmp ult i64 %.off, 254
  br i1 %switch, label %bb.c, label %bb.bp

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.ah

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.e = load ptr, ptr %1, align 8, !tbaa !96     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.d

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.e, ptr %2, align 8, !tbaa !96, !alias.scope !97
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !44, !alias.scope !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread132

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread132: ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !35
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !35
  store ptr %i.e, ptr %2, align 8, !tbaa !96, !alias.scope !98
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.m, align 8, !tbaa !44, !alias.scope !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br label %bb.e

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.f, align 8, !tbaa !44 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !96, !alias.scope !98
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.o, align 8, !tbaa !44, !alias.scope !98
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.not.i.i.i42 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread132, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.p = phi ptr [ %i.m, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread132 ], [ %i.o, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr135 = phi ptr [ %i.g, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread132 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.pr135, i64 8 ; 7 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i43 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i43, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !35
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !35
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.o, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.h, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !99
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !100
  %i.v = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.q, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %.pr135, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !47
  %i.z = load ptr, ptr %.pr135, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.pr135) #13, !inline_history !89
  %i.ac = load ptr, ptr %.pr135, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pr135) #13, !inline_history !89
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i46 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.q, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i48 = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i48, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49, !prof !33

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr135) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47, %bb.m
  %i.aj = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit44.thread ], [ %i.p, %bb.m ], [ %i.p, %bb.i ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i47 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 9 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49
  %.0 = phi i32 [ 0, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit49 ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %.not = icmp eq ptr %i.aq, %.pre
  br i1 %.not, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i50 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i50, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ar, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !47
  %i.aw = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13, !inline_history !89
  %i.az = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13, !inline_history !89
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i51 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i51, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i53 = phi i32 [ %i.au, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i53, 1
  br i1 %i.bf, label %bb.u, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split, !prof !33

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i52, %bb.q
  %.pr96 = load ptr, ptr %i.aj, align 8, !tbaa !44
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split, %bb.o
  %11 = phi ptr [ %.pr96, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54thread-pre-split ], [ %i.aq, %bb.o ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not.i.i.i55 = icmp eq ptr %11, null
  br i1 %.not.i.i.i55, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, label %bb.v

bb.v:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bg, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !47
  %i.bl = load ptr, ptr %11, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %11) #13, !inline_history !89
  %i.bo = load ptr, ptr %11, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %11) #13, !inline_history !89
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59

bb.x:                                             ; preds = %bb.v
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i56 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i56, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

bb.z:                                             ; preds = %bb.x
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i58 = phi i32 [ %i.bj, %bb.y ], [ %i.bt, %bb.z ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i58, 1
  br i1 %i.bu, label %bb.aa, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, !prof !33

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit54, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i57, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !44  ; 8 uses
  %.not.i.i.i60 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i60, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bw, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !47
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #13, !inline_history !89
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #13, !inline_history !89
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64

bb.ad:                                            ; preds = %bb.ab
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i61 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i61, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62

bb.af:                                            ; preds = %bb.ad
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i63 = phi i32 [ %i.bz, %bb.ae ], [ %i.cj, %bb.af ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i63, 1
  br i1 %i.ck, label %bb.ag, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64, !prof !33

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #13
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit64: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit59, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i62, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.cl = icmp eq i32 %.0, 0
  br i1 %i.cl, label %bb.at, label %bb.bp

bb.ah:                                            ; preds = %bb.c, %bb.at
  %i.cm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ba

bb.ai:                                            ; preds = %bb.n
  %i.cn = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.cn)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.co = load ptr, ptr %5, align 8, !tbaa !20, !noalias !103 ; 3 uses
  %i.cp = load i64, ptr %i.al, align 8, !tbaa !18, !noalias !103 ; 5 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !15, !alias.scope !103
  %i.cq = icmp eq ptr %i.co, null
  %i.cr = icmp ne i64 %i.cp, 0
  %or.cond.i.i.i = and i1 %i.cq, %i.cr
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.ak

.noexc.i:                                         ; preds = %bb.aj
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !103
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !32, !noalias !103
  %i.cs = icmp ugt i64 %i.cp, 15
  br i1 %i.cs, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ak
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc65:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ct, ptr %4, align 8, !tbaa !20, !alias.scope !103
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !103
  store i64 %i.cu, ptr %i.am, align 8, !tbaa !19, !alias.scope !103
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc65, %bb.ak
  %i.cv = phi ptr [ %i.ct, %.noexc65 ], [ %i.am, %bb.ak ] ; 2 uses
  switch i64 %i.cp, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cw = load i8, ptr %i.co, align 1, !tbaa !19
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !19
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.co, i64 %i.cp, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i.i
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !103 ; 2 uses
  store i64 %i.cx, ptr %i.an, align 8, !tbaa !18, !alias.scope !103
  %i.cy = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !103
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13, !noalias !103
  %i.da = load ptr, ptr %i.ao, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i66, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.da) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ao, %bb.an
  %i.db = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ap
  br i1 %i.dc, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.df = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 4) #13
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %spec.select = add nuw nsw i32 %.0, %i.dh
  %i.di = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.am
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
