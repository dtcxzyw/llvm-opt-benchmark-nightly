inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@bitopCommandAVX:bb.a
  %i.jr = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.jp)
  %i.js = and <32 x i8> %i.jr, %i.jq
  store <32 x i8> %i.js, ptr %i.jo, align 1, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %.7272, i64 96 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.2146270, i64 96
  %i.jv = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.jt)
  %i.jw = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr nonnull %i.ju)
  %i.jx = and <32 x i8> %i.jw, %i.jv
  store <32 x i8> %i.jx, ptr %i.jt, align 1, !tbaa !13
  %i.jy = getelementptr inbounds nuw i8, ptr %.7272, i64 128 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.2146270, i64 128 ; 2 uses
  %niter422.next.3 = add i64 %niter422, 4         ; 2 uses
  %niter422.ncmp.3.not = icmp eq i64 %niter422.next.3, %unroll_iter421
  br i1 %niter422.ncmp.3.not, label %.loopexit.loopexit368.unr-lcssa, label %.lr.ph273, !llvm.loop !130

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph281
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %.loopexit, label %.lr.ph281.epil.preheader

.lr.ph281.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph281.preheader
  %.5280.epil.init = phi ptr [ %1, %.lr.ph281.preheader ], [ %i.io, %.loopexit.loopexit.unr-lcssa ]
  %.0144278.epil.init = phi ptr [ %i.a, %.lr.ph281.preheader ], [ %i.ip, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  tail call void @llvm.assume(i1 %lcmp.mod432)
  br label %.lr.ph281.epil

.lr.ph281.epil:                                   ; preds = %.lr.ph281.epil, %.lr.ph281.epil.preheader
  %.5280.epil = phi ptr [ %i.kc, %.lr.ph281.epil ], [ %.5280.epil.init, %.lr.ph281.epil.preheader ] ; 3 uses
  %.0144278.epil = phi ptr [ %i.kd, %.lr.ph281.epil ], [ %.0144278.epil.init, %.lr.ph281.epil.preheader ] ; 2 uses
  %epil.iter430 = phi i64 [ %epil.iter430.next, %.lr.ph281.epil ], [ 0, %.lr.ph281.epil.preheader ]
  %i.ka = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.5280.epil)
  %i.kb = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.0144278.epil)
  %.inner363.epil = xor <32 x i8> %i.ka, splat (i8 -1)
  %.inner364.epil = and <32 x i8> %i.kb, %.inner363.epil
  store <32 x i8> %.inner364.epil, ptr %.5280.epil, align 1, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.5280.epil, i64 32
  %i.kd = getelementptr inbounds nuw i8, ptr %.0144278.epil, i64 32
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %.loopexit, label %.lr.ph281.epil, !llvm.loop !131

.loopexit.loopexit367.unr-lcssa:                  ; preds = %.lr.ph277
  %lcmp.mod425.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod425.not, label %.loopexit, label %.lr.ph277.epil.preheader

.lr.ph277.epil.preheader:                         ; preds = %.loopexit.loopexit367.unr-lcssa, %.lr.ph277.preheader
  %.6276.epil.init = phi ptr [ %1, %.lr.ph277.preheader ], [ %i.je, %.loopexit.loopexit367.unr-lcssa ]
  %.1145274.epil.init = phi ptr [ %i.a, %.lr.ph277.preheader ], [ %i.jf, %.loopexit.loopexit367.unr-lcssa ]
  %lcmp.mod426 = icmp ne i64 %xtraiter423, 0
  tail call void @llvm.assume(i1 %lcmp.mod426)
  br label %.lr.ph277.epil

.lr.ph277.epil:                                   ; preds = %.lr.ph277.epil, %.lr.ph277.epil.preheader
  %.6276.epil = phi ptr [ %i.kg, %.lr.ph277.epil ], [ %.6276.epil.init, %.lr.ph277.epil.preheader ] ; 3 uses
  %.1145274.epil = phi ptr [ %i.kh, %.lr.ph277.epil ], [ %.1145274.epil.init, %.lr.ph277.epil.preheader ] ; 2 uses
  %epil.iter424 = phi i64 [ %epil.iter424.next, %.lr.ph277.epil ], [ 0, %.lr.ph277.epil.preheader ]
  %i.ke = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.6276.epil)
  %i.kf = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.1145274.epil)
  %.inner365.epil = xor <32 x i8> %i.kf, splat (i8 -1)
  %.inner366.epil = and <32 x i8> %i.ke, %.inner365.epil
  store <32 x i8> %.inner366.epil, ptr %.6276.epil, align 1, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.6276.epil, i64 32
  %i.kh = getelementptr inbounds nuw i8, ptr %.1145274.epil, i64 32
  %epil.iter424.next = add i64 %epil.iter424, 1   ; 2 uses
  %epil.iter424.cmp.not = icmp eq i64 %epil.iter424.next, %xtraiter423
  br i1 %epil.iter424.cmp.not, label %.loopexit, label %.lr.ph277.epil, !llvm.loop !132

.loopexit.loopexit368.unr-lcssa:                  ; preds = %.lr.ph273
  %lcmp.mod419.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod419.not, label %.loopexit, label %.lr.ph273.epil.preheader

