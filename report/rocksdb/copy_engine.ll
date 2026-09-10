Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/copy_engine?download=true
inline.NumInlined: 1776
inline.NumDeleted: 923
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb10CopyEngineD2Ev:bb.a
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN7rocksdb17CopyEngineOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #32
  br label %_ZN7rocksdb17CopyEngineOptionsD2Ev.exit

_ZN7rocksdb17CopyEngineOptionsD2Ev.exit:          ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.05.08 = phi ptr [ %i.ak, %bb.i ], [ %i.g, %bb.c ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.05.08)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.am = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.am) #33
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10CopyEngine6SubmitEONS_8WorkItemE(ptr noundef nonnull align 8 dereferenceable(388) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN7rocksdb7channelINS_8WorkItemEE5writeEOS1_(ptr noundef nonnull align 8 dereferenceable(169) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb7channelINS_8WorkItemEE5writeEOS1_(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -392
  %.not.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  tail call void @_ZN7rocksdb8WorkItemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(392) %i.d, ptr noundef nonnull align 8 dereferenceable(392) %1) #30
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  store ptr %i.i, ptr %i.c, align 8, !tbaa !80
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNSt5dequeIN7rocksdb8WorkItemESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(392) %1)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit5

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.d, %bb.c
  tail call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #30
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit5:           ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7rocksdb10CopyEngine24MaybeDecreaseCpuPriorityENS_11CpuPriorityE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(388) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 8
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic i32 %1, ptr %i.a seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb10CopyEngine10ThreadBodyEv(ptr noundef nonnull align 8 dereferenceable(388) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.176", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"struct.rocksdb::WorkItem", align 8 ; 31 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.rocksdb::WorkItemResult", align 8 ; 25 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %18 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call i64 @pthread_self() #34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = tail call i32 @pthread_setname_np(i64 noundef %i.c, ptr noundef %i.e) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN7rocksdb8WorkItemC2Ev(ptr noundef nonnull align 8 dereferenceable(392) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 0, ptr %i.a, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null ; 3 uses
  %i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 105 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 106
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 121 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %18, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 107 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 109 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 320 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 352 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 65
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 11 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 12 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb14WorkItemResultD2Ev.exit, %bb.a
  %.024 = phi i32 [ 2, %bb.a ], [ %.125, %_ZN7rocksdb14WorkItemResultD2Ev.exit ] ; 2 uses
  %i.co = invoke noundef zeroext i1 @_ZN7rocksdb7channelINS_8WorkItemEE4readERS1_(ptr noundef nonnull align 8 dereferenceable(169) %i.g, ptr noundef nonnull align 8 dereferenceable(392) %5)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.co, label %bb.d, label %bb.cz

bb.d:                                             ; preds = %bb.c
  %i.cp = load atomic i32, ptr %i.h seq_cst, align 8 ; 3 uses
  %.not = icmp eq i32 %.024, %i.cp
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7rocksdb4port14SetCpuPriorityEiNS_11CpuPriorityE(i32 noundef 0, i32 noundef %i.cp)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.g:                                             ; preds = %bb.e
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.h:                                             ; preds = %bb.e, %bb.d
  %.125 = phi i32 [ %.024, %bb.d ], [ %i.cp, %bb.e ]
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit.thread, label %bb.i

_ZTWN7rocksdb15iostats_contextE.exit.thread:      ; preds = %bb.h
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !363
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN7rocksdb15iostats_contextE()
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !363
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZTWN7rocksdb15iostats_contextE.exit.thread
  %i.cu = phi i64 [ %i.cs, %_ZTWN7rocksdb15iostats_contextE.exit.thread ], [ %i.ct, %bb.i ]
  %i.cv = load i64, ptr %i.cn, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 0, ptr %6, align 8, !tbaa !94
  store ptr %i.l, ptr %i.k, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !36
  store i8 0, ptr %i.l, align 8, !tbaa !35
  store ptr %i.o, ptr %i.n, align 8, !tbaa !30
  store i64 0, ptr %i.p, align 8, !tbaa !36
  store i8 0, ptr %i.o, align 8, !tbaa !35
  store ptr %i.r, ptr %i.q, align 8, !tbaa !30
  store i64 0, ptr %i.s, align 8, !tbaa !36
  store i8 0, ptr %i.r, align 8, !tbaa !35
  store i8 0, ptr %i.t, align 8, !tbaa !95
  store i8 0, ptr %i.u, align 1, !tbaa !96
  store ptr null, ptr %i.w, align 8, !tbaa !97
  store i32 0, ptr %i.v, align 2
  store i8 0, ptr %i.x, align 8, !tbaa !98
  store i8 0, ptr %i.y, align 1, !tbaa !99
  %i.cw = load i64, ptr %i.z, align 8, !tbaa !119 ; 6 uses
  switch i64 %i.cw, label %bb.bx [
    i64 1, label %bb.k
    i64 2, label %bb.bq
    i64 3, label %bb.bu
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cx = load i8, ptr %i.an, align 8, !tbaa !120
  store i8 %i.cx, ptr %i.b, align 1, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cy = load i64, ptr %i.am, align 8, !tbaa !122
  %i.cz = load ptr, ptr %i.ak, align 8, !tbaa !365
  %i.da = load ptr, ptr %i.ab, align 8, !tbaa !366
  %i.db = load i8, ptr %i.aw, align 8, !tbaa !123, !range !124, !noundef !125
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !126
  %i.de = load i8, ptr %i.az, align 1, !tbaa !127
  invoke void @_ZN7rocksdb10CopyEngine16CopyOrCreateFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_mPNS_3EnvESA_RKNS_10EnvOptionsEbPNS_11RateLimiterERKSt8functionIFvvEEPNS_11TemperatureESL_PmSN_PS6_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %7, ptr noundef nonnull align 8 dereferenceable(388) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.cy, ptr noundef %i.cz, ptr noundef %i.da, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i1 noundef zeroext %i.dc, ptr noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull %i.b, i8 noundef zeroext %i.de, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull %i.k)
          to label %bb.l unwind label %bb.av

bb.l:                                             ; preds = %bb.k
  %i.df = load i8, ptr %7, align 8, !tbaa !128
  store i8 %i.df, ptr %i.t, align 8, !tbaa !95
  store i8 0, ptr %7, align 8, !tbaa !95
  %i.dg = load i8, ptr %i.ba, align 1, !tbaa !129
  store i8 %i.dg, ptr %i.u, align 1, !tbaa !96
  store i8 0, ptr %i.ba, align 1, !tbaa !96
  %i.dh = load i8, ptr %i.bb, align 1, !tbaa !130, !range !124, !noundef !125
  store i8 %i.dh, ptr %i.ae, align 1, !tbaa !130
  %i.di = load i8, ptr %i.bc, align 4, !tbaa !131, !range !124, !noundef !125
  store i8 %i.di, ptr %i.ag, align 4, !tbaa !131
  %i.dj = load i8, ptr %i.bd, align 1, !tbaa !132
  store i8 %i.dj, ptr %i.ai, align 1, !tbaa !132
  store i8 0, ptr %i.bd, align 1, !tbaa !132
  %i.dk = load ptr, ptr %i.be, align 8, !tbaa !133
  store ptr null, ptr %i.be, align 8, !tbaa !133
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  store ptr %i.dk, ptr %i.w, align 8, !tbaa !133
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb8IOStatusaSEOS0_.exit

_ZN7rocksdb8IOStatusaSEOS0_.exit:                 ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #32
  %.pr = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.l, %_ZN7rocksdb8IOStatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.dm = load ptr, ptr %i.bf, align 8, !tbaa !134 ; 3 uses
  %i.dn = load i32, ptr %i.bg, align 8, !tbaa !367
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit53, label %bb.m

bb.m:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit53

_ZTWN7rocksdb15iostats_contextE.exit53:           ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.m
  %.not.i54 = icmp eq ptr %i.dm, null
  br i1 %.not.i54, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.n

bb.n:                                             ; preds = %_ZTWN7rocksdb15iostats_contextE.exit53
  %i.do = load i64, ptr %i.j, align 8, !tbaa !363
  %i.dp = sub i64 %i.do, %i.cu
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 176
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(33) %i.dm, i32 noundef %i.dn, i64 noundef %i.dp)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.aw, !inline_history !331

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %_ZTWN7rocksdb15iostats_contextE.exit53, %bb.n
  %i.dt = load ptr, ptr %i.bf, align 8, !tbaa !134 ; 3 uses
  %i.du = load i32, ptr %i.bh, align 4, !tbaa !368
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit56, label %bb.o

bb.o:                                             ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit56

_ZTWN7rocksdb15iostats_contextE.exit56:           ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %bb.o
  %.not.i57 = icmp eq ptr %i.dt, null
  br i1 %.not.i57, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit59, label %bb.p

bb.p:                                             ; preds = %_ZTWN7rocksdb15iostats_contextE.exit56
  %i.dv = load i64, ptr %i.cn, align 8, !tbaa !364
  %i.dw = sub i64 %i.dv, %i.cv
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 176
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(33) %i.dt, i32 noundef %i.du, i64 noundef %i.dw)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit59 unwind label %bb.aw, !inline_history !331

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit59: ; preds = %_ZTWN7rocksdb15iostats_contextE.exit56, %bb.p
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit59
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.q unwind label %bb.aw

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ea = load i8, ptr %i.an, align 8, !tbaa !120
  store i8 %i.ea, ptr %i.x, align 8, !tbaa !98
  %i.eb = load i8, ptr %i.b, align 1, !tbaa !121
  store i8 %i.eb, ptr %i.y, align 1, !tbaa !99
  %i.ec = load i8, ptr %i.t, align 8, !tbaa !95
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.r, label %bb.bo

