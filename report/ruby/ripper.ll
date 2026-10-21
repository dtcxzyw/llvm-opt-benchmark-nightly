Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2067
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@tokadd_string:bb.a
  br i1 %.not.i230, label %tokadd.exit231, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lq = shl nsw i32 %i.lp, 1                    ; 2 uses
  store i32 %i.lq, ptr %i.q, align 4, !tbaa !341
  %i.lr = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.ls = sext i32 %i.lq to i64
  %i.lt = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.lr, i64 noundef %i.ls, i64 noundef 1) #36
  store ptr %i.lt, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit231

tokadd.exit231:                                   ; preds = %bb.cu, %bb.ct, %pushback.exit229
  %i.lu = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -1
  %i.lw = call fastcc i32 @read_escape(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.lv)
  br label %pushback.exit205

bb.cv:                                            ; preds = %bb.co
  %.not184.old = icmp eq i32 %2, %i.cx            ; 2 uses
  br i1 %.not176, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not184.old, label %pushback.exit205, label %switch.early.test

switch.early.test:                                ; preds = %bb.cw
  switch i8 %i.cw, label %bb.cy [
    i8 32, label %pushback.exit205
    i8 13, label %pushback.exit205
    i8 12, label %pushback.exit205
    i8 11, label %pushback.exit205
    i8 10, label %pushback.exit205
    i8 9, label %pushback.exit205
  ]

bb.cx:                                            ; preds = %bb.cv
  %i.lx = icmp eq i32 %3, %i.cx
  %or.cond197 = and i1 %.not170, %i.lx
  %or.cond255 = or i1 %.not184.old, %or.cond197
  br i1 %or.cond255, label %pushback.exit205, label %bb.cz

bb.cy:                                            ; preds = %switch.early.test
  %.old = icmp eq i32 %3, %i.cx
  %or.cond197.old = and i1 %.not170, %.old
  br i1 %or.cond197.old, label %pushback.exit205, label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  call fastcc void @tokadd(ptr noundef nonnull %0, i32 noundef 92)
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cx)
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.af, %bb.al
  %i.ly = getelementptr i8, ptr %i.an, i64 -1
  %.val203.val = load i8, ptr %i.ly, align 1, !tbaa !20
  %i.lz = icmp slt i8 %.val203.val, 0
  br i1 %i.lz, label %tokadd.exit221, label %bb.df

tokadd.exit221:                                   ; preds = %bb.bj, %bb.bi, %.thread, %bb.bh
  %.0148 = phi i32 [ %.011.i.ph, %.thread ], [ %i.cx, %bb.bh ], [ %i.cx, %bb.bi ], [ %i.cx, %bb.bj ]
  %i.ma = load ptr, ptr %6, align 8, !tbaa !357   ; 3 uses
  %.not179 = icmp eq ptr %i.ma, null
  %i.mb = load ptr, ptr %5, align 8, !tbaa !357   ; 3 uses
  br i1 %.not179, label %bb.da, label %bb.db

bb.da:                                            ; preds = %tokadd.exit221
  store ptr %i.mb, ptr %6, align 8, !tbaa !357
  br label %bb.de

bb.db:                                            ; preds = %tokadd.exit221
  %.not180 = icmp eq ptr %i.ma, %i.mb
  br i1 %.not180, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mc = trunc nuw i8 %.0147 to i1
  br i1 %i.mc, label %.backedge.backedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.md = getelementptr i8, ptr %i.ma, i64 8
  %.val199 = load ptr, ptr %i.md, align 8, !tbaa !353
  %i.me = getelementptr i8, ptr %i.mb, i64 8
  %.val200 = load ptr, ptr %i.me, align 8, !tbaa !353
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val199, ptr noundef %.val200) #29
  br label %.backedge.backedge

bb.de:                                            ; preds = %bb.db, %bb.da
  %i.mf = call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.0148)
  %i.mg = icmp eq i32 %i.mf, -1
  br i1 %i.mg, label %nextc0.exit214.thread243, label %.backedge.backedge

