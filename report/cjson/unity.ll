Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/unity?download=true
inline.NumInlined: 73
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@UnityAssertEqualIntArray:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.05463, i64 %i.bp
  %i.br = add i32 %i.aq, -1
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %.loopexit, label %UnityIsOneArrayNull.exit.preheader.split

.loopexit:                                        ; preds = %UnityIsOneArrayNull.exit, %UnityIsOneArrayNull.exit.us.jt8, %UnityIsOneArrayNull.exit.us.jt2, %UnityIsOneArrayNull.exit.us.jt1, %UnityIsOneArrayNull.exit.us.jt4, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualFloatArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %UnityIsOneArrayNull.exit.preheader

UnityIsOneArrayNull.exit.preheader:               ; preds = %bb.f
  %i.i = icmp eq i32 %5, 1
  %spec.select.idx = select i1 %i.i, i64 4, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.j = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.j, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.l = tail call i32 @putc(i32 noundef 58, ptr noundef %i.k) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.h:                                             ; preds = %UnityIsOneArrayNull.exit.preheader, %UnityFloatsWithin.exit.thread
  %.046 = phi ptr [ %1, %UnityIsOneArrayNull.exit.preheader ], [ %i.am, %UnityFloatsWithin.exit.thread ] ; 3 uses
  %.02545 = phi ptr [ %0, %UnityIsOneArrayNull.exit.preheader ], [ %spec.select, %UnityFloatsWithin.exit.thread ] ; 3 uses
  %.02644 = phi i32 [ %2, %UnityIsOneArrayNull.exit.preheader ], [ %i.m, %UnityFloatsWithin.exit.thread ] ; 2 uses
  %i.m = add i32 %.02644, -1                      ; 2 uses
  %i.n = load float, ptr %.02545, align 4, !tbaa !30 ; 7 uses
  %i.o = fmul float %i.n, f0x3727C5AC
  %i.p = load float, ptr %.046, align 4, !tbaa !30 ; 6 uses
  %i.q = fsub float %i.n, %i.n
  %i.r = fcmp ord float %i.q, 0.000000e+00
  %i.s = fcmp uno float %i.n, 0.000000e+00        ; 2 uses
  %i.t = fsub float %i.p, %i.p
  %i.u = fcmp ord float %i.t, 0.000000e+00
  %i.v = or i1 %i.r, %i.u
  %i.w = fcmp uno float %i.p, 0.000000e+00        ; 2 uses
  %i.x = fcmp uno float %i.p, %i.n
  %or.cond41.i = or i1 %i.x, %i.v
  br i1 %or.cond41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp olt float %i.n, 0.000000e+00
  %i.z = fcmp uge float %i.p, 0.000000e+00
  %i.aa = xor i1 %i.y, %i.z
  %or.cond42.i = and i1 %i.s, %i.w
  %or.cond45.i = or i1 %i.aa, %or.cond42.i
  br i1 %or.cond45.i, label %UnityFloatsWithin.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %or.cond42.old.i = and i1 %i.s, %i.w
  br i1 %or.cond42.old.i, label %UnityFloatsWithin.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = fsub float %i.p, %i.n                   ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fneg float %i.ab
  %.0.i32 = select i1 %i.ac, float %i.ad, float %i.ab ; 4 uses
  %i.ae = fsub float %.0.i32, %.0.i32
  %or.cond44.i = fcmp uno float %.0.i32, %i.ae
  %.035.i = tail call float @llvm.fabs.f32(float %i.o)
  %i.af = fcmp ogt float %.0.i32, %.035.i
  %or.cond40 = or i1 %i.af, %or.cond44.i
  br i1 %or.cond40, label %UnityFloatsWithin.exit.thread37, label %UnityFloatsWithin.exit.thread