bb.r:                                             ; preds = %bb.q
  %i.ee = load i64, ptr %i.bj, align 8, !tbaa !36 ; 4 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.bo, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = load i64, ptr %i.bl, align 8, !tbaa !36 ; 2 uses
  %.pre367 = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 5 uses
  switch i64 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread254 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.s
  %i.eh = load i32, ptr %.pre367, align 1
  %i.ei = xor i32 %i.eh, 1852534357
  %i.ej = getelementptr i8, ptr %.pre367, i64 3
  %i.ek = load i32, ptr %i.ej, align 1
  %i.el = xor i32 %i.ek, 1853321070
  %i.em = or i32 %i.ei, %i.el
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64: ; preds = %bb.s
  %i.eq = load i128, ptr %.pre367, align 1
  %i.er = xor i128 %i.eq, 68306982710883217643988543386621339974
  %i.es = getelementptr i8, ptr %.pre367, i64 16
  %i.et = load i16, ptr %i.es, align 1
  %i.eu = zext i16 %i.et to i128
  %i.ev = xor i128 %i.eu, 25394
  %i.ew = or i128 %i.er, %i.ev
  %i.ex = icmp ne i128 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread254

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fa = load i64, ptr %i.m, align 8, !tbaa !36
  %i.fb = icmp eq i64 %i.ee, %i.fa
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  br i1 %i.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fc = load ptr, ptr %i.k, align 8, !tbaa !34
  %bcmp.i65 = call i32 @bcmp(ptr %.pre, ptr %i.fc, i64 %i.ee)
  %i.fd = icmp eq i32 %bcmp.i65, 0
  br i1 %i.fd, label %bb.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !369
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.39, i64 noundef 21, ptr noundef %.pre, i64 noundef %i.ee, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.t unwind label %bb.ax

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !369
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.fe = load i64, ptr %i.bm, align 8, !tbaa !36, !noalias !370 ; 5 uses
  %i.ff = icmp sgt i64 %i.fe, 9223372036854775779
  br i1 %i.ff, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
          to label %.noexc67 unwind label %.loopexit.split-lp260

