inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@rb_reg_expr_str:bb.a
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
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = alloca ptr, align 8                      ; 28 uses
  %i.c = alloca i8, align 1                       ; 16 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !63     ; 4 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %9 = icmp ne i32 %8, 0                          ; 2 uses
  %10 = and i32 %7, -3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = icmp ult ptr %i.f, %1
  br i1 %i.h, label %.lr.ph388.lr.ph, label %.loopexit229._crit_edge

.lr.ph388.lr.ph:                                  ; preds = %bb.a
  %i.i = and i32 %7, 2
  br label %.lr.ph388

bb.b:                                             ; preds = %.lr.ph388, %.critedge
  %i.j = phi ptr [ %.promoted395, %.lr.ph388 ], [ %i.q, %.critedge ] ; 14 uses
  %i.k = call i32 @rb_enc_precise_mbclen(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef %2) #28 ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.loopexit228.loopexit

.loopexit228.loopexit:                            ; preds = %bb.b, %bb.l
  %i.m = phi ptr [ %i.j, %bb.b ], [ %i.t, %bb.l ]
  store ptr %i.m, ptr %i.b, align 8
  br label %.loopexit228

.loopexit228:                                     ; preds = %bb.az, %.loopexit228.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %6, ptr noundef nonnull align 1 dereferenceable(28) @.str.77, i64 noundef 28, i1 false) #28
  br label %.thread220

bb.c:                                             ; preds = %bb.b
  %.not190 = icmp eq i32 %i.k, 1
  br i1 %.not190, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.j, align 1, !tbaa !13    ; 3 uses
  %.not191 = icmp sgt i8 %i.n, -1
  br i1 %.not191, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.n
  %.0162 = phi i32 [ %i.k, %bb.c ], [ 1, %bb.d ], [ %i.x, %bb.n ]
  %i.o = sext i32 %.0162 to i64                   ; 2 uses
  %i.p = call i64 @rb_str_cat(i64 noundef %3, ptr noundef %i.j, i64 noundef %i.o) #28 ; 0 uses
  %i.q = getelementptr i8, ptr %i.j, i64 %i.o     ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %.critedge, !llvm.loop !129

bb.g:                                             ; preds = %bb.e
  %.not208 = icmp eq ptr %i.r, %2
  br i1 %.not208, label %.critedge, label %bb.h, !llvm.loop !129

bb.h:                                             ; preds = %bb.g
  store ptr %i.q, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %6, ptr noundef nonnull align 1 dereferenceable(36) @.str.78, i64 noundef 36, i1 false) #28
  br label %.thread220

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.j, i64 1        ; 23 uses
  store i8 %i.n, ptr %i.c, align 1, !tbaa !13
  switch i8 %i.n, label %.thread215.loopexit316 [
    i8 92, label %bb.j
    i8 35, label %bb.af
    i8 91, label %bb.am
    i8 93, label %bb.an
    i8 41, label %bb.ao
    i8 40, label %bb.ar
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.t, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 noundef 26, i1 false) #28
  br label %.thread220

bb.l:                                             ; preds = %bb.j
  %i.v = call i32 @rb_enc_precise_mbclen(ptr noundef %i.t, ptr noundef nonnull %1, ptr noundef %2) #28 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %.loopexit228.loopexit

bb.m:                                             ; preds = %bb.l
  %.not201 = icmp eq i32 %i.v, 1
  br i1 %.not201, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = add nuw i32 %i.v, 1
  br label %bb.e

bb.o:                                             ; preds = %bb.m
  %i.y = ptrtoint ptr %i.j to i64
  %i.z = getelementptr i8, ptr %i.j, i64 2        ; 3 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !63
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !13   ; 5 uses
  store i8 %i.aa, ptr %i.c, align 1, !tbaa !13
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
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.a, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 3)
  %i.ae = call i64 @ruby_scan_oct(ptr noundef nonnull %i.t, i64 noundef %i.ad, ptr noundef nonnull %i.e) #36
  %i.af = icmp ult i64 %i.ae, 128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br i1 %i.af, label %._crit_edge290, label %bb.q

