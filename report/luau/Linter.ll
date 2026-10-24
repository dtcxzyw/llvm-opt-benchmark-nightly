Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Linter?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1090
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4Luau16LintFormatString15matchStringCallENS_7AstNameEPNS_7AstExprENS_8AstArrayIS3_EE:bb.a
  %i.bx = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprConstantBoolEE5valueE, align 4, !tbaa !30
  %i.by = icmp ne i32 %i.bw, %i.bx
  %.not92151 = icmp eq ptr %i.bu, null
  %.not92 = or i1 %.not92151, %i.by
  br i1 %.not92, label %_ZNK4Luau7AstNameeqEPKc.exit125.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !396, !range !93, !noundef !94
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZNK4Luau7AstNameeqEPKc.exit125.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %3, align 8, !tbaa !303   ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !308
  %i.cf = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !30
  %i.cg = icmp ne i32 %i.ce, %i.cf
  %.not93152 = icmp eq ptr %i.cc, null
  %.not93 = or i1 %.not93152, %i.cg
  br i1 %.not93, label %_ZNK4Luau7AstNameeqEPKc.exit125.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !369
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !370
  %i.cl = tail call noundef ptr @_ZN4Luau16LintFormatString16checkStringMatchEPKcmPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ci, i64 noundef %i.ck, ptr noundef null) ; 2 uses
  %.not94 = icmp eq ptr %i.cl, null
  br i1 %.not94, label %_ZNK4Luau7AstNameeqEPKc.exit125.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !191
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  tail call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, i32 noundef 18, ptr noundef nonnull align 4 dereferenceable(16) %i.co, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.cl)
  br label %_ZNK4Luau7AstNameeqEPKc.exit125.thread

_ZNK4Luau7AstNameeqEPKc.exit125:                  ; preds = %_ZNK4Luau7AstNameeqEPKc.exit121
  %i.cp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.126) #31
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp ugt i64 %4, 1
  %or.cond18 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond18, label %bb.s, label %_ZNK4Luau7AstNameeqEPKc.exit125.thread

bb.s:                                             ; preds = %_ZNK4Luau7AstNameeqEPKc.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -1, ptr %i.a, align 4, !tbaa !30
  %i.cs = load ptr, ptr %3, align 8, !tbaa !303   ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !308
  %i.cv = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !30
  %i.cw = icmp ne i32 %i.cu, %i.cv
  %.not149 = icmp eq ptr %i.cs, null
  %.not = or i1 %.not149, %i.cw
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !369
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !370
  %i.db = call noundef ptr @_ZN4Luau16LintFormatString16checkStringMatchEPKcmPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cy, i64 noundef %i.da, ptr noundef nonnull %i.a) ; 2 uses
  %.not89 = icmp eq ptr %i.db, null
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !191
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  call void (ptr, i32, ptr, ptr, ...) @_ZN4LuauL11emitWarningERNS_11LintContextENS_11LintWarning4CodeERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(112) %i.dd, i32 noundef 18, ptr noundef nonnull align 4 dereferenceable(16) %i.de, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.db)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !303 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !308
  %i.dj = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !30
  %i.dk = icmp ne i32 %i.di, %i.dj
  %.not90150 = icmp eq ptr %i.dg, null
  %.not90 = or i1 %.not90150, %i.dk
  br i1 %.not90, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !370
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !30
  %i.dq = call noundef ptr @_ZN4Luau16LintFormatString18checkStringReplaceEPKcmi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.dm, i64 noundef %i.do, i32 noundef %i.dp) ; 2 uses
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
  %.04764 = phi i64 [ %i.ao, %bb.n ], [ 0, %bb.a ] ; 3 uses
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
  %3 = sext i8 %i.j to i32
  %4 = add nsw i32 %3, -48
  %i.o = icmp ult i32 %4, 10
  %i.p = zext i1 %i.o to i64
  %spec.select = add nuw i64 %.162, %i.p
  br label %.critedge56

