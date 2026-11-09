Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/HandlerOut?download=true
inline.NumInlined: 242
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13CObjectVectorI11CStringBaseIwEED2Ev:bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN8NArchive11COutHandler16SetSolidSettingsERK11CStringBaseIwE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !148 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp slt i32 %i.c, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #15 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.j, %bb.b ] ; 8 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !66 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.m, ptr %.04.i.i, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit, label %bb.c, !llvm.loop !0

_ZN11CStringBaseIwEC2ERKS0_.exit:                 ; preds = %bb.c
  %i.o = load i32, ptr %i.b, align 8, !tbaa !64   ; 3 uses
  %i.p = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %.sroa.0.0)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit.preheader unwind label %bb.d ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit.preheader:   ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit
  %.not3450 = icmp sgt i32 %i.o, 0
  br i1 %.not3450, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65
  br label %bb.e

bb.d:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph, %_ZN11CStringBaseIwE9MakeUpperEv.exit
  %.02251 = phi i32 [ 0, %.lr.ph ], [ %.123, %_ZN11CStringBaseIwE9MakeUpperEv.exit ] ; 3 uses
  %i.v = sext i32 %.02251 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.v ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.x = invoke noundef i64 @_Z21ConvertStringToUInt64PKwPS0_(ptr noundef %i.w, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.h       ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !66
  %.not = icmp eq i32 %i.aa, 69
  br i1 %.not, label %bb.i, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.t, align 1, !tbaa !94
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit, !llvm.loop !147

bb.j:                                             ; preds = %bb.f
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32
  %i.ah = add nsw i32 %.02251, %i.ag              ; 7 uses
  %i.ai = icmp eq i32 %i.ah, %i.o
  br i1 %i.ai, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !66
  switch i32 %i.al, label %.thread [
    i32 70, label %bb.l
    i32 66, label %bb.m
    i32 75, label %bb.n
    i32 77, label %bb.o
    i32 71, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  store i64 %spec.store.select, ptr %i.s, align 8, !tbaa !95
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit

bb.m:                                             ; preds = %bb.k
  store i64 %i.x, ptr %i.q, align 8, !tbaa !150
  store i8 1, ptr %i.r, align 8, !tbaa !96
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit

bb.n:                                             ; preds = %bb.k
  %i.am = shl i64 %i.x, 10
  store i64 %i.am, ptr %i.q, align 8, !tbaa !150
  store i8 1, ptr %i.r, align 8, !tbaa !96
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit

bb.o:                                             ; preds = %bb.k
  %i.an = shl i64 %i.x, 20
  store i64 %i.an, ptr %i.q, align 8, !tbaa !150
  store i8 1, ptr %i.r, align 8, !tbaa !96
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit

bb.p:                                             ; preds = %bb.k
  %i.ao = shl i64 %i.x, 30
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !150
  store i8 1, ptr %i.r, align 8, !tbaa !96
  br label %_ZN11CStringBaseIwE9MakeUpperEv.exit

.thread:                                          ; preds = %bb.j, %bb.g, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

_ZN11CStringBaseIwE9MakeUpperEv.exit:             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.123.in = phi i32 [ %i.ah, %bb.o ], [ %.02251, %bb.i ], [ %i.ah, %bb.p ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ], [ %i.ah, %bb.n ]
  %.123 = add nsw i32 %.123.in, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not34 = icmp slt i32 %.123, %i.o
  br i1 %.not34, label %bb.e, label %.loopexit.thread

.loopexit:                                        ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit.preheader, %.thread
  %.not3449 = phi i32 [ -2147024809, %.thread ], [ 0, %_ZN11CStringBaseIwE9MakeUpperEv.exit.preheader ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ap, label %_ZN11CStringBaseIwED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit, %.loopexit
  %.not344958 = phi i32 [ %.not3449, %.loopexit ], [ 0, %_ZN11CStringBaseIwE9MakeUpperEv.exit ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %.loopexit, %.loopexit.thread
  %.not344959 = phi i32 [ %.not3449, %.loopexit ], [ %.not344958, %.loopexit.thread ]
  ret i32 %.not344959

bb.q:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.u, %bb.d ]
  %i.aq = icmp eq ptr %.sroa.0.0, null
  br i1 %i.aq, label %_ZN11CStringBaseIwED2Ev.exit35, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZN11CStringBaseIwED2Ev.exit35

_ZN11CStringBaseIwED2Ev.exit35:                   ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_Z21ConvertStringToUInt64PKwPS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZN8NArchive11COutHandler16SetSolidSettingsERK14tagPROPVARIANT(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !151 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %class.CStringBase, align 8         ; 10 uses
  %3 = alloca %class.CStringBase, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = load i16, ptr %1, align 8, !tbaa !74
  switch i16 %i.b, label %bb.o [
    i16 0, label %.thread
    i16 11, label %bb.m
    i16 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.d)
  %i.f = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = zext nneg i32 %i.g to i64
  %i.k = icmp slt i32 %i.f, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #15 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !55
  store i32 0, ptr %i.n, align 4, !tbaa !66
  store i32 %i.g, ptr %i.i, align 4, !tbaa !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.b, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.q, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.n, %bb.b ] ; 2 uses
  %.0.i.i = phi ptr [ %i.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.p = load i32, ptr %.0.i.i, align 4, !tbaa !66 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.p, ptr %.04.i.i, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.f, ptr %i.e, align 8, !tbaa !64
  %i.r = invoke noundef zeroext i1 @_Z12StringToBoolRK11CStringBaseIwERb(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.s) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.r, label %_ZN11CStringBaseIwED2Ev.exit._crit_edge, label %bb.g

_ZN11CStringBaseIwED2Ev.exit._crit_edge:          ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %.pre = load i8, ptr %i.a, align 1, !tbaa !85, !range !86
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %.thread, label %bb.n

bb.e:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN11CStringBaseIwED2Ev.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.w) #16
  br label %_ZN11CStringBaseIwED2Ev.exit10

_ZN11CStringBaseIwED2Ev.exit10:                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.p

bb.g:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i11 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.y)
  %i.aa = trunc i64 %wcslen.i.i11 to i32          ; 3 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13, label %._crit_edge.i.i19

._crit_edge.i.i19:                                ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = icmp slt i32 %i.aa, -1
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #15 ; 3 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !55
  store i32 0, ptr %i.ai, align 4, !tbaa !66
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13

_ZN11CStringBaseIwE11SetCapacityEi.exit.i13:      ; preds = %._crit_edge.i.i19, %bb.g
  %i.aj = phi ptr [ null, %bb.g ], [ %i.ai, %._crit_edge.i.i19 ] ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13
  %.04.i.i14 = phi ptr [ %i.aj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13 ], [ %i.am, %bb.h ] ; 2 uses
  %.0.i.i15 = phi ptr [ %i.y, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13 ], [ %i.ak, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 4
  %i.al = load i32, ptr %.0.i.i15, align 4, !tbaa !66 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04.i.i14, i64 4
  store i32 %i.al, ptr %.04.i.i14, align 4, !tbaa !66
  %.not.i.i16 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i16, label %_ZN11CStringBaseIwEC2EPKw.exit27, label %bb.h, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit27:                 ; preds = %bb.h
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !64
  %i.an = invoke noundef i32 @_ZN8NArchive11COutHandler16SetSolidSettingsERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit27
  %i.ao = icmp eq ptr %i.aj, null
  br i1 %i.ao, label %_ZN11CStringBaseIwED2Ev.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #16
  br label %_ZN11CStringBaseIwED2Ev.exit28

_ZN11CStringBaseIwED2Ev.exit28:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.o

bb.k:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit27
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = icmp eq ptr %i.aj, null
  br i1 %i.aq, label %_ZN11CStringBaseIwED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #16
  br label %_ZN11CStringBaseIwED2Ev.exit29

_ZN11CStringBaseIwED2Ev.exit29:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !76
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.a, %_ZN11CStringBaseIwED2Ev.exit._crit_edge, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.au, align 1, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.av, align 8, !tbaa !96
  br label %bb.o

bb.n:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit._crit_edge, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.aw, align 8, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %bb.a, %_ZN11CStringBaseIwED2Ev.exit28
  %.08 = phi i32 [ %i.an, %_ZN11CStringBaseIwED2Ev.exit28 ], [ -2147024809, %bb.a ], [ 0, %bb.n ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.08

bb.p:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit29, %_ZN11CStringBaseIwED2Ev.exit10
  %.pn = phi { ptr, i32 } [ %i.ap, %_ZN11CStringBaseIwED2Ev.exit29 ], [ %i.v, %_ZN11CStringBaseIwED2Ev.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11CStringBaseIwEC2EPKw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !guid !154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1)
  %i.c = trunc i64 %wcslen.i to i32               ; 3 uses
  %i.d = add nsw i32 %i.c, 1                      ; 3 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp slt i32 %i.c, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #15 ; 5 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !67
  %i.l = icmp sgt i32 %i.k, 0
  %.pre4 = load i32, ptr %i.a, align 8, !tbaa !64 ; 5 uses
  br i1 %i.l, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.m = icmp sgt i32 %.pre4, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !55  ; 4 uses
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.pre4 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre4, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !66
  %wide.load5 = load <4 x i32>, ptr %i.o, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %wide.load, ptr %i.p, align 4, !tbaa !66
  store <4 x i32> %wide.load5, ptr %i.q, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %.preheader.i
  %i.s = icmp eq ptr %.pre.i, null
  br i1 %i.s, label %bb.b, label %._crit_edge.thread.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !66
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  store i32 %i.u, ptr %i.v, align 4, !tbaa !66
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !153

._crit_edge.thread.i:                             ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #16
  %.pre = load i32, ptr %i.a, align 8, !tbaa !64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.a
  %i.w = phi i32 [ %.pre, %._crit_edge.thread.i ], [ %.pre4, %._crit_edge.i ], [ %.pre4, %bb.a ]
  store ptr %i.j, ptr %0, align 8, !tbaa !55
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !66
  store i32 %i.d, ptr %i.b, align 4, !tbaa !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.b, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.j, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.z, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %1, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.aa = load i32, ptr %.0.i, align 4, !tbaa !66 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.aa, ptr %.04.i, align 4, !tbaa !66
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit
  store i32 %i.c, ptr %i.a, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive11COutHandler4InitEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) initializes((0, 8), (40, 41), (48, 73), (76, 81)) %0) local_unnamed_addr #0 align 2 !guid !155 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 1, ptr %i.b, align 2, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 71
  store i32 0, ptr %i.c, align 1
  store i8 1, ptr %i.d, align 1, !tbaa !99
  %i.e = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv()
  store i32 %i.e, ptr %0, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 5, ptr %i.f, align 4, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.i, align 4, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.k, align 1, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.l, align 8, !tbaa !96
  ret void
}

declare noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive11COutHandler17BeforeSetPropertyEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) initializes((0, 8), (40, 41), (48, 73), (76, 81), (84, 100)) %0) local_unnamed_addr #0 align 2 !guid !156 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 1, ptr %i.b, align 2, !tbaa !98
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 71
  store i32 0, ptr %i.c, align 1
  store i8 1, ptr %i.d, align 1, !tbaa !99
  %i.e = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv()
  store i32 %i.e, ptr %0, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 5, ptr %i.f, align 4, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 4, ptr %i.i, align 4, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.k, align 1, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.l, align 8, !tbaa !96
  %i.m = tail call noundef i32 @_ZN8NWindows7NSystem21GetNumberOfProcessorsEv()
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.m, ptr %i.n, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1, ptr %i.o, align 4, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -1, ptr %i.p, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.q, align 4, !tbaa !107
  store i32 4, ptr %i.i, align 4, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive11COutHandler11SetPropertyEPKwRK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !167 {
bb.a:
  %3 = alloca %class.CStringBase, align 8         ; 26 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %class.CStringBase, align 8         ; 10 uses
  %5 = alloca %class.CStringBase, align 8         ; 7 uses
  %6 = alloca %class.CStringBase, align 8         ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %7 = alloca %"struct.NArchive::COneMethodInfo", align 8 ; 15 uses
  %8 = alloca %class.CStringBase, align 8         ; 7 uses
  %9 = alloca %struct.CProp, align 8              ; 8 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %10 = alloca %class.CStringBase, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1)
  %i.e = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = zext nneg i32 %i.f to i64
  %i.j = icmp slt i32 %i.e, -1
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #15 ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !55
  store i32 0, ptr %i.m, align 4, !tbaa !66
  store i32 %i.f, ptr %i.h, align 4, !tbaa !67
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ null, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.p = load i32, ptr %.0.i.i, align 4, !tbaa !66 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.p, ptr %.04.i.i, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.c, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.c
  store i32 %i.e, ptr %i.d, align 8, !tbaa !64
  %i.r = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.n)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit unwind label %bb.d ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit:             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.s = load i32, ptr %i.d, align 8, !tbaa !64   ; 7 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.cr, label %bb.e

