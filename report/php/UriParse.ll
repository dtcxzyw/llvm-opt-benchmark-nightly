Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriParse?download=true
inline.NumInlined: 222
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@uriParsePctEncodedA:bb.a

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %0, align 8, !tbaa !16
  %i.x = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.w, ptr noundef %3) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !35
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !16
  %i.ab = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.aa, ptr noundef %3) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.j ], [ %i.v, %bb.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @uriParsePartHelperTwoA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val27 = load ptr, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %.val27, i64 144
  store i32 1, ptr %i.a, align 8, !tbaa !101
  br label %uriParsePathAbsNoLeadSlashA.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !17
  %cond = icmp eq i8 %i.b, 47
  br i1 %cond, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %.not.i = icmp ult ptr %i.c, %2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr @uriSafeToPointToA, align 8, !tbaa !36 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.d, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.d, ptr %i.g, align 8, !tbaa !43
  br label %uriParsePathAbsEmptyA.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.c, align 1, !tbaa !17
  switch i8 %i.h, label %bb.v [
    i8 91, label %bb.g
    i8 65, label %bb.l
    i8 66, label %bb.l
    i8 67, label %bb.l
    i8 68, label %bb.l
    i8 69, label %bb.l
    i8 70, label %bb.l
    i8 97, label %bb.l
    i8 98, label %bb.l
    i8 99, label %bb.l
    i8 100, label %bb.l
    i8 101, label %bb.l
    i8 102, label %bb.l
    i8 103, label %bb.l
    i8 71, label %bb.l
    i8 104, label %bb.l
    i8 72, label %bb.l
    i8 105, label %bb.l
    i8 73, label %bb.l
    i8 106, label %bb.l
    i8 74, label %bb.l
    i8 107, label %bb.l
    i8 75, label %bb.l
    i8 108, label %bb.l
    i8 76, label %bb.l
    i8 109, label %bb.l
    i8 77, label %bb.l
    i8 110, label %bb.l
    i8 78, label %bb.l
    i8 111, label %bb.l
    i8 79, label %bb.l
    i8 112, label %bb.l
    i8 80, label %bb.l
    i8 113, label %bb.l
    i8 81, label %bb.l
    i8 114, label %bb.l
    i8 82, label %bb.l
    i8 115, label %bb.l
    i8 83, label %bb.l
    i8 116, label %bb.l
    i8 84, label %bb.l
    i8 117, label %bb.l
    i8 85, label %bb.l
    i8 118, label %bb.l
    i8 86, label %bb.l
    i8 119, label %bb.l
    i8 87, label %bb.l
    i8 120, label %bb.l
    i8 88, label %bb.l
    i8 121, label %bb.l
    i8 89, label %bb.l
    i8 122, label %bb.l
    i8 90, label %bb.l
    i8 48, label %bb.l
    i8 49, label %bb.l
    i8 50, label %bb.l
    i8 51, label %bb.l
    i8 52, label %bb.l
    i8 53, label %bb.l
    i8 54, label %bb.l
    i8 55, label %bb.l
    i8 56, label %bb.l
    i8 57, label %bb.l
    i8 45, label %bb.l
    i8 46, label %bb.l
    i8 95, label %bb.l
    i8 126, label %bb.l
    i8 33, label %bb.l
    i8 36, label %bb.l
    i8 38, label %bb.l
    i8 39, label %bb.l
    i8 40, label %bb.l
    i8 41, label %bb.l
    i8 42, label %bb.l
    i8 43, label %bb.l
    i8 44, label %bb.l
    i8 59, label %bb.l
    i8 61, label %bb.l
    i8 58, label %bb.l
    i8 64, label %bb.l
    i8 37, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.j = tail call fastcc ptr @uriParseIpLit2A(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef nonnull %2, ptr noundef %3) ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %uriParsePathAbsNoLeadSlashA.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.m, align 8, !tbaa !42
  %.not.i.i = icmp ult ptr %i.j, %2
  br i1 %.not.i.i, label %bb.i, label %uriParsePathAbsEmptyA.exit

bb.i:                                             ; preds = %bb.h
  %i.n = load i8, ptr %i.j, align 1, !tbaa !17
  %cond.i.i = icmp eq i8 %i.n, 58
  br i1 %cond.i.i, label %bb.j, label %uriParseAuthorityA.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %.not9.i.i.i = icmp ult ptr %i.o, %2
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %uriParsePortA.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.0710.i.i.i = phi ptr [ %i.q, %bb.k ], [ %i.o, %bb.j ] ; 3 uses
  %i.p = load i8, ptr %.0710.i.i.i, align 1, !tbaa !17
  %.off.i.i.i = add i8 %i.p, -48
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 10
  br i1 %switch.i.i.i, label %bb.k, label %uriParsePortA.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.q, %2
  br i1 %exitcond.not.i.i.i, label %uriParsePortA.exit.i.i, label %.lr.ph.i.i.i

uriParsePortA.exit.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i, %bb.j
  %.0.i.i.i = phi ptr [ %2, %bb.j ], [ %2, %bb.k ], [ %.0710.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %i.o, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !47
  br label %uriParseAuthorityA.exit.thread

bb.l:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.c, ptr %i.u, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.042.i.i = phi ptr [ %i.c, %bb.l ], [ %i.x, %bb.o ] ; 11 uses
  %i.v = icmp ult ptr %.042.i.i, %2
  br i1 %i.v, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.w = load i8, ptr %.042.i.i, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.w, label %4 [
    i8 37, label %bb.o
    i8 33, label %bb.o
    i8 36, label %bb.o
    i8 38, label %bb.o
    i8 39, label %bb.o
    i8 40, label %bb.o
    i8 41, label %bb.o
    i8 42, label %bb.o
    i8 43, label %bb.o
    i8 44, label %bb.o
    i8 59, label %bb.o
    i8 61, label %bb.o
    i8 65, label %bb.o
    i8 66, label %bb.o
    i8 67, label %bb.o
    i8 68, label %bb.o
    i8 69, label %bb.o
    i8 70, label %bb.o
    i8 97, label %bb.o
    i8 98, label %bb.o
    i8 99, label %bb.o
    i8 100, label %bb.o
    i8 101, label %bb.o
    i8 102, label %bb.o
    i8 103, label %bb.o
    i8 71, label %bb.o
    i8 104, label %bb.o
    i8 72, label %bb.o
    i8 105, label %bb.o
    i8 73, label %bb.o
    i8 106, label %bb.o
    i8 74, label %bb.o
    i8 107, label %bb.o
    i8 75, label %bb.o
    i8 108, label %bb.o
    i8 76, label %bb.o
    i8 109, label %bb.o
    i8 77, label %bb.o
    i8 110, label %bb.o
    i8 78, label %bb.o
    i8 111, label %bb.o
    i8 79, label %bb.o
    i8 112, label %bb.o
    i8 80, label %bb.o
    i8 113, label %bb.o
    i8 81, label %bb.o
    i8 114, label %bb.o
    i8 82, label %bb.o
    i8 115, label %bb.o
    i8 83, label %bb.o
    i8 116, label %bb.o
    i8 84, label %bb.o
    i8 117, label %bb.o
    i8 85, label %bb.o
    i8 118, label %bb.o
    i8 86, label %bb.o
    i8 119, label %bb.o
    i8 87, label %bb.o
    i8 120, label %bb.o
    i8 88, label %bb.o
    i8 121, label %bb.o
    i8 89, label %bb.o
    i8 122, label %bb.o
    i8 90, label %bb.o
    i8 48, label %bb.o
    i8 49, label %bb.o
    i8 50, label %bb.o
    i8 51, label %bb.o
    i8 52, label %bb.o
    i8 53, label %bb.o
    i8 54, label %bb.o
    i8 55, label %bb.o
    i8 56, label %bb.o
    i8 57, label %bb.o
    i8 45, label %bb.o
    i8 46, label %bb.o
    i8 95, label %bb.o
    i8 126, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.x = tail call fastcc ptr @uriParsePctSubUnresA(ptr noundef nonnull %0, ptr noundef %.042.i.i, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %.not.i30.i = icmp eq ptr %i.x, null
  br i1 %.not.i30.i, label %uriParsePathAbsNoLeadSlashA.exit, label %bb.m, !llvm.loop !96

4:                                                ; preds = %bb.n
  switch i8 %i.w, label %.critedge.i.i [
    i8 58, label %bb.p
    i8 64, label %bb.q
  ]

bb.p:                                             ; preds = %4
  %i.y = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %.042.i.i, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !46
  %i.ac = tail call fastcc ptr @uriParseOwnPortUserInfoA(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %2, ptr noundef %3)
  br label %uriParseAuthorityA.exit

bb.q:                                             ; preds = %4
  %i.ad = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.042.i.i, ptr %i.ae, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !42
  %i.ah = tail call fastcc ptr @uriParseOwnHostA(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull %2, ptr noundef %3)
  br label %uriParseAuthorityA.exit

.critedge.i.i:                                    ; preds = %bb.m, %4
  %i.ai = icmp eq ptr %.042.i.i, %i.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !16    ; 4 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.i.i
  %i.ak = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.aj, ptr noundef %3) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.al, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !35
  br label %uriParsePathAbsNoLeadSlashA.exit

bb.s:                                             ; preds = %.critedge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !42
  store ptr null, ptr %i.an, align 8, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %.042.i.i, ptr %i.aq, align 8, !tbaa !43
  %i.ar = load ptr, ptr %3, align 8, !tbaa !52
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %3, i64 noundef 4) #6, !inline_history !97 ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !16    ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr %i.as, ptr %i.au, align 8, !tbaa !44
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %uriOnExitOwnHostUserInfoA.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = tail call i32 @uriParseIpFourAddressA(ptr noundef nonnull %i.as, ptr noundef %i.ax, ptr noundef %i.az) #6
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i, label %uriParseAuthorityA.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = load ptr, ptr %0, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  tail call void %i.bc(ptr noundef nonnull %3, ptr noundef %i.bf) #6, !inline_history !97
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr null, ptr %i.bh, align 8, !tbaa !44
  br label %uriParseAuthorityA.exit.thread

uriOnExitOwnHostUserInfoA.exit.i.i:               ; preds = %bb.s
  %i.bi = tail call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %i.at, ptr noundef nonnull %3) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.bk, align 8, !tbaa !35
  br label %uriParsePathAbsNoLeadSlashA.exit

bb.v:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr @uriSafeToPointToA, align 8, !tbaa !36 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !43
  br label %uriParseAuthorityA.exit.thread

uriParseAuthorityA.exit:                          ; preds = %bb.p, %bb.q
  %.1.i = phi ptr [ %i.ac, %bb.p ], [ %i.ah, %bb.q ] ; 2 uses
  %i.bp = icmp eq ptr %.1.i, null
  br i1 %i.bp, label %uriParsePathAbsNoLeadSlashA.exit, label %uriParseAuthorityA.exit.thread

uriParseAuthorityA.exit.thread:                   ; preds = %bb.u, %bb.t, %uriParsePortA.exit.i.i, %bb.i, %bb.v, %uriParseAuthorityA.exit
  %.1.i36 = phi ptr [ %.1.i, %uriParseAuthorityA.exit ], [ %.042.i.i, %bb.u ], [ %.042.i.i, %bb.t ], [ %.0.i.i.i, %uriParsePortA.exit.i.i ], [ %i.c, %bb.v ], [ %i.j, %bb.i ] ; 2 uses
  %.not29.i = icmp ult ptr %.1.i36, %2
  br i1 %.not29.i, label %.lr.ph.i, label %uriParsePathAbsEmptyA.exit

.lr.ph.i:                                         ; preds = %uriParseAuthorityA.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr @uriSafeToPointToA, align 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph.i
  %.01930.i = phi ptr [ %.1.i36, %.lr.ph.i ], [ %i.bu, %bb.ac ] ; 3 uses
  %i.bs = load i8, ptr %.01930.i, align 1, !tbaa !17
  %cond.i = icmp eq i8 %i.bs, 47
  br i1 %cond.i, label %bb.x, label %uriParsePathAbsEmptyA.exit

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.01930.i, i64 1 ; 3 uses
  %i.bu = tail call fastcc ptr @uriParseSegmentA(ptr noundef nonnull %0, ptr noundef %i.bt, ptr noundef nonnull %2, ptr noundef %3) ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %uriParsePathAbsEmptyA.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bx = tail call ptr %i.bw(ptr noundef %3, i64 noundef 1, i64 noundef 32) #6, !inline_history !98 ; 7 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %uriPushPathSegmentA.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  %spec.select.i.i = select i1 %i.bz, ptr %i.br, ptr %i.bt
  %spec.select27.i.i = select i1 %i.bz, ptr %i.br, ptr %i.bu
  store ptr %spec.select.i.i, ptr %i.bx, align 8, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %spec.select27.i.i, ptr %i.ca, align 8, !tbaa !29
  %i.cb = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  store ptr %i.bx, ptr %i.cf, align 8, !tbaa !31
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.bx, ptr %i.ci, align 8, !tbaa !32
  store ptr %i.bx, ptr %i.cg, align 8, !tbaa !31
  br label %bb.ac

uriPushPathSegmentA.exit.i:                       ; preds = %bb.y
  %i.cj = load ptr, ptr %0, align 8, !tbaa !16
  %i.ck = tail call i32 @uriFreeUriMembersMmA(ptr noundef %i.cj, ptr noundef nonnull %3) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cl, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.cm, align 8, !tbaa !35
  br label %uriParsePathAbsEmptyA.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not.i28 = icmp ult ptr %i.bu, %2
  br i1 %.not.i28, label %bb.w, label %uriParsePathAbsEmptyA.exit

uriParsePathAbsEmptyA.exit:                       ; preds = %bb.w, %bb.x, %bb.ac, %bb.e, %bb.h, %uriParseAuthorityA.exit.thread, %uriPushPathSegmentA.exit.i
  %.2.i = phi ptr [ null, %uriPushPathSegmentA.exit.i ], [ %2, %uriParseAuthorityA.exit.thread ], [ %2, %bb.e ], [ %2, %bb.h ], [ null, %bb.x ], [ %2, %bb.ac ], [ %.01930.i, %bb.w ]
  %i.cn = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @uriFixEmptyTrailSegmentA(ptr noundef %i.cn, ptr noundef %3) #6
  br label %uriParsePathAbsNoLeadSlashA.exit

bb.ad:                                            ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store i32 1, ptr %i.co, align 8, !tbaa !101
  %i.cp = load i8, ptr %1, align 1, !tbaa !17
  switch i8 %i.cp, label %uriParsePathAbsNoLeadSlashA.exit [
    i8 65, label %bb.ae
    i8 66, label %bb.ae
    i8 67, label %bb.ae
    i8 68, label %bb.ae
    i8 69, label %bb.ae
    i8 70, label %bb.ae
    i8 97, label %bb.ae
    i8 98, label %bb.ae
    i8 99, label %bb.ae
    i8 100, label %bb.ae
    i8 101, label %bb.ae
    i8 102, label %bb.ae
    i8 103, label %bb.ae
    i8 71, label %bb.ae
    i8 104, label %bb.ae
    i8 72, label %bb.ae
    i8 105, label %bb.ae
    i8 73, label %bb.ae
    i8 106, label %bb.ae
    i8 74, label %bb.ae
    i8 107, label %bb.ae
    i8 75, label %bb.ae
    i8 108, label %bb.ae
    i8 76, label %bb.ae
    i8 109, label %bb.ae
    i8 77, label %bb.ae
    i8 110, label %bb.ae
    i8 78, label %bb.ae
    i8 111, label %bb.ae
    i8 79, label %bb.ae
    i8 112, label %bb.ae
    i8 80, label %bb.ae
    i8 113, label %bb.ae
    i8 81, label %bb.ae
    i8 114, label %bb.ae
    i8 82, label %bb.ae
    i8 115, label %bb.ae
    i8 83, label %bb.ae
    i8 116, label %bb.ae
    i8 84, label %bb.ae
    i8 117, label %bb.ae
    i8 85, label %bb.ae
    i8 118, label %bb.ae
    i8 86, label %bb.ae
    i8 119, label %bb.ae
    i8 87, label %bb.ae
    i8 120, label %bb.ae
    i8 88, label %bb.ae
    i8 121, label %bb.ae
end_hunk_0
begin_hunk_1_@uriParsePctEncodedW:bb.a

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %0, align 8, !tbaa !57
  %i.x = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.w, ptr noundef %3) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.y, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !72
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !57
  %i.ab = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.aa, ptr noundef %3) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.j ], [ %i.v, %bb.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @uriParsePartHelperTwoW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val27 = load ptr, ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %.val27, i64 144
  store i32 1, ptr %i.a, align 8, !tbaa !112
  br label %uriParsePathAbsNoLeadSlashW.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !58
  %cond = icmp eq i32 %i.b, 47
  br i1 %cond, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %.not.i = icmp ult ptr %i.c, %2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr @uriSafeToPointToW, align 8, !tbaa !73 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.d, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.d, ptr %i.g, align 8, !tbaa !79
  br label %uriParsePathAbsEmptyW.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.c, align 4, !tbaa !58
  switch i32 %i.h, label %bb.v [
    i32 91, label %bb.g
    i32 65, label %bb.l
    i32 66, label %bb.l
    i32 67, label %bb.l
    i32 68, label %bb.l
    i32 69, label %bb.l
    i32 70, label %bb.l
    i32 97, label %bb.l
    i32 98, label %bb.l
    i32 99, label %bb.l
    i32 100, label %bb.l
    i32 101, label %bb.l
    i32 102, label %bb.l
    i32 103, label %bb.l
    i32 71, label %bb.l
    i32 104, label %bb.l
    i32 72, label %bb.l
    i32 105, label %bb.l
    i32 73, label %bb.l
    i32 106, label %bb.l
    i32 74, label %bb.l
    i32 107, label %bb.l
    i32 75, label %bb.l
    i32 108, label %bb.l
    i32 76, label %bb.l
    i32 109, label %bb.l
    i32 77, label %bb.l
    i32 110, label %bb.l
    i32 78, label %bb.l
    i32 111, label %bb.l
    i32 79, label %bb.l
    i32 112, label %bb.l
    i32 80, label %bb.l
    i32 113, label %bb.l
    i32 81, label %bb.l
    i32 114, label %bb.l
    i32 82, label %bb.l
    i32 115, label %bb.l
    i32 83, label %bb.l
    i32 116, label %bb.l
    i32 84, label %bb.l
    i32 117, label %bb.l
    i32 85, label %bb.l
    i32 118, label %bb.l
    i32 86, label %bb.l
    i32 119, label %bb.l
    i32 87, label %bb.l
    i32 120, label %bb.l
    i32 88, label %bb.l
    i32 121, label %bb.l
    i32 89, label %bb.l
    i32 122, label %bb.l
    i32 90, label %bb.l
    i32 48, label %bb.l
    i32 49, label %bb.l
    i32 50, label %bb.l
    i32 51, label %bb.l
    i32 52, label %bb.l
    i32 53, label %bb.l
    i32 54, label %bb.l
    i32 55, label %bb.l
    i32 56, label %bb.l
    i32 57, label %bb.l
    i32 45, label %bb.l
    i32 46, label %bb.l
    i32 95, label %bb.l
    i32 126, label %bb.l
    i32 33, label %bb.l
    i32 36, label %bb.l
    i32 38, label %bb.l
    i32 39, label %bb.l
    i32 40, label %bb.l
    i32 41, label %bb.l
    i32 42, label %bb.l
    i32 43, label %bb.l
    i32 44, label %bb.l
    i32 59, label %bb.l
    i32 61, label %bb.l
    i32 58, label %bb.l
    i32 64, label %bb.l
    i32 37, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = tail call fastcc ptr @uriParseIpLit2W(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef nonnull %2, ptr noundef %3) ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %uriParsePathAbsNoLeadSlashW.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.m, align 8, !tbaa !78
  %.not.i.i = icmp ult ptr %i.j, %2
  br i1 %.not.i.i, label %bb.i, label %uriParsePathAbsEmptyW.exit

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.j, align 4, !tbaa !58
  %cond.i.i = icmp eq i32 %i.n, 58
  br i1 %cond.i.i, label %bb.j, label %uriParseAuthorityW.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %.not9.i.i.i = icmp ult ptr %i.o, %2
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %uriParsePortW.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.0710.i.i.i = phi ptr [ %i.q, %bb.k ], [ %i.o, %bb.j ] ; 3 uses
  %i.p = load i32, ptr %.0710.i.i.i, align 4, !tbaa !58
  %.off.i.i.i = add i32 %i.p, -48
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 10
  br i1 %switch.i.i.i, label %bb.k, label %uriParsePortW.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.q, %2
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %uriParsePortW.exit.i.i

uriParsePortW.exit.i.i:                           ; preds = %bb.k, %.lr.ph.i.i.i, %bb.j
  %.0.i.i.i = phi ptr [ %2, %bb.j ], [ %2, %bb.k ], [ %.0710.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store ptr %i.o, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !83
  br label %uriParseAuthorityW.exit.thread

bb.l:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.c, ptr %i.u, align 8, !tbaa !74
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.042.i.i = phi ptr [ %i.c, %bb.l ], [ %i.x, %bb.o ] ; 11 uses
  %i.v = icmp ult ptr %.042.i.i, %2
  br i1 %i.v, label %bb.n, label %.critedge.i.i

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr %.042.i.i, align 4, !tbaa !58 ; 2 uses
  switch i32 %i.w, label %4 [
    i32 37, label %bb.o
    i32 33, label %bb.o
    i32 36, label %bb.o
    i32 38, label %bb.o
    i32 39, label %bb.o
    i32 40, label %bb.o
    i32 41, label %bb.o
    i32 42, label %bb.o
    i32 43, label %bb.o
    i32 44, label %bb.o
    i32 59, label %bb.o
    i32 61, label %bb.o
    i32 65, label %bb.o
    i32 66, label %bb.o
    i32 67, label %bb.o
    i32 68, label %bb.o
    i32 69, label %bb.o
    i32 70, label %bb.o
    i32 97, label %bb.o
    i32 98, label %bb.o
    i32 99, label %bb.o
    i32 100, label %bb.o
    i32 101, label %bb.o
    i32 102, label %bb.o
    i32 103, label %bb.o
    i32 71, label %bb.o
    i32 104, label %bb.o
    i32 72, label %bb.o
    i32 105, label %bb.o
    i32 73, label %bb.o
    i32 106, label %bb.o
    i32 74, label %bb.o
    i32 107, label %bb.o
    i32 75, label %bb.o
    i32 108, label %bb.o
    i32 76, label %bb.o
    i32 109, label %bb.o
    i32 77, label %bb.o
    i32 110, label %bb.o
    i32 78, label %bb.o
    i32 111, label %bb.o
    i32 79, label %bb.o
    i32 112, label %bb.o
    i32 80, label %bb.o
    i32 113, label %bb.o
    i32 81, label %bb.o
    i32 114, label %bb.o
    i32 82, label %bb.o
    i32 115, label %bb.o
    i32 83, label %bb.o
    i32 116, label %bb.o
    i32 84, label %bb.o
    i32 117, label %bb.o
    i32 85, label %bb.o
    i32 118, label %bb.o
    i32 86, label %bb.o
    i32 119, label %bb.o
    i32 87, label %bb.o
    i32 120, label %bb.o
    i32 88, label %bb.o
    i32 121, label %bb.o
    i32 89, label %bb.o
    i32 122, label %bb.o
    i32 90, label %bb.o
    i32 48, label %bb.o
    i32 49, label %bb.o
    i32 50, label %bb.o
    i32 51, label %bb.o
    i32 52, label %bb.o
    i32 53, label %bb.o
    i32 54, label %bb.o
    i32 55, label %bb.o
    i32 56, label %bb.o
    i32 57, label %bb.o
    i32 45, label %bb.o
    i32 46, label %bb.o
    i32 95, label %bb.o
    i32 126, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.x = tail call fastcc ptr @uriParsePctSubUnresW(ptr noundef nonnull %0, ptr noundef %.042.i.i, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %.not.i31.i = icmp eq ptr %i.x, null
  br i1 %.not.i31.i, label %uriParsePathAbsNoLeadSlashW.exit, label %bb.m, !llvm.loop !107

4:                                                ; preds = %bb.n
  switch i32 %i.w, label %.critedge.i.i [
    i32 58, label %bb.p
    i32 64, label %bb.q
  ]

bb.p:                                             ; preds = %4
  %i.y = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %.042.i.i, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !82
  %i.ac = tail call fastcc ptr @uriParseOwnPortUserInfoW(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %2, ptr noundef %3)
  br label %uriParseAuthorityW.exit

bb.q:                                             ; preds = %4
  %i.ad = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.042.i.i, ptr %i.ae, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !78
  %i.ah = tail call fastcc ptr @uriParseOwnHostW(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull %2, ptr noundef %3)
  br label %uriParseAuthorityW.exit

.critedge.i.i:                                    ; preds = %bb.m, %4
  %i.ai = icmp eq ptr %.042.i.i, %i.c
  %i.aj = load ptr, ptr %0, align 8, !tbaa !57    ; 4 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge.i.i
  %i.ak = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.aj, ptr noundef %3) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.al, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.am, align 8, !tbaa !72
  br label %uriParsePathAbsNoLeadSlashW.exit

bb.s:                                             ; preds = %.critedge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !78
  store ptr null, ptr %i.an, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %.042.i.i, ptr %i.aq, align 8, !tbaa !79
  %i.ar = load ptr, ptr %3, align 8, !tbaa !52
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %3, i64 noundef 4) #6, !inline_history !108 ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !57    ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr %i.as, ptr %i.au, align 8, !tbaa !80
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %uriOnExitOwnHostUserInfoW.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79
  %i.ba = tail call i32 @uriParseIpFourAddressW(ptr noundef nonnull %i.as, ptr noundef %i.ax, ptr noundef %i.az) #6
  %.not.i.i30.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i30.i, label %uriParseAuthorityW.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = load ptr, ptr %0, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !80
  tail call void %i.bc(ptr noundef nonnull %3, ptr noundef %i.bf) #6, !inline_history !108
  %i.bg = load ptr, ptr %0, align 8, !tbaa !57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr null, ptr %i.bh, align 8, !tbaa !80
  br label %uriParseAuthorityW.exit.thread

uriOnExitOwnHostUserInfoW.exit.i.i:               ; preds = %bb.s
  %i.bi = tail call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %i.at, ptr noundef nonnull %3) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.bk, align 8, !tbaa !72
  br label %uriParsePathAbsNoLeadSlashW.exit

bb.v:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr @uriSafeToPointToW, align 8, !tbaa !73 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !79
  br label %uriParseAuthorityW.exit.thread

uriParseAuthorityW.exit:                          ; preds = %bb.p, %bb.q
  %.1.i = phi ptr [ %i.ac, %bb.p ], [ %i.ah, %bb.q ] ; 2 uses
  %i.bp = icmp eq ptr %.1.i, null
  br i1 %i.bp, label %uriParsePathAbsNoLeadSlashW.exit, label %uriParseAuthorityW.exit.thread

uriParseAuthorityW.exit.thread:                   ; preds = %bb.u, %bb.t, %uriParsePortW.exit.i.i, %bb.i, %bb.v, %uriParseAuthorityW.exit
  %.1.i36 = phi ptr [ %.1.i, %uriParseAuthorityW.exit ], [ %.042.i.i, %bb.u ], [ %.042.i.i, %bb.t ], [ %.0.i.i.i, %uriParsePortW.exit.i.i ], [ %i.c, %bb.v ], [ %i.j, %bb.i ] ; 2 uses
  %.not29.i = icmp ult ptr %.1.i36, %2
  br i1 %.not29.i, label %.lr.ph.i, label %uriParsePathAbsEmptyW.exit

.lr.ph.i:                                         ; preds = %uriParseAuthorityW.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr @uriSafeToPointToW, align 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph.i
  %.01930.i = phi ptr [ %.1.i36, %.lr.ph.i ], [ %i.bu, %bb.ac ] ; 3 uses
  %i.bs = load i32, ptr %.01930.i, align 4, !tbaa !58
  %cond.i = icmp eq i32 %i.bs, 47
  br i1 %cond.i, label %bb.x, label %uriParsePathAbsEmptyW.exit

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.01930.i, i64 4 ; 3 uses
  %i.bu = tail call fastcc ptr @uriParseSegmentW(ptr noundef nonnull %0, ptr noundef %i.bt, ptr noundef nonnull %2, ptr noundef %3) ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %uriParsePathAbsEmptyW.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bx = tail call ptr %i.bw(ptr noundef %3, i64 noundef 1, i64 noundef 32) #6, !inline_history !109 ; 7 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %uriPushPathSegmentW.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp eq ptr %i.bt, %i.bu                ; 2 uses
  %spec.select.i.i = select i1 %i.bz, ptr %i.br, ptr %i.bt
  %spec.select27.i.i = select i1 %i.bz, ptr %i.br, ptr %i.bu
  store ptr %spec.select.i.i, ptr %i.bx, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %spec.select27.i.i, ptr %i.ca, align 8, !tbaa !66
  %i.cb = load ptr, ptr %0, align 8, !tbaa !57    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bx, ptr %i.cc, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  store ptr %i.bx, ptr %i.cf, align 8, !tbaa !68
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 104 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.bx, ptr %i.ci, align 8, !tbaa !69
  store ptr %i.bx, ptr %i.cg, align 8, !tbaa !68
  br label %bb.ac

uriPushPathSegmentW.exit.i:                       ; preds = %bb.y
  %i.cj = load ptr, ptr %0, align 8, !tbaa !57
  %i.ck = tail call i32 @uriFreeUriMembersMmW(ptr noundef %i.cj, ptr noundef nonnull %3) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cl, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.cm, align 8, !tbaa !72
  br label %uriParsePathAbsEmptyW.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not.i28 = icmp ult ptr %i.bu, %2
  br i1 %.not.i28, label %bb.w, label %uriParsePathAbsEmptyW.exit

uriParsePathAbsEmptyW.exit:                       ; preds = %bb.w, %bb.x, %bb.ac, %bb.e, %bb.h, %uriParseAuthorityW.exit.thread, %uriPushPathSegmentW.exit.i
  %.2.i = phi ptr [ null, %uriPushPathSegmentW.exit.i ], [ %2, %uriParseAuthorityW.exit.thread ], [ %2, %bb.e ], [ %2, %bb.h ], [ null, %bb.x ], [ %2, %bb.ac ], [ %.01930.i, %bb.w ]
  %i.cn = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @uriFixEmptyTrailSegmentW(ptr noundef %i.cn, ptr noundef %3) #6
  br label %uriParsePathAbsNoLeadSlashW.exit

bb.ad:                                            ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store i32 1, ptr %i.co, align 8, !tbaa !112
  %i.cp = load i32, ptr %1, align 4, !tbaa !58
  switch i32 %i.cp, label %uriParsePathAbsNoLeadSlashW.exit [
    i32 65, label %bb.ae
    i32 66, label %bb.ae
    i32 67, label %bb.ae
    i32 68, label %bb.ae
    i32 69, label %bb.ae
    i32 70, label %bb.ae
    i32 97, label %bb.ae
    i32 98, label %bb.ae
    i32 99, label %bb.ae
    i32 100, label %bb.ae
    i32 101, label %bb.ae
    i32 102, label %bb.ae
    i32 103, label %bb.ae
    i32 71, label %bb.ae
    i32 104, label %bb.ae
    i32 72, label %bb.ae
    i32 105, label %bb.ae
    i32 73, label %bb.ae
    i32 106, label %bb.ae
    i32 74, label %bb.ae
    i32 107, label %bb.ae
    i32 75, label %bb.ae
    i32 108, label %bb.ae
    i32 76, label %bb.ae
    i32 109, label %bb.ae
    i32 77, label %bb.ae
    i32 110, label %bb.ae
    i32 78, label %bb.ae
    i32 111, label %bb.ae
    i32 79, label %bb.ae
    i32 112, label %bb.ae
    i32 80, label %bb.ae
    i32 113, label %bb.ae
    i32 81, label %bb.ae
    i32 114, label %bb.ae
    i32 82, label %bb.ae
    i32 115, label %bb.ae
    i32 83, label %bb.ae
    i32 116, label %bb.ae
    i32 84, label %bb.ae
    i32 117, label %bb.ae
    i32 85, label %bb.ae
    i32 118, label %bb.ae
    i32 86, label %bb.ae
    i32 119, label %bb.ae
    i32 87, label %bb.ae
    i32 120, label %bb.ae
    i32 88, label %bb.ae
    i32 121, label %bb.ae
end_hunk_1
