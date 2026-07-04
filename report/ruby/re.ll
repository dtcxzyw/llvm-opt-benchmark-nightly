inline.NumInlined: 580
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rb_reg_expr_str:bb.a
  br i1 %i.q, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %.not.us = icmp eq i32 %i.p, %5
  br i1 %.not.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.s = call i32 %i.r(i32 noundef range(i32 0, -1) %i.p, i32 noundef 7, ptr noundef nonnull %3) #28, !inline_history !123
  %.not88.us = icmp eq i32 %i.s, 0
  br i1 %.not88.us, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.b, align 4, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.u = call i32 @rb_enc_mbclen(ptr noundef %.091.us, ptr noundef nonnull %i.e, ptr noundef nonnull %3) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.in.us = phi i32 [ %i.u, %bb.f ], [ %i.t, %bb.e ]
  %.pn.us = sext i32 %.pn.in.us to i64
  %.1.us = getelementptr i8, ptr %.091.us, i64 %.pn.us ; 2 uses
  %i.v = icmp ult ptr %.1.us, %i.e
  br i1 %i.v, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !124

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.091 = phi ptr [ %.1, %bb.i ], [ %1, %.lr.ph ] ; 2 uses
  %i.w = call i32 @rb_enc_ascget(ptr noundef %.091, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28 ; 3 uses
  %i.x = icmp eq i32 %i.w, -1
  %.not = icmp eq i32 %i.w, %5
  %or.cond = or i1 %i.x, %.not
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.z = call i32 %i.y(i32 noundef range(i32 0, -1) %i.w, i32 noundef 7, ptr noundef nonnull %3) #28, !inline_history !123
  %.not88 = icmp eq i32 %i.z, 0
  br i1 %.not88, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !7
  %.pn = sext i32 %i.aa to i64
  %.1 = getelementptr i8, ptr %.091, i64 %.pn     ; 2 uses
  %i.ab = icmp ult ptr %.1, %i.e
  br i1 %i.ab, label %.lr.ph.split, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.i, %bb.g, %.preheader
  %i.ac = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %1, i64 noundef %2) #28 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %bb.h, %.lr.ph.split, %bb.d, %bb.c, %bb.a, %bb.b, %rb_enc_asciicompat.exit
  %i.ad = call i32 @rb_enc_unicode_p(ptr noundef nonnull %3) #27
  %i.ae = icmp ult ptr %1, %i.e
  br i1 %i.ae, label %.lr.ph95, label %.loopexit