bb.df:                                            ; preds = %.thread
  br i1 %.not176, label %pushback.exit205, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %trunc279 = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc279, label %pushback.exit205 [
    i8 32, label %bb.dh
    i8 13, label %bb.dh
    i8 12, label %bb.dh
    i8 11, label %bb.dh
    i8 10, label %bb.dh
    i8 9, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg, %bb.dg
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %.011.i.ph)
  br label %nextc0.exit

pushback.exit205:                                 ; preds = %bb.dg, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.cw, %bb.cy, %bb.ad, %bb.cx, %tokadd.exit231, %bb.df, %bb.v
  %.1149 = phi i32 [ %3, %bb.v ], [ %2, %bb.ad ], [ %i.lw, %tokadd.exit231 ], [ %i.cx, %switch.early.test ], [ %3, %bb.cy ], [ %i.cx, %bb.cx ], [ %.011.i.ph, %bb.df ], [ %.011.i.ph, %bb.dg ], [ %2, %bb.cw ], [ %i.cx, %switch.early.test ], [ %i.cx, %switch.early.test ], [ %i.cx, %switch.early.test ], [ %i.cx, %switch.early.test ], [ %i.cx, %switch.early.test ] ; 4 uses
  %i.mh = and i32 %.1149, 128
  %.not190 = icmp eq i32 %i.mh, 0
  br i1 %.not190, label %pushback.exit205.thread251, label %bb.di

bb.di:                                            ; preds = %pushback.exit205
  %i.mi = load ptr, ptr %6, align 8, !tbaa !357   ; 3 uses
  %.not191 = icmp eq ptr %i.mi, null
  %i.mj = load ptr, ptr %5, align 8, !tbaa !357   ; 3 uses
  br i1 %.not191, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store ptr %i.mj, ptr %6, align 8, !tbaa !357
  br label %pushback.exit205.thread251

bb.dk:                                            ; preds = %bb.di
  %.not192 = icmp eq ptr %i.mi, %i.mj
  br i1 %.not192, label %pushback.exit205.thread251, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mk = trunc nuw i8 %.0147 to i1
  br i1 %i.mk, label %.backedge.backedge, label %bb.dm

.backedge.backedge:                               ; preds = %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.cl, %bb.cm, %bb.cn, %bb.au, %bb.av, %bb.bf, %tokspace.exit, %bb.bs, %bb.cz, %tokadd.exit234, %bb.de
  %.0147.be = phi i8 [ 1, %bb.dc ], [ %.0147, %tokadd.exit234 ], [ %.0147, %bb.au ], [ %.0147, %bb.bs ], [ %.0147, %tokspace.exit ], [ %.0147, %bb.cz ], [ %.0147, %bb.cl ], [ %.0147, %bb.de ], [ %.0147, %bb.bf ], [ %.0147, %bb.av ], [ %.0147, %bb.cm ], [ 1, %bb.cn ], [ 1, %bb.dd ], [ 1, %bb.dm ], [ 1, %bb.dl ]
  %.0146.be = phi i32 [ %.0146, %bb.dc ], [ %i.na, %tokadd.exit234 ], [ %.0146, %bb.au ], [ %.0146, %bb.bs ], [ %.0146, %tokspace.exit ], [ %.0146, %bb.cz ], [ %.0146, %bb.cl ], [ %.0146, %bb.de ], [ %.0146, %bb.bf ], [ %.0146, %bb.av ], [ %.0146, %bb.cm ], [ %.0146, %bb.cn ], [ %.0146, %bb.dd ], [ %.0146, %bb.dm ], [ %.0146, %bb.dl ]
  br label %.backedge, !llvm.loop !590

bb.dm:                                            ; preds = %bb.dl
  %i.ml = getelementptr i8, ptr %i.mi, i64 8
  %.val = load ptr, ptr %i.ml, align 8, !tbaa !353
  %i.mm = getelementptr i8, ptr %i.mj, i64 8
  %.val198 = load ptr, ptr %i.mm, align 8, !tbaa !353
  call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.619, ptr noundef %.val, ptr noundef %.val198) #29
  br label %.backedge.backedge