._crit_edge290:                                   ; preds = %bb.p
  %.pre = load i8, ptr %i.c, align 1, !tbaa !13
  br label %bb.ae

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  store ptr %i.j, ptr %i.b, align 8, !tbaa !63
  %i.ag = call nonnull ptr @rb_usascii_encoding() #28
  %i.ah = icmp eq ptr %2, %i.ag
  br i1 %i.ah, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ai = call fastcc i32 @read_escaped_byte(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef %6) ; 2 uses
  %.not207 = icmp eq i32 %i.ai, -1
  br i1 %.not207, label %.thread220, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = trunc nuw i32 %i.ai to i8
  store i8 %i.aj, ptr %i.c, align 1, !tbaa !13
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.y
  %i.an = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.j, i64 noundef %i.am) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.t:                                             ; preds = %bb.q
  %i.ao = call fastcc i32 @unescape_escaped_nonascii(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %6)
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
  %i.as = getelementptr i8, ptr %i.j, i64 3
  store ptr %i.as, ptr %i.b, align 8, !tbaa !63
  %i.at = call fastcc i32 @unescape_unicode_list(ptr noundef %i.b, ptr noundef nonnull %1, i64 noundef %3, ptr noundef %4, ptr noundef %6)
  %.not204 = icmp eq i32 %i.at, 0
  br i1 %.not204, label %bb.y, label %.thread220

bb.y:                                             ; preds = %bb.x
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !63
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !13
  %.not205 = icmp eq i8 %i.ax, 125
  br i1 %.not205, label %.loopexit229.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %6, ptr noundef nonnull align 1 dereferenceable(21) @.str.80, i64 noundef 21, i1 false) #28
  br label %.thread220

bb.ab:                                            ; preds = %bb.w
  %i.ay = call fastcc i32 @unescape_unicode_bmp(ptr noundef %i.b, ptr noundef nonnull %1, i64 noundef %3, ptr noundef %4, ptr noundef %6)
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
  store i8 92, ptr %i.d, align 1, !tbaa !13
  store i8 %i.ba, ptr %i.g, align 1, !tbaa !13
  %i.bb = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef 2) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.af:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %i.bc = icmp eq i32 %.5161392, 0
  %i.bd = icmp ne i32 %.4149394, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond, label %bb.al, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.be = icmp ult ptr %i.t, %1
  br i1 %i.be, label %.lr.ph259.preheader, label %.critedge.loopexit

.lr.ph259.preheader:                              ; preds = %.preheader
  %.promoted258287 = ptrtoint ptr %i.t to i64
  %scevgep286 = getelementptr i8, ptr %i.t, i64 %i.a
  %i.bf = sub i64 0, %.promoted258287
  %scevgep288 = getelementptr i8, ptr %scevgep286, i64 %i.bf ; 2 uses
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.ak
  %i.bg = phi ptr [ %i.bh, %bb.ak ], [ %i.t, %.lr.ph259.preheader ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 1      ; 3 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !13  ; 3 uses
  store i8 %i.bi, ptr %i.c, align 1, !tbaa !13
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
  %i.bm = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.am:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %i.bn = add i32 %.4149394, 1
  %i.bo = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.an:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.4149394, i32 1)
  %i.bp = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.ao:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %i.bq = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  %i.br = icmp eq i32 %.4149394, 0
  %or.cond3 = and i1 %9, %i.br
  br i1 %or.cond3, label %bb.ap, label %.loopexit229.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.bs = add i32 %.5155393, -1                   ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aq, label %.loopexit229.loopexit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.t, ptr %0, align 8, !tbaa !63
  br label %.thread220