.lr.ph95:                                         ; preds = %.critedge
  %.not85 = icmp eq ptr %4, null
  %i.af = getelementptr i8, ptr %3, i64 32
  %i.ag = getelementptr i8, ptr %3, i64 88        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.backedge
  %.292 = phi ptr [ %1, %.lr.ph95 ], [ %.2.be, %.backedge ] ; 11 uses
  %i.ah = call i32 @rb_enc_ascget(ptr noundef %.292, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28 ; 5 uses
  switch i32 %i.ah, label %bb.r [
    i32 92, label %bb.k
    i32 -1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %.292, i64 %i.aj  ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.e
  br i1 %i.al, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.am = call i32 @rb_enc_mbclen(ptr noundef %i.ak, ptr noundef nonnull %i.e, ptr noundef nonnull %3) #28
  %i.an = add i32 %i.am, %i.ai
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %.292, i64 noundef %i.ao) #28 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.y
  %.pn96 = phi i64 [ %i.ao, %bb.l ], [ %i.bs, %bb.y ]
  %.2.be = getelementptr i8, ptr %.292, i64 %.pn96 ; 2 uses
  %i.aq = icmp ult ptr %.2.be, %i.e
  br i1 %i.aq, label %bb.j, label %.loopexit, !llvm.loop !125

bb.m:                                             ; preds = %bb.j
  %i.ar = call i32 @rb_enc_precise_mbclen(ptr noundef %.292, ptr noundef nonnull %i.e, ptr noundef nonnull %3) #28 ; 3 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !7
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %.292, align 1, !tbaa !13
  %i.au = zext i8 %i.at to i32
  store i32 1, ptr %i.b, align 4, !tbaa !7
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  br i1 %.not85, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !126
  %i.aw = call i32 %i.av(ptr noundef %.292, ptr noundef nonnull %i.e, ptr noundef nonnull %3) #28, !inline_history !127
  %i.ax = call i32 @rb_str_buf_cat_escaped_char(i64 noundef %0, i32 noundef %i.aw, i32 noundef %i.ad) #28 ; 0 uses
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %.292, i64 noundef %i.ay) #28 ; 0 uses
  br label %bb.y

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.ba = icmp eq i32 %i.ah, %5
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 92, ptr %i.c, align 1, !tbaa !13
  %i.bb = call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %i.be = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %.292, i64 noundef %i.bd) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !122
  %i.bg = call i32 %i.bf(i32 noundef range(i32 0, -1) %i.ah, i32 noundef 7, ptr noundef nonnull %3) #28, !inline_history !123
  %.not89 = icmp eq i32 %i.bg, 0
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bi = sext i32 %i.bh to i64
  %i.bj = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %.292, i64 noundef %i.bi) #28 ; 0 uses
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !122
  %i.bl = call i32 %i.bk(i32 noundef range(i32 0, -1) %i.ah, i32 noundef 9, ptr noundef nonnull %3) #28, !inline_history !128
  %.not90 = icmp eq i32 %i.bl, 0
  br i1 %.not90, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.n
  %.076 = phi i32 [ %i.au, %bb.n ], [ %i.ah, %bb.v ]
  %i.bm = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.d, i64 noundef 8, ptr noundef nonnull @.str.75, i32 noundef %.076) #28 ; 0 uses
  %i.bn = call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %i.d, i64 noundef 4) #28 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call i64 @rb_str_cat(i64 noundef %0, ptr noundef %.292, i64 noundef %i.bp) #28 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.p, %bb.u, %bb.x, %bb.w, %bb.s
  %i.br = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bs = sext i32 %i.br to i64
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %.critedge, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_buf_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_coderange_scan_restartable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_unicode_p(ptr noundef) local_unnamed_addr #13

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_str_buf_cat_escaped_char(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_obj_reveal(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #4

declare i64 @onig_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_nonascii0(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #2 {
bb.a:
  %9 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = alloca ptr, align 8                      ; 28 uses
  %i.b = alloca i8, align 1                       ; 16 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = icmp ne i32 %8, 0                        ; 2 uses
  %i.g = and i32 %7, -3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = icmp ult ptr %i.e, %1
  br i1 %i.i, label %.lr.ph388.lr.ph, label %.loopexit229._crit_edge

.lr.ph388.lr.ph:                                  ; preds = %bb.a
  %i.j = and i32 %7, 2
  br label %.lr.ph388

bb.b:                                             ; preds = %.lr.ph388, %.critedge
  %i.k = phi ptr [ %.promoted395, %.lr.ph388 ], [ %i.r, %.critedge ] ; 14 uses
  %i.l = call i32 @rb_enc_precise_mbclen(ptr noundef %i.k, ptr noundef nonnull %1, ptr noundef %2) #28 ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.loopexit228.loopexit

.loopexit228.loopexit:                            ; preds = %bb.b, %bb.l
  %i.n = phi ptr [ %i.k, %bb.b ], [ %i.u, %bb.l ]
  store ptr %i.n, ptr %i.a, align 8
  br label %.loopexit228

.loopexit228:                                     ; preds = %bb.az, %.loopexit228.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %6, ptr noundef nonnull align 1 dereferenceable(28) @.str.77, i64 noundef 28, i1 false) #28
  br label %.thread220

bb.c:                                             ; preds = %bb.b
  %.not190 = icmp eq i32 %i.l, 1
  br i1 %.not190, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.k, align 1, !tbaa !13    ; 3 uses
  %.not191 = icmp sgt i8 %i.o, -1
  br i1 %.not191, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.n
  %.0162 = phi i32 [ %i.l, %bb.c ], [ 1, %bb.d ], [ %i.y, %bb.n ]
  %i.p = sext i32 %.0162 to i64                   ; 2 uses
  %i.q = call i64 @rb_str_cat(i64 noundef %3, ptr noundef %i.k, i64 noundef %i.p) #28 ; 0 uses
  %i.r = getelementptr i8, ptr %i.k, i64 %i.p     ; 4 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %.critedge, !llvm.loop !129

bb.g:                                             ; preds = %bb.e
  %.not208 = icmp eq ptr %i.s, %2
  br i1 %.not208, label %.critedge, label %bb.h, !llvm.loop !129

bb.h:                                             ; preds = %bb.g
  store ptr %i.r, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %6, ptr noundef nonnull align 1 dereferenceable(36) @.str.78, i64 noundef 36, i1 false) #28
  br label %.thread220

bb.i:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.k, i64 1        ; 23 uses
  store i8 %i.o, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.o, label %.thread215.loopexit316 [
    i8 92, label %bb.j
    i8 35, label %bb.af
    i8 91, label %bb.am
    i8 93, label %bb.an
    i8 41, label %bb.ao
    i8 40, label %bb.ar
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.u, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 noundef 26, i1 false) #28
  br label %.thread220

bb.l:                                             ; preds = %bb.j
  %i.w = call i32 @rb_enc_precise_mbclen(ptr noundef %i.u, ptr noundef nonnull %1, ptr noundef %2) #28 ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %.loopexit228.loopexit

bb.m:                                             ; preds = %bb.l
  %.not201 = icmp eq i32 %i.w, 1
  br i1 %.not201, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = add nuw i32 %i.w, 1
  br label %bb.e

bb.o:                                             ; preds = %bb.m
  %10 = ptrtoint ptr %i.k to i64
  %i.z = getelementptr i8, ptr %i.k, i64 2        ; 3 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !63
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !13   ; 5 uses
  store i8 %i.aa, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.aa, label %bb.ae [
    i8 49, label %bb.p
    i8 50, label %bb.p
    i8 51, label %bb.p
    i8 52, label %bb.p
    i8 53, label %bb.p
    i8 54, label %bb.p
    i8 55, label %bb.p
    i8 48, label %bb.q
    i8 120, label %bb.q
    i8 99, label %bb.q
    i8 67, label %bb.q
    i8 77, label %bb.q
    i8 117, label %bb.u
    i8 112, label %bb.ac
    i8 80, label %bb.ac
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %9, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 3)
  %i.ae = call i64 @ruby_scan_oct(ptr noundef nonnull %i.u, i64 noundef %i.ad, ptr noundef nonnull %i.d) #36
  %i.af = icmp ult i64 %i.ae, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br i1 %i.af, label %._crit_edge290, label %bb.q

._crit_edge290:                                   ; preds = %bb.p
  %.pre = load i8, ptr %i.b, align 1, !tbaa !13
  br label %bb.ae

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  store ptr %i.k, ptr %i.a, align 8, !tbaa !63
  %i.ag = call nonnull ptr @rb_usascii_encoding() #28
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ai = call fastcc i32 @read_escaped_byte(ptr noundef %i.a, ptr noundef nonnull %1, ptr noundef %6) ; 2 uses
  %.not207 = icmp eq i32 %i.ai, -1
  br i1 %.not207, label %.thread220, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = trunc nuw i32 %i.ai to i8
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !13
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %10
  %i.an = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.k, i64 noundef %i.am) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.t:                                             ; preds = %bb.q
  %i.ao = call fastcc i32 @unescape_escaped_nonascii(ptr noundef %i.a, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %6)
  %.not206 = icmp eq i32 %i.ao, 0
  br i1 %.not206, label %.loopexit229.loopexit, label %.thread220

bb.u:                                             ; preds = %bb.o
  %i.ap = icmp eq ptr %i.z, %1
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 noundef 26, i1 false) #28
  br label %.thread220

bb.w:                                             ; preds = %bb.u
  %i.aq = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ar = icmp eq i8 %i.aq, 123
  br i1 %i.ar, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr i8, ptr %i.k, i64 3
  store ptr %i.as, ptr %i.a, align 8, !tbaa !63
  %i.at = call fastcc i32 @unescape_unicode_list(ptr noundef %i.a, ptr noundef nonnull %1, i64 noundef %3, ptr noundef %4, ptr noundef %6)
  %.not204 = icmp eq i32 %i.at, 0
  br i1 %.not204, label %bb.y, label %.thread220

bb.y:                                             ; preds = %bb.x
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !63
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !13
  %.not205 = icmp eq i8 %i.ax, 125
  br i1 %.not205, label %.loopexit229.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 1 dereferenceable(21) @.str.80, i64 noundef 21, i1 false) #28
  br label %.thread220

bb.ab:                                            ; preds = %bb.w
  %i.ay = call fastcc i32 @unescape_unicode_bmp(ptr noundef %i.a, ptr noundef nonnull %1, i64 noundef %3, ptr noundef %4, ptr noundef %6)
  %.not203 = icmp eq i32 %i.ay, 0
  br i1 %.not203, label %.loopexit229.loopexit, label %.thread220