pushback.exit205.thread251:                       ; preds = %bb.be, %bb.bd, %bb.ba, %bb.ax, %bb.bb, %bb.az, %bb.ay, %bb.ag, %bb.as, %bb.dj, %bb.dk, %pushback.exit205
  %.1149254 = phi i32 [ %.1149, %pushback.exit205 ], [ %.1149, %bb.dj ], [ %.1149, %bb.dk ], [ 117, %bb.be ], [ 117, %bb.bd ], [ 92, %bb.ba ], [ 10, %bb.ax ], [ 92, %bb.bb ], [ 92, %bb.az ], [ 10, %bb.ay ], [ 35, %bb.ag ], [ 10, %bb.as ] ; 2 uses
  %i.mn = trunc i32 %.1149254 to i8
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.mp = load i32, ptr %i.p, align 8, !tbaa !367 ; 2 uses
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.p, align 8, !tbaa !367
  %i.mr = sext i32 %i.mp to i64
  %i.ms = getelementptr inbounds i8, ptr %i.mo, i64 %i.mr
  store i8 %i.mn, ptr %i.ms, align 1, !tbaa !20
  %i.mt = load i32, ptr %i.p, align 8, !tbaa !367
  %i.mu = load i32, ptr %i.q, align 4, !tbaa !341 ; 2 uses
  %.not.i233 = icmp slt i32 %i.mt, %i.mu
  br i1 %.not.i233, label %tokadd.exit234, label %bb.dn

bb.dn:                                            ; preds = %pushback.exit205.thread251
  %i.mv = shl nsw i32 %i.mu, 1                    ; 2 uses
  store i32 %i.mv, ptr %i.q, align 4, !tbaa !341
  %i.mw = load ptr, ptr %i.o, align 8, !tbaa !338
  %i.mx = sext i32 %i.mv to i64
  %i.my = call nonnull ptr @ruby_xrealloc2(ptr noundef %i.mw, i64 noundef %i.mx, i64 noundef 1) #36
  store ptr %i.my, ptr %i.o, align 8, !tbaa !338
  br label %tokadd.exit234

tokadd.exit234:                                   ; preds = %pushback.exit205.thread251, %bb.dn
  %i.mz = icmp eq i32 %.1149254, 10
  %i.na = zext i1 %i.mz to i32
  br label %.backedge.backedge

nextc0.exit:                                      ; preds = %.critedge.i, %bb.aw, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.t, %bb.s, %bb.r, %bb.q, %bb.dh
  %.2150 = phi i32 [ 35, %bb.aj ], [ %.011.i.ph, %bb.t ], [ 35, %bb.ak ], [ %.011.i.ph, %bb.dh ], [ %2, %bb.ac ], [ %.011.i.ph, %bb.q ], [ %.011.i.ph, %bb.r ], [ %.011.i.ph, %bb.s ], [ %2, %bb.z ], [ %2, %bb.aa ], [ %2, %bb.ab ], [ 35, %bb.ah ], [ 35, %bb.ai ], [ 92, %bb.aw ], [ -1, %.critedge.i ] ; 2 uses
  %i.nb = load ptr, ptr %6, align 8, !tbaa !357   ; 2 uses
  %.not193 = icmp eq ptr %i.nb, null
  br i1 %.not193, label %nextc0.exit214.thread243, label %bb.do

bb.do:                                            ; preds = %nextc0.exit
  store ptr %i.nb, ptr %5, align 8, !tbaa !357
  br label %nextc0.exit214.thread243