bb.ar:                                            ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  %i.bu = ptrtoint ptr %i.j to i64
  %.not192 = icmp eq i32 %.4149394, 0             ; 2 uses
  br i1 %.not192, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.bv = getelementptr i8, ptr %i.j, i64 2       ; 3 uses
  %i.bw = icmp ult ptr %i.bv, %1
  br i1 %i.bw, label %bb.at, label %bb.bl

bb.at:                                            ; preds = %bb.as
  %i.bx = load i8, ptr %i.t, align 1, !tbaa !13
  %i.by = icmp eq i8 %i.bx, 63
  br i1 %i.by, label %bb.au, label %bb.bl

bb.au:                                            ; preds = %bb.at
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.ca = icmp eq i8 %i.bz, 35
  br i1 %i.ca, label %.preheader227, label %.lr.ph.preheader

.preheader227:                                    ; preds = %bb.au
  %i.cb = icmp ult ptr %i.t, %1
  br i1 %i.cb, label %.lr.ph256, label %._crit_edge.thread

.lr.ph256:                                        ; preds = %.preheader227, %bb.bb
  %i.cc = phi ptr [ %i.cn, %bb.bb ], [ %i.t, %.preheader227 ] ; 5 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 1      ; 3 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !13  ; 3 uses
  store i8 %i.ce, ptr %i.c, align 1, !tbaa !13
  switch i8 %i.ce, label %bb.av [
    i8 92, label %bb.az
    i8 41, label %._crit_edge
  ]

bb.av:                                            ; preds = %.lr.ph256
  %.not195 = icmp sgt i8 %i.ce, -1
  br i1 %.not195, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cf = load ptr, ptr %4, align 8, !tbaa !64
  %.not196 = icmp eq ptr %i.cf, null
  br i1 %.not196, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.cg = call nonnull ptr @rb_utf8_encoding() #28
  %i.ch = icmp eq ptr %2, %i.cg
  br i1 %i.ch, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay, %.lr.ph256
  %i.ci = phi ptr [ %i.cd, %.lr.ph256 ], [ %i.cc, %bb.ay ], [ %i.cc, %bb.ax ], [ %i.cc, %bb.aw ] ; 2 uses
  %i.cj = call i32 @rb_enc_precise_mbclen(ptr noundef %i.ci, ptr noundef nonnull %1, ptr noundef %2) #28 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.ba, label %.loopexit228

bb.ba:                                            ; preds = %bb.az
  %i.cl = zext nneg i32 %i.cj to i64
  %i.cm = getelementptr i8, ptr %i.ci, i64 %i.cl
  br label %bb.bb

bb.bb:                                            ; preds = %bb.av, %bb.ba
  %i.cn = phi ptr [ %i.cm, %bb.ba ], [ %i.cd, %bb.av ] ; 2 uses
  %i.co = icmp ult ptr %i.cn, %1
  br i1 %i.co, label %.lr.ph256, label %._crit_edge.thread, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph256
  store ptr %i.cd, ptr %i.b, align 8
  br label %.loopexit229.loopexit