.lr.ph273.epil.preheader:                         ; preds = %.loopexit.loopexit368.unr-lcssa, %.lr.ph273.preheader
  %.7272.epil.init = phi ptr [ %1, %.lr.ph273.preheader ], [ %i.jy, %.loopexit.loopexit368.unr-lcssa ]
  %.2146270.epil.init = phi ptr [ %i.a, %.lr.ph273.preheader ], [ %i.jz, %.loopexit.loopexit368.unr-lcssa ]
  %lcmp.mod420 = icmp ne i64 %xtraiter417, 0
  tail call void @llvm.assume(i1 %lcmp.mod420)
  br label %.lr.ph273.epil

.lr.ph273.epil:                                   ; preds = %.lr.ph273.epil, %.lr.ph273.epil.preheader
  %.7272.epil = phi ptr [ %i.kl, %.lr.ph273.epil ], [ %.7272.epil.init, %.lr.ph273.epil.preheader ] ; 3 uses
  %.2146270.epil = phi ptr [ %i.km, %.lr.ph273.epil ], [ %.2146270.epil.init, %.lr.ph273.epil.preheader ] ; 2 uses
  %epil.iter418 = phi i64 [ %epil.iter418.next, %.lr.ph273.epil ], [ 0, %.lr.ph273.epil.preheader ]
  %i.ki = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.7272.epil)
  %i.kj = tail call <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr %.2146270.epil)
  %i.kk = and <32 x i8> %i.kj, %i.ki
  store <32 x i8> %i.kk, ptr %.7272.epil, align 1, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.7272.epil, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %.2146270.epil, i64 32
  %epil.iter418.next = add i64 %epil.iter418, 1   ; 2 uses
  %epil.iter418.cmp.not = icmp eq i64 %epil.iter418.next, %xtraiter417
  br i1 %epil.iter418.cmp.not, label %.loopexit, label %.lr.ph273.epil, !llvm.loop !133

.loopexit:                                        ; preds = %.lr.ph231.split, %.lr.ph, %.lr.ph243.split, %.lr.ph266.split, %.loopexit.loopexit368.unr-lcssa, %.lr.ph273.epil, %.loopexit.loopexit367.unr-lcssa, %.lr.ph277.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph281.epil, %.preheader213, %.preheader211, %.preheader, %.loopexit216, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.5143, %.loopexit216 ], [ 0, %.preheader ], [ 0, %.preheader211 ], [ 0, %.preheader213 ], [ %.5143, %.loopexit.loopexit368.unr-lcssa ], [ %i.ew, %.lr.ph266.split ], [ %.5143, %.loopexit.loopexit367.unr-lcssa ], [ %.5143, %.loopexit.loopexit.unr-lcssa ], [ %i.hg, %.lr.ph ], [ %i.gz, %.lr.ph243.split ], [ %.5143, %.lr.ph281.epil ], [ %.5143, %.lr.ph277.epil ], [ %.5143, %.lr.ph273.epil ], [ %i.hl, %.lr.ph231.split ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @bitopCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 5 uses
  %i.j = load i8, ptr %i.g, align 1, !tbaa !13    ; 8 uses
  switch i8 %i.j, label %bb.q [
    i8 97, label %bb.b
    i8 65, label %bb.b
    i8 111, label %bb.d
    i8 79, label %bb.d
    i8 120, label %bb.f
    i8 88, label %bb.f
    i8 110, label %bb.h
    i8 78, label %bb.h
    i8 100, label %bb.j
    i8 68, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.10) #25
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread524, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.j, label %bb.q [
    i8 65, label %bb.n
    i8 79, label %bb.d
    i8 97, label %bb.n
    i8 88, label %bb.f
    i8 68, label %bb.j
    i8 78, label %bb.h
  ]

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c
  %i.l = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.11) #25
  %.not496 = icmp eq i32 %i.l, 0
  br i1 %.not496, label %.thread524, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %bb.q [
    i8 79, label %bb.p
    i8 88, label %bb.f
    i8 110, label %bb.h
    i8 111, label %bb.p
    i8 100, label %bb.j
    i8 97, label %bb.n
  ]

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.e
  %i.m = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.12) #25
  %.not497 = icmp eq i32 %i.m, 0
  br i1 %.not497, label %.thread524, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i8 %i.j, label %bb.q [
    i8 110, label %bb.h
    i8 111, label %bb.p
    i8 100, label %bb.j
    i8 97, label %bb.n
  ]

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.e, %bb.g
  %i.n = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13) #25
  %.not498 = icmp eq i32 %i.n, 0
  br i1 %.not498, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.j, label %bb.q [
    i8 100, label %bb.j
    i8 79, label %bb.p
    i8 97, label %bb.n
  ]

bb.j:                                             ; preds = %bb.c, %bb.a, %bb.a, %bb.e, %bb.g, %bb.i
  %i.o = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.14) #25
  %.not499 = icmp eq i32 %i.o, 0
  br i1 %.not499, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i8 %i.j, label %bb.q [
    i8 100, label %bb.l
    i8 68, label %bb.l
    i8 97, label %bb.n
    i8 79, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.p = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.15) #25
  %.not500 = icmp eq i32 %i.p, 0
  br i1 %.not500, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.j, label %bb.q [
    i8 97, label %bb.n
    i8 79, label %bb.p
  ]