bb.d:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke, %bb.k, %_ZN11CStringBaseIwEC2EPKw.exit, %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.e:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !55     ; 6 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !66
  switch i32 %i.w, label %bb.k [
    i32 88, label %bb.f
    i32 83, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i32 %i.s, 0
  br i1 %i.x, label %bb.g, label %_ZN11CStringBaseIwE6DeleteEii.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = zext nneg i32 %i.s to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %i.y, i64 %i.aa, i1 false)
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !64
  br label %_ZN11CStringBaseIwE6DeleteEii.exit

_ZN11CStringBaseIwE6DeleteEii.exit:               ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 9, ptr %i.ac, align 4, !tbaa !63
  br label %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.s, 0
  br i1 %i.ad, label %_ZN11CStringBaseIwE6DeleteEii.exit145, label %_ZN11CStringBaseIwE6DeleteEii.exit145.thread

_ZN11CStringBaseIwE6DeleteEii.exit145:            ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = zext nneg i32 %i.s to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %i.ae, i64 %i.ag, i1 false)
  %i.ah = add nsw i32 %i.s, -1                    ; 2 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !64
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_ZN11CStringBaseIwE6DeleteEii.exit145.thread

bb.i:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit145
  %i.aj = invoke noundef i32 @_ZN8NArchive11COutHandler16SetSolidSettingsERK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cr unwind label %bb.d

