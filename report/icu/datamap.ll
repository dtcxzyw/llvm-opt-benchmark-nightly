Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/datamap?download=true
inline.NumInlined: 44
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK9RBDataMap6getIntEPKcR10UErrorCode:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i = phi ptr [ %i.m, %bb.e ], [ %i.k, %bb.d ], [ null, %bb.b ] ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.0.i.i) #15, !srcloc !11
  %i.n = load i16, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q       ; 2 uses
  invoke void @u_UCharsToChars_78(ptr noundef %.0.i.i, ptr noundef nonnull %i.a, i32 noundef %i.t)
          to label %_ZNK7DataMap4utoiERKN6icu_7813UnicodeStringE.exit unwind label %bb.f

_ZNK7DataMap4utoiERKN6icu_7813UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !10
  %i.w = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #15, !inline_history !12
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %_ZNK7DataMap4utoiERKN6icu_7813UnicodeStringE.exit, %bb.a
  %.0 = phi i32 [ %i.x, %_ZNK7DataMap4utoiERKN6icu_7813UnicodeStringE.exit ], [ 0, %bb.a ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK9RBDataMap14getStringArrayERiPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !24
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6icu_7814ResourceBundle7getSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 3 uses
  store i32 %i.g, ptr %1, align 4, !tbaa !28
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 6                  ; 2 uses
  %i.k = or disjoint i64 %i.j, 8
  %i.l = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.k) #15 ; 8 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit36, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %i.l, align 8
  %i.n = add nsw i64 %i.j, -64                    ; 2 uses
  %i.o = lshr exact i64 %i.n, 6
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = icmp ult i64 %i.n, 192
  br i1 %i.q, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %i.p, 576460752303423484
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %.idx = phi i64 [ 8, %.new ], [ %.add.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 8
  store i16 2, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i16 2, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store i16 2, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  store i16 2, ptr %i.x, align 8, !tbaa !10
  %.add.3 = add nuw nsw i64 %.idx, 256            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit36.loopexit.unr-lcssa, label %bb.e

.loopexit36.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit36.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit36.loopexit.unr-lcssa, %bb.d
  %.idx.epil.init = phi i64 [ 8, %bb.d ], [ %.add.3, %.loopexit36.loopexit.unr-lcssa ]
  %lcmp.mod40 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.idx.epil = phi i64 [ %.idx.epil.init, %.epil.preheader ], [ %.add.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %.ptr.ptr.epil = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.epil, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr.epil, i64 8
  store i16 2, ptr %i.y, align 8, !tbaa !10
  %.add.epil = add nuw nsw i64 %.idx.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit36.loopexit, label %bb.f, !llvm.loop !30

.loopexit36.loopexit:                             ; preds = %bb.f, %.loopexit36.loopexit.unr-lcssa
  %.ptr30 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.loopexit36

.loopexit36:                                      ; preds = %.loopexit36.loopexit, %bb.c
  %i.z = phi ptr [ null, %bb.c ], [ %.ptr30, %.loopexit36.loopexit ] ; 3 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !28
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit36, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit36 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZNK6icu_7814ResourceBundle11getStringExEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %indvars.iv
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %4) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %1, align 4, !tbaa !28
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %.loopexit36, %bb.a, %bb.b
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.z, %.loopexit36 ], [ %i.z, %.lr.ph ]
  ret ptr %.1
}

declare noundef i32 @_ZNK6icu_7814ResourceBundle7getSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #8

declare void @_ZNK6icu_7814ResourceBundle11getStringExEiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZNK9RBDataMap11getIntArrayERiPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !24
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK6icu_7814ResourceBundle7getSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 3 uses
  store i32 %i.h, ptr %1, align 4, !tbaa !28
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.h, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i16 2, ptr %i.m, align 8, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 10
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.a, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZNK6icu_7814ResourceBundle11getStringExEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i unwind label %bb.e

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.c
  %i.o = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.p = load i16, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.q = and i16 %i.p, 17
  %.not.i.i = icmp eq i16 %i.q, 0
  %i.r = and i16 %i.p, 2
  %.not2.i.i = icmp eq i16 %i.r, 0
  %i.s = load ptr, ptr %7, align 8
  %spec.select = select i1 %.not2.i.i, ptr %i.s, ptr %6
  %.0.i.i = select i1 %.not.i.i, ptr %spec.select, ptr null ; 2 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.0.i.i) #15, !srcloc !11
  %i.t = load i16, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %8, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w       ; 2 uses
  invoke void @u_UCharsToChars_78(ptr noundef %.0.i.i, ptr noundef nonnull %i.a, i32 noundef %i.y)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !10
  %i.ab = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 10) #15, !inline_history !12
  %i.ac = trunc i64 %i.ab to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !33

bb.e:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

._crit_edge:                                      ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.ah, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a, %._crit_edge, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.l, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @uhash_close_78(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare i32 @uhash_hashCaselessUnicodeString_78(ptr) #6

declare signext i8 @uhash_compareCaselessUnicodeString_78(ptr, ptr) #6

declare ptr @uhash_init_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @uhash_setKeyDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @uprv_deleteUObject_78(ptr noundef) #6

declare ptr @uhash_setValueDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @uhash_removeAll_78(ptr noundef) local_unnamed_addr #6

declare ptr @uhash_put_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

declare ptr @uhash_get_78(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{i64 2148896761}
!12 = distinct !{null}
!13 = !{!14, !16, i64 8}
!14 = !{!"_ZTS9RBDataMap", !15, i64 0, !16, i64 8}
!15 = !{!"_ZTS7DataMap"}
!16 = !{!"p1 _ZTSN6icu_789HashtableE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN6icu_789HashtableE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTS10UHashtable", !17, i64 0}
!21 = !{!"_ZTS10UHashtable", !22, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !23, i64 64, !23, i64 68, !6, i64 72, !6, i64 73}
!22 = !{!"p1 _ZTS12UHashElement", !17, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"_ZTS10UErrorCode", !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !5, i64 0}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
end_hunk_0