.noexc67:                                         ; preds = %bb.u
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.t
  %i.fg = add nsw i64 %i.fe, 28                   ; 3 uses
  %i.fh = load ptr, ptr %10, align 8, !tbaa !34, !noalias !370 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bn
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.fj = icmp ult i64 %i.fe, 16
  call void @llvm.assume(i1 %i.fj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.fk = load i64, ptr %i.bn, align 8, !tbaa !35, !noalias !370
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.fl = phi i64 [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.fg, %i.fl
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.fm, ptr noundef nonnull align 1 dereferenceable(28) @.str.40, i64 28, i1 false), !noalias !370
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.fe, i64 noundef 0, ptr noundef nonnull @.str.40, i64 noundef 28)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %.loopexit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.w, %bb.v
  store i64 %i.fg, ptr %i.bm, align 8, !tbaa !36, !noalias !370
  %i.fn = load ptr, ptr %10, align 8, !tbaa !34, !noalias !370
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fg
  store i8 0, ptr %i.fo, align 1, !tbaa !35, !noalias !370
  store ptr %i.bo, ptr %9, align 8, !tbaa !30, !alias.scope !370
  %i.fp = load ptr, ptr %10, align 8, !tbaa !34, !noalias !370 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, %i.bn
  br i1 %i.fq, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.fr = load i64, ptr %i.bm, align 8, !tbaa !36, !noalias !370 ; 3 uses
  %i.fs = icmp ult i64 %i.fr, 16
  call void @llvm.assume(i1 %i.fs)
  %i.ft = add nuw nsw i64 %i.fr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.ft, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.fp, ptr %9, align 8, !tbaa !34, !alias.scope !370
  %i.fu = load i64, ptr %i.bn, align 8, !tbaa !35, !noalias !370
  store i64 %i.fu, ptr %i.bo, align 8, !tbaa !35, !alias.scope !370
  %.pre.i = load i64, ptr %i.bm, align 8, !tbaa !36, !noalias !370
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %i.fv = phi ptr [ %i.bo, %bb.x ], [ %i.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.fw = phi i64 [ %i.fr, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  store i64 %i.fw, ptr %i.bp, align 8, !tbaa !36, !alias.scope !370
  store ptr %i.bn, ptr %10, align 8, !tbaa !34, !noalias !370
  store i64 0, ptr %i.bm, align 8, !tbaa !36, !noalias !370
  store i8 0, ptr %i.bn, align 8, !tbaa !35, !noalias !370
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.fx = load ptr, ptr %i.k, align 8, !tbaa !34, !noalias !371 ; 3 uses
  %i.fy = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !371 ; 6 uses
  %i.fz = sub i64 9223372036854775807, %i.fw
  %i.ga = icmp ult i64 %i.fz, %i.fy
  br i1 %i.ga, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN7rocksdb10CopyEngine10ThreadBodyEv:bb.a
  %i.lf = phi i64 [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i159.thread ], [ %.pre.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i159 ] ; 2 uses
  %i.lg = icmp ult i64 %i.lf, 16
  call void @llvm.assume(i1 %i.lg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i159
  %i.lh = load i64, ptr %i.cb, align 8, !tbaa !35, !noalias !378
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i161: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i168
  %i.li = phi i64 [ %i.lb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160 ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i168 ] ; 3 uses
  %i.lj = phi ptr [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160 ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i168 ]
  %i.lk = phi i64 [ %.pre.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160 ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i168 ] ; 2 uses
  %i.ll = phi i64 [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i160 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i168 ]
  %.not.i.i.i162 = icmp ugt i64 %i.li, %i.ll
  br i1 %.not.i.i.i162, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i161
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.lm, ptr noundef nonnull align 1 dereferenceable(6) @_ZN7rocksdbL27kBackupFileChecksumFuncNameE, i64 6, i1 false), !noalias !378
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.lk, i64 noundef 0, ptr noundef nonnull @_ZN7rocksdbL27kBackupFileChecksumFuncNameE, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165 unwind label %.loopexit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165: ; preds = %bb.bi, %bb.bh
  store i64 %i.li, ptr %i.cc, align 8, !tbaa !36, !noalias !378
  %i.ln = load ptr, ptr %15, align 8, !tbaa !34, !noalias !378
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.li
  store i8 0, ptr %i.lo, align 1, !tbaa !35, !noalias !378
  store ptr %i.cd, ptr %14, align 8, !tbaa !30, !alias.scope !378
  %i.lp = load ptr, ptr %15, align 8, !tbaa !34, !noalias !378 ; 3 uses
  %i.lq = icmp eq ptr %i.lp, %i.cb
  br i1 %i.lq, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165
  %i.lr = load i64, ptr %i.cc, align 8, !tbaa !36, !noalias !378 ; 3 uses
  %i.ls = icmp ult i64 %i.lr, 16
  call void @llvm.assume(i1 %i.ls)
  %i.lt = add nuw nsw i64 %i.lr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.lt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i165
  store ptr %i.lp, ptr %14, align 8, !tbaa !34, !alias.scope !378
  %i.lu = load i64, ptr %i.cb, align 8, !tbaa !35, !noalias !378
  store i64 %i.lu, ptr %i.cd, align 8, !tbaa !35, !alias.scope !378
  %.pre.i167 = load i64, ptr %i.cc, align 8, !tbaa !36, !noalias !378
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.bj
  %i.lv = phi ptr [ %i.cd, %bb.bj ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ]
  %i.lw = phi i64 [ %i.lr, %bb.bj ], [ %.pre.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ]
  store i64 %i.lw, ptr %i.ce, align 8, !tbaa !36, !alias.scope !378
  store ptr %i.cb, ptr %15, align 8, !tbaa !34, !noalias !378
  store i64 0, ptr %i.cc, align 8, !tbaa !36, !noalias !378
  store i8 0, ptr %i.cb, align 8, !tbaa !35, !noalias !378
  %i.lx = load ptr, ptr %16, align 8, !tbaa !34   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.ca
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.lz = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #32
  %.pre369 = load ptr, ptr %14, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  %i.mb = phi ptr [ %.pre369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.mc = load ptr, ptr %i.cf, align 8, !tbaa !379
  %i.md = load ptr, ptr %i.aa, align 8, !tbaa !34
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 1, ptr noundef %i.mc, ptr noundef nonnull @.str.45, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 32), ptr noundef %i.md, ptr noundef %i.mb)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.me = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.cd
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.bk
  %i.mg = load i64, ptr %i.cd, align 8, !tbaa !35
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bo

bb.bl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread254
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

.loopexit279:                                     ; preds = %bb.be
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

.loopexit.split-lp280:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

.loopexit284:                                     ; preds = %bb.bi
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp285:                            ; preds = %bb.bg
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp285, %.loopexit284
  %lpad.phi288 = phi { ptr, i32 } [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp285 ] ; 2 uses
  %i.mj = load ptr, ptr %15, align 8, !tbaa !34   ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.cb
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.bm
  %i.ml = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.bm, %.loopexit279, %.loopexit.split-lp280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %.pn30 = phi { ptr, i32 } [ %lpad.phi288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp280 ], [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.phi288, %bb.bm ] ; 2 uses
  %i.mn = load ptr, ptr %16, align 8, !tbaa !34   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ca
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.mp = load i64, ptr %i.ca, align 8, !tbaa !35
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, %bb.bl
  %.pn30.pn = phi { ptr, i32 } [ %i.mi, %bb.bl ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.cd
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.bn
  %i.mu = load i64, ptr %i.cd, align 8, !tbaa !35
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn33 = phi { ptr, i32 } [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.mr, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit200

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %bb.aw, %bb.av
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.jg, %bb.aw ], [ %i.jf, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.body

bb.bq:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.mw = load ptr, ptr %i.ak, align 8, !tbaa !365
  %i.mx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env13GetFileSystemEv(ptr noundef nonnull align 8 dereferenceable(72) %i.mw)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.my = load i64, ptr %i.am, align 8, !tbaa !122
  %i.mz = load i8, ptr %i.an, align 8, !tbaa !120
  invoke void @_ZNK7rocksdb10CopyEngine26ReadFileAndComputeChecksumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_10FileSystemEERKNS_10EnvOptionsEmPS6_NS_11TemperatureE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %17, ptr noundef nonnull align 8 dereferenceable(388) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 noundef %i.my, ptr noundef nonnull %i.k, i8 noundef zeroext %i.mz)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.na = load i8, ptr %17, align 8, !tbaa !128
  store i8 %i.na, ptr %i.t, align 8, !tbaa !95
  store i8 0, ptr %17, align 8, !tbaa !95
  %i.nb = load i8, ptr %i.ao, align 1, !tbaa !129
  store i8 %i.nb, ptr %i.u, align 1, !tbaa !96
  store i8 0, ptr %i.ao, align 1, !tbaa !96
  %i.nc = load i8, ptr %i.ap, align 1, !tbaa !130, !range !124, !noundef !125
  store i8 %i.nc, ptr %i.ae, align 1, !tbaa !130
  %i.nd = load i8, ptr %i.aq, align 4, !tbaa !131, !range !124, !noundef !125
  store i8 %i.nd, ptr %i.ag, align 4, !tbaa !131
  %i.ne = load i8, ptr %i.ar, align 1, !tbaa !132
  store i8 %i.ne, ptr %i.ai, align 1, !tbaa !132
  store i8 0, ptr %i.ar, align 1, !tbaa !132
  %i.nf = load ptr, ptr %i.as, align 8, !tbaa !133
  store ptr null, ptr %i.as, align 8, !tbaa !133
  %i.ng = load ptr, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  store ptr %i.nf, ptr %i.w, align 8, !tbaa !133
  %.not.i.i.i.i.i191 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i191, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZN7rocksdb8IOStatusaSEOS0_.exit193

_ZN7rocksdb8IOStatusaSEOS0_.exit193:              ; preds = %bb.bs
  call void @_ZdaPv(ptr noundef nonnull %i.ng) #32
  %.pr255 = load ptr, ptr %i.as, align 8, !tbaa !133 ; 2 uses
  %.not.i.i194 = icmp eq ptr %.pr255, null
  br i1 %.not.i.i194, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit193
  call void @_ZdaPv(ptr noundef nonnull %.pr255) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit196

_ZN7rocksdb6StatusD2Ev.exit196:                   ; preds = %bb.bs, %_ZN7rocksdb8IOStatusaSEOS0_.exit193, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit198 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit198: ; preds = %_ZN7rocksdb6StatusD2Ev.exit196
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit200 unwind label %.loopexit

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

.loopexit:                                        ; preds = %_ZN7rocksdb6StatusD2Ev.exit196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit198
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bu:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.ni = load ptr, ptr %i.ab, align 8, !tbaa !366
  invoke void @_ZN7rocksdb10CopyEngine8LinkFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PNS_3EnvE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %18, ptr noundef nonnull align 8 dereferenceable(388) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef %i.ni)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.nj = load i8, ptr %18, align 8, !tbaa !128
  store i8 %i.nj, ptr %i.t, align 8, !tbaa !95
  store i8 0, ptr %18, align 8, !tbaa !95
  %i.nk = load i8, ptr %i.ac, align 1, !tbaa !129
  store i8 %i.nk, ptr %i.u, align 1, !tbaa !96
  store i8 0, ptr %i.ac, align 1, !tbaa !96
  %i.nl = load i8, ptr %i.ad, align 1, !tbaa !130, !range !124, !noundef !125
  store i8 %i.nl, ptr %i.ae, align 1, !tbaa !130
  %i.nm = load i8, ptr %i.af, align 4, !tbaa !131, !range !124, !noundef !125
  store i8 %i.nm, ptr %i.ag, align 4, !tbaa !131
  %i.nn = load i8, ptr %i.ah, align 1, !tbaa !132
  store i8 %i.nn, ptr %i.ai, align 1, !tbaa !132
  store i8 0, ptr %i.ah, align 1, !tbaa !132
  %i.no = load ptr, ptr %i.aj, align 8, !tbaa !133
  store ptr null, ptr %i.aj, align 8, !tbaa !133
  %i.np = load ptr, ptr %i.w, align 8, !tbaa !133 ; 2 uses
  store ptr %i.no, ptr %i.w, align 8, !tbaa !133
  %.not.i.i.i.i.i202 = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i.i.i202, label %_ZN7rocksdb6StatusD2Ev.exit207, label %_ZN7rocksdb8IOStatusaSEOS0_.exit204

_ZN7rocksdb8IOStatusaSEOS0_.exit204:              ; preds = %bb.bv
  call void @_ZdaPv(ptr noundef nonnull %i.np) #32
  %.pr257 = load ptr, ptr %i.aj, align 8, !tbaa !133 ; 2 uses
  %.not.i.i205 = icmp eq ptr %.pr257, null
  br i1 %.not.i.i205, label %_ZN7rocksdb6StatusD2Ev.exit207, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit204
  call void @_ZdaPv(ptr noundef nonnull %.pr257) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit207

_ZN7rocksdb6StatusD2Ev.exit207:                   ; preds = %bb.bv, %_ZN7rocksdb8IOStatusaSEOS0_.exit204, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit200

bb.bw:                                            ; preds = %bb.bu
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %.body

bb.bx:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.nr = icmp ult i64 %i.cw, 10
  br i1 %i.nr, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.bx
  store ptr %i.cg, ptr %20, align 8, !tbaa !30, !alias.scope !380
  br label %bb.cf

.lr.ph.i.i:                                       ; preds = %bb.bx, %bb.cd
  %.029.i.i = phi i32 [ %i.nz, %bb.cd ], [ 1, %bb.bx ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ny, %bb.cd ], [ %i.cw, %bb.bx ] ; 5 uses
  %i.ns = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ns, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i.i
  %i.nt = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.bz:                                            ; preds = %.lr.ph.i.i
  %i.nu = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.nu, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.nv = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.nw = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.nw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.nx = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.ny = udiv i64 %.02328.i.i, 10000
  %i.nz = add i32 %.029.i.i, 4                    ; 2 uses
  %i.oa = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.oa, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !354

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.by
  %.022.i.i = phi i32 [ %i.nx, %bb.cc ], [ %i.nt, %bb.by ], [ %i.nv, %bb.ca ], [ %i.nz, %bb.cd ] ; 3 uses
  %i.ob = zext i32 %.022.i.i to i64               ; 4 uses
  store ptr %i.cg, ptr %20, align 8, !tbaa !30, !alias.scope !380
  %i.oc = icmp ugt i32 %.022.i.i, 15
  br i1 %i.oc, label %.noexc.i, label %bb.ce

.noexc.i:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.od = add nuw nsw i64 %i.ob, 1
  %i.oe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.od) #31
          to label %.noexc208 unwind label %bb.co ; 2 uses