_ZN11CStringBaseIwE6DeleteEii.exit145.thread:     ; preds = %bb.h, %_ZN11CStringBaseIwE6DeleteEii.exit145
  %i.ak = load i16, ptr %2, align 8, !tbaa !74
  %.not138 = icmp eq i16 %i.ak, 0
  br i1 %.not138, label %bb.j, label %bb.cr

bb.j:                                             ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit145.thread
  %i.al = invoke noundef i32 @_ZN8NArchive11COutHandler16SetSolidSettingsERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.cr unwind label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.am = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef nonnull %i.v, ptr noundef nonnull @.str)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 4, ptr %i.ao, align 4, !tbaa !103
  %i.ap = load i32, ptr %i.d, align 8, !tbaa !64  ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 3) ; 3 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %reass.sub.i.i147 = add nuw i32 %i.ap, 1
  %i.av = sub i32 %reass.sub.i.i147, %i.ar
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.as, ptr nonnull align 4 %i.au, i64 %i.ax, i1 false)
  %i.ay = sub nsw i32 %i.ap, %i.ar
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !64
  br label %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke

_ZN11CStringBaseIwE6DeleteEii.exit148.invoke:     ; preds = %bb.m, %bb.n, %_ZN11CStringBaseIwE6DeleteEii.exit
  %i.az = phi ptr [ %i.ac, %_ZN11CStringBaseIwE6DeleteEii.exit ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ]
  %i.ba = invoke noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.az)
          to label %bb.cr unwind label %bb.d

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bb = invoke noundef i32 @_Z19ParseStringToUInt32RK11CStringBaseIwERj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.v       ; 3 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !64, !noalias !168
  %i.bd = sub nsw i32 %i.bc, %i.bb
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.bb, i32 noundef %i.bd)
          to label %_ZNK11CStringBaseIwE3MidEi.exit unwind label %bb.w