nextc0.exit214.thread243:                         ; preds = %.critedge.i207, %bb.de, %tokadd_escape.exit, %nextc0.exit, %bb.do
  %.0 = phi i32 [ %.2150, %bb.do ], [ -1, %tokadd_escape.exit ], [ %.2150, %nextc0.exit ], [ -1, %bb.de ], [ -1, %.critedge.i207 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef nonnull ptr @parser_str_new(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.567, i64 noundef %1) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 7 uses
  %i.c = add nuw nsw i64 %1, 1
  %i.d = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.c, i64 noundef 1) #33 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !325
  %.not.i.i = icmp eq ptr %0, null
  %.not.i.i.i = icmp eq i64 %1, 0                 ; 3 uses
  %or.cond.i.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %rb_parser_encoding_string_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %1, i1 false)
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8, !tbaa !326
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 7 uses
  store i8 0, ptr %i.g, align 1, !tbaa !20
  store i32 0, ptr %i.b, align 8, !tbaa !327
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %2, ptr %i.h, align 8, !tbaa !328
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %5, label %bb.i

5:                                                ; preds = %rb_parser_encoding_string_new.exit
  %6 = tail call nonnull ptr @rb_ascii8bit_encoding() #29
  %7 = icmp eq ptr %2, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %8, %10
  %.08.i.i.i.i = phi ptr [ %11, %10 ], [ %i.d, %8 ] ; 2 uses
  %9 = load i8, ptr %.08.i.i.i.i, align 1, !tbaa !20
  %.not.i.i.i.i = icmp sgt i8 %9, -1
  br i1 %.not.i.i.i.i, label %10, label %bb.f

10:                                               ; preds = %.lr.ph.i.i.i.i
  %11 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %11, %i.g
  br i1 %exitcond.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !5

12:                                               ; preds = %5
  br i1 %.not.i.i.i, label %.sink.split, label %.lr.ph.i36.i.i.i

.lr.ph.i36.i.i.i:                                 ; preds = %12, %16
  %.08.i37.i.i.i = phi ptr [ %17, %16 ], [ %i.d, %12 ] ; 4 uses
  %13 = load i8, ptr %.08.i37.i.i.i, align 1, !tbaa !20
  %.not.i38.i.i.i = icmp sgt i8 %13, -1
  br i1 %.not.i38.i.i.i, label %16, label %rb_parser_search_nonascii.exit40.preheader.i.i.i

rb_parser_search_nonascii.exit40.preheader.i.i.i: ; preds = %.lr.ph.i36.i.i.i
  %14 = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.08.i37.i.i.i, ptr noundef nonnull %i.g, ptr noundef %2) #29 ; 2 uses
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph.i.i.i, label %bb.f

16:                                               ; preds = %.lr.ph.i36.i.i.i
  %17 = getelementptr inbounds nuw i8, ptr %.08.i37.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i39.i.i.i = icmp eq ptr %17, %i.g
  br i1 %exitcond.not.i39.i.i.i, label %.sink.split, label %.lr.ph.i36.i.i.i, !llvm.loop !5