.noexc208:                                        ; preds = %.noexc.i
  store ptr %i.oe, ptr %20, align 8, !tbaa !34, !alias.scope !380
  store i64 %i.ob, ptr %i.cg, align 8, !tbaa !35, !alias.scope !380
  br label %bb.cg

bb.ce:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.022.i.i, label %bb.cg [
    i32 0, label %bb.ch
    i32 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %.thread.i
  store i8 0, ptr %i.cg, align 8, !tbaa !35, !alias.scope !380
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce, %.noexc208
  %i.of = phi ptr [ %i.oe, %.noexc208 ], [ %i.cg, %bb.ce ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.of, i8 0, i64 %i.ob, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.og = phi i64 [ 0, %bb.ce ], [ %i.ob, %bb.cg ], [ 1, %bb.cf ] ; 2 uses
  %i.oh = phi ptr [ %i.cg, %bb.ce ], [ %i.of, %bb.cg ], [ %i.cg, %bb.cf ]
  store i64 %i.og, ptr %i.ch, align 8, !tbaa !36, !alias.scope !380
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.og
  store i8 0, ptr %i.oi, align 1, !tbaa !35
  %i.oj = load ptr, ptr %20, align 8, !tbaa !34, !alias.scope !380 ; 4 uses
  %i.ok = icmp ugt i64 %i.cw, 99
  br i1 %i.ok, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ch
  %i.ol = load i64, ptr %i.ch, align 8, !tbaa !36, !alias.scope !380
  %i.om = trunc i64 %i.ol to i32
  %i.on = add i32 %i.om, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.oq, %.lr.ph.i4.i ], [ %i.cw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.pa, %.lr.ph.i4.i ], [ %i.on, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.oo = urem i64 %.020.i.i, 100
  %i.op = shl nuw nsw i64 %i.oo, 1
  %i.oq = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.op ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 1
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !35, !noalias !380
  %i.ou = zext i32 %.01819.i.i to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.ou
  store i8 %i.ot, ptr %i.ov, align 1, !tbaa !35
  %i.ow = load i8, ptr %i.or, align 2, !tbaa !35, !noalias !380
  %i.ox = add i32 %.01819.i.i, -1
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oy
  store i8 %i.ow, ptr %i.oz, align 1, !tbaa !35
  %i.pa = add i32 %.01819.i.i, -2
  %i.pb = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.pb, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !355

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %bb.ch
  %.0.lcssa.i.i = phi i64 [ %i.cw, %bb.ch ], [ %i.oq, %.lr.ph.i4.i ] ; 3 uses
  %i.pc = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.pc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i
  %i.pd = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.pe = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !35, !noalias !380
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  store i8 %i.pg, ptr %i.ph, align 1, !tbaa !35
  %i.pi = load i8, ptr %i.pe, align 2, !tbaa !35, !noalias !380
  br label %bb.ck

bb.cj:                                            ; preds = %._crit_edge.i.i
  %i.pj = trunc nuw nsw i64 %.0.lcssa.i.i to i8
end_hunk_1
begin_hunk_2_@_ZN7rocksdb8WorkItemC2Ev:bb.a
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ag, ptr noundef nonnull align 1 dereferenceable(7) @_ZN7rocksdbL28kUnknownFileChecksumFuncNameE, i64 7, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 7, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 0, ptr %i.ai, align 1, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.al, align 8, !tbaa !36
  store i8 0, ptr %i.ak, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.ao, align 8, !tbaa !36
  store i8 0, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  store i8 0, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 1, ptr %i.as, align 8, !tbaa !119
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.at, %bb.f ]
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !34  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.i
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.aw = load i64, ptr %i.i, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !35
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.bc = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.be = load i64, ptr %i.a, align 8, !tbaa !35
  %i.bf = add i64 %i.be, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb7channelINS_8WorkItemEE4readERS1_(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !389
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #29
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !390
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !57, !range !124, !noundef !125
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.loopexit, label %_ZZN7rocksdb7channelINS_8WorkItemEE4readERS1_ENKUlvE_clEv.exit.i

_ZZN7rocksdb7channelINS_8WorkItemEE4readERS1_ENKUlvE_clEv.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %.noexc
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !162
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.c, label %_ZNSt18condition_variable4waitIZN7rocksdb7channelINS1_8WorkItemEE4readERS3_EUlvE_EEvRSt11unique_lockISt5mutexET_.exit

bb.c:                                             ; preds = %_ZZN7rocksdb7channelINS_8WorkItemEE4readERS1_ENKUlvE_clEv.exit.i
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.k = load i8, ptr %i.f, align 8, !tbaa !57, !range !124, !noundef !125
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %_ZZN7rocksdb7channelINS_8WorkItemEE4readERS1_ENKUlvE_clEv.exit.i, !llvm.loop !386

_ZNSt18condition_variable4waitIZN7rocksdb7channelINS1_8WorkItemEE4readERS3_EUlvE_EEvRSt11unique_lockISt5mutexET_.exit: ; preds = %_ZZN7rocksdb7channelINS_8WorkItemEE4readERS1_ENKUlvE_clEv.exit.i
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !162
  br label %bb.g

.loopexit:                                        ; preds = %.noexc, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %.pre10 = load ptr, ptr %i.e, align 8, !tbaa !162 ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.n = icmp eq ptr %i.m, %.pre10
  br i1 %i.n, label %bb.j, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i8, ptr %i.b, align 8, !tbaa !390, !range !124, !noundef !125
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %2, align 8, !tbaa !389    ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #30 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %_ZNSt18condition_variable4waitIZN7rocksdb7channelINS1_8WorkItemEE4readERS3_EUlvE_EEvRSt11unique_lockISt5mutexET_.exit, %.loopexit
  %.pre12 = phi ptr [ %.pre10, %.loopexit ], [ %.pre, %_ZNSt18condition_variable4waitIZN7rocksdb7channelINS1_8WorkItemEE4readERS3_EUlvE_EEvRSt11unique_lockISt5mutexET_.exit ]
  %i.t = call noundef nonnull align 8 dereferenceable(392) ptr @_ZN7rocksdb8WorkItemaSEOS0_(ptr noundef nonnull align 8 dereferenceable(392) %1, ptr noundef nonnull align 8 dereferenceable(392) %.pre12) #30 ; 0 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !163  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -392
  %.not.i.i4 = icmp eq ptr %i.u, %i.x
  call void @_ZN7rocksdb8WorkItemD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.u) #30
  br i1 %.not.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 392
  br label %_ZNSt5queueIN7rocksdb8WorkItemESt5dequeIS1_SaIS1_EEE3popEv.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !392
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef 392) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !165
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !166 ; 3 uses
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !167
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 392
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !168
  br label %_ZNSt5queueIN7rocksdb8WorkItemESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5queueIN7rocksdb8WorkItemESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi ptr [ %i.z, %bb.h ], [ %i.af, %bb.i ]
  store ptr %storemerge.i.i, ptr %i.e, align 8, !tbaa !163
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #30
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZNSt5queueIN7rocksdb8WorkItemESt5dequeIS1_SaIS1_EEE3popEv.exit
  %.0 = phi i1 [ true, %_ZNSt5queueIN7rocksdb8WorkItemESt5dequeIS1_SaIS1_EEE3popEv.exit ], [ false, %.loopexit ]
  %i.ah = load i8, ptr %i.b, align 8, !tbaa !390, !range !124, !noundef !125
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.k, label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %2, align 8, !tbaa !389   ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i5, label %_ZNSt11unique_lockISt5mutexED2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #30 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit6