_ZNK11CStringBaseIwE3MidEi.exit:                  ; preds = %bb.p
  %i.be = icmp eq i32 %i.bb, 0
  br i1 %i.be, label %bb.q, label %bb.as

bb.q:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef 2)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.x

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %bb.q
  %i.bf = load ptr, ptr %5, align 8, !tbaa !55
  %i.bg = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.bf, ptr noundef nonnull @.str.1)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit unwind label %bb.y

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit:     ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %i.bh, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bk = load i32, ptr %i.d, align 8, !tbaa !64, !noalias !169
  %i.bl = add nsw i32 %i.bk, -2
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 2, i32 noundef %i.bl)
          to label %_ZNK11CStringBaseIwE3MidEi.exit149 unwind label %bb.aa

_ZNK11CStringBaseIwE3MidEi.exit149:               ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !104
  %i.bo = invoke noundef i32 @_Z11ParseMtPropRK11CStringBaseIwERK14tagPROPVARIANTjRj(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %_ZNK11CStringBaseIwE3MidEi.exit149
  %i.bp = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN11CStringBaseIwED2Ev.exit150, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #16
  br label %_ZN11CStringBaseIwED2Ev.exit150

_ZN11CStringBaseIwED2Ev.exit150:                  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.thread178

bb.v:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN8NArchive11COutHandler11SetPropertyEPKwRK14tagPROPVARIANT:bb.a
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %._crit_edge.thread.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.ey = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.ey, label %bb.ax, label %._crit_edge.thread.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !66
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.i.i.i
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !66
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !66
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !66
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !66
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %scalar.ph, !llvm.loop !163

._crit_edge.thread.i.i.i:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #16
  %.pre.i.i162 = load i32, ptr %i.dx, align 8, !tbaa !64
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CObjectVectorI5CPropED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  br label %.body

bb.ax:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc.i
  %i.fm = phi i32 [ %.pre1.i.i, %.noexc.i ], [ %.pre1.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i162, %._crit_edge.thread.i.i.i ]
  store ptr %i.ei, ptr %i.dw, align 8, !tbaa !55
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fn
  store i32 0, ptr %i.fo, align 4, !tbaa !66
  store i32 4, ptr %i.dy, align 4, !tbaa !67
  %i.fp = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %.noexc unwind label %bb.bd    ; 3 uses

.noexc:                                           ; preds = %bb.ax
  invoke void @_ZN8NArchive14COneMethodInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.noexc
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
          to label %bb.ba unwind label %bb.bd

bb.az:                                            ; preds = %.noexc
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 48) #16
  br label %.body164