._crit_edge.thread:                               ; preds = %bb.bb, %.preheader227
  store ptr %i.t, ptr %i.b, align 8, !tbaa !63
  store i8 40, ptr %i.c, align 1, !tbaa !13
  %i.cp = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.lr.ph.preheader:                                 ; preds = %bb.au
  %spec.select209 = add i32 %.5155393, %8         ; 7 uses
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.a
  %i.cq = sub i64 0, %i.bu
  %scevgep285 = getelementptr i8, ptr %scevgep, i64 %i.cq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bk
  %.0138252 = phi ptr [ %.0138, %bb.bk ], [ %i.bv, %.lr.ph.preheader ] ; 2 uses
  %.0139251 = phi i32 [ %.1140, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0141250 = phi i32 [ %.1142, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.cr = load i8, ptr %.0138252, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.cr, label %.thread215 [
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
  %i.cs = select i1 %.not194, i32 1, i32 -1
  br label %bb.bk

bb.bd:                                            ; preds = %.lr.ph
  br label %bb.bk

bb.be:                                            ; preds = %.lr.ph, %.lr.ph
  %i.ct = icmp eq i32 %.0139251, 0
  br i1 %i.ct, label %.thread215, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cu = icmp ne i32 %.0139251, -1
  %i.cv = icmp ne i32 %.5161392, 0                ; 2 uses
  %or.cond5 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond5, label %bb.bg, label %.thread215

bb.bg:                                            ; preds = %bb.bf
  %i.cw = icmp eq i32 %.0139251, 1                ; 3 uses
  %or.cond7 = select i1 %i.cw, i1 %i.cv, i1 false
  br i1 %or.cond7, label %.thread215, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cx = icmp eq i8 %i.cr, 58
  br i1 %i.cx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %masksel = select i1 %i.cw, i32 2, i32 0
  %.0137 = or disjoint i32 %masksel, %10
  %i.cy = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  %i.cz = call fastcc i32 @unescape_nonascii0(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %.0137, i32 noundef 1)
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.thread220, label %.loopexit229.loopexit

bb.bj:                                            ; preds = %bb.bh
  %i.db = zext i1 %i.cw to i32
  br label %.thread215

bb.bk:                                            ; preds = %bb.bc, %bb.bd, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.1142 = phi i32 [ %.0141250, %bb.bc ], [ 1, %bb.bd ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ]
  %.1140 = phi i32 [ %i.cs, %bb.bc ], [ %.0139251, %bb.bd ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ]
  %.0138 = getelementptr i8, ptr %.0138252, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.0138, %scevgep285
  br i1 %exitcond.not, label %.thread215, label %.lr.ph, !llvm.loop !132

bb.bl:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %or.cond9 = and i1 %9, %.not192
  %11 = zext i1 %or.cond9 to i32
  %spec.select210 = add i32 %.5155393, %11
  br label %.thread215

.thread215.loopexit316:                           ; preds = %bb.i
  store ptr %i.t, ptr %i.b, align 8
  br label %.thread215

.thread215:                                       ; preds = %.lr.ph, %bb.bk, %.thread215.loopexit316, %bb.bf, %bb.bg, %bb.bj, %bb.be, %bb.bl
  %.2158 = phi i32 [ %.5161392, %.thread215.loopexit316 ], [ %.5161392, %bb.bl ], [ %.5161392, %bb.be ], [ 0, %bb.bf ], [ %.5161392, %bb.bg ], [ %i.db, %bb.bj ], [ %.5161392, %bb.bk ], [ %.5161392, %.lr.ph ]
  %.2152 = phi i32 [ %.5155393, %.thread215.loopexit316 ], [ %spec.select210, %bb.bl ], [ %spec.select209, %bb.be ], [ %spec.select209, %bb.bf ], [ %spec.select209, %bb.bg ], [ %spec.select209, %bb.bj ], [ %spec.select209, %bb.bk ], [ %spec.select209, %.lr.ph ]
  %i.dc = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.critedge.loopexit:                               ; preds = %bb.ak, %.lr.ph259, %.preheader
  %i.dd = phi ptr [ %i.t, %.preheader ], [ %scevgep288, %bb.ak ], [ %i.bh, %.lr.ph259 ]
  store ptr %i.dd, ptr %i.b, align 8
  br label %.loopexit229.loopexit

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.de = icmp ult ptr %i.q, %1
  br i1 %i.de, label %bb.b, label %.loopexit229._crit_edge

.loopexit229.loopexit:                            ; preds = %bb.bi, %._crit_edge, %._crit_edge.thread, %bb.s, %bb.ao, %bb.ap, %bb.am, %bb.al, %bb.ae, %bb.t, %bb.z, %bb.ab, %.thread215, %bb.an, %.critedge.loopexit
  %.4160.ph = phi i32 [ %.5161392, %.critedge.loopexit ], [ %.5161392, %bb.an ], [ %.2158, %.thread215 ], [ %.5161392, %bb.ab ], [ %.5161392, %bb.z ], [ %.5161392, %bb.t ], [ %.5161392, %bb.ae ], [ %.5161392, %bb.al ], [ %.5161392, %bb.am ], [ %.5161392, %bb.ap ], [ %.5161392, %bb.ao ], [ %.5161392, %bb.s ], [ %.5161392, %._crit_edge.thread ], [ %.5161392, %._crit_edge ], [ %.5161392, %bb.bi ]
  %.4154.ph = phi i32 [ %.5155393, %.critedge.loopexit ], [ %.5155393, %bb.an ], [ %.2152, %.thread215 ], [ %.5155393, %bb.ab ], [ %.5155393, %bb.z ], [ %.5155393, %bb.t ], [ %.5155393, %bb.ae ], [ %.5155393, %bb.al ], [ %.5155393, %bb.am ], [ %i.bs, %bb.ap ], [ %.5155393, %bb.ao ], [ %.5155393, %bb.s ], [ %.5155393, %._crit_edge.thread ], [ %.5155393, %._crit_edge ], [ %spec.select209, %bb.bi ]
  %.3148.ph = phi i32 [ 0, %.critedge.loopexit ], [ %spec.select, %bb.an ], [ %.4149394, %.thread215 ], [ %.4149394, %bb.ab ], [ %.4149394, %bb.z ], [ %.4149394, %bb.t ], [ %.4149394, %bb.ae ], [ %.4149394, %bb.al ], [ %i.bn, %bb.am ], [ 0, %bb.ap ], [ %.4149394, %bb.ao ], [ %.4149394, %bb.s ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge ], [ 0, %bb.bi ]
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !63 ; 3 uses
  %i.df = icmp ult ptr %.promoted, %1
  br i1 %i.df, label %.lr.ph388, label %.loopexit229._crit_edge

.lr.ph388:                                        ; preds = %.lr.ph388.lr.ph, %.loopexit229.loopexit
  %.promoted395 = phi ptr [ %i.f, %.lr.ph388.lr.ph ], [ %.promoted, %.loopexit229.loopexit ]
  %.4149394 = phi i32 [ 0, %.lr.ph388.lr.ph ], [ %.3148.ph, %.loopexit229.loopexit ] ; 13 uses
  %.5155393 = phi i32 [ 1, %.lr.ph388.lr.ph ], [ %.4154.ph, %.loopexit229.loopexit ] ; 16 uses
  %.5161392 = phi i32 [ %i.i, %.lr.ph388.lr.ph ], [ %.4160.ph, %.loopexit229.loopexit ] ; 22 uses
  br label %bb.b

.loopexit229._crit_edge:                          ; preds = %.loopexit229.loopexit, %.critedge, %bb.a
  %.lcssa370 = phi ptr [ %i.q, %.critedge ], [ %i.f, %bb.a ], [ %.promoted, %.loopexit229.loopexit ] ; 2 uses
  store ptr %.lcssa370, ptr %i.b, align 8
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.thread220, label %bb.bm

bb.bm:                                            ; preds = %.loopexit229._crit_edge
  store ptr %.lcssa370, ptr %0, align 8, !tbaa !63
  br label %.thread220

.thread220:                                       ; preds = %bb.bi, %bb.r, %bb.x, %bb.t, %bb.ab, %bb.aq, %.loopexit228, %bb.aa, %bb.v, %bb.k, %bb.h, %.loopexit229._crit_edge, %bb.bm
  %.8 = phi i32 [ -1, %bb.k ], [ 0, %bb.bm ], [ 0, %.loopexit229._crit_edge ], [ -1, %bb.v ], [ 0, %bb.aq ], [ -1, %.loopexit228 ], [ -1, %bb.h ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.t ], [ -1, %bb.x ], [ -1, %bb.r ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
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
end_hunk_0
