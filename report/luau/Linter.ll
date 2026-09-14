Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau16LintFormatString15matchStringCallENS_7AstNameEPNS_7AstExprENS_8AstArrayIS3_EE:bb.a
  %.not91 = icmp eq ptr %i.dq, null
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !191
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.ds, i32 noundef 18, ptr noundef nonnull align 4 dereferenceable(16) %i.dt, ptr noundef nonnull @.str.127, ptr noundef nonnull %i.dq)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNK4Luau7AstNameeqEPKc.exit125.thread

_ZNK4Luau7AstNameeqEPKc.exit125.thread:           ; preds = %bb.a, %bb.n, %bb.o, %bb.q, %bb.r, %bb.p, %bb.k, %bb.m, %bb.l, %bb.h, %bb.j, %bb.i, %bb.e, %bb.f, %_ZNK4Luau7AstNameeqEPKc.exit111, %bb.b, %bb.d, %bb.c, %_ZNK4Luau7AstNameeqEPKc.exit125, %bb.y
  ret void
}

declare noundef zeroext i1 @_ZN4Luau8isStringEPKNS_4TypeE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString15checkDateFormatEPKcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not2324.not = icmp eq i64 %2, 0
  br i1 %.not2324.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.c, %bb.e
  %.137 = phi i64 [ %.1, %bb.e ], [ %i.e, %bb.c ]
  %i.a = add i64 %.137, 1                         ; 2 uses
  %.not23 = icmp ult i64 %i.a, %2
  br i1 %.not23, label %.lr.ph, label %._crit_edge, !llvm.loop !658

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.01625 = phi i64 [ %i.a, %.thread ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01625
  %i.c = load i8, ptr %i.b, align 1, !tbaa !59    ; 2 uses
  %i.d = icmp eq i8 %i.c, 37
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nuw i64 %.01625, 1                   ; 4 uses
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !tbaa !59    ; 3 uses
  %.not = icmp eq i8 %i.h, 37
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i8 %i.h to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.158, i32 %i.i, i64 23)
  %.not22 = icmp eq ptr %memchr, null
  br i1 %.not22, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.j = phi i8 [ %i.h, %bb.d ], [ %i.c, %.lr.ph ]
  %.1 = phi i64 [ %i.e, %bb.d ], [ %.01625, %.lr.ph ]
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %.thread, %bb.b, %bb.d, %bb.e, %bb.a
  %spec.select = phi ptr [ null, %bb.a ], [ @.str.155, %bb.b ], [ @.str.160, %bb.e ], [ @.str.159, %bb.d ], [ null, %.thread ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString17checkStringFormatEPKcm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not5563.not = icmp eq i64 %2, 0
  br i1 %.not5563.not, label %._crit_edge, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.a, %bb.n
  %.04764 = phi i64 [ %i.aw, %bb.n ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.04764
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59
  %i.c = icmp eq i8 %i.b, 37
  br i1 %i.c, label %bb.b, label %bb.n

bb.b:                                             ; preds = %.lr.ph65
  %i.d = add nuw i64 %.04764, 1                   ; 5 uses
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %bb.c, label %.critedge56

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !59
  %i.h = icmp eq i8 %i.g, 37
  br i1 %i.h, label %bb.n, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.162 = phi i64 [ %i.n, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.162
  %i.j = load i8, ptr %i.i, align 1, !tbaa !59    ; 3 uses
  %i.k = zext nneg i8 %i.j to i64
  %memchr.bounds = icmp ugt i8 %i.j, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.l, 325494096527361
  %memchr.bits = icmp eq i64 %i.m, 0
  %memchr54.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr54.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.n = add i64 %.162, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !659

.critedge:                                        ; preds = %.lr.ph
  %i.o = sext i8 %i.j to i32
  %i.p = add nsw i32 %i.o, -48
  %i.q = icmp ult i32 %i.p, 10
  %i.r = zext i1 %i.q to i64
  %spec.select = add nuw i64 %.162, %i.r
  br label %.critedge56

.critedge56:                                      ; preds = %bb.b, %.critedge
  %.2 = phi i64 [ %spec.select, %.critedge ], [ %i.d, %bb.b ] ; 4 uses
  %i.s = icmp ult i64 %.2, %2
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !59
  %i.v = sext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48
  %i.x = icmp ult i32 %i.w, 10
  %i.y = zext i1 %i.x to i64
  %spec.select57 = add nuw i64 %.2, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge56
  %.3 = phi i64 [ %.2, %.critedge56 ], [ %spec.select57, %bb.e ] ; 6 uses
  %i.z = icmp ult i64 %.3, %2
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !59
  %i.ac = icmp eq i8 %i.ab, 46
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = add nuw i64 %.3, 1                      ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !59
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48
  %i.aj = icmp ult i32 %i.ai, 10
  %i.ak = add nuw i64 %.3, 2
  %spec.select58 = select i1 %i.aj, i64 %i.ak, i64 %i.ad
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4 = phi i64 [ %i.ad, %bb.h ], [ %spec.select58, %bb.i ] ; 4 uses
  %i.al = icmp ult i64 %.4, %2
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !59
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48
  %i.aq = icmp ult i32 %i.ap, 10
  %i.ar = zext i1 %i.aq to i64
  %spec.select59 = add nuw i64 %.4, %i.ar
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %.5 = phi i64 [ %.3, %bb.f ], [ %spec.select59, %bb.k ], [ %.4, %bb.j ], [ %.3, %bb.g ] ; 3 uses
  %i.as = icmp eq i64 %.5, %2
  br i1 %i.as, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %.5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !59
  %i.av = sext i8 %i.au to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.129, i32 %i.av, i64 16)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph65, %bb.m, %bb.c
  %.6 = phi i64 [ %i.d, %bb.c ], [ %.5, %bb.m ], [ %.04764, %.lr.ph65 ]
  %i.aw = add i64 %.6, 1                          ; 2 uses
  %.not55 = icmp ult i64 %i.aw, %2
  br i1 %.not55, label %.lr.ph65, label %._crit_edge, !llvm.loop !660

._crit_edge:                                      ; preds = %bb.n, %bb.l, %bb.m, %bb.d, %bb.a
  %spec.select60 = phi ptr [ null, %bb.a ], [ @.str.130, %bb.d ], [ @.str.130, %bb.l ], [ @.str.131, %bb.m ], [ null, %bb.n ]
  ret ptr %spec.select60
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString15checkStringPackEPKcmb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not7894.not = icmp eq i64 %2, 0
  br i1 %.not7894.not, label %.thread83, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %bb.a
  %4 = add i64 %2, -1
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.k
  %.06396 = phi i64 [ %i.aj, %bb.k ], [ 0, %.lr.ph97.preheader ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.06396
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59    ; 5 uses
  %i.c = sext i8 %i.b to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.132, i32 %i.c, i64 25)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %.thread83, label %bb.b

bb.b:                                             ; preds = %.lr.ph97
  switch i8 %i.b, label %.thread [
    i8 99, label %bb.c
    i8 88, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %.06396, 1                   ; 2 uses
  %i.e = icmp eq i64 %i.d, %2
  br i1 %i.e, label %.thread83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !59
  %i.h = sext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -48
  %i.j = icmp ult i32 %i.i, 10
  br i1 %i.j, label %.thread, label %.thread83

bb.e:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.06396, 1                   ; 2 uses
  %i.l = icmp eq i64 %i.k, %2
  br i1 %i.l, label %.thread83, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !59
  %i.o = sext i8 %i.n to i32
  %memchr76 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.133, i32 %i.o, i64 8)
  %.not77 = icmp eq ptr %memchr76, null
  br i1 %.not77, label %.thread, label %.thread83

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  switch i8 %i.b, label %bb.h [
    i8 122, label %.thread83
    i8 115, label %.thread83
  ]

bb.h:                                             ; preds = %bb.g, %.thread
  %i.p = add i8 %i.b, -33                         ; 2 uses
  %i.q = tail call i8 @llvm.fshl.i8(i8 %i.p, i8 %i.p, i8 7)
  switch i8 %i.q, label %bb.k [
    i8 0, label %bb.i
    i8 36, label %bb.i
    i8 20, label %bb.i
    i8 33, label %bb.i
    i8 41, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.r = add nuw i64 %.06396, 1                   ; 4 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !59
  %i.v = sext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.y = icmp eq i8 %i.b, 99
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %6 = load i8, ptr %5, align 1, !tbaa !59
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %7, -48                        ; 2 uses
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %.lr.ph137, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph137
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !59
  %i.ab = sext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10                  ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ag, 214748364
  %or.cond4 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond4, label %.lr.ph137, label %.critedge, !llvm.loop !661

.lr.ph137:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %10 = phi i32 [ %i.ac, %.lr.ph ], [ %8, %.lr.ph.preheader ]
  %.092136 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %11 = phi i64 [ %i.ah, %.lr.ph ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.af = mul nuw nsw i32 %.092136, 10
  %i.ag = add nuw nsw i32 %10, %i.af              ; 4 uses
  %i.ah = add i64 %11, 1                          ; 3 uses
  %exitcond.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !661

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.092.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ag, %.lr.ph ]
  %.16491.lcssa = phi i64 [ %.06396, %.lr.ph.preheader ], [ %11, %.lr.ph ]
  %.lcssa = phi i1 [ false, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  br i1 %.lcssa, label %.thread83, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph137, %.critedge
  %.16490.a = phi i64 [ %.16491.lcssa, %.critedge ], [ %4, %.lr.ph137 ]
  %.088 = phi i32 [ %.092.lcssa, %.critedge ], [ %i.ag, %.lr.ph137 ]
  %i.ai = add nsw i32 %.088, -1
  %or.cond = icmp ult i32 %i.ai, 16
  %or.cond80.not = select i1 %i.y, i1 true, i1 %or.cond
  br i1 %or.cond80.not, label %bb.k, label %.thread83

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.loopexit
  %.2 = phi i64 [ %.16490.a, %.loopexit ], [ %.06396, %bb.j ], [ %.06396, %bb.i ], [ %.06396, %bb.h ]
  %i.aj = add nuw i64 %.2, 1                      ; 2 uses
  %.not78 = icmp ult i64 %i.aj, %2
  br i1 %.not78, label %.lr.ph97, label %.thread83, !llvm.loop !662

.thread83:                                        ; preds = %.loopexit, %bb.k, %.lr.ph97, %bb.d, %bb.c, %bb.f, %bb.e, %bb.g, %bb.g, %.critedge, %bb.a
  %spec.select = phi ptr [ null, %bb.a ], [ @.str.135, %bb.d ], [ @.str.136, %bb.f ], [ @.str.137, %bb.g ], [ null, %bb.k ], [ @.str.134, %.lr.ph97 ], [ @.str.135, %bb.c ], [ @.str.136, %bb.e ], [ @.str.138, %.critedge ], [ @.str.137, %bb.g ], [ @.str.139, %.loopexit ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString16checkStringMatchEPKcmPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not127214.not = icmp eq i64 %2, 0
  br i1 %.not127214.not, label %.thread174.thread, label %.lr.ph220

.lr.ph220:                                        ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.0102219 = phi i64 [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 11 uses
  %.0157218 = phi i32 [ %.1158, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 12 uses
  %.sroa.19.0217 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 30 uses
  %.sroa.11.0216 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 16 uses
  %.sroa.0144.0215 = phi ptr [ %.sroa.0144.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.0102219 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59
  switch i8 %i.b, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit [
    i8 37, label %bb.b
    i8 91, label %bb.p
    i8 40, label %bb.ag
    i8 41, label %bb.am
  ]

bb.b:                                             ; preds = %.lr.ph220
  %i.c = add nuw i64 %.0102219, 1                 ; 7 uses
  %i.d = icmp eq i64 %i.c, %2
  br i1 %i.d, label %.thread172, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59    ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = add nsw i32 %i.g, -48                    ; 3 uses
  %i.i = icmp ult i32 %i.h, 10
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i8 %i.f, 48
  br i1 %i.j, label %.thread172, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.h, %.0157218
  br i1 %i.k, label %.thread172, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not178211 = icmp eq ptr %.sroa.0144.0215, %.sroa.11.0216
  br i1 %.not178211, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph213

bb.f:                                             ; preds = %.lr.ph213
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0137.0212, i64 4 ; 2 uses
  %.not178 = icmp eq ptr %i.l, %.sroa.11.0216
  br i1 %.not178, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader, %bb.f
  %.sroa.0137.0212 = phi ptr [ %i.l, %bb.f ], [ %.sroa.0144.0215, %.preheader ] ; 2 uses
  %i.m = load i32, ptr %.sroa.0137.0212, align 4, !tbaa !30
  %.not126 = icmp eq i32 %i.m, %i.h
  br i1 %.not126, label %.thread172, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.n = or i8 %i.f, 32
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = add nsw i32 %i.o, -97
  %i.q = icmp ult i32 %i.p, 26
  br i1 %i.q, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  switch i8 %i.f, label %bb.n [
    i8 98, label %bb.i
    i8 102, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = add i64 %.0102219, 3                     ; 2 uses
  %.not125 = icmp ult i64 %i.r, %2
  br i1 %.not125, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.thread172

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %.sroa.0144.0215, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0215, i64 noundef %i.bv) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi

bb.l:                                             ; preds = %bb.h
  %i.s = add i64 %.0102219, 2                     ; 2 uses
  %.not123 = icmp ult i64 %i.s, %2
  br i1 %.not123, label %bb.m, label %.thread172

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !59
  %.not124 = icmp eq i8 %i.u, 91
  br i1 %.not124, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.thread172

bb.n:                                             ; preds = %bb.h
  %memchr121 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.141, i32 %i.o, i64 12)
  %.not122 = icmp eq ptr %memchr121, null
  br i1 %.not122, label %.thread172, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.g
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.140, i32 %i.g, i64 14)
  %.not120 = icmp eq ptr %memchr, null
  br i1 %.not120, label %.thread172, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.p:                                             ; preds = %.lr.ph220
  %i.v = add nuw i64 %.0102219, 1                 ; 4 uses
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !59
  %i.z = icmp eq i8 %i.y, 94
  %i.aa = add nuw i64 %.0102219, 2
  %spec.select = select i1 %i.z, i64 %i.aa, i64 %i.v
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i64 [ %i.v, %bb.p ], [ %spec.select, %bb.q ] ; 4 uses
  %i.ab = icmp ult i64 %.0, %2
  br i1 %i.ab, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !59
  %i.ae = icmp eq i8 %i.ad, 93
  %i.af = zext i1 %i.ae to i64
  %spec.select129 = add nuw i64 %.0, %i.af
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1 = phi i64 [ %.0, %bb.r ], [ %spec.select129, %bb.s ] ; 3 uses
  %i.ag = icmp ult i64 %.1, %2
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.2208 = phi i64 [ %i.am, %bb.u ], [ %.1, %bb.t ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.2208
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !59  ; 2 uses
  %.not = icmp eq i8 %i.ai, 93
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.aj = add nuw i64 %.2208, 1                   ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %2
  %i.al = icmp eq i8 %i.ai, 37
  %or.cond = and i1 %i.ak, %i.al
  %.3 = select i1 %or.cond, i64 %i.aj, i64 %.2208
  %i.am = add i64 %.3, 1                          ; 3 uses
  %i.an = icmp ult i64 %i.am, %2
  br i1 %i.an, label %.lr.ph, label %.critedge, !llvm.loop !663

.critedge:                                        ; preds = %.lr.ph, %bb.u, %bb.t
  %.2.lcssa = phi i64 [ %.1, %bb.t ], [ %i.am, %bb.u ], [ %.2208, %.lr.ph ] ; 4 uses
  %i.ao = icmp eq i64 %.2.lcssa, %2
  br i1 %i.ao, label %.thread172, label %bb.v

bb.v:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.aq = xor i64 %.0102219, -1
  %i.ar = add i64 %.2.lcssa, %i.aq                ; 5 uses
  %.not53.i = icmp eq i64 %i.ar, 0
  br i1 %.not53.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.af
  %.02940.i = phi i64 [ %i.bp, %bb.af ], [ 0, %bb.v ] ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.02940.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59
  switch i8 %i.at, label %bb.af [
    i8 37, label %bb.w
    i8 45, label %bb.ad
  ]

bb.w:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i64 %.02940.i, 1                ; 4 uses
  %i.av = icmp eq i64 %i.au, %i.ar
  br i1 %i.av, label %.thread172, label %bb.x
end_hunk_0