UnityFloatsWithin.exit.thread37:                  ; preds = %bb.k
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.ag = sub i32 %2, %.02644
  %i.ah = zext i32 %i.ag to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.ah)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ai = load float, ptr %.02545, align 4, !tbaa !30
  %i.aj = fpext float %i.ai to double
  tail call void @UnityPrintFloat(double noundef %i.aj)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.ak = load float, ptr %.046, align 4, !tbaa !30
  %i.al = fpext float %i.ak to double
  tail call void @UnityPrintFloat(double noundef %i.al)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityFloatsWithin.exit.thread:                    ; preds = %bb.k, %bb.j, %bb.i
  %spec.select = getelementptr inbounds nuw i8, ptr %.02545, i64 %spec.select.idx
  %i.am = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %UnityFloatsWithin.exit.thread, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertFloatsWithin(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %UnityFloatsWithin.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fsub float %1, %1
  %i.f = fcmp ord float %i.e, 0.000000e+00
  %i.g = fcmp uno float %1, 0.000000e+00          ; 2 uses
  %i.h = fsub float %2, %2
  %i.i = fcmp ord float %i.h, 0.000000e+00
  %i.j = or i1 %i.f, %i.i
  %i.k = fcmp uno float %2, 0.000000e+00          ; 2 uses
  %i.l = fcmp uno float %2, %1
  %or.cond41.i = or i1 %i.l, %i.j
  br i1 %or.cond41.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fcmp olt float %1, 0.000000e+00
  %i.n = fcmp uge float %2, 0.000000e+00
  %i.o = xor i1 %i.m, %i.n
  %or.cond42.i = and i1 %i.g, %i.k
  %or.cond45.i = or i1 %i.o, %or.cond42.i
  br i1 %or.cond45.i, label %UnityFloatsWithin.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond42.old.i = and i1 %i.g, %i.k
  br i1 %or.cond42.old.i, label %UnityFloatsWithin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = fsub float %2, %1                        ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fneg float %i.p
  %.0.i = select i1 %i.q, float %i.r, float %i.p  ; 4 uses
  %i.s = fsub float %.0.i, %.0.i
  %or.cond44.i = fcmp uno float %.0.i, %i.s
  %.035.i = tail call float @llvm.fabs.f32(float %0)
  %i.t = fcmp ogt float %.0.i, %.035.i
  %or.cond12 = or i1 %i.t, %or.cond44.i
  br i1 %or.cond12, label %UnityFloatsWithin.exit.thread9, label %UnityFloatsWithin.exit.thread

UnityFloatsWithin.exit.thread9:                   ; preds = %bb.e
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.u = fpext float %1 to double
  tail call void @UnityPrintFloat(double noundef %i.u)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.v = fpext float %2 to double
  tail call void @UnityPrintFloat(double noundef %i.v)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityFloatsWithin.exit.thread:                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertFloatSpecial(float noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.d = icmp ne i64 %i.c, 0
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.f = icmp ne i64 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %.thread [
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.d
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 7, label %bb.f
    i32 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = fsub float %0, %0
  %i.h = fcmp uno float %i.g, 0.000000e+00
  %i.i = fcmp ogt float %0, 0.000000e+00
  %narrow47 = and i1 %i.i, %i.h
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.j = fsub float %0, %0
  %i.k = fcmp uno float %i.j, 0.000000e+00
  %i.l = fcmp olt float %0, 0.000000e+00
  %narrow44 = and i1 %i.l, %i.k
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.m = fcmp uno float %0, 0.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.n = fsub float %0, %0
  %narrow = fcmp ord float %i.n, %0
  br label %bb.g

.thread:                                          ; preds = %bb.b
  store ptr @UnityStrInvalidFloatTrait, ptr %i.a, align 16, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.035.in = phi i1 [ %narrow, %bb.f ], [ %narrow47, %bb.c ], [ %narrow44, %bb.d ], [ %i.m, %bb.e ]
  %.0.shrunk = phi i64 [ 3, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %i.o = trunc i32 %3 to i1
  %i.p = xor i1 %.035.in, %i.o
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread, %bb.g
  %.0.shrunk43 = phi i64 [ 0, %.thread ], [ %.0.shrunk, %bb.g ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %2)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.shrunk43
  %i.q = load ptr, ptr %4, align 8, !tbaa !32
  tail call void @UnityPrint(ptr noundef %i.q)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.r = fpext float %0 to double
  tail call void @UnityPrintFloat(double noundef %i.r)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %1)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualDoubleArray(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrPointless)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.g, label %UnityIsOneArrayNull.exit.preheader

UnityIsOneArrayNull.exit.preheader:               ; preds = %bb.f
  %i.i = icmp eq i32 %5, 1
  %spec.select.idx = select i1 %i.i, i64 8, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %UnityStrNullPointerForActual.sink.i = phi ptr [ @UnityStrNullPointerForExpected, %bb.e ], [ @UnityStrNullPointerForActual, %bb.f ]
  %i.j = load ptr, ptr @Unity, align 8, !tbaa !20
  tail call fastcc void @UnityTestResultsBegin(ptr noundef %i.j, i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrFail)
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.l = tail call i32 @putc(i32 noundef 58, ptr noundef %i.k) ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %UnityStrNullPointerForActual.sink.i)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef readonly %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.h:                                             ; preds = %UnityIsOneArrayNull.exit.preheader, %UnityDoublesWithin.exit.thread
  %.046 = phi ptr [ %1, %UnityIsOneArrayNull.exit.preheader ], [ %i.ak, %UnityDoublesWithin.exit.thread ] ; 3 uses
  %.02545 = phi ptr [ %0, %UnityIsOneArrayNull.exit.preheader ], [ %spec.select, %UnityDoublesWithin.exit.thread ] ; 3 uses
  %.02644 = phi i32 [ %2, %UnityIsOneArrayNull.exit.preheader ], [ %i.m, %UnityDoublesWithin.exit.thread ] ; 2 uses
  %i.m = add i32 %.02644, -1                      ; 2 uses
  %i.n = load double, ptr %.02545, align 8, !tbaa !33 ; 7 uses
  %i.o = fmul double %i.n, f0x3D719799812DEA11
  %i.p = load double, ptr %.046, align 8, !tbaa !33 ; 6 uses
  %i.q = fsub double %i.n, %i.n
  %i.r = fcmp ord double %i.q, 0.000000e+00
  %i.s = fcmp uno double %i.n, 0.000000e+00       ; 2 uses
  %i.t = fsub double %i.p, %i.p
  %i.u = fcmp ord double %i.t, 0.000000e+00
  %i.v = or i1 %i.r, %i.u
  %i.w = fcmp uno double %i.p, 0.000000e+00       ; 2 uses
  %i.x = fcmp uno double %i.p, %i.n
  %or.cond41.i = or i1 %i.x, %i.v
  br i1 %or.cond41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = fcmp olt double %i.n, 0.000000e+00
  %i.z = fcmp uge double %i.p, 0.000000e+00
  %i.aa = xor i1 %i.y, %i.z
  %or.cond42.i = and i1 %i.s, %i.w
  %or.cond45.i = or i1 %i.aa, %or.cond42.i
  br i1 %or.cond45.i, label %UnityDoublesWithin.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.h
  %or.cond42.old.i = and i1 %i.s, %i.w
  br i1 %or.cond42.old.i, label %UnityDoublesWithin.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = fsub double %i.p, %i.n                  ; 3 uses
  %i.ac = fcmp olt double %i.ab, 0.000000e+00
  %i.ad = fneg double %i.ab
  %.0.i32 = select i1 %i.ac, double %i.ad, double %i.ab ; 4 uses
  %i.ae = fsub double %.0.i32, %.0.i32
  %or.cond44.i = fcmp uno double %.0.i32, %i.ae
  %.035.i = tail call double @llvm.fabs.f64(double %i.o)
  %i.af = fcmp ogt double %.0.i32, %.035.i
  %or.cond40 = or i1 %i.af, %or.cond44.i
  br i1 %or.cond40, label %UnityDoublesWithin.exit.thread37, label %UnityDoublesWithin.exit.thread

UnityDoublesWithin.exit.thread37:                 ; preds = %bb.k
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrElement)
  %i.ag = sub i32 %2, %.02644
  %i.ah = zext i32 %i.ag to i64
  tail call void @UnityPrintNumberUnsigned(i64 noundef %i.ah)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %i.ai = load double, ptr %.02545, align 8, !tbaa !33
  tail call void @UnityPrintFloat(double noundef %i.ai)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %i.aj = load double, ptr %.046, align 8, !tbaa !33
  tail call void @UnityPrintFloat(double noundef %i.aj)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityDoublesWithin.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.i
  %spec.select = getelementptr inbounds nuw i8, ptr %.02545, i64 %spec.select.idx
  %i.ak = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %UnityDoublesWithin.exit.thread, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertDoublesWithin(double noundef %0, double noundef %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %UnityDoublesWithin.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double %1, %1
  %i.f = fcmp ord double %i.e, 0.000000e+00
  %i.g = fcmp uno double %1, 0.000000e+00         ; 2 uses
  %i.h = fsub double %2, %2
  %i.i = fcmp ord double %i.h, 0.000000e+00
  %i.j = or i1 %i.f, %i.i
  %i.k = fcmp uno double %2, 0.000000e+00         ; 2 uses
  %i.l = fcmp uno double %2, %1
  %or.cond41.i = or i1 %i.l, %i.j
  br i1 %or.cond41.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fcmp olt double %1, 0.000000e+00
  %i.n = fcmp uge double %2, 0.000000e+00
  %i.o = xor i1 %i.m, %i.n
  %or.cond42.i = and i1 %i.g, %i.k
  %or.cond45.i = or i1 %i.o, %or.cond42.i
  br i1 %or.cond45.i, label %UnityDoublesWithin.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %or.cond42.old.i = and i1 %i.g, %i.k
  br i1 %or.cond42.old.i, label %UnityDoublesWithin.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = fsub double %2, %1                       ; 3 uses
  %i.q = fcmp olt double %i.p, 0.000000e+00
  %i.r = fneg double %i.p
  %.0.i = select i1 %i.q, double %i.r, double %i.p ; 4 uses
  %i.s = fsub double %.0.i, %.0.i
  %or.cond44.i = fcmp uno double %.0.i, %i.s
  %.035.i = tail call double @llvm.fabs.f64(double %0)
  %i.t = fcmp ogt double %.0.i, %.035.i
  %or.cond12 = or i1 %i.t, %or.cond44.i
  br i1 %or.cond12, label %UnityDoublesWithin.exit.thread9, label %UnityDoublesWithin.exit.thread

UnityDoublesWithin.exit.thread9:                  ; preds = %bb.e
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintFloat(double noundef %1)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintFloat(double noundef %2)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

UnityDoublesWithin.exit.thread:                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertDoubleSpecial(double noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.UnityAssertDoubleSpecial.trait_names, i64 32, i1 false)
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.d = icmp ne i64 %i.c, 0
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.f = icmp ne i64 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %.thread [
    i32 1, label %bb.c
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.d
    i32 5, label %bb.e
    i32 4, label %bb.e
    i32 7, label %bb.f
    i32 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = fsub double %0, %0
  %i.h = fcmp uno double %i.g, 0.000000e+00
  %i.i = fcmp ogt double %0, 0.000000e+00
  %narrow47 = and i1 %i.i, %i.h
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.j = fsub double %0, %0
  %i.k = fcmp uno double %i.j, 0.000000e+00
  %i.l = fcmp olt double %0, 0.000000e+00
  %narrow44 = and i1 %i.l, %i.k
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.m = fcmp uno double %0, 0.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.n = fsub double %0, %0
  %narrow = fcmp ord double %i.n, %0
  br label %bb.g

.thread:                                          ; preds = %bb.b
  store ptr @UnityStrInvalidFloatTrait, ptr %i.a, align 16, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.035.in = phi i1 [ %narrow, %bb.f ], [ %narrow47, %bb.c ], [ %narrow44, %bb.d ], [ %i.m, %bb.e ]
  %.0.shrunk = phi i64 [ 3, %bb.f ], [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  %i.o = trunc i32 %3 to i1
  %i.p = xor i1 %.035.in, %i.o
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.thread, %bb.g
  %.0.shrunk43 = phi i64 [ 0, %.thread ], [ %.0.shrunk, %bb.g ]
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %2)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNot)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0.shrunk43
  %i.q = load ptr, ptr %4, align 8, !tbaa !32
  tail call void @UnityPrint(ptr noundef %i.q)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintFloat(double noundef %0)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %1)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertNumbersWithin(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %5, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %2, %1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = sub nsw i64 %2, %1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.h = sub nsw i64 %1, %2
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %2, %1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sub nuw nsw i64 %2, %1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.k = sub nuw nsw i64 %1, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e
  %.sink = phi i64 [ %i.j, %bb.g ], [ %i.k, %bb.h ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.l = icmp ugt i64 %.sink, %0                  ; 2 uses
  %i.m = zext i1 %i.l to i64
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %4)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrDelta)
  tail call void @UnityPrintNumberByStyle(i64 noundef %0, i32 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  tail call void @UnityPrintNumberByStyle(i64 noundef %1, i32 noundef %5)
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  tail call void @UnityPrintNumberByStyle(i64 noundef %2, i32 noundef %5)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %3)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualString(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.critedge
  %.0 = phi i32 [ %i.l, %.critedge ], [ 0, %bb.b ] ; 2 uses
  %i.g = zext i32 %.0 to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %.not21 = icmp eq i8 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %.not22 = icmp eq i8 %i.k, 0
  %or.cond29 = select i1 %.not21, i1 %.not22, i1 false
  br i1 %or.cond29, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %.preheader
  %.not23 = icmp eq i8 %i.i, %i.k
  %i.l = add i32 %.0, 1
  br i1 %.not23, label %.preheader, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %.critedge, %bb.c
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call fastcc void @UnityTestResultsFailBegin(i64 noundef %3)
  tail call fastcc void @UnityPrintExpectedAndActualStrings(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @UnityAddMsgIfSpecified(ptr noundef %2)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @Unity, i64 80), i32 noundef 1) #10
  unreachable

.loopexit:                                        ; preds = %.preheader, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @UnityPrintExpectedAndActualStrings(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrExpected)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.b = tail call i32 @putc(i32 noundef 39, ptr noundef %i.a), !inline_history !13 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %0)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = tail call i32 @putc(i32 noundef 39, ptr noundef %i.c), !inline_history !13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrWas)
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.f = tail call i32 @putc(i32 noundef 39, ptr noundef %i.e), !inline_history !13 ; 0 uses
  tail call void @UnityPrint(ptr noundef nonnull %1)
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.h = tail call i32 @putc(i32 noundef 39, ptr noundef %i.g), !inline_history !13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @UnityPrint(ptr noundef nonnull @UnityStrNull)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @UnityAssertEqualStringLen(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 64), align 8, !tbaa !19
  %i.b = icmp ne i64 %i.a, 0
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @Unity, i64 72), align 8
  %i.d = icmp ne i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne ptr %0, null
  %i.f = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.critedge5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9     ; 2 uses
  %.not26 = icmp eq i8 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9     ; 2 uses
  %.not27 = icmp eq i8 %i.j, 0
  %or.cond38 = select i1 %.not26, i1 %.not27, i1 false
  br i1 %or.cond38, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %.lr.ph
  %.not28 = icmp eq i8 %i.h, %i.j
  br i1 %.not28, label %bb.c, label %.critedge.thread

end_hunk_0