.critedge56:                                      ; preds = %bb.b, %.critedge
  %.2 = phi i64 [ %spec.select, %.critedge ], [ %i.d, %bb.b ] ; 4 uses
  %i.q = icmp ult i64 %.2, %2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !59
  %5 = sext i8 %i.s to i32
  %6 = add nsw i32 %5, -48
  %i.t = icmp ult i32 %6, 10
  %i.u = zext i1 %i.t to i64
  %spec.select57 = add nuw i64 %.2, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge56
  %.3 = phi i64 [ %.2, %.critedge56 ], [ %spec.select57, %bb.e ] ; 6 uses
  %i.v = icmp ult i64 %.3, %2
  br i1 %i.v, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %.3, 1                       ; 4 uses
  %i.aa = icmp ult i64 %i.z, %2
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !59
  %7 = sext i8 %i.ac to i32
  %8 = add nsw i32 %7, -48
  %i.ad = icmp ult i32 %8, 10
  %i.ae = add nuw i64 %.3, 2
  %spec.select58 = select i1 %i.ad, i64 %i.ae, i64 %i.z
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4 = phi i64 [ %i.z, %bb.h ], [ %spec.select58, %bb.i ] ; 4 uses
  %i.af = icmp ult i64 %.4, %2
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !59
  %9 = sext i8 %i.ah to i32
  %10 = add nsw i32 %9, -48
  %i.ai = icmp ult i32 %10, 10
  %i.aj = zext i1 %i.ai to i64
  %spec.select59 = add nuw i64 %.4, %i.aj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %.5 = phi i64 [ %.3, %bb.f ], [ %spec.select59, %bb.k ], [ %.4, %bb.j ], [ %.3, %bb.g ] ; 3 uses
  %i.ak = icmp eq i64 %.5, %2
  br i1 %i.ak, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !59
  %i.an = sext i8 %i.am to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.129, i32 %i.an, i64 16)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph65, %bb.m, %bb.c
  %.6 = phi i64 [ %i.d, %bb.c ], [ %.5, %bb.m ], [ %.04764, %.lr.ph65 ]
  %i.ao = add i64 %.6, 1                          ; 2 uses
  %.not55 = icmp ult i64 %i.ao, %2
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
  %i.a = add i64 %2, -1
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.k
  %.06396 = phi i64 [ %i.ai, %bb.k ], [ 0, %.lr.ph97.preheader ] ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.06396
  %i.c = load i8, ptr %i.b, align 1, !tbaa !59    ; 5 uses
  %i.d = sext i8 %i.c to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.132, i32 %i.d, i64 25)
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %.thread83, label %bb.b

bb.b:                                             ; preds = %.lr.ph97
  switch i8 %i.c, label %.thread [
    i8 99, label %bb.c
    i8 88, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %.06396, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %.thread83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !tbaa !59
  %4 = sext i8 %i.h to i32
  %5 = add nsw i32 %4, -48
  %i.i = icmp ult i32 %5, 10
  br i1 %i.i, label %.thread, label %.thread83

bb.e:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.06396, 1                   ; 2 uses
  %i.k = icmp eq i64 %i.j, %2
  br i1 %i.k, label %.thread83, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !tbaa !59
  %i.n = sext i8 %i.m to i32
  %memchr76 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.133, i32 %i.n, i64 8)
  %.not77 = icmp eq ptr %memchr76, null
  br i1 %.not77, label %.thread, label %.thread83

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  switch i8 %i.c, label %bb.h [
    i8 122, label %.thread83
    i8 115, label %.thread83
  ]