bb.n:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.c, %bb.i, %bb.k, %bb.m
  %i.q = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.16) #25
  %.not501 = icmp eq i32 %i.q, 0
  br i1 %.not501, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %cond = icmp eq i8 %i.j, 79
  br i1 %cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.e, %bb.o
  %i.r = tail call i32 @strcasecmp(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.17) #25
  %.not502 = icmp eq i32 %i.r, 0
  br i1 %.not502, label %.thread524, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.p
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !134
  tail call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.s) #23
  br label %bb.bz

bb.r:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !135
  %.not503 = icmp eq i32 %i.u, 4
  br i1 %.not503, label %.thread524, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #23
  br label %bb.bz

bb.t:                                             ; preds = %bb.j, %bb.l, %bb.n
  %.0436.ph = phi i64 [ 6, %bb.n ], [ 4, %bb.j ], [ 5, %bb.l ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp slt i32 %i.w, 5
  br i1 %i.x, label %bb.u, label %.thread524

bb.u:                                             ; preds = %bb.t
  %i.y = tail call ptr @sdsnew(ptr noundef nonnull %i.g) #23 ; 3 uses
  tail call void @sdstoupper(ptr noundef %i.y) #23
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %i.y) #23
  tail call void @sdsfree(ptr noundef %i.y) #23
  br label %bb.bz