bb.ba:                                            ; preds = %bb.ay
  %i.fr = load ptr, ptr %i.dz, align 8, !tbaa !78
  %i.fs = load i32, ptr %i.ds, align 4, !tbaa !77 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store ptr %i.fp, ptr %i.fu, align 8, !tbaa !79
  %i.fv = add nsw i32 %i.fs, 1
  store i32 %i.fv, ptr %i.ds, align 4, !tbaa !77
  %i.fw = load ptr, ptr %i.dw, align 8, !tbaa !55 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.fw) #16
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.bb, %bb.ba
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %7, align 8, !tbaa !92
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %_ZN8NArchive14COneMethodInfoD2Ev.exit unwind label %bb.bc, !inline_history !108

bb.bc:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #18, !inline_history !108
  unreachable

_ZN8NArchive14COneMethodInfoD2Ev.exit:            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #17, !inline_history !108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ga = add nsw i32 %.080188, 1
  %i.gb = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not.not = icmp slt i32 %.080188, %i.gb
  br i1 %.not.not, label %bb.av, label %._crit_edge, !llvm.loop !164

bb.bd:                                            ; preds = %bb.ay, %bb.ax
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body164

.body164:                                         ; preds = %bb.az, %bb.bd
  %eh.lpad-body165 = phi { ptr, i32 } [ %i.gc, %bb.bd ], [ %i.fq, %bb.az ]
  call void @_ZN8NArchive14COneMethodInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #17
  br label %.body

.body:                                            ; preds = %bb.aw, %.body164
  %.pn128 = phi { ptr, i32 } [ %eh.lpad-body165, %.body164 ], [ %i.fl, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.co

bb.be:                                            ; preds = %._crit_edge
  %i.gd = load i16, ptr %2, align 8, !tbaa !74
  %.not123 = icmp eq i16 %i.gd, 8
  br i1 %.not123, label %bb.bf, label %.thread178

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76
  invoke void @_ZN11CStringBaseIwEC2EPKw(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.gf)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.gg = invoke noundef i32 @_ZN8NArchive11COutHandler9SetParamsERNS_14COneMethodInfoERK11CStringBaseIwE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.bh unwind label %bb.bk     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gh = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZN11CStringBaseIwED2Ev.exit166, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #16
  br label %_ZN11CStringBaseIwED2Ev.exit166

_ZN11CStringBaseIwED2Ev.exit166:                  ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not127 = icmp eq i32 %i.gg, 0
  br i1 %.not127, label %bb.cm, label %.thread178

bb.bj:                                            ; preds = %bb.bf
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit167

bb.bk:                                            ; preds = %bb.bg
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN11CStringBaseIwED2Ev.exit167, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #16
  br label %_ZN11CStringBaseIwED2Ev.exit167

_ZN11CStringBaseIwED2Ev.exit167:                  ; preds = %bb.bl, %bb.bk, %bb.bj
  %.pn124 = phi { ptr, i32 } [ %i.gj, %bb.bj ], [ %i.gk, %bb.bk ], [ %i.gk, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.co

bb.bm:                                            ; preds = %._crit_edge
  %i.gn = invoke fastcc noundef i32 @_ZN8NArchiveL15FindPropIdStartERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bn unwind label %bb.bo     ; 3 uses

bb.bn:                                            ; preds = %bb.bm
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %.thread178, label %bb.bp

bb.bo:                                            ; preds = %.invoke, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.al, %bb.bm
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bp:                                            ; preds = %bb.bn
  %i.gq = zext nneg i32 %i.gn to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr @_ZN8NArchiveL14g_NameToPropIDE, i64 %i.gq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i16 0, ptr %i.gs, align 8, !tbaa !74
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 10
  store i16 0, ptr %i.gt, align 2, !tbaa !75
  %i.gu = load i32, ptr %i.gr, align 16, !tbaa !84
  store i32 %i.gu, ptr %9, align 8, !tbaa !82
  %or.cond12 = icmp samesign ult i32 %i.gn, 3
  br i1 %or.cond12, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !109
  %wcslen.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.gw)
  %i.gx = trunc i64 %wcslen.i to i32              ; 2 uses
  %i.gy = load i32, ptr %i.ef, align 8, !tbaa !64, !noalias !171
  %i.gz = sub nsw i32 %i.gy, %i.gx
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.gx, i32 noundef %i.gz)
          to label %_ZNK11CStringBaseIwE3MidEi.exit169 unwind label %bb.bt