rb_parser_search_nonascii.exit40.loopexit.i.i.i:  ; preds = %.lr.ph.i42.i.i.i
  %18 = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %.08.i43.i.i.i, ptr noundef nonnull %i.g, ptr noundef %2) #29 ; 2 uses
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %.lr.ph.i.i.i, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %rb_parser_search_nonascii.exit40.preheader.i.i.i, %rb_parser_search_nonascii.exit40.loopexit.i.i.i
  %20 = phi i32 [ %18, %rb_parser_search_nonascii.exit40.loopexit.i.i.i ], [ %14, %rb_parser_search_nonascii.exit40.preheader.i.i.i ]
  %.02216.i.i.i = phi ptr [ %.08.i43.i.i.i, %rb_parser_search_nonascii.exit40.loopexit.i.i.i ], [ %.08.i37.i.i.i, %rb_parser_search_nonascii.exit40.preheader.i.i.i ]
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw i8, ptr %.02216.i.i.i, i64 %21 ; 2 uses
  %23 = icmp ult ptr %22, %i.g
  br i1 %23, label %.lr.ph.i42.i.i.i, label %bb.f

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.e
  %.08.i43.i.i.i = phi ptr [ %25, %bb.e ], [ %22, %.lr.ph.i.i.i ] ; 4 uses
  %24 = load i8, ptr %.08.i43.i.i.i, align 1, !tbaa !20
  %.not.i44.i.i.i = icmp sgt i8 %24, -1
  br i1 %.not.i44.i.i.i, label %bb.e, label %rb_parser_search_nonascii.exit40.loopexit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i42.i.i.i
  %25 = getelementptr inbounds nuw i8, ptr %.08.i43.i.i.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %25, %i.g
  br i1 %i.j, label %bb.f, label %.lr.ph.i42.i.i.i, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph.i.i.i, %rb_parser_search_nonascii.exit40.loopexit.i.i.i, %bb.e, %.lr.ph.i.i.i.i, %rb_parser_search_nonascii.exit40.preheader.i.i.i
  %.2.i.i.i.ph = phi i32 [ 2, %bb.e ], [ 3, %rb_parser_search_nonascii.exit40.preheader.i.i.i ], [ 2, %.lr.ph.i.i.i.i ], [ 2, %.lr.ph.i.i.i ], [ 3, %rb_parser_search_nonascii.exit40.loopexit.i.i.i ]
  store i32 %.2.i.i.i.ph, ptr %i.b, align 8, !tbaa !327
  %i.k = tail call nonnull ptr @rb_usascii_encoding() #29
  %i.l = icmp eq ptr %4, %i.k
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = tail call nonnull ptr @rb_utf8_encoding() #29
  %.not11 = icmp eq ptr %2, %i.m
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call nonnull ptr @rb_ascii8bit_encoding() #29
  store ptr %i.n, ptr %i.h, align 8, !tbaa !328
  br label %.sink.split

.sink.split:                                      ; preds = %16, %10, %12, %8, %bb.h
  %.sink = phi i32 [ 2, %bb.h ], [ 1, %10 ], [ 1, %12 ], [ 1, %8 ], [ 1, %16 ]
  store i32 %.sink, ptr %i.b, align 8, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.f, %rb_parser_encoding_string_new.exit
  ret ptr %i.b
}

declare i64 @rb_str_new_mutable_parser_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_string_content(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = sub i64 0, %2
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 6 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 96 ; 3 uses
  %.val3.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50 ; 6 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %.val3.i.pre to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc ptr @rb_parser_enc_cr_str_buf_cat(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %.val3.i.pre, i64 noundef range(i64 1, -9223372036854775808) %i.i, ptr noundef %1, i32 noundef 0, ptr noundef null) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.m, ptr %i.n, align 8, !tbaa !363
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, 2147483648
  %.not.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_out_of_int(i64 noundef %i.t) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = trunc nsw i64 %i.t to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.v, ptr %i.w, align 4, !tbaa !374
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  %.not.i22 = icmp eq ptr %.pre, null
  br i1 %.not.i22, label %ripper_has_scan_event.exit.i.thread, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.f, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !52
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !54
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  store ptr %i.ah, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.ai = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.x) #29
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !49
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.aj) #29
  %i.ak = tail call i64 @ripper_token2eventid(i32 noundef 321) #29
  %i.al = getelementptr i8, ptr %0, i64 368
  %.val.i = load i64, ptr %i.al, align 8, !tbaa !55
  %i.am = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i, i64 noundef %i.ak, i32 noundef 1, i64 noundef %i.ai) #29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.am, ptr %i.an, align 8, !tbaa !56
  store ptr null, ptr %i.e, align 8, !tbaa !49
  store i32 %i.z, ptr %i.y, align 4, !tbaa !51
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %ripper_has_scan_event.exit.i.thread

ripper_has_scan_event.exit.i.thread:              ; preds = %bb.e, %.thread
  %i.ao = phi ptr [ %i.o, %bb.e ], [ %.pre25, %.thread ] ; 2 uses
  store ptr %i.ao, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %ripper_dispatch_scan_event.exit

