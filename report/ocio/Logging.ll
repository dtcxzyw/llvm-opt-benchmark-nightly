Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Logging?download=true
inline.NumInlined: 437
inline.NumDeleted: 198
begin_hunk_0_@_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN16OpenColorIO_v2_512_GLOBAL__N_110g_logmutexE) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_58LogErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN16OpenColorIO_v2_512_GLOBAL__N_110g_logmutexE) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #21
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_111InitLoggingEv()
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.b = load i32, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114g_logginglevelE, align 4, !tbaa !23
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN16OpenColorIO_v2_512_GLOBAL__N_110g_logmutexE) #19 ; 0 uses
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.f, align 8, !tbaa !28
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110LogMessageEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull @.str.2, ptr %.val, i64 %.val2)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN16OpenColorIO_v2_512_GLOBAL__N_110g_logmutexE) #19 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110LogMessageEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector", align 8       ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %.8.val, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp ugt i64 %.8.val, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !31
  %i.g = load i64, ptr %i.c, align 8, !tbaa !49
  store i64 %i.g, ptr %i.d, align 8, !tbaa !30
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %.8.val, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %.0.val, align 1, !tbaa !30
  store i8 %i.i, ptr %i.h, align 1, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = load ptr, ptr %3, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.n = load ptr, ptr %3, align 8, !tbaa !31, !noalias !53 ; 3 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !28, !noalias !53 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.s = ashr i64 %i.o, 2                         ; 3 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = and i64 %i.o, -4
  %i.v = sub i64 %i.q, %i.u
  %i.w = mul nsw i64 %i.s, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.p, i64 %i.w
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i
  %i.x = phi ptr [ %i.al, %bb.j ], [ %i.p, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.y = phi i64 [ %i.ar, %bb.j ], [ %i.q, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.024.i.i.i.i = phi i64 [ %i.ap, %bb.j ], [ %i.s, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30, !noalias !56
  %i.ac = icmp ugt i8 %i.ab, 32
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !30, !noalias !56
  %i.af = icmp ugt i8 %i.ae, 32
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.x, i64 -1
  %.cast.i.i.i.i = ptrtoint ptr %i.ag to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30, !noalias !56
  %i.aj = icmp ugt i8 %i.ai, 32
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 -2
  %.cast10.i.i.i.i = ptrtoint ptr %i.ak to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !30, !noalias !56
  %i.an = icmp ugt i8 %i.am, 32
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -3
  %.cast11.i.i.i.i = ptrtoint ptr %i.ao to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ap = add nsw i64 %.024.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.024.i.i.i.i, 1
  %i.ar = ptrtoint ptr %i.al to i64
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !63

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.as = phi i64 [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.v, %bb.j ] ; 5 uses
  %i.at = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %scevgep.i.i.i, %bb.j ] ; 2 uses
  %i.au = sub i64 %i.as, %i.r
  switch i64 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = inttoptr i64 %i.as to ptr
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30, !noalias !56
  %i.ay = icmp ugt i8 %i.ax, 32
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i
  %i.bb = phi ptr [ %i.az, %bb.l ], [ %i.at, %._crit_edge.i.i.i.i ]
  %i.bc = phi i64 [ %i.ba, %bb.l ], [ %i.as, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30, !noalias !56
  %i.bg = icmp ugt i8 %i.bf, 32
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds i8, ptr %i.bb, i64 -1
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i
  %i.bj = phi i64 [ %i.bi, %bb.n ], [ %i.as, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !30, !noalias !56
  %i.bn = icmp ugt i8 %i.bm, 32
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i, label %5

5:                                                ; preds = %bb.o
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %5, %bb.o, %bb.m, %bb.k, %._crit_edge.i.i.i.i, %bb.i, %bb.g, %bb.e
  %.sink.i.i.i.i = phi i64 [ %i.bj, %bb.o ], [ %i.bc, %bb.m ], [ %i.as, %bb.k ], [ %i.r, %._crit_edge.i.i.i.i ], [ %.cast11.i.i.i.i, %bb.i ], [ %.cast10.i.i.i.i, %bb.g ], [ %.cast.i.i.i.i, %bb.e ], [ %i.r, %5 ], [ %i.y, %.lr.ph.i.i.i.i ]
  %i.bo = sub i64 %.sink.i.i.i.i, %i.r            ; 2 uses
  store i64 %i.bo, ptr %i.k, align 8, !tbaa !28, !noalias !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !30, !noalias !50
  %i.bq = load ptr, ptr %3, align 8, !tbaa !31, !noalias !50 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.br, ptr %2, align 8, !tbaa !25, !alias.scope !50
  %i.bs = icmp eq ptr %i.bq, %i.d
  br i1 %i.bs, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !28, !noalias !50 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.bv, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  store ptr %i.bq, ptr %2, align 8, !tbaa !31, !alias.scope !50
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !30, !noalias !50
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !30, !alias.scope !50
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !28, !noalias !50
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p
  %i.bx = phi i64 [ %i.bt, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !28, !alias.scope !50
  store ptr %i.d, ptr %3, align 8, !tbaa !31, !noalias !50
  store i64 0, ptr %i.k, align 8, !tbaa !28, !noalias !50
  store i8 0, ptr %i.d, align 8, !tbaa !30, !noalias !50
  invoke void @_ZN11StringUtils12SplitByLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.br
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.r
  %i.cb = load i64, ptr %i.br, align 8, !tbaa !30
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.cd = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.d
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !30
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ch = load ptr, ptr %1, align 8, !tbaa !65    ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 2 uses
  %.not37 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.cl = icmp eq ptr %0, null
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %i.cl, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.ck, ptr %4, align 8, !tbaa !25
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #21
          to label %.noexc unwind label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pre = load ptr, ptr %1, align 8, !tbaa !67    ; 3 uses
  %.pre48 = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre48
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.cn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !30
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cs, %.pre48
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ct = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !71
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void

bb.t:                                             ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.br
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.t
  %i.dc = load i64, ptr %i.br, align 8, !tbaa !30
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.de = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.d
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.dg = load i64, ptr %i.d, align 8, !tbaa !30
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ab

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.sroa.02.038 = phi ptr [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.ch, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.ck, ptr %4, align 8, !tbaa !25
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.di, ptr %i.b, align 8, !tbaa !49
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i24, label %._crit_edge.i.i23

.noexc:                                           ; preds = %.lr.ph.split.us
  unreachable

.noexc.i24:                                       ; preds = %.lr.ph.split
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %.noexc.i24
  store ptr %i.dk, ptr %4, align 8, !tbaa !31
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.dl, ptr %i.ck, align 8, !tbaa !30
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %.noexc25, %.lr.ph.split
  %i.dm = phi ptr [ %i.dk, %.noexc25 ], [ %i.ck, %.lr.ph.split ] ; 2 uses
  switch i64 %i.di, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i23
  %i.dn = load i8, ptr %0, align 1, !tbaa !30
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !30
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %0, i64 %i.di, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i23
  %i.do = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  store i64 %i.do, ptr %i.cm, align 8, !tbaa !28
  %i.dp = load ptr, ptr %4, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.038, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !28 ; 2 uses
  %i.dt = load i64, ptr %i.cm, align 8, !tbaa !28
end_hunk_0