_ZNK11CStringBaseIwE3MidEi.exit169:               ; preds = %bb.bq
  %i.ha = invoke noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.br unwind label %bb.bu     ; 2 uses

bb.br:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit169
  %i.hb = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN11CStringBaseIwED2Ev.exit170, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.hb) #16
  br label %_ZN11CStringBaseIwED2Ev.exit170

_ZN11CStringBaseIwED2Ev.exit170:                  ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %.not115 = icmp eq i32 %i.ha, 0
  br i1 %.not115, label %bb.bw, label %.critedge

bb.bt:                                            ; preds = %bb.bq
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit171

bb.bu:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit169
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN11CStringBaseIwED2Ev.exit171, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.hf) #16
  br label %_ZN11CStringBaseIwED2Ev.exit171

_ZN11CStringBaseIwED2Ev.exit171:                  ; preds = %bb.bv, %bb.bu, %bb.bt
  %.pn113 = phi { ptr, i32 } [ %i.hd, %bb.bt ], [ %i.he, %bb.bu ], [ %i.he, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.cb

bb.bw:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit170
  %i.hh = load i32, ptr %i.c, align 4, !tbaa !8
  %i.hi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i32 noundef %i.hh)
          to label %bb.bx unwind label %bb.bz     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.hj = load i32, ptr %i.a, align 4, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !106
  %.not118 = icmp ugt i32 %i.hj, %i.hl
  br i1 %.not118, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hm = load i32, ptr %i.c, align 4, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !105
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bw
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz, %_ZN11CStringBaseIwED2Ev.exit171
  %.pn116 = phi { ptr, i32 } [ %i.ho, %bb.bz ], [ %.pn113, %_ZN11CStringBaseIwED2Ev.exit171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ck

bb.cc:                                            ; preds = %bb.bp
  %i.hp = invoke fastcc noundef i32 @_ZN8NArchiveL15FindPropIdExactERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.cd unwind label %bb.cf     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %.critedge142, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hr = zext nneg i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr @_ZN8NArchiveL14g_NameToPropIDE, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 16, !tbaa !84
  store i32 %i.ht, ptr %9, align 8, !tbaa !82
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i16, ptr %i.hu, align 4, !tbaa !89
  %i.hw = invoke fastcc noundef zeroext i1 @_ZN8NArchiveL15ConvertPropertyE14tagPROPVARIANTtRN8NWindows4NCOM12CPropVariantE(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i16 noundef zeroext %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %bb.cg unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.cc, %bb.ce
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cg:                                            ; preds = %bb.ce
  br i1 %i.hw, label %bb.ch, label %.critedge142

bb.ch:                                            ; preds = %bb.ca, %bb.cg
  %.8 = phi i32 [ 0, %bb.ca ], [ -2147024809, %bb.cg ]
  %i.hy = invoke noundef i32 @_ZN13CObjectVectorI5CPropE3AddERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.critedge142 unwind label %bb.cf ; 0 uses

.critedge:                                        ; preds = %_ZN11CStringBaseIwED2Ev.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.critedge142

.critedge142:                                     ; preds = %bb.cd, %bb.ch, %.critedge, %bb.cg
  %i.hz = phi i1 [ true, %bb.ch ], [ false, %bb.cd ], [ false, %bb.cg ], [ false, %.critedge ]
  %.9 = phi i32 [ %.8, %bb.ch ], [ -2147024809, %bb.cd ], [ -2147024809, %bb.cg ], [ %i.ha, %.critedge ]
  %i.ia = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %bb.cj unwind label %bb.ci     ; 0 uses

bb.ci:                                            ; preds = %.critedge142
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #18
  unreachable

bb.cj:                                            ; preds = %.critedge142
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br i1 %i.hz, label %bb.cm, label %.thread178

bb.ck:                                            ; preds = %bb.cf, %bb.cb
  %.pn119 = phi { ptr, i32 } [ %i.hx, %bb.cf ], [ %.pn116, %bb.cb ]
  %i.id = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs)
          to label %_ZN5CPropD2Ev.exit172 unwind label %bb.cl ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #18
  unreachable

_ZN5CPropD2Ev.exit172:                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.co

bb.cm:                                            ; preds = %bb.cj, %_ZN11CStringBaseIwED2Ev.exit166
  br label %.thread178

.thread178:                                       ; preds = %.invoke, %bb.bn, %_ZN11CStringBaseIwED2Ev.exit150, %bb.cm, %bb.cj, %_ZN11CStringBaseIwED2Ev.exit166, %bb.be, %bb.at, %bb.as, %bb.am, %bb.an, %bb.ai
  %.12 = phi i32 [ -2147024809, %bb.be ], [ %i.bo, %_ZN11CStringBaseIwED2Ev.exit150 ], [ -2147024809, %bb.at ], [ %i.dk, %.invoke ], [ -2147467259, %bb.as ], [ %.2, %bb.ai ], [ 0, %bb.an ], [ %i.cv, %bb.am ], [ %.9, %bb.cj ], [ 0, %bb.cm ], [ %i.gg, %_ZN11CStringBaseIwED2Ev.exit166 ], [ -2147024809, %bb.bn ]
  %i.ig = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZN11CStringBaseIwED2Ev.exit173, label %bb.cn

bb.cn:                                            ; preds = %.thread178
  call void @_ZdaPv(ptr noundef nonnull %i.ig) #16
  br label %_ZN11CStringBaseIwED2Ev.exit173

_ZN11CStringBaseIwED2Ev.exit173:                  ; preds = %.thread178, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.cr

bb.co:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit167, %_ZN5CPropD2Ev.exit172, %bb.bo, %.body, %bb.aj, %_ZN11CStringBaseIwED2Ev.exit152, %_ZN11CStringBaseIwED2Ev.exit151
  %.pn132.pn = phi { ptr, i32 } [ %.pn132, %_ZN11CStringBaseIwED2Ev.exit152 ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit151 ], [ %i.cq, %bb.aj ], [ %i.gp, %bb.bo ], [ %.pn128, %.body ], [ %.pn124, %_ZN11CStringBaseIwED2Ev.exit167 ], [ %.pn119, %_ZN5CPropD2Ev.exit172 ] ; 2 uses
  %i.ii = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZN11CStringBaseIwED2Ev.exit174, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.ii) #16
  br label %_ZN11CStringBaseIwED2Ev.exit174