bb.f:                                             ; preds = %bb.a
  %i.ap = getelementptr i8, ptr %0, i64 96
  %i.aq = icmp ult ptr %i.d, %.val3.i.pre
  br i1 %i.aq, label %bb.g, label %ripper_has_scan_event.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i:                     ; preds = %bb.f
  %.not.i24 = icmp ugt ptr %i.d, %.val3.i.pre
  br i1 %.not.i24, label %bb.h, label %ripper_dispatch_scan_event.exit

bb.h:                                             ; preds = %ripper_has_scan_event.exit.i
  %i.as = ptrtoint ptr %i.d to i64
  %i.at = ptrtoint ptr %.val3.i.pre to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.ax = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i.pre, i64 noundef %i.au, ptr noundef %i.aw) #29
  %i.ay = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 321) #29
  %i.az = getelementptr i8, ptr %0, i64 368
  %.val.i.i = load i64, ptr %i.az, align 8, !tbaa !55
  %i.ba = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i, i64 noundef %i.ay, i32 noundef 1, i64 noundef %i.ax) #29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !48
  %i.bd = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bc) #29 ; 0 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  store ptr %i.be, ptr %i.ap, align 8, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !56
  br label %ripper_dispatch_scan_event.exit

ripper_dispatch_scan_event.exit:                  ; preds = %ripper_has_scan_event.exit.i.thread, %ripper_has_scan_event.exit.i, %bb.h
  %i.bg = phi ptr [ %i.d, %ripper_has_scan_event.exit.i ], [ %i.be, %bb.h ], [ %i.ao, %ripper_has_scan_event.exit.i.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %2
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !57
  ret void
}

declare i64 @ripper_token2eventid(i32 noundef) local_unnamed_addr #2

declare ptr @rb_parser_set_location_from_strterm_heredoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tokadd_utf8(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 5) %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0                       ; 4 uses
  br i1 %.not, label %tokadd.exit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !338
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !367  ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !367
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f
  store i8 92, ptr %i.g, align 1, !tbaa !20
  %i.h = load i32, ptr %i.c, align 8, !tbaa !367  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !341  ; 2 uses
  %.not.i = icmp slt i32 %i.h, %i.j
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !338 ; 2 uses
  br i1 %.not.i, label %tokadd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !341
  %i.l = sext i32 %i.k to i64
  %i.m = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre, i64 noundef %i.l, i64 noundef 1) #36 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !338
  %.pre161 = load i32, ptr %i.c, align 8, !tbaa !367
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.h, %bb.b ], [ %.pre161, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.c ]
  %i.p = add nsw i32 %i.n, 1
  store i32 %i.p, ptr %i.c, align 8, !tbaa !367
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.q
  store i8 117, ptr %i.r, align 1, !tbaa !20
  %i.s = load i32, ptr %i.c, align 8, !tbaa !367
  %i.t = load i32, ptr %i.i, align 4, !tbaa !341  ; 2 uses
  %.not.i115 = icmp slt i32 %i.s, %i.t
  br i1 %.not.i115, label %tokadd.exit116, label %bb.d

bb.d:                                             ; preds = %tokadd.exit
  %i.u = shl nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.u, ptr %i.i, align 4, !tbaa !341
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !338
  %i.w = sext i32 %i.u to i64
  %i.x = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.v, i64 noundef %i.w, i64 noundef 1) #36
  store ptr %i.x, ptr %i.a, align 8, !tbaa !338
  br label %tokadd.exit116

tokadd.exit116:                                   ; preds = %bb.d, %tokadd.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 24 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !304 ; 2 uses
  %.not100 = icmp ult ptr %i.aa, %i.ac
  br i1 %.not100, label %bb.e, label %bb.aj

bb.e:                                             ; preds = %tokadd.exit116
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ae = icmp eq i8 %i.ad, 123
  br i1 %i.ae, label %bb.f, label %bb.aj
end_hunk_0