bb.ac:                                            ; preds = %bb.o, %bb.o
  %i.az = load ptr, ptr %4, align 8, !tbaa !64
  %.not202 = icmp eq ptr %i.az, null
  br i1 %.not202, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %5, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge290, %bb.o, %bb.ac, %bb.ad
  %i.ba = phi i8 [ %.pre, %._crit_edge290 ], [ %i.aa, %bb.o ], [ %i.aa, %bb.ac ], [ %i.aa, %bb.ad ]
  store i8 92, ptr %i.c, align 1, !tbaa !13
  store i8 %i.ba, ptr %i.h, align 1, !tbaa !13
  %i.bb = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 2) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.af:                                            ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  %i.bc = icmp eq i32 %.5161392, 0
  %i.bd = icmp ne i32 %.4149394, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond, label %bb.al, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.be = icmp ult ptr %i.u, %1
  br i1 %i.be, label %.lr.ph259.preheader, label %.critedge.loopexit

.lr.ph259.preheader:                              ; preds = %.preheader
  %.promoted258287 = ptrtoint ptr %i.u to i64
  %scevgep286 = getelementptr i8, ptr %i.u, i64 %9
  %i.bf = sub i64 0, %.promoted258287
  %scevgep288 = getelementptr i8, ptr %scevgep286, i64 %i.bf ; 2 uses
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.ak
  %i.bg = phi ptr [ %i.bh, %bb.ak ], [ %i.u, %.lr.ph259.preheader ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 1      ; 3 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !13  ; 3 uses
  store i8 %i.bi, ptr %i.b, align 1, !tbaa !13
  %.not198 = icmp eq i8 %i.bi, 10
  br i1 %.not198, label %.critedge.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph259
  %.not199 = icmp sgt i8 %i.bi, -1
  br i1 %.not199, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = load ptr, ptr %4, align 8, !tbaa !64
  %.not200 = icmp eq ptr %i.bj, null
  br i1 %.not200, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.bk = call nonnull ptr @rb_utf8_encoding() #28
  %i.bl = icmp eq ptr %2, %i.bk
  br i1 %i.bl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %exitcond289.not = icmp eq ptr %i.bh, %scevgep288
  br i1 %exitcond289.not, label %.critedge.loopexit, label %.lr.ph259, !llvm.loop !130

bb.al:                                            ; preds = %bb.af
  %i.bm = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.am:                                            ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  %i.bn = add i32 %.4149394, 1
  %i.bo = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.an:                                            ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.4149394, i32 1)
  %i.bp = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.ao:                                            ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  %i.bq = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  %i.br = icmp eq i32 %.4149394, 0
  %or.cond3 = and i1 %i.f, %i.br
  br i1 %or.cond3, label %bb.ap, label %.loopexit229.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.bs = add i32 %.5155393, -1                   ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aq, label %.loopexit229.loopexit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.u, ptr %0, align 8, !tbaa !63
  br label %.thread220

bb.ar:                                            ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  %11 = ptrtoint ptr %i.k to i64
  %.not192 = icmp eq i32 %.4149394, 0             ; 2 uses
  br i1 %.not192, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.bu = getelementptr i8, ptr %i.k, i64 2       ; 3 uses
  %i.bv = icmp ult ptr %i.bu, %1
  br i1 %i.bv, label %bb.at, label %bb.bl

bb.at:                                            ; preds = %bb.as
  %i.bw = load i8, ptr %i.u, align 1, !tbaa !13
  %i.bx = icmp eq i8 %i.bw, 63
  br i1 %i.bx, label %bb.au, label %bb.bl

bb.au:                                            ; preds = %bb.at
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bz = icmp eq i8 %i.by, 35
  br i1 %i.bz, label %.preheader227, label %.lr.ph.preheader

.preheader227:                                    ; preds = %bb.au
  %i.ca = icmp ult ptr %i.u, %1
  br i1 %i.ca, label %.lr.ph256, label %._crit_edge.thread

.lr.ph256:                                        ; preds = %.preheader227, %bb.bb
  %i.cb = phi ptr [ %i.cm, %bb.bb ], [ %i.u, %.preheader227 ] ; 5 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 1      ; 3 uses
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !13  ; 3 uses
  store i8 %i.cd, ptr %i.b, align 1, !tbaa !13
  switch i8 %i.cd, label %bb.av [
    i8 92, label %bb.az
    i8 41, label %._crit_edge
  ]

bb.av:                                            ; preds = %.lr.ph256
  %.not195 = icmp sgt i8 %i.cd, -1
  br i1 %.not195, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ce = load ptr, ptr %4, align 8, !tbaa !64
  %.not196 = icmp eq ptr %i.ce, null
  br i1 %.not196, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.cf = call nonnull ptr @rb_utf8_encoding() #28
  %i.cg = icmp eq ptr %2, %i.cf
  br i1 %i.cg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay, %.lr.ph256
  %i.ch = phi ptr [ %i.cc, %.lr.ph256 ], [ %i.cb, %bb.ay ], [ %i.cb, %bb.ax ], [ %i.cb, %bb.aw ] ; 2 uses
  %i.ci = call i32 @rb_enc_precise_mbclen(ptr noundef %i.ch, ptr noundef nonnull %1, ptr noundef %2) #28 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ba, label %.loopexit228

bb.ba:                                            ; preds = %bb.az
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = getelementptr i8, ptr %i.ch, i64 %i.ck
  br label %bb.bb

bb.bb:                                            ; preds = %bb.av, %bb.ba
  %i.cm = phi ptr [ %i.cl, %bb.ba ], [ %i.cc, %bb.av ] ; 2 uses
  %i.cn = icmp ult ptr %i.cm, %1
  br i1 %i.cn, label %.lr.ph256, label %._crit_edge.thread, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph256
  store ptr %i.cc, ptr %i.a, align 8
  br label %.loopexit229.loopexit

