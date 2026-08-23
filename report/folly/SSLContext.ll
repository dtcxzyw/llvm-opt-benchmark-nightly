Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SSLContext?download=true
inline.NumInlined: 1423
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5folly10SSLContext9createSSLEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.f = tail call ptr @__errno_location() #31
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9192, !noalias !9420
  invoke void @_ZN5folly10SSLContext9getErrorsB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.g)
          to label %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread

_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit:    ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !9191   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !9196
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !9191   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN5folly10SSLContext9getErrorsB5cxx11Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !9191   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.v = load i64, ptr %i.t, align 8, !tbaa !9196
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = load i64, ptr %i.p, align 8, !tbaa !9196
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.y) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread
  %.pn.pn18.ph = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn18 = phi { ptr, i32 } [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn.pn18.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn.pn17 = phi { ptr, i32 } [ %.pn.pn18, %bb.f ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  resume { ptr, i32 } %.pn.pn17

bb.h:                                             ; preds = %bb.a
  ret ptr %i.c

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10SSLContext22setSessionCacheContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9129
  %i.c = load ptr, ptr %1, align 8, !tbaa !9191
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9208
  %i.f = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.f, i32 32)
  %i.g = tail call i32 @SSL_CTX_set_session_id_context(ptr noundef %i.b, ptr noundef %i.c, i32 noundef %.sroa.speculated) ; 0 uses
  ret void
}

declare i32 @SSL_CTX_set_session_id_context(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define noundef zeroext i1 @_ZN5folly10SSLContext9matchNameEPKcS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #24 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %indvars.iv40 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next41, %.backedge ] ; 4 uses
  %.031 = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.be, %.backedge ] ; 4 uses
  %i.b = sext i32 %.031 to i64                    ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9196  ; 3 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.critedge.loopexit.split.loop.exit47, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = sext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv40
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9196  ; 2 uses
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @toupper(i32 noundef %i.h) #34
  %i.j = tail call i32 @toupper(i32 noundef %i.e) #34
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.031, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %.critedge2
  %.0.be = phi i32 [ %i.l, %bb.c ], [ %i.o, %.critedge2 ] ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !9423

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i8 %i.g, 42
  br i1 %i.m, label %.preheader, label %.critedge.loopexit.split.loop.exit44

.preheader:                                       ; preds = %bb.d, %bb.e
  %i.n = phi i8 [ %.pre, %bb.e ], [ %i.d, %bb.d ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.b, %bb.d ] ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 46, label %.critedge2
    i8 0, label %.critedge2
  ]

bb.e:                                             ; preds = %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !9196
  br label %.preheader, !llvm.loop !9424

.critedge2:                                       ; preds = %.preheader, %.preheader
  %i.o = trunc nsw i64 %indvars.iv to i32
  br label %.backedge

.critedge.loopexit.split.loop.exit44:             ; preds = %bb.d
  %i.p = trunc nuw nsw i64 %indvars.iv40 to i32
  br label %.critedge.loopexit

.critedge.loopexit.split.loop.exit47:             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv40 to i32
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.backedge, %.critedge.loopexit.split.loop.exit47, %.critedge.loopexit.split.loop.exit44
  %.024.lcssa.ph = phi i32 [ %i.p, %.critedge.loopexit.split.loop.exit44 ], [ %i.q, %.critedge.loopexit.split.loop.exit47 ], [ %2, %.backedge ]
  %.0.lcssa.ph = phi i32 [ %.031, %.critedge.loopexit.split.loop.exit44 ], [ %.031, %.critedge.loopexit.split.loop.exit47 ], [ %.0.be, %.backedge ]
  %i.r = sext i32 %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.024.lcssa.ph, %.critedge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %.critedge.loopexit ]
  %i.s = icmp eq i32 %.024.lcssa, %2
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9196
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %3, label %bb.g

3:                                                ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %3, %bb.f, %.critedge
  %.025 = phi i1 [ true, %3 ], [ false, %bb.f ], [ false, %.critedge ]
  ret i1 %.025
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10SSLContext10setOptionsEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9129
  %i.c = tail call i64 @SSL_CTX_set_options(ptr noundef %i.b, i64 noundef %1)
  %i.d = and i64 %i.c, %1
  %.not = icmp eq i64 %i.d, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.81)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #29
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  ret void
}

declare i64 @ERR_get_error() local_unnamed_addr #0

declare ptr @ERR_reason_error_string(i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9208 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !9191   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !9196
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !9191
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 45, ptr %i.n, align 1, !tbaa !9196
  store i64 %i.e, ptr %i.c, align 8, !tbaa !9208
  %i.o = load ptr, ptr %1, align 8, !tbaa !9191
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !9196
  br label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, !prof !9425

._crit_edge.thread.i.i.i:                         ; preds = %bb.d
  %i.q = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !9426
  br label %bb.f

_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i: ; preds = %.thread, %bb.d
  %i.r = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = sub nuw nsw i64 64, %i.t
  %i.v = mul nuw nsw i64 %i.u, 39
  %i.w = lshr i64 %i.v, 7                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9428
  %i.z = icmp ule i64 %i.y, %i.s
  %i.aa = zext i1 %i.z to i64
  %i.ab = add nuw nsw i64 %i.w, %i.aa             ; 5 uses
  %i.ac = icmp samesign ugt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i, %.lr.ph.i.i.i
  %.0.i4.i2.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.s, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ] ; 2 uses
  %.014.i.i1.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ab, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ]
  %i.ad = add i64 %.014.i.i1.i.i.i, -2            ; 4 uses
  %i.ae = udiv i64 %.0.i4.i2.i.i.i, 100           ; 2 uses
  %i.af = urem i64 %.0.i4.i2.i.i.i, 100
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !9426
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i16 %i.ah, ptr %i.ai, align 1
  %i.aj = icmp ugt i64 %i.ad, 2
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !9429

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i
  %.014.i.i.lcssa.i.i.i = phi i64 [ %i.ab, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i ]
  %.0.i4.i.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5folly6detail19to_ascii_size_clzllILm10EEEmm.exit.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i4.i.lcssa.i.i.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !9426 ; 3 uses
  %i.am = icmp eq i64 %.014.i.i.lcssa.i.i.i, 2
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.al, ptr %i.a, align 16
  %i.an = trunc i16 %i.al to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.ao = phi i16 [ %i.q, %._crit_edge.thread.i.i.i ], [ %i.al, %._crit_edge.i.i.i ]
  %.0.i.i712.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.ab, %._crit_edge.i.i.i ]
  %i.ap = lshr i16 %i.ao, 8
  %i.aq = trunc nuw i16 %i.ap to i8               ; 2 uses
  store i8 %i.aq, ptr %i.a, align 16, !tbaa !9196
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.e, %bb.f
  %i.ar = phi i8 [ %i.an, %bb.e ], [ %i.aq, %bb.f ]
  %.0.i.i711.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %.0.i.i712.i.i.i, %bb.f ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !9208 ; 5 uses
  %i.au = sub i64 9223372036854775807, %i.at
  %i.av = icmp ult i64 %i.au, %.0.i.i711.i.i.i
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.aw = add i64 %i.at, %.0.i.i711.i.i.i         ; 3 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !9191  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ba = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !9196
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.aw, %i.bc
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i.i711.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i.i711.i.i.i, 1
  br i1 %cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 %i.ar, ptr %i.bd, align 1, !tbaa !9196
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !9208
  %i.be = load ptr, ptr %1, align 8, !tbaa !9191
end_hunk_0