.thread524:                                       ; preds = %bb.f, %bb.d, %bb.b, %bb.p, %bb.r, %bb.t
  %i.z = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ] ; 2 uses
  %or.cond521530 = phi i1 [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  %or.cond5522529 = phi i1 [ false, %bb.t ], [ true, %bb.r ], [ true, %bb.p ], [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.f ]
  %i.aa = phi i1 [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  %i.ab = phi i1 [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.f ]
  %i.ac = phi i1 [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  %i.ad = phi i1 [ false, %bb.t ], [ false, %bb.r ], [ true, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  %.0436523528 = phi i64 [ %.0436.ph, %bb.t ], [ 3, %bb.r ], [ 7, %bb.p ], [ 0, %bb.b ], [ 1, %bb.d ], [ 2, %bb.f ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !135
  %i.ag = add nsw i32 %i.af, -3                   ; 9 uses
  %i.ah = sext i32 %i.ag to i64                   ; 10 uses
  %i.ai = shl nsw i64 %i.ah, 3                    ; 3 uses
  %i.aj = tail call noalias ptr @zmalloc(i64 noundef %i.ai) #26 ; 16 uses
  %i.ak = tail call noalias ptr @zmalloc(i64 noundef %i.ai) #26 ; 7 uses
  %i.al = tail call noalias ptr @zmalloc(i64 noundef %i.ai) #26 ; 8 uses
  %.not710 = icmp eq i32 %i.ag, 0
  br i1 %.not710, label %._crit_edge706, label %.lr.ph

.lr.ph:                                           ; preds = %.thread524
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !105
  %i.ar = tail call ptr @lookupKeyRead(ptr noundef %i.an, ptr noundef %i.aq) #23 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.at = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i32 noundef 0) #23
  %.not512.peel = icmp eq i32 %i.at, 0
  br i1 %.not512.peel, label %bb.w, label %._crit_edge709

bb.w:                                             ; preds = %bb.v
  %i.au = tail call ptr @getDecodedObject(ptr noundef nonnull %i.ar) #23 ; 2 uses
  store ptr %i.au, ptr %i.al, align 8, !tbaa !105
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51 ; 6 uses
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !114
  %i.ax = getelementptr i8, ptr %i.aw, i64 -1
  %.val.i.peel = load i8, ptr %i.ax, align 1, !tbaa !13 ; 2 uses
  %i.ay = and i8 %.val.i.peel, 7
  switch i8 %i.ay, label %sdslen.exit.peel [
    i8 0, label %bb.ab
    i8 1, label %bb.aa
    i8 2, label %bb.z
    i8 3, label %bb.y
    i8 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -17
  %i.ba = load i64, ptr %i.az, align 1, !tbaa !20
  br label %sdslen.exit.peel

bb.y:                                             ; preds = %bb.w
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 -9
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i32 %i.bc to i64
  br label %sdslen.exit.peel

bb.z:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 -5
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !54
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit.peel

bb.aa:                                            ; preds = %bb.w
  %i.bh = getelementptr inbounds i8, ptr %i.aw, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = zext i8 %i.bi to i64
  br label %sdslen.exit.peel

bb.ab:                                            ; preds = %bb.w
  %i.bk = lshr i8 %.val.i.peel, 3
  %i.bl = zext nneg i8 %i.bk to i64
  br label %sdslen.exit.peel

bb.ac:                                            ; preds = %.lr.ph
  store ptr null, ptr %i.al, align 8, !tbaa !105
  store ptr null, ptr %i.aj, align 8, !tbaa !114
  br label %sdslen.exit.peel

sdslen.exit.peel:                                 ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.2471.ph.peel = phi i64 [ 0, %bb.ac ], [ %i.ba, %bb.x ], [ %i.bl, %bb.ab ], [ %i.bj, %bb.aa ], [ %i.bg, %bb.z ], [ %i.bd, %bb.y ], [ 0, %bb.w ] ; 5 uses
  store i64 %.2471.ph.peel, ptr %i.ak, align 8, !tbaa !20
  %exitcond.peel.not = icmp eq i32 %i.ag, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %sdslen.exit.peel, %bb.an
  %.0452595 = phi i64 [ %i.cw, %bb.an ], [ 1, %sdslen.exit.peel ] ; 9 uses
  %.0466594 = phi i64 [ %.2468.ph, %bb.an ], [ %.2471.ph.peel, %sdslen.exit.peel ] ; 2 uses
  %.0469593 = phi i64 [ %.2471.ph, %bb.an ], [ %.2471.ph.peel, %sdslen.exit.peel ]
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %.0452595
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !105
  %i.br = tail call ptr @lookupKeyRead(ptr noundef %i.bm, ptr noundef %i.bq) #23 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.peel.next
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0452595
  store ptr null, ptr %i.bt, align 8, !tbaa !105
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0452595
  store ptr null, ptr %i.bu, align 8, !tbaa !114
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0452595
  store i64 0, ptr %i.bv, align 8, !tbaa !20
  br label %bb.an

bb.ae:                                            ; preds = %.peel.next
  %i.bw = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef 0) #23
  %.not512 = icmp eq i32 %i.bw, 0
  br i1 %.not512, label %bb.ah, label %.lr.ph708

.lr.ph708:                                        ; preds = %bb.ae, %bb.ag
  %.0465707 = phi i64 [ %i.bz, %bb.ag ], [ 0, %bb.ae ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0465707
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !105 ; 2 uses
  %.not513 = icmp eq ptr %i.by, null
  br i1 %.not513, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph708
  tail call void @decrRefCount(ptr noundef nonnull %i.by) #23
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph708, %bb.af
  %i.bz = add nuw i64 %.0465707, 1                ; 2 uses
  %exitcond744.not = icmp eq i64 %i.bz, %.0452595
  br i1 %exitcond744.not, label %._crit_edge709, label %.lr.ph708, !llvm.loop !136

bb.ah:                                            ; preds = %bb.ae
  %i.ca = tail call ptr @getDecodedObject(ptr noundef nonnull %i.br) #23 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0452595
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !105
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0452595
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !114
  %i.cf = getelementptr i8, ptr %i.cd, i64 -1
  %.val.i = load i8, ptr %i.cf, align 1, !tbaa !13 ; 2 uses
  %i.cg = and i8 %.val.i, 7
  switch i8 %i.cg, label %sdslen.exit [
    i8 0, label %bb.ai
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
    i8 4, label %bb.am
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ch = lshr i8 %.val.i, 3
  %i.ci = zext nneg i8 %i.ch to i64
  br label %sdslen.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 -3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i64
  br label %sdslen.exit

bb.ak:                                            ; preds = %bb.ah
  %i.cm = getelementptr inbounds i8, ptr %i.cd, i64 -5
  %i.cn = load i16, ptr %i.cm, align 1, !tbaa !54
end_hunk_0
begin_hunk_1_@bitfieldGeneric:bb.a
  %i.ou = icmp ult i32 %i.nh, 64
  br i1 %i.ou, label %getUnsignedBitfield.exit.thread.i308, label %getSignedBitfield.exit311

getUnsignedBitfield.exit.thread.i308:             ; preds = %getUnsignedBitfield.exit.i306, %bb.br
  %.0.lcssa.i10.i309 = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i306 ], [ 0, %bb.br ] ; 3 uses
  %i.ov = add nsw i64 %i.ni, -1
  %i.ow = shl nuw nsw i64 1, %i.ov
  %i.ox = and i64 %.0.lcssa.i10.i309, %i.ow
  %.not.i310 = icmp eq i64 %i.ox, 0
  br i1 %.not.i310, label %getSignedBitfield.exit311, label %bb.bs

bb.bs:                                            ; preds = %getUnsignedBitfield.exit.thread.i308
  %i.oy = shl nsw i64 -1, %i.ni
  %i.oz = or i64 %.0.lcssa.i10.i309, %i.oy
  br label %getSignedBitfield.exit311

bb.bt:                                            ; preds = %._crit_edge432
  br i1 %.not.i312, label %getSignedBitfield.exit311, label %.lr.ph.i313.preheader

.lr.ph.i313.preheader:                            ; preds = %bb.bt
  %i.pa = load i64, ptr %i.dj, align 8, !tbaa !159
  %i.pb = and i64 %i.nd, -8
  %i.pc = sub i64 %i.pa, %i.pb                    ; 2 uses
  %i.pd = icmp eq i32 %i.nh, 1
  br i1 %i.pd, label %.lr.ph.i313.epil.preheader, label %.lr.ph.i313.preheader.new

.lr.ph.i313.preheader.new:                        ; preds = %.lr.ph.i313.preheader
  %unroll_iter523 = and i64 %i.ni, -2
  br label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %.lr.ph.i313, %.lr.ph.i313.preheader.new
  %.016.i314 = phi i64 [ 0, %.lr.ph.i313.preheader.new ], [ %i.py, %.lr.ph.i313 ]
  %.01314.i316 = phi i64 [ %i.pc, %.lr.ph.i313.preheader.new ], [ %i.pz, %.lr.ph.i313 ] ; 4 uses
  %niter524 = phi i64 [ 0, %.lr.ph.i313.preheader.new ], [ %niter524.next.1, %.lr.ph.i313 ]
  %i.pe = lshr i64 %.01314.i316, 3
  %i.pf = and i64 %.01314.i316, 7
  %i.pg = xor i64 %i.pf, 7
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !13
  %i.pj = zext i8 %i.pi to i64
  %i.pk = lshr i64 %i.pj, %i.pg
  %i.pl = add i64 %.01314.i316, 1                 ; 2 uses
  %i.pm = lshr i64 %i.pl, 3
  %i.pn = and i64 %i.pl, 7
  %i.po = xor i64 %i.pn, 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pm
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !13
  %i.pr = zext i8 %i.pq to i64
  %i.ps = lshr i64 %i.pr, %i.po
  %i.pt = and i64 %i.ps, 1
  %i.pu = shl i64 %.016.i314, 2
  %i.pv = shl nuw nsw i64 %i.pk, 1
  %i.pw = and i64 %i.pv, 2
  %i.px = or disjoint i64 %i.pu, %i.pw
  %i.py = or disjoint i64 %i.pt, %i.px            ; 3 uses
  %i.pz = add i64 %.01314.i316, 2                 ; 2 uses
  %niter524.next.1 = add i64 %niter524, 2         ; 2 uses
  %niter524.ncmp.1 = icmp eq i64 %niter524.next.1, %unroll_iter523
  br i1 %niter524.ncmp.1, label %getSignedBitfield.exit311.loopexit.unr-lcssa, label %.lr.ph.i313, !llvm.loop !49

getSignedBitfield.exit311.loopexit.unr-lcssa:     ; preds = %.lr.ph.i313
  %i.qa = and i32 %i.nh, 1
  %lcmp.mod520.not = icmp eq i32 %i.qa, 0
  br i1 %lcmp.mod520.not, label %getSignedBitfield.exit311, label %.lr.ph.i313.epil.preheader

.lr.ph.i313.epil.preheader:                       ; preds = %getSignedBitfield.exit311.loopexit.unr-lcssa, %.lr.ph.i313.preheader
  %.016.i314.epil.init = phi i64 [ 0, %.lr.ph.i313.preheader ], [ %i.py, %getSignedBitfield.exit311.loopexit.unr-lcssa ]
  %.01314.i316.epil.init = phi i64 [ %i.pc, %.lr.ph.i313.preheader ], [ %i.pz, %getSignedBitfield.exit311.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod522 = trunc i32 %i.nh to i1
  call void @llvm.assume(i1 %lcmp.mod522)
  %i.qb = lshr i64 %.01314.i316.epil.init, 3
  %i.qc = and i64 %.01314.i316.epil.init, 7
  %i.qd = xor i64 %i.qc, 7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.qb
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !13
  %i.qg = zext i8 %i.qf to i64
  %i.qh = lshr i64 %i.qg, %i.qd
  %i.qi = and i64 %i.qh, 1
  %i.qj = shl i64 %.016.i314.epil.init, 1
  %i.qk = or disjoint i64 %i.qi, %i.qj
  br label %getSignedBitfield.exit311

getSignedBitfield.exit311:                        ; preds = %.lr.ph.i313.epil.preheader, %getSignedBitfield.exit311.loopexit.unr-lcssa, %bb.bt, %bb.bs, %getUnsignedBitfield.exit.thread.i308, %getUnsignedBitfield.exit.i306
  %.0.lcssa.i318.sink = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i306 ], [ %i.oz, %bb.bs ], [ %.0.lcssa.i10.i309, %getUnsignedBitfield.exit.thread.i308 ], [ 0, %bb.bt ], [ %i.py, %getSignedBitfield.exit311.loopexit.unr-lcssa ], [ %i.qk, %.lr.ph.i313.epil.preheader ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i318.sink) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %setUnsignedBitfield.exit, %bb.av, %setSignedBitfield.exit, %getSignedBitfield.exit311
  %.2334 = phi i64 [ %.1333368, %setSignedBitfield.exit ], [ %.0332434, %getSignedBitfield.exit311 ], [ %.0332434, %bb.av ], [ %.0332434, %setUnsignedBitfield.exit ], [ %.0332434, %bb.bg ]
  %.3 = phi i32 [ %spec.select256, %setSignedBitfield.exit ], [ %.0196435, %getSignedBitfield.exit311 ], [ %.0196435, %bb.av ], [ %spec.select257, %setUnsignedBitfield.exit ], [ %.0196435, %bb.bg ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond454.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond454.not, label %._crit_edge439, label %bb.aa, !llvm.loop !167

._crit_edge439:                                   ; preds = %bb.bu
  %.not229 = icmp eq i32 %.3, 0
  br i1 %.not229, label %._crit_edge439.thread, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge439
  %i.ql = load i64, ptr %i.c, align 8, !tbaa !20  ; 3 uses
  %i.qm = icmp ne i64 %i.ql, 0
  %i.qn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.qo = icmp ne i64 %i.qn, 0
  %or.cond9 = select i1 %i.qm, i1 %i.qo, i1 false
  br i1 %or.cond9, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !106
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !90
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !105
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !51
  %i.qx = call i32 @getKeySlot(ptr noundef %i.qw) #23
  %i.qy = add i64 %i.qn, %i.ql
  call void @updateKeysizesHist(ptr noundef %i.qq, i32 noundef %i.qx, i32 noundef 0, i64 noundef %i.ql, i64 noundef %i.qy) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !106
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !90
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !105
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ra, ptr noundef %i.re, ptr noundef %.0, i32 noundef 1) #23
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !90
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !105
  %i.ri = load ptr, ptr %i.qz, align 8, !tbaa !106
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 72
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !107
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %i.rh, i32 noundef %i.rk) #23
  %i.rl = sext i32 %.3 to i64
  %i.rm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  %i.rn = add nsw i64 %i.rm, %i.rl
  store i64 %i.rn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !110
  br label %._crit_edge439.thread

._crit_edge439.thread:                            ; preds = %bb.z, %bb.bx, %._crit_edge439
  call void @zfree(ptr noundef %.0203.lcssa477) #23
  br label %bb.by

bb.by:                                            ; preds = %.thread, %._crit_edge439.thread, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #19

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @addReplyNull(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldroCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #3

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbUnshareStringValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #8

declare ptr @sdsgrowzero(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = distinct !{!17, !15, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15, !19, !18}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !15}
!27 = !{!"branch_weights", i32 8, i32 24}
!28 = distinct !{!28, !15, !18, !19}
!29 = distinct !{!29, !15, !19, !18}
!30 = distinct !{!30, !15, !18, !19}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = distinct !{!32, !15, !18, !19}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15, !18, !19}
!35 = distinct !{!35, !15, !18, !19}
!36 = distinct !{!36, !15, !19, !18}
!37 = distinct !{!37, !15, !19, !18}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15, !18, !19}
!40 = !{!"branch_weights", i32 4, i32 12}
!41 = distinct !{!41, !15, !18, !19}
!42 = distinct !{!42, !15, !18, !19}
!43 = distinct !{!43, !15, !18, !19}
!44 = distinct !{!44, !15, !19, !18}
!45 = distinct !{!45, !15, !19, !18}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = !{!52, !53, i64 8}
!52 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !53, i64 8}
!53 = !{!"any pointer", !11, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !11, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"long long", !11, i64 0}
!58 = !{!59, !57, i64 7792}
!59 = !{!"redisServer", !10, i64 0, !21, i64 8, !60, i64 16, !60, i64 24, !61, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !63, i64 64, !64, i64 72, !64, i64 80, !65, i64 88, !66, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !57, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !60, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !21, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !60, i64 232, !60, i64 240, !10, i64 248, !10, i64 252, !21, i64 256, !11, i64 264, !64, i64 272, !64, i64 280, !64, i64 288, !67, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !60, i64 472, !60, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !68, i64 1336, !67, i64 1440, !67, i64 1448, !67, i64 1456, !67, i64 1464, !67, i64 1472, !67, i64 1480, !67, i64 1488, !70, i64 1496, !70, i64 1504, !53, i64 1512, !66, i64 1520, !10, i64 1528, !66, i64 1536, !10, i64 1544, !67, i64 1552, !11, i64 1560, !11, i64 1624, !64, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !71, i64 2424, !10, i64 2448, !57, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !21, i64 2488, !21, i64 2496, !21, i64 2504, !21, i64 2512, !21, i64 2520, !21, i64 2528, !57, i64 2536, !57, i64 2544, !57, i64 2552, !57, i64 2560, !57, i64 2568, !57, i64 2576, !73, i64 2584, !57, i64 2592, !57, i64 2600, !57, i64 2608, !57, i64 2616, !57, i64 2624, !57, i64 2632, !21, i64 2640, !57, i64 2648, !57, i64 2656, !57, i64 2664, !57, i64 2672, !57, i64 2680, !57, i64 2688, !57, i64 2696, !57, i64 2704, !21, i64 2712, !21, i64 2720, !21, i64 2728, !57, i64 2736, !57, i64 2744, !57, i64 2752, !57, i64 2760, !57, i64 2768, !73, i64 2776, !57, i64 2784, !57, i64 2792, !57, i64 2800, !57, i64 2808, !57, i64 2816, !67, i64 2824, !57, i64 2832, !57, i64 2840, !21, i64 2848, !74, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !21, i64 2976, !21, i64 2984, !21, i64 2992, !21, i64 3000, !21, i64 3008, !21, i64 3016, !21, i64 3024, !21, i64 3032, !73, i64 3040, !11, i64 3048, !21, i64 3080, !57, i64 3088, !57, i64 3096, !57, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !57, i64 5168, !57, i64 5176, !57, i64 5184, !57, i64 5192, !11, i64 5200, !57, i64 6264, !57, i64 6272, !21, i64 6280, !57, i64 6288, !57, i64 6296, !21, i64 6304, !11, i64 6312, !75, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !21, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !21, i64 6496, !21, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !60, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !76, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !60, i64 6680, !60, i64 6688, !10, i64 6696, !10, i64 6700, !21, i64 6704, !21, i64 6712, !21, i64 6720, !21, i64 6728, !21, i64 6736, !10, i64 6744, !10, i64 6748, !60, i64 6752, !10, i64 6760, !10, i64 6764, !57, i64 6768, !57, i64 6776, !21, i64 6784, !21, i64 6792, !21, i64 6800, !10, i64 6808, !10, i64 6812, !21, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !21, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !53, i64 6872, !10, i64 6880, !57, i64 6888, !57, i64 6896, !57, i64 6904, !57, i64 6912, !10, i64 6920, !77, i64 6928, !10, i64 6936, !60, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !21, i64 6968, !21, i64 6976, !21, i64 6984, !21, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !78, i64 7024, !10, i64 7032, !10, i64 7036, !60, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !79, i64 7072, !10, i64 7088, !60, i64 7096, !10, i64 7104, !60, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !57, i64 7232, !57, i64 7240, !11, i64 7248, !57, i64 7256, !10, i64 7264, !10, i64 7268, !81, i64 7272, !57, i64 7280, !57, i64 7288, !82, i64 7296, !21, i64 7344, !21, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !21, i64 7400, !67, i64 7408, !21, i64 7416, !60, i64 7424, !60, i64 7432, !60, i64 7440, !10, i64 7448, !10, i64 7452, !70, i64 7456, !70, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !21, i64 7488, !21, i64 7496, !21, i64 7504, !21, i64 7512, !21, i64 7520, !83, i64 7528, !83, i64 7536, !10, i64 7544, !60, i64 7552, !21, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !21, i64 7584, !21, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !60, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !57, i64 7680, !10, i64 7688, !67, i64 7696, !10, i64 7704, !57, i64 7712, !57, i64 7720, !21, i64 7728, !21, i64 7736, !10, i64 7744, !57, i64 7752, !21, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !57, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !67, i64 7872, !67, i64 7880, !10, i64 7888, !21, i64 7896, !67, i64 7904, !67, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !21, i64 7936, !21, i64 7944, !21, i64 7952, !21, i64 7960, !21, i64 7968, !21, i64 7976, !21, i64 7984, !21, i64 7992, !21, i64 8000, !57, i64 8008, !57, i64 8016, !57, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !21, i64 8048, !11, i64 8056, !57, i64 8064, !57, i64 8072, !10, i64 8080, !21, i64 8088, !57, i64 8096, !21, i64 8104, !57, i64 8112, !84, i64 8120, !64, i64 8128, !10, i64 8136, !84, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !57, i64 8168, !57, i64 8176, !60, i64 8184, !57, i64 8192, !57, i64 8200, !57, i64 8208, !10, i64 8216, !85, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !60, i64 8256, !60, i64 8264, !60, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !57, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !57, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !57, i64 8384, !64, i64 8392, !60, i64 8400, !21, i64 8408, !60, i64 8416, !10, i64 8424, !86, i64 8432, !10, i64 8472, !21, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !87, i64 8504, !60, i64 8624, !60, i64 8632, !60, i64 8640, !60, i64 8648, !88, i64 8656, !57, i64 8664, !10, i64 8672, !60, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !21, i64 8704, !10, i64 8712, !10, i64 8716, !60, i64 8720, !10, i64 8728, !10, i64 8732}
!60 = !{!"p1 omnipotent char", !53, i64 0}
!61 = !{!"p2 omnipotent char", !62, i64 0}
!62 = !{!"any p2 pointer", !53, i64 0}
!63 = !{!"p1 _ZTS7redisDb", !53, i64 0}
!64 = !{!"p1 _ZTS4dict", !53, i64 0}
!65 = !{!"p1 _ZTS11aeEventLoop", !53, i64 0}
!66 = !{!"p1 _ZTS3rax", !53, i64 0}
!67 = !{!"p1 _ZTS4list", !53, i64 0}
!68 = !{!"connListener", !11, i64 0, !10, i64 64, !61, i64 72, !10, i64 80, !10, i64 84, !69, i64 88, !53, i64 96}
!69 = !{!"p1 _ZTS14ConnectionType", !53, i64 0}
!70 = !{!"p1 _ZTS6client", !53, i64 0}
!71 = !{!"pendingCommandPool", !72, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!72 = !{!"p2 _ZTS14pendingCommand", !62, i64 0}
!73 = !{!"double", !11, i64 0}
!74 = !{!"malloc_stats", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80}
!75 = !{!"p1 _ZTS11hotkeyStats", !53, i64 0}
!76 = !{!"p1 double", !53, i64 0}
!77 = !{!"p1 _ZTS9saveparam", !53, i64 0}
!78 = !{!"p2 _ZTS10connection", !62, i64 0}
!79 = !{!"redisOpArray", !80, i64 0, !10, i64 8, !10, i64 12}
!80 = !{!"p1 _ZTS7redisOp", !53, i64 0}
!81 = !{!"p1 _ZTS11replBacklog", !53, i64 0}
!82 = !{!"replDataBuf", !67, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!83 = !{!"p1 _ZTS10connection", !53, i64 0}
!84 = !{!"p1 _ZTS8_kvstore", !53, i64 0}
!85 = !{!"p1 _ZTS12clusterState", !53, i64 0}
!86 = !{!"aclInfo", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!87 = !{!"redisTLSContextConfig", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !10, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!88 = !{!"p1 _ZTS14sentinelConfig", !53, i64 0}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!91, !93, i64 96}
!91 = !{!"client", !21, i64 0, !21, i64 8, !83, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !63, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !60, i64 64, !21, i64 72, !21, i64 80, !10, i64 88, !93, i64 96, !10, i64 104, !10, i64 108, !93, i64 112, !21, i64 120, !94, i64 128, !95, i64 152, !96, i64 160, !10, i64 168, !93, i64 176, !10, i64 184, !10, i64 188, !97, i64 192, !97, i64 200, !97, i64 208, !97, i64 216, !53, i64 224, !10, i64 232, !10, i64 236, !21, i64 240, !67, i64 248, !57, i64 256, !67, i64 264, !21, i64 272, !21, i64 280, !21, i64 288, !10, i64 296, !10, i64 300, !98, i64 304, !21, i64 312, !21, i64 320, !21, i64 328, !57, i64 336, !57, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !21, i64 368, !21, i64 376, !60, i64 384, !57, i64 392, !57, i64 400, !57, i64 408, !57, i64 416, !57, i64 424, !57, i64 432, !57, i64 440, !57, i64 448, !57, i64 456, !57, i64 464, !57, i64 472, !11, i64 480, !10, i64 524, !60, i64 528, !10, i64 536, !10, i64 540, !21, i64 544, !99, i64 552, !100, i64 592, !57, i64 664, !67, i64 672, !64, i64 680, !64, i64 688, !64, i64 696, !60, i64 704, !60, i64 712, !101, i64 720, !101, i64 728, !101, i64 736, !53, i64 744, !53, i64 752, !53, i64 760, !53, i64 768, !53, i64 776, !21, i64 784, !66, i64 792, !21, i64 800, !10, i64 808, !101, i64 816, !53, i64 824, !101, i64 832, !21, i64 840, !101, i64 848, !21, i64 856, !101, i64 864, !21, i64 872, !102, i64 880, !102, i64 904, !21, i64 928, !21, i64 936, !21, i64 944, !57, i64 952, !21, i64 960, !21, i64 968, !60, i64 976, !11, i64 984, !103, i64 992, !57, i64 1000, !57, i64 1008, !57, i64 1016, !104, i64 1024, !60, i64 1032, !11, i64 1040}
!92 = !{!"p1 _ZTS11redisObject", !53, i64 0}
!93 = !{!"p2 _ZTS11redisObject", !62, i64 0}
!94 = !{!"pendingCommandList", !95, i64 0, !95, i64 8, !10, i64 16, !10, i64 20}
!95 = !{!"p1 _ZTS14pendingCommand", !53, i64 0}
!96 = !{!"p1 _ZTS14deferredObject", !53, i64 0}
!97 = !{!"p1 _ZTS12redisCommand", !53, i64 0}
!98 = !{!"p1 _ZTS9dictEntry", !53, i64 0}
!99 = !{!"multiState", !72, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !21, i64 24, !10, i64 32}
!100 = !{!"blockingState", !10, i64 0, !57, i64 8, !10, i64 16, !64, i64 24, !10, i64 32, !10, i64 36, !57, i64 40, !53, i64 48, !53, i64 56, !21, i64 64}
!101 = !{!"p1 _ZTS8listNode", !53, i64 0}
!102 = !{!"listNode", !101, i64 0, !101, i64 8, !53, i64 16}
!103 = !{!"p1 _ZTS13payloadHeader", !53, i64 0}
!104 = !{!"p1 _ZTS7asmTask", !53, i64 0}
!105 = !{!92, !92, i64 0}
!106 = !{!91, !63, i64 32}
!107 = !{!108, !10, i64 72}
!108 = !{!"redisDb", !84, i64 0, !84, i64 8, !109, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !10, i64 72, !57, i64 80, !21, i64 88}
!109 = !{!"p1 _ZTS7_estore", !53, i64 0}
!110 = !{!59, !57, i64 6888}
!111 = !{!59, !10, i64 6644}
!112 = !{!113, !92, i64 24}
!113 = !{!"sharedObjectsStruct", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !92, i64 192, !92, i64 200, !92, i64 208, !92, i64 216, !92, i64 224, !92, i64 232, !92, i64 240, !92, i64 248, !92, i64 256, !92, i64 264, !92, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !92, i64 352, !92, i64 360, !92, i64 368, !92, i64 376, !92, i64 384, !92, i64 392, !92, i64 400, !92, i64 408, !92, i64 416, !92, i64 424, !92, i64 432, !92, i64 440, !92, i64 448, !92, i64 456, !92, i64 464, !92, i64 472, !92, i64 480, !92, i64 488, !92, i64 496, !92, i64 504, !92, i64 512, !92, i64 520, !92, i64 528, !92, i64 536, !92, i64 544, !92, i64 552, !92, i64 560, !92, i64 568, !92, i64 576, !92, i64 584, !92, i64 592, !92, i64 600, !92, i64 608, !92, i64 616, !92, i64 624, !92, i64 632, !92, i64 640, !92, i64 648, !92, i64 656, !92, i64 664, !92, i64 672, !92, i64 680, !92, i64 688, !92, i64 696, !92, i64 704, !92, i64 712, !92, i64 720, !92, i64 728, !92, i64 736, !92, i64 744, !92, i64 752, !92, i64 760, !92, i64 768, !92, i64 776, !92, i64 784, !92, i64 792, !92, i64 800, !92, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !60, i64 81920, !60, i64 81928}
!114 = !{!60, !60, i64 0}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = !{!113, !92, i64 216}
end_hunk_1