._crit_edge.thread:                               ; preds = %bb.bb, %.preheader227
  store ptr %i.u, ptr %i.a, align 8, !tbaa !63
  store i8 40, ptr %i.b, align 1, !tbaa !13
  %i.co = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.lr.ph.preheader:                                 ; preds = %bb.au
  %spec.select209 = add i32 %.5155393, %8         ; 7 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %9
  %i.cp = sub i64 0, %11
  %scevgep285 = getelementptr i8, ptr %scevgep, i64 %i.cp
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bk
  %.0138252 = phi ptr [ %.0138, %bb.bk ], [ %i.bu, %.lr.ph.preheader ] ; 2 uses
  %.0139251 = phi i32 [ %.1140, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0141250 = phi i32 [ %.1142, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.cq = load i8, ptr %.0138252, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.cq, label %.thread215 [
    i8 120, label %bb.bc
    i8 45, label %bb.bd
    i8 58, label %bb.be
    i8 41, label %bb.be
    i8 105, label %bb.bk
    i8 109, label %bb.bk
    i8 97, label %bb.bk
    i8 100, label %bb.bk
    i8 117, label %bb.bk
  ]

bb.bc:                                            ; preds = %.lr.ph
  %.not194 = icmp eq i32 %.0141250, 0
  %i.cr = select i1 %.not194, i32 1, i32 -1
  br label %bb.bk

bb.bd:                                            ; preds = %.lr.ph
  br label %bb.bk

bb.be:                                            ; preds = %.lr.ph, %.lr.ph
  %i.cs = icmp eq i32 %.0139251, 0
  br i1 %i.cs, label %.thread215, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ct = icmp ne i32 %.0139251, -1
  %i.cu = icmp ne i32 %.5161392, 0                ; 2 uses
  %or.cond5 = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond5, label %bb.bg, label %.thread215

bb.bg:                                            ; preds = %bb.bf
  %i.cv = icmp eq i32 %.0139251, 1                ; 3 uses
  %or.cond7 = select i1 %i.cv, i1 %i.cu, i1 false
  br i1 %or.cond7, label %.thread215, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cw = icmp eq i8 %i.cq, 58
  br i1 %i.cw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %masksel = select i1 %i.cv, i32 2, i32 0
  %.0137 = or disjoint i32 %masksel, %i.g
  %i.cx = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  %i.cy = call fastcc i32 @unescape_nonascii0(ptr noundef %i.a, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %.0137, i32 noundef 1)
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %.thread220, label %.loopexit229.loopexit

bb.bj:                                            ; preds = %bb.bh
  %i.da = zext i1 %i.cv to i32
  br label %.thread215

bb.bk:                                            ; preds = %bb.bc, %bb.bd, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.1142 = phi i32 [ %.0141250, %bb.bc ], [ 1, %bb.bd ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ]
  %.1140 = phi i32 [ %i.cr, %bb.bc ], [ %.0139251, %bb.bd ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ]
  %.0138 = getelementptr i8, ptr %.0138252, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.0138, %scevgep285
  br i1 %exitcond.not, label %.thread215, label %.lr.ph, !llvm.loop !132

bb.bl:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %or.cond9 = and i1 %i.f, %.not192
  %i.db = zext i1 %or.cond9 to i32
  %spec.select210 = add i32 %.5155393, %i.db
  br label %.thread215

.thread215.loopexit316:                           ; preds = %bb.i
  store ptr %i.u, ptr %i.a, align 8
  br label %.thread215

.thread215:                                       ; preds = %.lr.ph, %bb.bk, %.thread215.loopexit316, %bb.bf, %bb.bg, %bb.bj, %bb.be, %bb.bl
  %.2158 = phi i32 [ %.5161392, %.thread215.loopexit316 ], [ %.5161392, %bb.bl ], [ %.5161392, %bb.be ], [ 0, %bb.bf ], [ %.5161392, %bb.bg ], [ %i.da, %bb.bj ], [ %.5161392, %bb.bk ], [ %.5161392, %.lr.ph ]
  %.2152 = phi i32 [ %.5155393, %.thread215.loopexit316 ], [ %spec.select210, %bb.bl ], [ %spec.select209, %bb.be ], [ %spec.select209, %bb.bf ], [ %spec.select209, %bb.bg ], [ %spec.select209, %bb.bj ], [ %spec.select209, %bb.bk ], [ %spec.select209, %.lr.ph ]
  %i.dc = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.critedge.loopexit:                               ; preds = %bb.ak, %.lr.ph259, %.preheader
  %i.dd = phi ptr [ %i.u, %.preheader ], [ %scevgep288, %bb.ak ], [ %i.bh, %.lr.ph259 ]
  store ptr %i.dd, ptr %i.a, align 8
  br label %.loopexit229.loopexit

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.de = icmp ult ptr %i.r, %1
  br i1 %i.de, label %bb.b, label %.loopexit229._crit_edge

.loopexit229.loopexit:                            ; preds = %bb.bi, %._crit_edge, %._crit_edge.thread, %bb.s, %bb.ao, %bb.ap, %bb.am, %bb.al, %bb.ae, %bb.t, %bb.z, %bb.ab, %.thread215, %bb.an, %.critedge.loopexit
  %.4160.ph = phi i32 [ %.5161392, %.critedge.loopexit ], [ %.5161392, %bb.an ], [ %.2158, %.thread215 ], [ %.5161392, %bb.ab ], [ %.5161392, %bb.z ], [ %.5161392, %bb.t ], [ %.5161392, %bb.ae ], [ %.5161392, %bb.al ], [ %.5161392, %bb.am ], [ %.5161392, %bb.ap ], [ %.5161392, %bb.ao ], [ %.5161392, %bb.s ], [ %.5161392, %._crit_edge.thread ], [ %.5161392, %._crit_edge ], [ %.5161392, %bb.bi ]
  %.4154.ph = phi i32 [ %.5155393, %.critedge.loopexit ], [ %.5155393, %bb.an ], [ %.2152, %.thread215 ], [ %.5155393, %bb.ab ], [ %.5155393, %bb.z ], [ %.5155393, %bb.t ], [ %.5155393, %bb.ae ], [ %.5155393, %bb.al ], [ %.5155393, %bb.am ], [ %i.bs, %bb.ap ], [ %.5155393, %bb.ao ], [ %.5155393, %bb.s ], [ %.5155393, %._crit_edge.thread ], [ %.5155393, %._crit_edge ], [ %spec.select209, %bb.bi ]
  %.3148.ph = phi i32 [ 0, %.critedge.loopexit ], [ %spec.select, %bb.an ], [ %.4149394, %.thread215 ], [ %.4149394, %bb.ab ], [ %.4149394, %bb.z ], [ %.4149394, %bb.t ], [ %.4149394, %bb.ae ], [ %.4149394, %bb.al ], [ %i.bn, %bb.am ], [ 0, %bb.ap ], [ %.4149394, %bb.ao ], [ %.4149394, %bb.s ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge ], [ 0, %bb.bi ]
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !63 ; 3 uses
  %i.df = icmp ult ptr %.promoted, %1
  br i1 %i.df, label %.lr.ph388, label %.loopexit229._crit_edge

.lr.ph388:                                        ; preds = %.lr.ph388.lr.ph, %.loopexit229.loopexit
  %.promoted395 = phi ptr [ %i.e, %.lr.ph388.lr.ph ], [ %.promoted, %.loopexit229.loopexit ]
  %.4149394 = phi i32 [ 0, %.lr.ph388.lr.ph ], [ %.3148.ph, %.loopexit229.loopexit ] ; 13 uses
  %.5155393 = phi i32 [ 1, %.lr.ph388.lr.ph ], [ %.4154.ph, %.loopexit229.loopexit ] ; 16 uses
  %.5161392 = phi i32 [ %i.j, %.lr.ph388.lr.ph ], [ %.4160.ph, %.loopexit229.loopexit ] ; 22 uses
  br label %bb.b

.loopexit229._crit_edge:                          ; preds = %.loopexit229.loopexit, %.critedge, %bb.a
  %.lcssa370 = phi ptr [ %i.r, %.critedge ], [ %i.e, %bb.a ], [ %.promoted, %.loopexit229.loopexit ] ; 2 uses
  store ptr %.lcssa370, ptr %i.a, align 8
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.thread220, label %bb.bm

bb.bm:                                            ; preds = %.loopexit229._crit_edge
  store ptr %.lcssa370, ptr %0, align 8, !tbaa !63
  br label %.thread220

.thread220:                                       ; preds = %bb.bi, %bb.r, %bb.x, %bb.t, %bb.ab, %bb.aq, %.loopexit228, %bb.aa, %bb.v, %bb.k, %bb.h, %.loopexit229._crit_edge, %bb.bm
  %.8 = phi i32 [ -1, %bb.k ], [ 0, %bb.bm ], [ 0, %.loopexit229._crit_edge ], [ -1, %bb.v ], [ 0, %bb.aq ], [ -1, %.loopexit228 ], [ -1, %bb.h ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.t ], [ -1, %bb.x ], [ -1, %bb.r ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.8
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare i64 @ruby_scan_oct(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 256) i32 @read_escaped_byte(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, 92
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 1        ; 12 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %.outer._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = getelementptr i8, ptr %i.b, i64 2        ; 13 uses
  %i.h = load i8, ptr %i.e, align 1, !tbaa !13
  switch i8 %i.h, label %.loopexit [
    i8 92, label %.thread.thread391.thread567
    i8 110, label %.thread.thread391.thread595
    i8 116, label %.thread408
    i8 114, label %.thread.thread391.thread
    i8 102, label %.thread.thread391.thread455
    i8 118, label %.thread.thread391.thread483
    i8 97, label %.thread.thread391.thread511
    i8 101, label %.thread.thread391.thread539
    i8 48, label %.loopexit266
    i8 49, label %.loopexit266
    i8 50, label %.loopexit266
    i8 51, label %.loopexit266
    i8 52, label %.loopexit266
    i8 53, label %.loopexit266
    i8 54, label %.loopexit266
    i8 55, label %.loopexit266
    i8 120, label %.loopexit267
    i8 77, label %.loopexit268
    i8 67, label %bb.r
    i8 99, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 1 dereferenceable(38) @.str.81, i64 noundef 38, i1 false) #28
  br label %bb.ad

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.w, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %2, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 noundef 26, i1 false) #28
  br label %bb.ad

.loopexit261:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit262:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit263:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit264:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit265:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit266:                                     ; preds = %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1
  %.058.ph173.lcssa246 = phi i32 [ 1, %.peel.next.1 ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ]
  %.0170.lcssa220 = phi i32 [ 1, %.peel.next.1 ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ]
  %.062169.lcssa201 = phi ptr [ %i.at, %.peel.next.1 ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ] ; 4 uses
  %i.i = getelementptr i8, ptr %.062169.lcssa201, i64 3
  %i.j = icmp ult ptr %1, %i.i
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.062169.lcssa201 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = select i1 %i.j, i64 %i.m, i64 3
  %i.o = call i64 @ruby_scan_oct(ptr noundef nonnull %.062169.lcssa201, i64 noundef %i.n, ptr noundef nonnull %i.a) #36
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  %i.q = getelementptr i8, ptr %.062169.lcssa201, i64 %i.p
  br label %bb.ab

.loopexit267:                                     ; preds = %.lr.ph.preheader, %.lr.ph.1, %.peel.next, %.peel.next.1
  %.058.ph173.lcssa247 = phi i32 [ 1, %.peel.next.1 ], [ 0, %.peel.next ], [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ]
  %.0170.lcssa221 = phi i32 [ 1, %.peel.next.1 ], [ 1, %.peel.next ], [ 0, %.lr.ph.preheader ], [ %.0170.lcssa222, %.lr.ph.1 ]
  %.062169.lcssa202 = phi ptr [ %i.at, %.peel.next.1 ], [ %i.bg, %.peel.next ], [ %i.e, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.1 ]
  %.lcssa186 = phi ptr [ %i.av, %.peel.next.1 ], [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.1 ] ; 3 uses
  %i.r = getelementptr i8, ptr %.062169.lcssa202, i64 3
  %i.s = icmp ult ptr %1, %i.r
  %i.t = ptrtoint ptr %1 to i64
  %i.u = ptrtoint ptr %.lcssa186 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = select i1 %i.s, i64 %i.v, i64 2
  %i.x = call i64 @ruby_scan_hex(ptr noundef %.lcssa186, i64 noundef %i.w, ptr noundef nonnull %i.a) #28
  %i.y = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.82, i64 noundef 19, i1 false) #28
  br label %bb.ad

bb.e:                                             ; preds = %.loopexit267
  %i.aa = getelementptr i8, ptr %.lcssa186, i64 %i.y
  br label %bb.ab

.loopexit268:                                     ; preds = %.peel.next, %.lr.ph.preheader
  %.not74.peel.1 = phi i1 [ true, %.lr.ph.preheader ], [ false, %.peel.next ]
  %.0170.lcssa222 = phi i32 [ 0, %.lr.ph.preheader ], [ 1, %.peel.next ] ; 18 uses
  %.062169.lcssa203 = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bg, %.peel.next ] ; 5 uses
  %.lcssa187 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.bi, %.peel.next ]
  %i.ab = getelementptr i8, ptr %.062169.lcssa203, i64 2 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.y

