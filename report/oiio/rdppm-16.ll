inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rgb_pixelsize = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 3, i32 -1, i32 -1, i32 -1, i32 3, i32 4, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 -1], align 16
@rgb_red = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 2, i32 3, i32 1, i32 0, i32 2, i32 3, i32 1, i32 -1], align 16
@rgb_green = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 -1], align 16
@rgb_blue = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 2, i32 -1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i32 0, i32 1, i32 3, i32 2, i32 0, i32 1, i32 3, i32 -1], align 16
@alpha_index = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i32 0, i32 -1], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @j16init_read_ppm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = add i32 %i.b, -17
  %or.cond = icmp ult i32 %i.c, -4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 16, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %i.b, ptr %i.f, align 4, !tbaa !33
  %i.g = load ptr, ptr %0, align 8, !tbaa !27
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void %i.h(ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = tail call ptr %i.k(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 104) #6 ; 4 uses
  store ptr @start_input_ppm, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @finish_input_ppm, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !46
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr nofree noundef captures(none) initializes((48, 60), (88, 100)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = tail call i32 @getc(ptr noundef %i.b)
  %.not = icmp eq i32 %i.c, 80
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1030, ptr %i.e, align 8, !tbaa !28
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34
  tail call void %i.f(ptr noundef %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.h = tail call i32 @getc(ptr noundef %i.g)    ; 3 uses
  switch i32 %i.h, label %bb.d [
    i32 50, label %bb.e
    i32 51, label %bb.e
    i32 53, label %bb.e
    i32 54, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 1030, ptr %i.j, align 8, !tbaa !28
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !34
  tail call void %i.k(ptr noundef %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.m = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.l, i32 noundef 65535) ; 8 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.o = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.n, i32 noundef 65535) ; 7 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.q = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.p, i32 noundef 65535) ; 13 uses
  %i.r = icmp eq i32 %i.m, 0
  %i.s = icmp eq i32 %i.o, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  %i.t = icmp eq i32 %i.q, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.t
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 1030, ptr %i.v, align 8, !tbaa !28
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !34
  tail call void %i.w(ptr noundef %0) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 3 uses
  %.not219 = icmp ne i32 %i.y, 0
  %i.z = zext i32 %i.m to i64                     ; 3 uses
  %i.aa = zext i32 %i.o to i64
  %i.ab = mul nuw i64 %i.aa, %i.z
  %i.ac = zext i32 %i.y to i64
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  %or.cond226 = select i1 %.not219, i1 %i.ad, i1 false
  br i1 %or.cond226, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store i32 42, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i32 %i.y, ptr %i.ag, align 4, !tbaa !33
  %i.ah = load ptr, ptr %0, align 8, !tbaa !27
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  tail call void %i.ai(ptr noundef %0) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.m, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.o, ptr %i.ak, align 4, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.q, ptr %i.al, align 8, !tbaa !51
  switch i32 %i.h, label %bb.bd [
    i32 50, label %bb.j
    i32 51, label %bb.s
    i32 53, label %bb.z
    i32 54, label %bb.aq
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  switch i32 %i.an, label %bb.l [
    i32 0, label %bb.k
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i32 1, ptr %i.am, align 4, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.m, ptr %i.ap, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i32 %i.o, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  store i32 %i.q, ptr %i.ar, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 1033, ptr %i.as, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  tail call void %i.au(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.av = load i32, ptr %i.am, align 4, !tbaa !52 ; 3 uses
  switch i32 %i.av, label %bb.n [
    i32 1, label %bb.m
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_row, ptr %i.aw, align 8, !tbaa !54
  br label %bb.bd

bb.n:                                             ; preds = %bb.l
  %i.ax = add i32 %i.av, -6
  %or.cond227 = icmp ult i32 %i.ax, 10
  br i1 %or.cond227, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_rgb_row, ptr %i.ay, align 8, !tbaa !54
  br label %bb.bd

bb.p:                                             ; preds = %bb.n
  %i.az = icmp eq i32 %i.av, 4
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_cmyk_row, ptr %i.ba, align 8, !tbaa !54
  br label %bb.bd

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 10, ptr %i.bc, align 8, !tbaa !28
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !34
  tail call void %i.bd(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.s:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !52
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %i.be, align 4, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bh = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  store i32 %i.m, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 %i.o, ptr %i.bj, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  store i32 %i.q, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i32 1035, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  tail call void %i.bn(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !52 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 2
  %i.bq = add i32 %i.bo, -6
  %or.cond228 = icmp ult i32 %i.bq, 10
  %or.cond234 = or i1 %i.bp, %or.cond228
  br i1 %or.cond234, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_rgb_row, ptr %i.br, align 8, !tbaa !54
  br label %bb.bd

bb.w:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bo, 4
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_rgb_cmyk_row, ptr %i.bt, align 8, !tbaa !54
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 10, ptr %i.bv, align 8, !tbaa !28
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !34
  tail call void %i.bw(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.z:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !52
  switch i32 %i.by, label %bb.ab [
    i32 0, label %bb.aa
    i32 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 1, ptr %i.bx, align 4, !tbaa !52
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bz = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  store i32 %i.m, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store i32 %i.o, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 52
  store i32 %i.q, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i32 1032, ptr %i.cd, align 8, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53
  tail call void %i.cf(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.cg = icmp ugt i32 %i.q, 255
  %i.ch = load i32, ptr %i.bx, align 4, !tbaa !52 ; 6 uses
  br i1 %i.cg, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.ch, label %bb.ae [
    i32 1, label %bb.ad
    i32 2, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_gray_row, ptr %i.ci, align 8, !tbaa !54
  br label %bb.bd

bb.ae:                                            ; preds = %bb.ac
  %i.cj = add i32 %i.ch, -6
  %or.cond229 = icmp ult i32 %i.cj, 10
  br i1 %or.cond229, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_gray_rgb_row, ptr %i.ck, align 8, !tbaa !54
  br label %bb.bd

bb.ag:                                            ; preds = %bb.ae
  %i.cl = icmp eq i32 %i.ch, 4
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_gray_cmyk_row, ptr %i.cm, align 8, !tbaa !54
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ag
  %i.cn = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 10, ptr %i.co, align 8, !tbaa !28
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !34
  tail call void %i.cp(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ab
  switch i32 %i.ch, label %bb.al [
    i32 1, label %bb.ak
    i32 2, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_scaled_gray_row, ptr %i.cq, align 8, !tbaa !54
  br label %bb.bd

bb.al:                                            ; preds = %bb.aj
  %i.cr = add i32 %i.ch, -6
  %or.cond230 = icmp ult i32 %i.cr, 10
  br i1 %or.cond230, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_gray_rgb_row, ptr %i.cs, align 8, !tbaa !54
  br label %bb.bd

bb.an:                                            ; preds = %bb.al
  %i.ct = icmp eq i32 %i.ch, 4
  br i1 %i.ct, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_gray_cmyk_row, ptr %i.cu, align 8, !tbaa !54
  br label %bb.bd

bb.ap:                                            ; preds = %bb.an
  %i.cv = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store i32 10, ptr %i.cw, align 8, !tbaa !28
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !34
  tail call void %i.cx(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.aq:                                            ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !52
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 6, ptr %i.cy, align 4, !tbaa !52
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.db = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44
  store i32 %i.m, ptr %i.dc, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store i32 %i.o, ptr %i.dd, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 52
  store i32 %i.q, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i32 1034, ptr %i.df, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !53
  tail call void %i.dh(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.di = icmp ugt i32 %i.q, 255
  %i.dj = load i32, ptr %i.cy, align 4, !tbaa !52 ; 4 uses
  %i.dk = icmp eq i32 %i.dj, 2
  %i.dl = add i32 %i.dj, -6
  %or.cond231 = icmp ult i32 %i.dl, 10
  %or.cond235 = or i1 %i.dk, %or.cond231          ; 2 uses
  br i1 %i.di, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  br i1 %or.cond235, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_rgb_row, ptr %i.dm, align 8, !tbaa !54
  br label %bb.bd

bb.av:                                            ; preds = %bb.at
  %i.dn = icmp eq i32 %i.dj, 4
  br i1 %i.dn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_rgb_cmyk_row, ptr %i.do, align 8, !tbaa !54
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av
  %i.dp = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  store i32 10, ptr %i.dq, align 8, !tbaa !28
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !34
  tail call void %i.dr(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.ay:                                            ; preds = %bb.as
  br i1 %or.cond235, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_rgb_row, ptr %i.ds, align 8, !tbaa !54
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.dt = icmp eq i32 %i.dj, 4
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_rgb_cmyk_row, ptr %i.du, align 8, !tbaa !54
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.dv = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i32 10, ptr %i.dw, align 8, !tbaa !28
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !34
  tail call void %i.dx(ptr noundef nonnull %0) #6
  br label %bb.bd

bb.bd:                                            ; preds = %bb.v, %bb.y, %bb.x, %bb.m, %bb.q, %bb.r, %bb.o, %bb.aw, %bb.ax, %bb.au, %bb.az, %bb.bc, %bb.bb, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.ak, %bb.ao, %bb.ap, %bb.am, %bb.i
  %.not220 = phi i1 [ false, %bb.i ], [ false, %bb.bc ], [ true, %bb.m ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.ak ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %bb.ap ], [ false, %bb.au ], [ false, %bb.aw ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.bb ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.v ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !52 ; 6 uses
  %i.ea = icmp eq i32 %i.dz, 2
  %i.eb = add i32 %i.dz, -6
  %or.cond233 = icmp ult i32 %i.eb, 10
  %or.cond237 = or i1 %i.ea, %or.cond233
  br i1 %or.cond237, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ec = zext nneg i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  br label %.sink.split

bb.bf:                                            ; preds = %bb.bd
  switch i32 %i.dz, label %bb.bg [
    i32 1, label %.sink.split
    i32 4, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.bf, %bb.bf, %bb.be
  %.sink243 = phi i32 [ %i.ee, %bb.be ], [ %i.dz, %bb.bf ], [ %i.dz, %bb.bf ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink243, ptr %i.ef, align 8, !tbaa !55
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.bf
  br i1 %.not220, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %2 = icmp eq i32 %i.h, 54
  %3 = mul nuw nsw i64 %i.z, 3
  %.sink245 = select i1 %2, i64 %3, i64 %i.z
  %4 = icmp ugt i32 %i.q, 255
  %5 = zext i1 %4 to i64
  %6 = shl nuw nsw i64 %.sink245, %5              ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %6, ptr %i.eg, align 8, !tbaa !56
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !35
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !36
  %i.ek = tail call ptr %i.ej(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %6) #6
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !57
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !58
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !55
  %i.es = mul i32 %i.er, %i.m
  %i.et = tail call ptr %i.ep(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.es, i32 noundef 1) #6
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !59
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.ev, align 8, !tbaa !60
  %i.ew = load ptr, ptr %i.em, align 8, !tbaa !35
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !36
  %i.ey = tail call i32 @llvm.umax.i32(i32 %i.q, i32 255)
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 1
  %i.fb = add nuw nsw i64 %i.fa, 2                ; 2 uses
  %i.fc = tail call ptr %i.ex(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.fb) #6 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.fc, i8 0, i64 %i.fb, i1 false)
  %i.fe = lshr i32 %i.q, 1
  %i.ff = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fg = zext i32 %i.q to i64                    ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !8
  %notmask = shl nsw i32 -1, %i.fi
  %i.fj = xor i32 %notmask, -1
  %i.fk = zext nneg i32 %i.fj to i64              ; 3 uses
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !61 ; 3 uses
  %i.fm = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.fn = icmp eq i32 %i.q, 0
  br i1 %i.fn, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bi
  %unroll_iter = and i64 %i.fm, 8589934590
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.new
  %.0206238 = phi i64 [ 0, %.new ], [ %i.fz, %bb.bj ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.bj ]
  %i.fo = mul nuw nsw i64 %.0206238, %i.fk
  %i.fp = add nuw nsw i64 %i.fo, %i.ff
  %i.fq = udiv i64 %i.fp, %i.fg
  %i.fr = trunc i64 %i.fq to i16
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %.0206238
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !62
  %i.ft = or disjoint i64 %.0206238, 1            ; 2 uses
  %i.fu = mul nuw nsw i64 %i.ft, %i.fk
  %i.fv = add nuw nsw i64 %i.fu, %i.ff
  %i.fw = udiv i64 %i.fv, %i.fg
  %i.fx = trunc i64 %i.fw to i16
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.ft
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !62
  %i.fz = add nuw nsw i64 %.0206238, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.bj, !llvm.loop !63

.unr-lcssa:                                       ; preds = %bb.bj
  %i.ga = and i64 %i.fg, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ga, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %bb.bk

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bi
  %.0206238.epil.init = phi i64 [ 0, %bb.bi ], [ %i.fz, %.unr-lcssa ] ; 2 uses
  %lcmp.mod247 = trunc i64 %i.fm to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.gb = mul nuw nsw i64 %.0206238.epil.init, %i.fk
  %i.gc = add nuw nsw i64 %i.gb, %i.ff
  %i.gd = udiv i64 %i.gc, %i.fg
  %i.ge = trunc i64 %i.gd to i16
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %.0206238.epil.init
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !62
  br label %bb.bk

bb.bk:                                            ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_ppm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.b = icmp eq i32 %i.a, 35
  br i1 %i.b, label %.preheader.i, label %pbm_getc.exit

.preheader.i:                                     ; preds = %.critedge, %.preheader.i
  %i.c = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.c, label %.preheader.i [
    i32 -1, label %pbm_getc.exit
    i32 10, label %pbm_getc.exit
  ]

pbm_getc.exit:                                    ; preds = %.preheader.i, %.preheader.i, %.critedge
  %.0.i = phi i32 [ %i.a, %.critedge ], [ %i.c, %.preheader.i ], [ %i.c, %.preheader.i ] ; 3 uses
  switch i32 %.0.i, label %bb.b [
    i32 -1, label %.thread
    i32 32, label %.critedge.backedge
    i32 13, label %.critedge.backedge
    i32 10, label %.critedge.backedge
    i32 9, label %.critedge.backedge
  ]

.critedge.backedge:                               ; preds = %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit
  br label %.critedge

.thread:                                          ; preds = %pbm_getc.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 44, ptr %i.e, align 8, !tbaa !28
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34
  tail call void %i.f(ptr noundef nonnull %0) #6
  br label %bb.c

bb.b:                                             ; preds = %pbm_getc.exit
  %i.g = add i32 %.0.i, -58
  %or.cond5 = icmp ult i32 %i.g, -10
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1029, ptr %i.i, align 8, !tbaa !28
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !34
  tail call void %i.j(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nsw i32 %.0.i, -48
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.r, %.backedge ] ; 2 uses
  %i.l = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.m = icmp eq i32 %i.l, 35
  br i1 %i.m, label %.preheader.i35, label %pbm_getc.exit36

.preheader.i35:                                   ; preds = %bb.e, %.preheader.i35
  %i.n = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.n, label %.preheader.i35 [
    i32 -1, label %pbm_getc.exit36
    i32 10, label %pbm_getc.exit36
  ]

pbm_getc.exit36:                                  ; preds = %.preheader.i35, %.preheader.i35, %bb.e
  %.0.i34 = phi i32 [ %i.l, %bb.e ], [ %i.n, %.preheader.i35 ], [ %i.n, %.preheader.i35 ]
  %i.o = add i32 %.0.i34, -48                     ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %pbm_getc.exit36
  %i.q = mul i32 %.0, 10
  %i.r = add i32 %i.o, %i.q                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %2
  br i1 %i.s, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i32 1031, ptr %i.u, align 8, !tbaa !28
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !34
  tail call void %i.v(ptr noundef nonnull %0) #6
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  br label %bb.e, !llvm.loop !65

bb.h:                                             ; preds = %pbm_getc.exit36
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_text_gray_row(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
end_hunk_0