_ZNSt11unique_lockISt5mutexED2Ev.exit6:           ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %.0
}

declare void @_ZN7rocksdb4port14SetCpuPriorityEiNS_11CpuPriorityE(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb10CopyEngine16CopyOrCreateFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_mPNS_3EnvESA_RKNS_10EnvOptionsEbPNS_11RateLimiterERKSt8functionIFvvEEPNS_11TemperatureESL_PmSN_PS6_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(388) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %8, i1 noundef zeroext %9, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef captures(none) %12, i8 noundef zeroext %13, ptr nofree noundef captures(none) %14, ptr nofree noundef captures(address_is_null) %15, ptr nofree noundef captures(address) %16) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"class.rocksdb::IOStatus", align 8 ; 35 uses
  %23 = alloca %"class.std::unique_ptr.29", align 8 ; 8 uses
  %24 = alloca %"class.std::unique_ptr.37", align 8 ; 10 uses
  %25 = alloca %"struct.rocksdb::FileOptions", align 8 ; 30 uses
  %26 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %27 = alloca %"struct.rocksdb::FileOptions", align 8 ; 29 uses
  %28 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %29 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %30 = alloca %"class.std::unique_ptr.50", align 8 ; 9 uses
  %31 = alloca %"class.std::shared_ptr.58", align 8 ; 7 uses
  %32 = alloca %"class.std::vector.82", align 8   ; 10 uses
  %33 = alloca %"class.std::unique_ptr.95", align 8 ; 12 uses
  %34 = alloca %"class.std::shared_ptr.58", align 8 ; 7 uses
  %35 = alloca %"class.std::vector.82", align 8   ; 10 uses
  %36 = alloca %"class.rocksdb::Slice", align 8   ; 9 uses
  %37 = alloca %"struct.rocksdb::IOOptions", align 8 ; 17 uses
  %38 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %39 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %40 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %41 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %42 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %43 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %44 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %45 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %46 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %47 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::allocator", align 1   ; 4 uses
  %51 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %53 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %54 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not.i.i.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit

_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c), !inline_history !1
  br i1 %i.f, label %bb.b, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread

bb.b:                                             ; preds = %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  store ptr %i.h, ptr %20, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  store i64 %i.k, ptr %i.i, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store ptr @.str, ptr %21, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !171
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  store i8 0, ptr %0, align 8, !tbaa !95, !alias.scope !405
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.m, align 1, !tbaa !96, !alias.scope !405
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !97, !alias.scope !405
  store i32 0, ptr %i.n, align 2, !alias.scope !405
  %.not.i.i = icmp eq ptr %0, %19
  br i1 %.not.i.i, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %bb.b
  %i.p = load <4 x i8>, ptr %19, align 8, !tbaa !35, !noalias !405
  store <4 x i8> %i.p, ptr %0, align 8, !tbaa !35, !alias.scope !405
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !172, !range !124, !noalias !405, !noundef !125
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 4, !tbaa !131, !alias.scope !405
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35, !noalias !405
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !132, !alias.scope !405
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !133, !noalias !405
  store ptr %i.x, ptr %i.o, align 8, !tbaa !133, !alias.scope !405
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133 ; 2 uses
  %.not.i.i112 = icmp eq ptr %.pre, null
  br i1 %.not.i.i112, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.ee

_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread: ; preds = %bb.a, %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  store i8 0, ptr %22, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %22, i64 1 ; 17 uses
  store i8 0, ptr %i.y, align 1, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %22, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 25 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !97
  store i32 0, ptr %i.z, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store ptr null, ptr %23, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  store ptr null, ptr %24, align 8, !tbaa !407
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZN7rocksdb10EnvOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %25)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %25, i64 48
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %25, i64 56
  store i8 0, ptr %i.ac, align 8, !tbaa !190
  %i.ad = getelementptr inbounds nuw i8, ptr %25, i64 60
  store i32 4, ptr %i.ad, align 4, !tbaa !191
  %i.ae = getelementptr inbounds nuw i8, ptr %25, i64 64
  store i8 7, ptr %i.ae, align 8, !tbaa !192
  %i.af = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %25, i64 80 ; 3 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !194
  %i.ai = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %25, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aj, align 8, !tbaa !195
  %i.ak = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %25, i64 131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ak, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.al, align 1, !tbaa !196
  %i.am = getelementptr inbounds nuw i8, ptr %25, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %25, i64 137
  store i8 0, ptr %i.an, align 1, !tbaa !202
  %i.ao = getelementptr inbounds nuw i8, ptr %25, i64 138
  store i8 1, ptr %i.ao, align 2, !tbaa !203
  %i.ap = getelementptr inbounds nuw i8, ptr %25, i64 140
  store i32 0, ptr %i.ap, align 4, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 144 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 160 ; 4 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 152
  store i64 0, ptr %i.as, align 8, !tbaa !36
  store i8 0, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %25, i64 176 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %25, i64 192 ; 4 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %25, i64 184
  store i64 0, ptr %i.av, align 8, !tbaa !36
  store i8 0, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 208
  store ptr null, ptr %i.aw, align 8, !tbaa !205
  %i.ax = getelementptr inbounds nuw i8, ptr %25, i64 1
  store i8 0, ptr %i.ax, align 1, !tbaa !408
  store i8 %13, ptr %i.am, align 8, !tbaa !206
  %.not = icmp eq ptr %15, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %15, align 8, !tbaa !72
  br label %bb.f