.loopexit268.1:                                   ; preds = %.peel.next.1, %.lr.ph.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 1 dereferenceable(22) @.str.83, i64 noundef 22, i1 false) #28
  br label %bb.ad

bb.f:                                             ; preds = %.loopexit268
  %i.ad = load i8, ptr %.lcssa187, align 1, !tbaa !13
  %i.ae = icmp eq i8 %i.ad, 45
  br i1 %i.ae, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !13  ; 3 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i8 %i.af, 92
  br i1 %i.ah, label %.outer, label %bb.x

.outer:                                           ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %.062169.lcssa203, i64 3 ; 11 uses
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %.outer._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.outer
  %i.ak = getelementptr i8, ptr %.062169.lcssa203, i64 4 ; 12 uses
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !13
  switch i8 %i.al, label %.loopexit [
    i8 92, label %.thread.loopexit
    i8 110, label %.thread.loopexit175
    i8 116, label %.thread
    i8 114, label %.loopexit261
    i8 102, label %.loopexit262
    i8 118, label %.loopexit263
    i8 97, label %.loopexit264
    i8 101, label %.loopexit265
    i8 48, label %.loopexit266
    i8 49, label %.loopexit266
    i8 50, label %.loopexit266
    i8 51, label %.loopexit266
    i8 52, label %.loopexit266
    i8 53, label %.loopexit266
    i8 54, label %.loopexit266
    i8 55, label %.loopexit266
    i8 120, label %.loopexit267
    i8 77, label %.loopexit268.1
    i8 67, label %bb.i
    i8 99, label %bb.k
  ]

