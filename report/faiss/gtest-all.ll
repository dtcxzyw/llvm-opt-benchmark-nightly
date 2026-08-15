inline.NumInlined: 8800
inline.NumDeleted: 2313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7testing7TempDirB5cxx11Ev:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i40.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aq, ptr %i.ay, align 8, !tbaa !28, !alias.scope !2019
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !30
  %i.ba = icmp eq ptr %i.ap, %i.g
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.q
  %i.bb = icmp samesign ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !30, !noalias !2019
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.bd) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !2019
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i41.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.invoke.i, %.invoke28.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %1, align 8, !tbaa !25, !noalias !2019 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.g
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %bb.r
  %i.bh = load i64, ptr %i.g, align 8, !tbaa !30, !noalias !2019
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58, !noalias !2019
  resume { ptr, i32 } %i.be

bb.s:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !22, !alias.scope !2019
  %i.bk = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa.i) #58 ; 8 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.t, label %._crit_edge.i.i49.i

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp slt i64 %i.bk, 0
  br i1 %i.bm, label %.noexc.i52.i, label %bb.u

.noexc.i52.i:                                     ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #56
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %.noexc11.i51.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i, !prof !29

.noexc11.i51.i:                                   ; preds = %bb.u
  tail call void @_ZSt17__throw_bad_allocv() #56
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i: ; preds = %bb.u
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #55 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !25, !alias.scope !2019
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !30, !alias.scope !2019
  br label %._crit_edge.i.i49.i

._crit_edge.i.i49.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i, %bb.s
  %i.bq = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i50.i ], [ %i.bj, %bb.s ] ; 3 uses
  switch i64 %i.bk, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i49.i
  %i.br = load i8, ptr %.lcssa.i, align 1, !tbaa !30
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !30
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i49.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %.lcssa.i, i64 %i.bk, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i49.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bs, align 8, !tbaa !28, !alias.scope !2019
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i8 0, ptr %i.bt, align 1, !tbaa !30
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

bb.y:                                             ; preds = %bb.b, %bb.a
  %i.bu = tail call noundef ptr @getenv(ptr noundef nonnull @.str.400) #58, !noalias !2019 ; 3 uses
  %.not28.1.i = icmp eq ptr %i.bu, null
  br i1 %.not28.1.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !30, !noalias !2019
  %.not29.1.i = icmp eq i8 %i.bv, 0
  br i1 %.not29.1.i, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.z, %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bw, ptr %0, align 8, !tbaa !22, !alias.scope !2019
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bw, ptr noundef nonnull align 1 dereferenceable(5) @.str.401, i64 5, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.bx, align 8, !tbaa !28, !alias.scope !2019
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.by, align 1, !tbaa !30, !alias.scope !2019
  br label %_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit

_ZN7testingL17GetTempDirFromEnvB5cxx11ESt16initializer_listIPKcES2_c.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.x, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.testing::internal::TraceInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !30
  store ptr %1, ptr %4, align 8, !tbaa !968
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !970
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #58
  %i.e = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !784

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !784 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest14PushGTestTraceERKNS_8internal9TraceInfoE(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN7testing8internal9TraceInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.b, align 8, !tbaa !30
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #57
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit

_ZN7testing8internal9TraceInfoD2Ev.exit:          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.e ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN7testing8internal9TraceInfoD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %.body
  %i.q = load i64, ptr %i.b, align 8, !tbaa !30
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #57
  br label %_ZN7testing8internal9TraceInfoD2Ev.exit5

_ZN7testing8internal9TraceInfoD2Ev.exit5:         ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [16 x i8], align 16                 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28   ; 5 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28   ; 4 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %.not = icmp eq i64 %i.f, 0
  %.not38 = icmp eq i64 %i.l, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.n = add nuw nsw i64 %i.l, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  %i.o = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %2, i64 %i.n, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.p = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.p, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !25
  %.pre51 = load i64, ptr %i.k, align 8, !tbaa !28
  store i64 %.pre51, ptr %i.e, align 8, !tbaa !28
  store i64 0, ptr %i.k, align 8, !tbaa !28
  store i8 0, ptr %.pre52, align 1, !tbaa !30
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.q, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !25
  %.pre = load i64, ptr %i.e, align 8, !tbaa !28
  store i64 %.pre, ptr %i.k, align 8, !tbaa !28
  store i64 0, ptr %i.e, align 8, !tbaa !28
  store i8 0, ptr %.pre50, align 1, !tbaa !30
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.r = load i64, ptr %i.i, align 8, !tbaa !30
  %i.s = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.s, i1 false)
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.i, ptr %1, align 8, !tbaa !25
  store i64 %i.r, ptr %i.c, align 8, !tbaa !30
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.t = load i64, ptr %i.c, align 8, !tbaa !30
  %i.u = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  store ptr %i.b, ptr %1, align 8, !tbaa !25
  store ptr %i.c, ptr %0, align 8, !tbaa !25
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !25
  store ptr %i.b, ptr %1, align 8, !tbaa !25
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !30
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.t, ptr %i.v, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !28
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7testing11ScopedTraceD2Ev(ptr nofree nonnull readnone align 1 captures(none) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing8UnitTestC1Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.d unwind label %bb.e, !inline_history !784

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD1Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #58, !inline_history !784 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #58, !inline_history !784
  br label %.body

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  invoke void @_ZN7testing8UnitTest13PopGTestTraceEv(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  ret void

bb.g:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.e, %bb.e ]
  %i.g = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.g) #61
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal27OsStackTraceGetterInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18OsStackTraceGetterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal16ForkingDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #61
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal15NoExecDeathTestD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #58
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal13DeathTestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal13DeathTestImplE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !22
  %i.e = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #55
          to label %bb.b unwind label %bb.s       ; 3 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.e, ptr %7, align 8, !tbaa !25
  store i64 19, ptr %i.d, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.e, ptr noundef nonnull align 1 dereferenceable(19) @.str.15, i64 19, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 19, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  store i8 0, ptr %i.g, align 1, !tbaa !30
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 19, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 89)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.s

end_hunk_0