_ZN11CStringBaseIwED2Ev.exit174:                  ; preds = %bb.cp, %bb.co, %bb.w
  %.pn132.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.w ], [ %.pn132.pn, %bb.co ], [ %.pn132.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit174, %bb.v
  %.pn132.pn.pn.pn = phi { ptr, i32 } [ %.pn132.pn.pn, %_ZN11CStringBaseIwED2Ev.exit174 ], [ %i.br, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ct

bb.cr:                                            ; preds = %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke, %bb.j, %_ZN11CStringBaseIwE6DeleteEii.exit145.thread, %bb.i, %_ZN11CStringBaseIwE9MakeUpperEv.exit, %_ZN11CStringBaseIwED2Ev.exit173
  %.13 = phi i32 [ %.12, %_ZN11CStringBaseIwED2Ev.exit173 ], [ -2147024809, %_ZN11CStringBaseIwE9MakeUpperEv.exit ], [ %i.ba, %_ZN11CStringBaseIwE6DeleteEii.exit148.invoke ], [ %i.aj, %bb.i ], [ -2147024809, %_ZN11CStringBaseIwE6DeleteEii.exit145.thread ], [ %i.al, %bb.j ]
  %i.ik = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %_ZN11CStringBaseIwED2Ev.exit175, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZdaPv(ptr noundef nonnull %i.ik) #16
  br label %_ZN11CStringBaseIwED2Ev.exit175

_ZN11CStringBaseIwED2Ev.exit175:                  ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.13

bb.ct:                                            ; preds = %bb.cq, %bb.d
  %.pn139 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn132.pn.pn.pn, %bb.cq ]
  %i.im = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %_ZN11CStringBaseIwED2Ev.exit176, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZdaPv(ptr noundef nonnull %i.im) #16
  br label %_ZN11CStringBaseIwED2Ev.exit176

_ZN11CStringBaseIwED2Ev.exit176:                  ; preds = %bb.ct, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn139
}