bb.e:                                             ; preds = %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.az = icmp eq i64 %5, 0
  %spec.select = select i1 %i.az, i64 -1, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.ba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env13GetFileSystemEv(ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !209 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(216) %25, ptr noundef nonnull %23, ptr noundef null)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_ZN7rocksdb10CopyEngine16CopyOrCreateFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_mPNS_3EnvESA_RKNS_10EnvOptionsEbPNS_11RateLimiterERKSt8functionIFvvEEPNS_11TemperatureESL_PmSN_PS6_:bb.a

_ZN7rocksdb11FileOptionsD2Ev.exit253:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i250
  %i.wh = load ptr, ptr %i.ai, align 8, !tbaa !227 ; 2 uses
  %.not5.i.i.i282 = icmp eq ptr %i.wh, null
  br i1 %.not5.i.i.i282, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i290, label %.lr.ph.i.i.i283

.lr.ph.i.i.i283:                                  ; preds = %_ZN7rocksdb11FileOptionsD2Ev.exit253, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288
  %.06.i.i.i284 = phi ptr [ %i.wi, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288 ], [ %i.wh, %_ZN7rocksdb11FileOptionsD2Ev.exit253 ] ; 6 uses
  %i.wi = load ptr, ptr %.06.i.i.i284, align 8, !tbaa !228 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.06.i.i.i284, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %.06.i.i.i284, i64 40
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !34 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.06.i.i.i284, i64 56 ; 2 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i285: ; preds = %.lr.ph.i.i.i283
  %i.wo = load i64, ptr %i.wm, align 8, !tbaa !35
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i286: ; preds = %.lr.ph.i.i.i283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i285
  %i.wq = load ptr, ptr %i.wj, align 8, !tbaa !34 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.06.i.i.i284, i64 24 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i286
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !35
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i287
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i284, i64 noundef 80) #32
  %.not.i.i.i289 = icmp eq ptr %i.wi, null
  br i1 %.not.i.i.i289, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i290, label %.lr.ph.i.i.i283, !llvm.loop !6

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i290: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i288, %_ZN7rocksdb11FileOptionsD2Ev.exit253
  %i.wv = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ww = load i64, ptr %i.ah, align 8, !tbaa !194
  %i.wx = shl i64 %i.ww, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.wv, i8 0, i64 %i.wx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.wy = load ptr, ptr %i.af, align 8, !tbaa !193 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.ag
  br i1 %i.wz, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit293, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i290
  %i.xa = load i64, ptr %i.ah, align 8, !tbaa !194
  %i.xb = shl i64 %i.xa, 3
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #32
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit293

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit293: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i290, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.xc = load ptr, ptr %24, align 8, !tbaa !225  ; 3 uses
  %.not.i254 = icmp eq ptr %i.xc, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit293
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !78
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(8) %i.xc) #30, !inline_history !7
  br label %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit293, %_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.xg = load ptr, ptr %23, align 8, !tbaa !229  ; 3 uses
  %.not.i255 = icmp eq ptr %i.xg, null
  br i1 %.not.i255, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !78
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(33) %i.xg) #30, !inline_history !8
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.xk = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %.not.i.i256 = icmp eq ptr %i.xk, null
  br i1 %.not.i.i256, label %_ZN7rocksdb6StatusD2Ev.exit258, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i257

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i257: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.xk) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit258

_ZN7rocksdb6StatusD2Ev.exit258:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea, %bb.k
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn, %bb.ea ], [ %i.ch, %bb.k ]
  call void @_ZN7rocksdb11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %25) #30
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.e
  %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn99.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ec ], [ %i.ay, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  %i.xl = load ptr, ptr %24, align 8, !tbaa !225  ; 3 uses
  %.not.i259 = icmp eq ptr %i.xl, null
  br i1 %.not.i259, label %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit261, label %_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i260

_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i260: ; preds = %bb.ed
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !78
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(8) %i.xl) #30, !inline_history !7
  br label %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit261