bb.i:                                             ; preds = %.lr.ph.1
  %i.am = icmp eq ptr %i.ak, %1
  br i1 %i.am, label %.loopexit269, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.062169.lcssa203, i64 5
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !13
  %.not73.peel.1 = icmp eq i8 %i.ao, 45
  br i1 %.not73.peel.1, label %bb.k, label %.loopexit269

bb.k:                                             ; preds = %bb.j, %.lr.ph.1
  %.163.peel.1 = phi ptr [ %i.an, %bb.j ], [ %i.ak, %.lr.ph.1 ] ; 5 uses
  br i1 %.not74.peel.1, label %bb.l, label %.loopexit270

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult ptr %.163.peel.1, %1
end_hunk_0
begin_hunk_1_@read_escaped_byte:bb.a
  %.0170229 = phi i32 [ %.0170.lcssa220, %.loopexit266 ], [ %.0170.lcssa221, %bb.e ]
  %.264 = phi ptr [ %i.q, %.loopexit266 ], [ %i.aa, %bb.e ]
  %.060.in = phi i64 [ %i.o, %.loopexit266 ], [ %i.x, %bb.e ]
  %.060 = trunc i64 %.060.in to i32               ; 2 uses
  %or.cond = icmp ugt i32 %.060, 255
  br i1 %or.cond, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) @.str.88, i64 noundef 20, i1 false) #28
  br label %bb.ad

.thread.loopexit:                                 ; preds = %.lr.ph.1
  br label %.thread

.thread.loopexit175:                              ; preds = %.lr.ph.1
  br label %.thread

.thread:                                          ; preds = %.lr.ph.1, %.thread.loopexit175, %.thread.loopexit, %bb.x, %.loopexit265, %.loopexit264, %.loopexit263, %.loopexit262, %.loopexit261, %bb.ab
  %.0170228 = phi i32 [ %.0170229, %bb.ab ], [ %.0170.lcssa222, %.loopexit265 ], [ %.0170.lcssa222, %bb.x ], [ %.0170.lcssa222, %.loopexit264 ], [ %.0170.lcssa222, %.loopexit263 ], [ %.0170.lcssa222, %.loopexit262 ], [ %.0170.lcssa222, %.loopexit261 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.thread.loopexit ], [ %.0170.lcssa222, %.thread.loopexit175 ]
  %.15985 = phi i32 [ %.058.ph173257, %bb.ab ], [ 1, %.loopexit265 ], [ 1, %bb.x ], [ 1, %.loopexit264 ], [ 1, %.loopexit263 ], [ 1, %.loopexit262 ], [ 1, %.loopexit261 ], [ 1, %.lr.ph.1 ], [ 1, %.thread.loopexit ], [ 1, %.thread.loopexit175 ]
  %.06084 = phi i32 [ %.060, %bb.ab ], [ 27, %.loopexit265 ], [ %i.bk, %bb.x ], [ 7, %.loopexit264 ], [ 11, %.loopexit263 ], [ 12, %.loopexit262 ], [ 13, %.loopexit261 ], [ 9, %.lr.ph.1 ], [ 92, %.thread.loopexit ], [ 10, %.thread.loopexit175 ] ; 2 uses
  %.26483 = phi ptr [ %.264, %bb.ab ], [ %i.ak, %.loopexit265 ], [ %i.bl, %bb.x ], [ %i.ak, %.loopexit264 ], [ %i.ak, %.loopexit263 ], [ %i.ak, %.loopexit262 ], [ %i.ak, %.loopexit261 ], [ %i.ak, %.lr.ph.1 ], [ %i.ak, %.thread.loopexit ], [ %i.ak, %.thread.loopexit175 ]
  %.not76 = icmp eq i32 %.0170228, 0
  %i.br = and i32 %.06084, 31
  %spec.select = select i1 %.not76, i32 %.06084, i32 %i.br
  br label %.thread.thread391

.thread.thread391.thread:                         ; preds = %.lr.ph.preheader
  br label %.thread408