bb.h:                                             ; preds = %bb.g, %.thread
  %i.o = add i8 %i.c, -33                         ; 2 uses
  %i.p = tail call i8 @llvm.fshl.i8(i8 %i.o, i8 %i.o, i8 7)
  switch i8 %i.p, label %bb.k [
    i8 0, label %bb.i
    i8 36, label %bb.i
    i8 20, label %bb.i
    i8 33, label %bb.i
    i8 41, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.q = add nuw i64 %.06396, 1                   ; 4 uses
  %i.r = icmp ult i64 %i.q, %2
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !59
  %6 = sext i8 %i.t to i32
  %7 = add nsw i32 %6, -48
  %i.u = icmp ult i32 %7, 10
  br i1 %i.u, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.v = icmp eq i8 %i.c, 99
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.x = load i8, ptr %i.w, align 1, !tbaa !59
  %8 = sext i8 %i.x to i32
  %9 = add nsw i32 %8, -48                        ; 2 uses
  %i.y = icmp ult i32 %9, 10
  br i1 %i.y, label %.lr.ph137, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph137
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !59
  %10 = sext i8 %i.aa to i32
  %11 = add nsw i32 %10, -48                      ; 2 uses
  %i.ab = icmp ult i32 %11, 10                    ; 2 uses
  %i.ac = icmp samesign ult i32 %i.af, 214748364
  %or.cond4 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond4, label %.lr.ph137, label %.critedge, !llvm.loop !661

.lr.ph137:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %12 = phi i32 [ %11, %.lr.ph ], [ %9, %.lr.ph.preheader ]
  %.092136 = phi i32 [ %i.af, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ad = phi i64 [ %i.ag, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %i.ae = mul nuw nsw i32 %.092136, 10
  %i.af = add nuw nsw i32 %12, %i.ae              ; 4 uses
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  %exitcond.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !661

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %.092.lcssa = phi i32 [ 0, %.lr.ph.preheader ], [ %i.af, %.lr.ph ]
  %.16491.lcssa = phi i64 [ %.06396, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %.lcssa = phi i1 [ false, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  br i1 %.lcssa, label %.thread83, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph137, %.critedge
  %.16490 = phi i64 [ %.16491.lcssa, %.critedge ], [ %i.a, %.lr.ph137 ]
  %.088 = phi i32 [ %.092.lcssa, %.critedge ], [ %i.af, %.lr.ph137 ]
  %i.ah = add nsw i32 %.088, -1
  %or.cond = icmp ult i32 %i.ah, 16
  %or.cond80.not = select i1 %i.v, i1 true, i1 %or.cond
  br i1 %or.cond80.not, label %bb.k, label %.thread83

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.loopexit
  %.2 = phi i64 [ %.16490, %.loopexit ], [ %.06396, %bb.j ], [ %.06396, %bb.i ], [ %.06396, %bb.h ]
  %i.ai = add nuw i64 %.2, 1                      ; 2 uses
  %.not78 = icmp ult i64 %i.ai, %2
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
  %.0102219 = phi i64 [ %i.cc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 11 uses
  %.0157218 = phi i32 [ %.1158, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %bb.a ] ; 12 uses
  %.sroa.19.0217 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 30 uses
  %.sroa.11.0216 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 16 uses
  %.sroa.0144.0215 = phi ptr [ %.sroa.0144.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %bb.a ] ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.0102219 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !59
  switch i8 %i.b, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit [
    i8 37, label %bb.b
    i8 91, label %bb.o
    i8 40, label %bb.af
    i8 41, label %bb.al
  ]

bb.b:                                             ; preds = %.lr.ph220
  %i.c = add nuw i64 %.0102219, 1                 ; 7 uses
  %i.d = icmp eq i64 %i.c, %2
  br i1 %i.d, label %.thread172, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1, !tbaa !59    ; 4 uses
  %4 = sext i8 %i.f to i32                        ; 2 uses
  %5 = add nsw i32 %4, -48                        ; 3 uses
  %i.g = icmp ult i32 %5, 10
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i8 %i.f, 48
  br i1 %i.h, label %.thread172, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp sgt i32 %5, %.0157218
  br i1 %i.i, label %.thread172, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not178211 = icmp eq ptr %.sroa.0144.0215, %.sroa.11.0216
  br i1 %.not178211, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph213

bb.f:                                             ; preds = %.lr.ph213
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0137.0212, i64 4 ; 2 uses
  %.not178 = icmp eq ptr %i.j, %.sroa.11.0216
  br i1 %.not178, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader, %bb.f
  %.sroa.0137.0212 = phi ptr [ %i.j, %bb.f ], [ %.sroa.0144.0215, %.preheader ] ; 2 uses
  %i.k = load i32, ptr %.sroa.0137.0212, align 4, !tbaa !30
  %.not126 = icmp eq i32 %i.k, %5
  br i1 %.not126, label %.thread172, label %bb.f

bb.g:                                             ; preds = %bb.c
  %i.l = or i8 %i.f, 32
  %6 = sext i8 %i.l to i32                        ; 2 uses
  %7 = add nsw i32 %6, -97
  %i.m = icmp ult i32 %7, 26
  br i1 %i.m, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  switch i8 %i.f, label %bb.m [
    i8 98, label %bb.i
    i8 102, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.n = add i64 %.0102219, 3                     ; 2 uses
  %.not125 = icmp ult i64 %i.n, %2
  br i1 %.not125, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.thread172

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.ai
  %lpad.loopexit.split-lp304 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0144.0215, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0215, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.j
  resume { ptr, i32 } %lpad.loopexit.split-lp304

bb.k:                                             ; preds = %bb.h
  %i.o = add i64 %.0102219, 2                     ; 2 uses
  %.not123 = icmp ult i64 %i.o, %2
  br i1 %.not123, label %bb.l, label %.thread172

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !59
  %.not124 = icmp eq i8 %i.q, 91
  br i1 %.not124, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.thread172

bb.m:                                             ; preds = %bb.h
  %memchr121 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.141, i32 %6, i64 12)
  %.not122 = icmp eq ptr %memchr121, null
  br i1 %.not122, label %.thread172, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.g
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.140, i32 %4, i64 14)
  %.not120 = icmp eq ptr %memchr, null
  br i1 %.not120, label %.thread172, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %.lr.ph220
  %i.r = add nuw i64 %.0102219, 1                 ; 4 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !59
  %i.v = icmp eq i8 %i.u, 94
  %i.w = add nuw i64 %.0102219, 2
  %spec.select = select i1 %i.v, i64 %i.w, i64 %i.r
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i64 [ %i.r, %bb.o ], [ %spec.select, %bb.p ] ; 4 uses
  %i.x = icmp ult i64 %.0, %2
  br i1 %i.x, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.z = load i8, ptr %i.y, align 1, !tbaa !59
  %i.aa = icmp eq i8 %i.z, 93
  %i.ab = zext i1 %i.aa to i64
  %spec.select129 = add nuw i64 %.0, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i64 [ %.0, %bb.q ], [ %spec.select129, %bb.r ] ; 3 uses
  %i.ac = icmp ult i64 %.1, %2
  br i1 %i.ac, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.2208 = phi i64 [ %i.ai, %bb.t ], [ %.1, %bb.s ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.2208
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !59  ; 2 uses
  %.not = icmp eq i8 %i.ae, 93
  br i1 %.not, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.2208, 1                   ; 2 uses
  %i.ag = icmp ult i64 %i.af, %2
  %i.ah = icmp eq i8 %i.ae, 37
  %or.cond = and i1 %i.ag, %i.ah
  %.3 = select i1 %or.cond, i64 %i.af, i64 %.2208
  %i.ai = add i64 %.3, 1                          ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %2
  br i1 %i.aj, label %.lr.ph, label %.critedge, !llvm.loop !663

.critedge:                                        ; preds = %.lr.ph, %bb.t, %bb.s
  %.2.lcssa = phi i64 [ %.1, %bb.s ], [ %i.ai, %bb.t ], [ %.2208, %.lr.ph ] ; 4 uses
  %i.ak = icmp eq i64 %.2.lcssa, %2
  br i1 %i.ak, label %.thread172, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.am = xor i64 %.0102219, -1
  %i.an = add i64 %.2.lcssa, %i.am                ; 5 uses
  %.not53.i = icmp eq i64 %i.an, 0
  br i1 %.not53.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.ae
  %.02940.i = phi i64 [ %i.bh, %bb.ae ], [ 0, %bb.u ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.02940.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !59
  switch i8 %i.ap, label %bb.ae [
    i8 37, label %bb.v
    i8 45, label %bb.ac
  ]

bb.v:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw i64 %.02940.i, 1                ; 4 uses
  %i.ar = icmp eq i64 %i.aq, %i.an
  br i1 %i.ar, label %.thread172, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59  ; 2 uses
  %8 = sext i8 %i.at to i32                       ; 2 uses
  %9 = add nsw i32 %8, -48
  %i.au = icmp ult i32 %9, 10
  br i1 %i.au, label %.thread172, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = or i8 %i.at, 32
  %10 = sext i8 %i.av to i32                      ; 2 uses
  %11 = add nsw i32 %10, -97
  %i.aw = icmp ult i32 %11, 26
  br i1 %i.aw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %memchr177 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.141, i32 %10, i64 12)
  %.not37.i = icmp eq ptr %memchr177, null
  br i1 %.not37.i, label %.thread172, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %memchr176 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.140, i32 %8, i64 14)
  %.not.i = icmp eq ptr %memchr176, null
  br i1 %.not.i, label %.thread172, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ax = add i64 %.02940.i, 2                    ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.an
  br i1 %i.ay, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !59
  %i.bb = icmp eq i8 %i.ba, 45
  br i1 %i.bb, label %.thread172, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bc = add nuw i64 %.02940.i, 1                ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.an
  br i1 %i.bd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !59
  %i.bg = icmp eq i8 %i.bf, 37
  br i1 %i.bg, label %.thread172, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.1.i = phi i64 [ %i.aq, %bb.ab ], [ %i.aq, %bb.aa ], [ %.02940.i, %bb.ad ], [ %.02940.i, %bb.ac ], [ %.02940.i, %.lr.ph.i ]
  %i.bh = add i64 %.1.i, 1                        ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.an
  br i1 %i.bi, label %.lr.ph.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, !llvm.loop !664

bb.af:                                            ; preds = %.lr.ph220
  %i.bj = add nsw i32 %.0157218, 1                ; 4 uses
  %.not.i132 = icmp eq ptr %.sroa.11.0216, %.sroa.19.0217
  br i1 %.not.i132, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.bj, ptr %.sroa.11.0216, align 4, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.11.0216, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ah:                                            ; preds = %bb.af
  %i.bl = ptrtoint ptr %.sroa.19.0217 to i64
  %i.bm = ptrtoint ptr %.sroa.0144.0215 to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 7 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775804
  br i1 %i.bo, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.bp = ashr exact i64 %i.bn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 2305843009213693951)
  %i.bt = select i1 %i.br, i64 2305843009213693951, i64 %i.bs ; 3 uses
  %.not.i.i.i133 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i133)
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #28
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store i32 %i.bj, ptr %i.bw, align 4, !tbaa !30
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.aj:                                            ; preds = %.noexc134
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %.sroa.0144.0215, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.aj, %.noexc134
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0144.0215, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0215, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.al:                                            ; preds = %.lr.ph220
  %i.ca = icmp eq ptr %.sroa.0144.0215, %.sroa.11.0216
  br i1 %i.ca, label %.thread172, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr inbounds i8, ptr %.sroa.11.0216, i64 -4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.ae, %bb.f, %.preheader, %bb.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ag, %.lr.ph220, %bb.i, %bb.l, %bb.m, %bb.n, %bb.am
  %.sroa.0144.1 = phi ptr [ %.sroa.0144.0215, %.lr.ph220 ], [ %.sroa.0144.0215, %bb.ag ], [ %.sroa.0144.0215, %bb.m ], [ %.sroa.0144.0215, %bb.i ], [ %.sroa.0144.0215, %bb.l ], [ %.sroa.0144.0215, %bb.n ], [ %.sroa.0144.0215, %bb.u ], [ %.sroa.0144.0215, %bb.am ], [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0144.0215, %.preheader ], [ %.sroa.0144.0215, %bb.f ], [ %.sroa.0144.0215, %bb.ae ] ; 4 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0216, %.lr.ph220 ], [ %i.bk, %bb.ag ], [ %.sroa.11.0216, %bb.m ], [ %.sroa.11.0216, %bb.i ], [ %.sroa.11.0216, %bb.l ], [ %.sroa.11.0216, %bb.n ], [ %.sroa.11.0216, %bb.u ], [ %i.cb, %bb.am ], [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.0216, %.preheader ], [ %.sroa.11.0216, %bb.f ], [ %.sroa.11.0216, %bb.ae ] ; 2 uses
  %.sroa.19.1 = phi ptr [ %.sroa.19.0217, %.lr.ph220 ], [ %.sroa.19.0217, %bb.ag ], [ %.sroa.19.0217, %bb.m ], [ %.sroa.19.0217, %bb.i ], [ %.sroa.19.0217, %bb.l ], [ %.sroa.19.0217, %bb.n ], [ %.sroa.19.0217, %bb.u ], [ %.sroa.19.0217, %bb.am ], [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0217, %.preheader ], [ %.sroa.19.0217, %bb.f ], [ %.sroa.19.0217, %bb.ae ] ; 3 uses
  %.1158 = phi i32 [ %.0157218, %.lr.ph220 ], [ %i.bj, %bb.ag ], [ %.0157218, %bb.m ], [ %.0157218, %bb.i ], [ %.0157218, %bb.l ], [ %.0157218, %bb.n ], [ %.0157218, %bb.u ], [ %.0157218, %bb.am ], [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.0157218, %.preheader ], [ %.0157218, %bb.f ], [ %.0157218, %bb.ae ] ; 2 uses
  %.2104 = phi i64 [ %.0102219, %.lr.ph220 ], [ %.0102219, %bb.ag ], [ %i.c, %bb.m ], [ %i.n, %bb.i ], [ %i.c, %bb.l ], [ %i.c, %bb.n ], [ %.2.lcssa, %bb.u ], [ %.0102219, %bb.am ], [ %.0102219, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.c, %.preheader ], [ %i.c, %bb.f ], [ %.2.lcssa, %bb.ae ]
  %i.cc = add i64 %.2104, 1                       ; 2 uses
  %.not127 = icmp ult i64 %i.cc, %2
  br i1 %.not127, label %.lr.ph220, label %.thread174, !llvm.loop !665

.thread174:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cd = icmp eq ptr %.sroa.0144.1, %.sroa.11.1
  br i1 %i.cd, label %.thread174.thread, label %.thread172

.thread174.thread:                                ; preds = %bb.a, %.thread174
  %.0157.lcssa267 = phi i32 [ %.1158, %.thread174 ], [ 0, %bb.a ]
  %.sroa.19.0.lcssa266 = phi ptr [ %.sroa.19.1, %.thread174 ], [ null, %bb.a ] ; 2 uses
  %.sroa.0144.0.lcssa265 = phi ptr [ %.sroa.0144.1, %.thread174 ], [ null, %bb.a ] ; 2 uses
  %.not128 = icmp eq ptr %3, null
  br i1 %.not128, label %.thread172, label %bb.an

bb.an:                                            ; preds = %.thread174.thread
  store i32 %.0157.lcssa267, ptr %3, align 4, !tbaa !30
  br label %.thread172

.thread172:                                       ; preds = %.critedge, %bb.e, %bb.b, %bb.d, %bb.i, %bb.l, %bb.k, %bb.m, %bb.n, %bb.al, %bb.v, %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.z, %.lr.ph213, %.thread174.thread, %bb.an, %.thread174
  %.sroa.0144.0207 = phi ptr [ %.sroa.0144.1, %.thread174 ], [ %.sroa.0144.0215, %bb.v ], [ %.sroa.0144.0.lcssa265, %bb.an ], [ %.sroa.0144.0.lcssa265, %.thread174.thread ], [ %.sroa.0144.0215, %.lr.ph213 ], [ %.sroa.0144.0215, %bb.z ], [ %.sroa.0144.0215, %bb.w ], [ %.sroa.0144.0215, %bb.y ], [ %.sroa.0144.0215, %bb.ab ], [ %.sroa.0144.0215, %bb.ad ], [ %.sroa.0144.0215, %bb.al ], [ %.sroa.0144.0215, %bb.n ], [ %.sroa.0144.0215, %bb.m ], [ %.sroa.0144.0215, %bb.k ], [ %.sroa.0144.0215, %bb.l ], [ %.sroa.0144.0215, %bb.i ], [ %.sroa.0144.0215, %bb.d ], [ %.sroa.0144.0215, %bb.b ], [ %.sroa.0144.0215, %bb.e ], [ %.sroa.0144.0215, %.critedge ] ; 3 uses
  %.sroa.19.0195 = phi ptr [ %.sroa.19.1, %.thread174 ], [ %.sroa.19.0217, %bb.v ], [ %.sroa.19.0.lcssa266, %bb.an ], [ %.sroa.19.0.lcssa266, %.thread174.thread ], [ %.sroa.19.0217, %.lr.ph213 ], [ %.sroa.19.0217, %bb.z ], [ %.sroa.19.0217, %bb.w ], [ %.sroa.19.0217, %bb.y ], [ %.sroa.19.0217, %bb.ab ], [ %.sroa.19.0217, %bb.ad ], [ %.sroa.19.0217, %bb.al ], [ %.sroa.19.0217, %bb.n ], [ %.sroa.19.0217, %bb.m ], [ %.sroa.19.0217, %bb.k ], [ %.sroa.19.0217, %bb.l ], [ %.sroa.19.0217, %bb.i ], [ %.sroa.19.0217, %bb.d ], [ %.sroa.19.0217, %bb.b ], [ %.sroa.19.0217, %bb.e ], [ %.sroa.19.0217, %.critedge ]
  %.9 = phi ptr [ @.str.152, %.thread174 ], [ @.str.142, %bb.v ], [ null, %bb.an ], [ null, %.thread174.thread ], [ @.str.145, %.lr.ph213 ], [ @.str.154, %bb.ad ], [ @.str.154, %bb.ab ], [ @.str.148, %bb.y ], [ @.str.153, %bb.w ], [ @.str.149, %bb.z ], [ @.str.147, %bb.k ], [ @.str.148, %bb.m ], [ @.str.149, %bb.n ], [ @.str.151, %bb.al ], [ @.str.144, %bb.e ], [ @.str.142, %bb.b ], [ @.str.143, %bb.d ], [ @.str.146, %bb.i ], [ @.str.150, %.critedge ], [ @.str.147, %bb.l ]
  %.not.i.i.i135 = icmp eq ptr %.sroa.0144.0207, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIiSaIiEED2Ev.exit136, label %bb.ao

bb.ao:                                            ; preds = %.thread172
  %i.ce = ptrtoint ptr %.sroa.19.0195 to i64
  %i.cf = ptrtoint ptr %.sroa.0144.0207 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.0207, i64 noundef %i.cg) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit136

_ZNSt6vectorIiSaIiEED2Ev.exit136:                 ; preds = %.thread172, %bb.ao
  ret ptr %.9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau16LintFormatString18checkStringReplaceEPKcmi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %.not42 = icmp eq i64 %2, 0
  br i1 %.not42, label %.thread27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp sgt i32 %3, -1
  br i1 %i.a, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.thread.us
  %.02031.us = phi i64 [ %i.j, %.thread.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.02031.us
  %i.c = load i8, ptr %i.b, align 1, !tbaa !59
  %i.d = icmp eq i8 %i.c, 37
  br i1 %i.d, label %bb.b, label %.thread.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = add nuw i64 %.02031.us, 1                ; 3 uses
  %i.f = icmp eq i64 %i.e, %2
  br i1 %i.f, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !tbaa !59    ; 2 uses
  %.not.us = icmp eq i8 %i.h, 37
  %4 = sext i8 %i.h to i32
  %5 = add nsw i32 %4, -48
  %i.i = icmp ult i32 %5, 10
  %or.cond = select i1 %.not.us, i1 true, i1 %i.i
  br i1 %or.cond, label %.thread.us, label %.thread27

.thread.us:                                       ; preds = %bb.c, %.lr.ph.split.us
  %.1.us = phi i64 [ %i.e, %bb.c ], [ %.02031.us, %.lr.ph.split.us ]
  %i.j = add i64 %.1.us, 1                        ; 2 uses
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %.lr.ph.split.us, label %.thread27, !llvm.loop !666

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread
  %.02031 = phi i64 [ %i.u, %.thread ], [ 0, %.lr.ph ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.02031
  %i.m = load i8, ptr %i.l, align 1, !tbaa !59
  %i.n = icmp eq i8 %i.m, 37
  br i1 %i.n, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split
  %i.o = add nuw i64 %.02031, 1                   ; 4 uses
  %i.p = icmp eq i64 %i.o, %2
  br i1 %i.p, label %.thread27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !tbaa !59    ; 2 uses
  %.not = icmp eq i8 %i.r, 37
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %6 = sext i8 %i.r to i32
  %7 = add nsw i32 %6, -48                        ; 2 uses
  %i.s = icmp ult i32 %7, 10
  br i1 %i.s, label %bb.g, label %.thread27

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %7, %3
  br i1 %i.t, label %.thread27, label %.thread

.thread:                                          ; preds = %bb.e, %.lr.ph.split, %bb.g
  %.1 = phi i64 [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %.02031, %.lr.ph.split ]
  %i.u = add i64 %.1, 1                           ; 2 uses
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %.lr.ph.split, label %.thread27, !llvm.loop !666

.thread27:                                        ; preds = %bb.c, %.thread.us, %bb.b, %.thread, %bb.f, %bb.d, %bb.g, %bb.a
  %i.w = phi ptr [ @.str.156, %bb.f ], [ null, %bb.a ], [ @.str.157, %bb.g ], [ @.str.155, %bb.d ], [ null, %.thread ], [ @.str.156, %bb.c ], [ null, %.thread.us ], [ @.str.155, %bb.b ]
  ret ptr %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau16LintTableLiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau16LintTableLiteral5visitEPNS_12AstExprTableE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Luau::DenseHashMap.404", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !673  ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !674  ; 2 uses
  %.idx = mul i64 %i.e, 24                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %._crit_edge131.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add i64 %.idx, -24                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 192
  br i1 %min.iters.check, label %.lr.ph.preheader193, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.h = udiv i64 %i.g, 24
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = and i64 %i.i, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub nsw i64 %i.i, %i.l                 ; 2 uses
  %i.m = mul i64 %n.vec, 24
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.o = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep170 = getelementptr i8, ptr %i.p, i64 24
  %i.q = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep171 = getelementptr i8, ptr %i.q, i64 48
  %i.r = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep172 = getelementptr i8, ptr %i.r, i64 72
  %i.s = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep173 = getelementptr i8, ptr %i.s, i64 96
  %i.t = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep174 = getelementptr i8, ptr %i.t, i64 120
  %i.u = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep175 = getelementptr i8, ptr %i.u, i64 144
  %i.v = getelementptr i8, ptr %i.c, i64 %i.o
  %next.gep176 = getelementptr i8, ptr %i.v, i64 168
  %i.w = load i32, ptr %next.gep, align 8, !tbaa !401
  %i.x = load i32, ptr %next.gep170, align 8, !tbaa !401
  %i.y = load i32, ptr %next.gep171, align 8, !tbaa !401
  %i.z = load i32, ptr %next.gep172, align 8, !tbaa !401
  %i.aa = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 2
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 3
  %i.ae = load i32, ptr %next.gep173, align 8, !tbaa !401
  %i.af = load i32, ptr %next.gep174, align 8, !tbaa !401
  %i.ag = load i32, ptr %next.gep175, align 8, !tbaa !401
  %i.ah = load i32, ptr %next.gep176, align 8, !tbaa !401
  %i.ai = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = icmp eq <4 x i32> %i.ad, zeroinitializer
  %i.an = icmp eq <4 x i32> %i.al, zeroinitializer
  %i.ao = zext <4 x i1> %i.am to <4 x i32>
  %i.ap = zext <4 x i1> %i.an to <4 x i32>
  %i.aq = add <4 x i32> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <4 x i32> %vec.phi169, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.preheader193

.lr.ph.preheader193:                              ; preds = %.lr.ph.preheader, %middle.block
  %.055122.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.056121.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

._crit_edge131.thread:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader193, %.lr.ph
  %.055122 = phi ptr [ %i.ax, %.lr.ph ], [ %.055122.ph, %.lr.ph.preheader193 ] ; 2 uses
  %.056121 = phi i32 [ %spec.select, %.lr.ph ], [ %.056121.ph, %.lr.ph.preheader193 ]
  %i.au = load i32, ptr %.055122, align 8, !tbaa !401
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %spec.select = add nuw nsw i32 %.056121, %i.aw  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.055122, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.f
  br i1 %.not, label %.lr.ph130, label %.lr.ph, !llvm.loop !668

.lr.ph130:                                        ; preds = %.lr.ph
  %i.ay = uitofp nneg i32 %spec.select to double
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.d

._crit_edge131:                                   ; preds = %bb.ai
  %.not.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %._crit_edge131
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #25
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split: ; preds = %bb.b, %._crit_edge131
  %.pr = load ptr, ptr %2, align 8, !tbaa !406
  br label %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit

_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split, %._crit_edge131.thread
  %i.bc = phi ptr [ %.pr, %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exitthread-pre-split ], [ null, %._crit_edge131.thread ] ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i80, label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #25
  br label %_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_8AstArrayIcEEiNS_16LintTableLiteral17AstArrayPredicateES5_ED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIiiSt4hashIiESt8equal_toIiEED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 true

bb.d:                                             ; preds = %.lr.ph130, %bb.ai
  %.0128 = phi ptr [ %i.c, %.lr.ph130 ], [ %i.fp, %bb.ai ] ; 2 uses
  %.sroa.17.0127 = phi i64 [ 0, %.lr.ph130 ], [ %.sroa.17.1, %bb.ai ] ; 11 uses
  %.sroa.0.0126 = phi ptr [ null, %.lr.ph130 ], [ %.sroa.0.2, %bb.ai ] ; 17 uses
  %.sroa.11.0124 = phi i64 [ 0, %.lr.ph130 ], [ %.sroa.11.1, %bb.ai ] ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0128, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !407 ; 10 uses
  %.not66 = icmp eq ptr %i.be, null
  br i1 %.not66, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !308 ; 2 uses
  %i.bh = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !30
  %.not111 = icmp eq i32 %i.bg, %i.bh
  br i1 %.not111, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !408
  %i.bj = load i64, ptr %i.ba, align 8, !tbaa !409
  %i.bk = load i64, ptr %i.bb, align 8, !tbaa !410
  %i.bl = mul i64 %i.bk, 3
  %i.bm = lshr i64 %i.bl, 2
  %.not.i.i81 = icmp ult i64 %i.bj, %i.bm
  br i1 %.not.i.i81, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E4findERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  %.not2.i.i = icmp eq ptr %i.bn, null
  br i1 %.not2.i.i, label %bb.h, label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i

bb.h:                                             ; preds = %.noexc
  invoke void @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i unwind label %bb.k

_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E14rehash_if_fullERS7_.exit.i: ; preds = %bb.h, %.noexc, %bb.f
  %i.bo = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableIPNS_8AstArrayIcEESt4pairIS4_iES5_IKS4_iENS0_16ItemInterfaceMapIS4_iEENS_16LintTableLiteral17AstArrayPredicateESC_E13insert_unsafeERS7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.k
end_hunk_0