_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit261: ; preds = %bb.ed, %_ZNKSt14default_deleteIN7rocksdb16FSSequentialFileEEclEPS1_.exit.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.xp = load ptr, ptr %23, align 8, !tbaa !229  ; 3 uses
  %.not.i262 = icmp eq ptr %i.xp, null
  br i1 %.not.i262, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit264, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i263

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i263: ; preds = %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit261
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !78
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(33) %i.xp) #30, !inline_history !8
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit264

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit264: ; preds = %_ZNSt10unique_ptrIN7rocksdb16FSSequentialFileESt14default_deleteIS1_EED2Ev.exit261, %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  %i.xt = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i265, label %_ZN7rocksdb6StatusD2Ev.exit267, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit264
  call void @_ZdaPv(ptr noundef nonnull %i.xt) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit267

_ZN7rocksdb6StatusD2Ev.exit267:                   ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit264, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  resume { ptr, i32 } %.pn99.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ee:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit258, %_ZN7rocksdb6StatusD2Ev.exit
  ret void

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %bb.cr
  %i.xu = landingpad { ptr, i32 }
          catch ptr null
  %i.xv = extractvalue { ptr, i32 } %i.xu, 0
  call void @__clang_call_terminate(ptr %i.xv) #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb8IOStatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 8, !tbaa !128
  store i8 %i.a, ptr %0, align 8, !tbaa !95
  store i8 0, ptr %1, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !96
  store i8 0, ptr %i.b, align 1, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !130, !range !124, !noundef !125
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.f, ptr %i.g, align 1, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !131, !range !124, !noundef !125
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.i, ptr %i.j, align 4, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !132
  store i8 0, ptr %i.k, align 1, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr null, ptr %i.n, align 8, !tbaa !133
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !133
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb10CopyEngine26ReadFileAndComputeChecksumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_10FileSystemEERKNS_10EnvOptionsEmPS6_NS_11TemperatureE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(388) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4, i64 noundef %5, ptr nofree noundef captures(address) %6, i8 noundef zeroext %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.std::unique_ptr.95", align 8 ; 11 uses
  %17 = alloca %"struct.rocksdb::FileOptions", align 8 ; 29 uses
  %18 = alloca %"class.rocksdb::IOStatus", align 8 ; 33 uses
  %19 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %21 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr @.str.50, ptr %11, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 24, ptr %i.b, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store ptr @.str, ptr %12, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !171
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  store i8 0, ptr %0, align 8, !tbaa !95, !alias.scope !423
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !96, !alias.scope !423
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !97, !alias.scope !423
  store i32 0, ptr %i.e, align 2, !alias.scope !423
  %.not.i.i = icmp eq ptr %0, %10
  br i1 %.not.i.i, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %bb.b
  %i.g = load <4 x i8>, ptr %10, align 8, !tbaa !35, !noalias !423
  store <4 x i8> %i.g, ptr %0, align 8, !tbaa !35, !alias.scope !423
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !172, !range !124, !noalias !423, !noundef !125
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.i, ptr %i.j, align 4, !tbaa !131, !alias.scope !423
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 5
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35, !noalias !423
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !132, !alias.scope !423
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133, !noalias !423
  store ptr %i.o, ptr %i.f, align 8, !tbaa !133, !alias.scope !423
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %bb.b
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre151 = load ptr, ptr %.phi.trans.insert150, align 8, !tbaa !133 ; 2 uses
  %.not.i.i55 = icmp eq ptr %.pre151, null
  br i1 %.not.i.i55, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre151) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %.not.i.i.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit

_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit:     ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.r), !inline_history !1
  br i1 %i.u, label %bb.d, label %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread

bb.d:                                             ; preds = %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  store ptr %i.w, ptr %14, align 8, !tbaa !170
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  store i64 %i.z, ptr %i.x, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr @.str, ptr %15, align 8, !tbaa !170
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !171
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  store i8 0, ptr %0, align 8, !tbaa !95, !alias.scope !424
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !96, !alias.scope !424
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !97, !alias.scope !424
  store i32 0, ptr %i.ac, align 2, !alias.scope !424
  %.not.i.i59 = icmp eq ptr %0, %13
  br i1 %.not.i.i59, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60.thread: ; preds = %bb.d
  %i.ae = load <4 x i8>, ptr %13, align 8, !tbaa !35, !noalias !424
  store <4 x i8> %i.ae, ptr %0, align 8, !tbaa !35, !alias.scope !424
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !172, !range !124, !noalias !424, !noundef !125
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !131, !alias.scope !424
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35, !noalias !424
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !132, !alias.scope !424
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !133, !noalias !424
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !133, !alias.scope !424
  br label %_ZN7rocksdb6StatusD2Ev.exit63

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133 ; 2 uses
  %.not.i.i61 = icmp eq ptr %.pre, null
  br i1 %.not.i.i61, label %_ZN7rocksdb6StatusD2Ev.exit63, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60
  call void @_ZdaPv(ptr noundef nonnull %.pre) #32
  br label %_ZN7rocksdb6StatusD2Ev.exit63

_ZN7rocksdb6StatusD2Ev.exit63:                    ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit60, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.ap

_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit.thread: ; preds = %bb.c, %_ZNK7rocksdb10CopyEngine11ShouldAbortEv.exit
  %i.an = icmp eq i64 %5, 0
  %spec.select = select i1 %i.an, i64 -1, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store ptr null, ptr %16, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %17, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !211
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i8 0, ptr %i.ap, align 8, !tbaa !190
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 60
  store i32 4, ptr %i.aq, align 4, !tbaa !191
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i8 7, ptr %i.ar, align 8, !tbaa !192
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 120 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !193
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 3 uses
  store i64 1, ptr %i.au, align 8, !tbaa !194
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aw, align 8, !tbaa !195
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ax, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.ay, align 1, !tbaa !196
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 137
  store i8 0, ptr %i.ba, align 1, !tbaa !202
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 138
  store i8 1, ptr %i.bb, align 2, !tbaa !203
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 140
  store i32 0, ptr %i.bc, align 4, !tbaa !204
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 160 ; 4 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 152
  store i64 0, ptr %i.bf, align 8, !tbaa !36
  store i8 0, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 192 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 184
  store i64 0, ptr %i.bi, align 8, !tbaa !36
  store i8 0, ptr %i.bh, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 208
  store ptr null, ptr %i.bj, align 8, !tbaa !205
  store i8 %7, ptr %i.az, align 8, !tbaa !206
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !425 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
end_hunk_3