declare noundef i32 @_Z14ParsePropValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_Z11ParseMtPropRK11CStringBaseIwERK14tagPROPVARIANTjRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_Z15SetBoolPropertyRbRK14tagPROPVARIANT(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive14COneMethodInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !guid !172 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %0, align 8, !tbaa !92
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI5CPropED2Ev.exit unwind label %bb.c, !inline_history !108

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18, !inline_history !108
  unreachable

_ZN13CObjectVectorI5CPropED2Ev.exit:              ; preds = %_ZN11CStringBaseIwED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17, !inline_history !108
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 15) i32 @_ZN8NArchiveL15FindPropIdStartERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !174 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.k
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @_ZN8NArchiveL14g_NameToPropIDE, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %wcslen.i.i = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c)
  %i.d = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = icmp slt i32 %i.d, -1
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !66
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.k, %bb.c ] ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !66 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.m, ptr %.04.i.i, align 4, !tbaa !66
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %bb.d, !llvm.loop !0

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef %i.d)
          to label %_ZNK11CStringBaseIwE4LeftEi.exit unwind label %bb.g

_ZNK11CStringBaseIwE4LeftEi.exit:                 ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !55
  %i.p = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.sroa.0.0, ptr noundef %i.o)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit unwind label %bb.h

_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit:   ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %.not = icmp eq i32 %i.p, 0
  %i.q = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.q) #16
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.s = icmp eq ptr %.sroa.0.0, null
  br i1 %i.s, label %_ZN11CStringBaseIwED2Ev.exit16, label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZN11CStringBaseIwED2Ev.exit16

_ZN11CStringBaseIwED2Ev.exit16:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.f
  br i1 %.not, label %.split.loop.exit37, label %bb.k

bb.g:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit17

bb.h:                                             ; preds = %_ZNK11CStringBaseIwE4LeftEi.exit
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN11CStringBaseIwED2Ev.exit17, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.v) #16
  br label %_ZN11CStringBaseIwED2Ev.exit17

_ZN11CStringBaseIwED2Ev.exit17:                   ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.x = icmp eq ptr %.sroa.0.0, null
  br i1 %i.x, label %_ZN11CStringBaseIwED2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit17
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #16
  br label %_ZN11CStringBaseIwED2Ev.exit18

_ZN11CStringBaseIwED2Ev.exit18:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit17, %bb.j
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %.split.loop.exit, label %bb.b, !llvm.loop !173

.split.loop.exit37:                               ; preds = %_ZN11CStringBaseIwED2Ev.exit16
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.k, %.split.loop.exit37
  %i.z = phi i32 [ %i.y, %.split.loop.exit37 ], [ -1, %bb.k ]
  ret i32 %i.z
}

declare noundef i32 @_Z24ParsePropDictionaryValueRK11CStringBaseIwERK14tagPROPVARIANTRj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !guid !175 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERK14tagPROPVARIANT(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEh(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !178 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !64   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = icmp slt i32 %i.e, -1
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #15
          to label %.noexc unwind label %bb.f     ; 5 uses

.noexc:                                           ; preds = %bb.b
  %i.m = load i32, ptr %i.c, align 4, !tbaa !67
  %i.n = icmp sgt i32 %i.m, 0
  %.pre4.i = load i32, ptr %i.b, align 8, !tbaa !64 ; 5 uses
  br i1 %i.n, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %.noexc
  %i.o = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !55 ; 4 uses
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <4 x i32>, ptr %i.p, align 4, !tbaa !66
  %wide.load3 = load <4 x i32>, ptr %i.q, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !tbaa !66
  store <4 x i32> %wide.load3, ptr %i.s, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.u = icmp eq ptr %.pre.i.i, null
  br i1 %i.u, label %bb.c, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i
end_hunk_1