.thread.thread391.thread455:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph = phi i32 [ 13, %.peel.next ], [ 12, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread483:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph481 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph482 = phi i32 [ 12, %.peel.next ], [ 11, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread511:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph509 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph510 = phi i32 [ 11, %.peel.next ], [ 7, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread539:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph537 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph538 = phi i32 [ 7, %.peel.next ], [ 27, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread567:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph565 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph566 = phi i32 [ 27, %.peel.next ], [ 92, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391.thread595:                      ; preds = %.peel.next, %.lr.ph.preheader
  %.2648393.ph593 = phi ptr [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ]
  %.ph594 = phi i32 [ 28, %.peel.next ], [ 10, %.lr.ph.preheader ]
  br label %.thread408

.thread.thread391:                                ; preds = %.thread, %.thread.thread
  %.2648393 = phi ptr [ %i.bo, %.thread.thread ], [ %.26483, %.thread ]
  %.1598592 = phi i32 [ %.058.ph173.lcssa251.ph318, %.thread.thread ], [ %.15985, %.thread ]
  %i.bs = phi i32 [ %i.bq, %.thread.thread ], [ %spec.select, %.thread ] ; 2 uses
  %.not77 = icmp eq i32 %.1598592, 0
  %i.bt = or i32 %i.bs, 128
  %spec.select613 = select i1 %.not77, i32 %i.bs, i32 %i.bt
  br label %.thread408

.thread408:                                       ; preds = %.thread.thread391, %.thread.thread391.thread604, %.thread.thread391.thread609, %.thread.thread391.thread595, %.thread.thread391.thread600, %.thread.thread391.thread567, %.thread.thread391.thread572, %.thread.thread391.thread539, %.thread.thread391.thread544, %.thread.thread391.thread511, %.thread.thread391.thread516, %.thread.thread391.thread483, %.thread.thread391.thread488, %.thread.thread391.thread455, %.thread.thread391.thread460, %.peel.next, %.peel.next.1, %.thread.thread391.thread, %.lr.ph.preheader
  %.2648393412 = phi ptr [ %.2648393, %.thread.thread391 ], [ %i.av, %.thread.thread391.thread460 ], [ %i.g, %.lr.ph.preheader ], [ %i.av, %.peel.next.1 ], [ %i.bi, %.peel.next ], [ %i.g, %.thread.thread391.thread ], [ %.2648393.ph, %.thread.thread391.thread455 ], [ %i.av, %.thread.thread391.thread488 ], [ %.2648393.ph481, %.thread.thread391.thread483 ], [ %i.av, %.thread.thread391.thread516 ], [ %.2648393.ph509, %.thread.thread391.thread511 ], [ %i.av, %.thread.thread391.thread544 ], [ %.2648393.ph537, %.thread.thread391.thread539 ], [ %i.av, %.thread.thread391.thread572 ], [ %.2648393.ph565, %.thread.thread391.thread567 ], [ %i.av, %.thread.thread391.thread600 ], [ %.2648393.ph593, %.thread.thread391.thread595 ], [ %i.av, %.thread.thread391.thread609 ], [ %i.bi, %.thread.thread391.thread604 ]
  %i.bu = phi i32 [ %spec.select613, %.thread.thread391 ], [ 141, %.thread.thread391.thread460 ], [ 9, %.lr.ph.preheader ], [ 137, %.peel.next.1 ], [ 9, %.peel.next ], [ 13, %.thread.thread391.thread ], [ %.ph, %.thread.thread391.thread455 ], [ 140, %.thread.thread391.thread488 ], [ %.ph482, %.thread.thread391.thread483 ], [ 139, %.thread.thread391.thread516 ], [ %.ph510, %.thread.thread391.thread511 ], [ 135, %.thread.thread391.thread544 ], [ %.ph538, %.thread.thread391.thread539 ], [ 155, %.thread.thread391.thread572 ], [ %.ph566, %.thread.thread391.thread567 ], [ 156, %.thread.thread391.thread600 ], [ %.ph594, %.thread.thread391.thread595 ], [ 138, %.thread.thread391.thread609 ], [ 10, %.thread.thread391.thread604 ]
  store ptr %.2648393412, ptr %0, align 8, !tbaa !63
  br label %bb.ad

bb.ad:                                            ; preds = %.thread408, %bb.ac, %.loopexit, %.loopexit316, %.loopexit270, %.loopexit269, %bb.y, %.loopexit268.1, %bb.d, %.outer._crit_edge, %bb.c
  %.065 = phi i32 [ -1, %bb.c ], [ -1, %.outer._crit_edge ], [ -1, %.loopexit ], [ -1, %bb.ac ], [ %i.bu, %.thread408 ], [ -1, %bb.d ], [ -1, %.loopexit268.1 ], [ -1, %bb.y ], [ -1, %.loopexit269 ], [ -1, %.loopexit270 ], [ -1, %.loopexit316 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.065
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_escaped_nonascii(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [5 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = load ptr, ptr %0, align 8, !tbaa !63
  store ptr %i.c, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val = load i32, ptr %i.d, align 8, !tbaa !70  ; 4 uses
  %i.e = sext i32 %.val to i64                    ; 2 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 %i.f, i8 noundef 0, i64 noundef %i.e, i1 noundef false) #28
  %i.g = call fastcc i32 @read_escaped_byte(ptr noundef %i.a, ptr noundef %1, ptr noundef %5) ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc nuw i32 %i.g to i8
  store i8 %i.i, ptr %i.f, align 16, !tbaa !13
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.l = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.k, ptr noundef %2) #28
  %i.m = icmp slt i32 %i.l, -1
  br i1 %i.m, label %bb.c, label %.critedge.split.loop.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = call fastcc i32 @read_escaped_byte(ptr noundef %i.a, ptr noundef %1, ptr noundef %5) ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw i32 %i.n to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  store i8 %i.p, ptr %i.k, align 1, !tbaa !13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !133

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.split.loop.exit
  %.044.lcssa = phi i32 [ %i.q, %.critedge.split.loop.exit ], [ %.val, %bb.d ] ; 2 uses
  %i.r = zext nneg i32 %.044.lcssa to i64         ; 3 uses
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  %i.t = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.s, ptr noundef %2) #28
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

.critedge.thread:                                 ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.f, i64 1
  %i.w = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.f, ptr noundef %i.v, ptr noundef nonnull %2) #28
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge.thread, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %5, ptr noundef nonnull align 1 dereferenceable(25) @.str.89, i64 noundef 25, i1 false) #28
  br label %.loopexit

bb.f:                                             ; preds = %.critedge
  %i.y = icmp samesign ugt i32 %.044.lcssa, 1
  br i1 %i.y, label %bb.g, label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.f
  %i.z = phi i64 [ %i.r, %bb.f ], [ 1, %.critedge.thread ]
  %i.aa = load i8, ptr %i.f, align 16, !tbaa !13  ; 2 uses
  %.not = icmp sgt i8 %i.aa, -1
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = phi i64 [ %i.z, %.thread ], [ %i.r, %bb.f ]
  %i.ac = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.f, i64 noundef %i.ab) #28 ; 0 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not48 = icmp eq ptr %i.ad, %2
  br i1 %.not48, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %5, ptr noundef nonnull align 1 dereferenceable(44) @.str.90, i64 noundef 44, i1 false) #28
  br label %.loopexit

bb.k:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.af = zext nneg i8 %i.aa to i32
  %i.ag = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.b, i64 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %i.af) #28 ; 0 uses
  %i.ah = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.ai, ptr %0, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.l, %bb.j, %bb.e
  %.0 = phi i32 [ -1, %bb.j ], [ -1, %bb.a ], [ -1, %bb.e ], [ 0, %bb.l ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_unicode_list(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %5 = ptrtoint ptr %1 to i64                     ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  %6 = ptrtoint ptr %i.b to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = icmp ult ptr %i.b, %1
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sub i64 %5, %6
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02537 = phi ptr [ %i.j, %bb.b ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.e = load i8, ptr %.02537, align 1, !tbaa !13 ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = icmp ne i8 %i.e, 32
  %i.h = add nsw i32 %i.f, -14
  %i.i = icmp ult i32 %i.h, -5
  %narrow.i.not = select i1 %i.g, i1 %i.i, i1 false
  br i1 %narrow.i.not, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.02537, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.j, %1
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !134

.critedge.loopexit:                               ; preds = %bb.b, %.lr.ph
  %.025.lcssa.ph = phi ptr [ %.02537, %.lr.ph ], [ %scevgep, %bb.b ] ; 2 uses
  %.pre = ptrtoint ptr %.025.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %6, %bb.a ]
  %.025.lcssa = phi ptr [ %.025.lcssa.ph, %.critedge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = sub i64 %5, %.pre-phi
  %i.l = call i64 @ruby_scan_hex(ptr noundef %.025.lcssa, i64 noundef %i.k, ptr noundef nonnull %i.a) #28
  %i.m = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.critedge49, label %.lr.ph46

.lr.ph46:                                         ; preds = %.critedge, %.critedge2
  %i.o = phi i64 [ %i.ae, %.critedge2 ], [ %i.m, %.critedge ] ; 2 uses
  %i.p = phi i64 [ %i.ad, %.critedge2 ], [ %i.l, %.critedge ]
  %.145 = phi ptr [ %.2.lcssa, %.critedge2 ], [ %.025.lcssa, %.critedge ] ; 3 uses
  %.14551 = ptrtoint ptr %.145 to i64
  %i.q = icmp ugt i64 %i.o, 6
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @.str.91, i64 noundef 22, i1 false) #28
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph46
  %i.r = call fastcc i32 @append_utf8(i64 noundef %i.p, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %.not27 = icmp eq i32 %i.r, 0
  br i1 %.not27, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.145, i64 %i.o    ; 3 uses
  %i.t = icmp ult ptr %i.s, %1
  br i1 %i.t, label %.lr.ph41.preheader, label %.critedge2

.lr.ph41.preheader:                               ; preds = %bb.e
  %scevgep50 = getelementptr i8, ptr %.145, i64 %5
  %i.u = sub i64 0, %.14551
  %scevgep52 = getelementptr i8, ptr %scevgep50, i64 %i.u ; 2 uses
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.f
  %.240 = phi ptr [ %i.aa, %bb.f ], [ %i.s, %.lr.ph41.preheader ] ; 3 uses
  %i.v = load i8, ptr %.240, align 1, !tbaa !13   ; 2 uses
  %i.w = sext i8 %i.v to i32
  %i.x = icmp ne i8 %i.v, 32
  %i.y = add nsw i32 %i.w, -14
  %i.z = icmp ult i32 %i.y, -5
  %narrow.i29.not = select i1 %i.x, i1 %i.z, i1 false
  br i1 %narrow.i29.not, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %.lr.ph41
  %i.aa = getelementptr i8, ptr %.240, i64 1      ; 2 uses
  %exitcond53.not = icmp eq ptr %i.aa, %scevgep52
  br i1 %exitcond53.not, label %.critedge2, label %.lr.ph41, !llvm.loop !135

.critedge2:                                       ; preds = %.lr.ph41, %bb.f, %bb.e
  %.2.lcssa = phi ptr [ %i.s, %bb.e ], [ %scevgep52, %bb.f ], [ %.240, %.lr.ph41 ] ; 4 uses
  %i.ab = ptrtoint ptr %.2.lcssa to i64
  %i.ac = sub i64 %5, %i.ab
  %i.ad = call i64 @ruby_scan_hex(ptr noundef %.2.lcssa, i64 noundef %i.ac, ptr noundef nonnull %i.a) #28
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph46

.critedge49:                                      ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %4, ptr noundef nonnull align 1 dereferenceable(21) @.str.80, i64 noundef 21, i1 false) #28
  br label %.loopexit

._crit_edge:                                      ; preds = %.critedge2
  store ptr %.2.lcssa, ptr %0, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %.critedge49, %bb.c
  %.0 = phi i32 [ -1, %.critedge49 ], [ 0, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @unescape_unicode_bmp(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.d = icmp ult ptr %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 noundef 23, i1 false) #28
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = call i64 @ruby_scan_hex(ptr noundef %i.b, i64 noundef 4, ptr noundef nonnull %i.a) #28
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i64 %i.f, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.93, i64 noundef 23, i1 false) #28
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.g = call fastcc i32 @append_utf8(i64 noundef %i.e, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

declare i64 @ruby_scan_hex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @append_utf8(i64 noundef %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 5 uses
  %i.c = and i64 %0, -2048
  %or.cond.i = icmp eq i64 %i.c, 55296
  %i.d = icmp ugt i64 %0, 1114111
  %or.cond3.i = or i1 %i.d, %or.cond.i
  br i1 %or.cond3.i, label %check_unicode_range.exit, label %bb.b

check_unicode_range.exit:                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.91, i64 noundef 22, i1 false) #28
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %0, 128
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.f = trunc nuw nsw i64 %0 to i32
  %i.g = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %i.f) #28 ; 0 uses
  %i.h = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = call i32 @rb_uv_to_utf8(ptr noundef nonnull %i.b, i64 noundef %0) #28
  %i.j = sext i32 %i.i to i64
  %i.k = call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.j) #28 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = call nonnull ptr @rb_utf8_encoding() #28 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %2, align 8, !tbaa !64
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.l, %i.n
  br i1 %.not17, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.92, i64 noundef 36, i1 false) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.thread, %bb.g, %check_unicode_range.exit
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %check_unicode_range.exit ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @rb_uv_to_utf8(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_enc_reg_error_desc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i64 @rb_str_buf_new_cstr(ptr noundef nonnull %4) #28 ; 5 uses
  %i.c = tail call ptr @rb_default_internal_encoding() #28 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @rb_default_external_encoding() #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.f = tail call i64 @rb_enc_associate(i64 noundef %i.b, ptr noundef %2) #28 ; 0 uses
  %i.g = tail call i64 @rb_str_cat(i64 noundef %i.b, ptr noundef nonnull @.str.94, i64 noundef 3) #28 ; 0 uses
  tail call fastcc void @rb_reg_expr_str(i64 noundef %i.b, ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %.0, i32 noundef 47)
  store i8 47, ptr %i.a, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.i = and i32 %3, 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 109, ptr %i.h, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = and i32 %3, 1
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.0.i, i64 1
  store i8 105, ptr %.0.i, align 1, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %i.l, %bb.f ], [ %.0.i, %bb.e ] ; 3 uses
  %i.m = and i32 %3, 2
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %option_to_str.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %.1.i, i64 1
  store i8 120, ptr %.1.i, align 1, !tbaa !13
  br label %option_to_str.exit

option_to_str.exit:                               ; preds = %bb.g, %bb.h
  %.2.i = phi ptr [ %i.n, %bb.h ], [ %.1.i, %bb.g ]
  store i8 0, ptr %.2.i, align 1, !tbaa !13
  %i.o = call i64 @rb_str_cat_cstr(i64 noundef %i.b, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.p = load i64, ptr @rb_eRegexpError, align 8, !tbaa !19
  %i.q = call i64 @rb_exc_new_str(i64 noundef %i.p, i64 noundef %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %i.q
}

declare i64 @rb_str_buf_new_cstr(ptr noundef) local_unnamed_addr #4

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #10

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #13

end_hunk_1
