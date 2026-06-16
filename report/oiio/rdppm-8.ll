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
define dso_local noundef ptr @jinit_read_ppm(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = add i32 %i.b, -9
  %or.cond = icmp ult i32 %i.c, -7
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
  store ptr @finish_input_ppm, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !45
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr noundef initializes((96, 100)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !46
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
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.m = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.l, i32 noundef 65535) ; 8 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.o = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.n, i32 noundef 65535) ; 7 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.q = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %i.p, i32 noundef 65535) ; 15 uses
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47   ; 3 uses
  %.not232 = icmp ne i32 %i.y, 0
  %i.z = zext i32 %i.m to i64                     ; 3 uses
  %i.aa = zext i32 %i.o to i64
  %i.ab = mul nuw i64 %i.aa, %i.z
  %i.ac = zext i32 %i.y to i64
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  %or.cond243 = select i1 %.not232, i1 %i.ad, i1 false
  br i1 %or.cond243, label %bb.h, label %bb.i

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
  store i32 %i.m, ptr %i.aj, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.o, ptr %i.ak, align 4, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.q, ptr %i.al, align 8, !tbaa !50
  switch i32 %i.h, label %bb.bh [
    i32 50, label %bb.j
    i32 51, label %bb.s
    i32 53, label %bb.z
    i32 54, label %bb.ar
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  switch i32 %i.an, label %bb.l [
    i32 0, label %bb.k
    i32 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i32 1, ptr %i.am, align 4, !tbaa !51
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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52
  tail call void %i.au(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.av = load i32, ptr %i.am, align 4, !tbaa !51 ; 3 uses
  switch i32 %i.av, label %bb.n [
    i32 1, label %bb.m
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_row, ptr %i.aw, align 8, !tbaa !53
  br label %bb.bh

bb.n:                                             ; preds = %bb.l
  %i.ax = add i32 %i.av, -6
  %or.cond244 = icmp ult i32 %i.ax, 10
  br i1 %or.cond244, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_rgb_row, ptr %i.ay, align 8, !tbaa !53
  br label %bb.bh

bb.p:                                             ; preds = %bb.n
  %i.az = icmp eq i32 %i.av, 4
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_gray_cmyk_row, ptr %i.ba, align 8, !tbaa !53
  br label %bb.bh

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 10, ptr %i.bc, align 8, !tbaa !28
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !34
  tail call void %i.bd(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.s:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %i.be, align 4, !tbaa !51
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
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  tail call void %i.bn(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !51 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 2
  %i.bq = add i32 %i.bo, -6
  %or.cond245 = icmp ult i32 %i.bq, 10
  %or.cond253 = or i1 %i.bp, %or.cond245
  br i1 %or.cond253, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_rgb_row, ptr %i.br, align 8, !tbaa !53
  br label %bb.bh

bb.w:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bo, 4
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_text_rgb_cmyk_row, ptr %i.bt, align 8, !tbaa !53
  br label %bb.bh

bb.y:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 10, ptr %i.bv, align 8, !tbaa !28
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !34
  tail call void %i.bw(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.z:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51
  switch i32 %i.by, label %bb.ab [
    i32 0, label %bb.aa
    i32 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  store i32 1, ptr %i.bx, align 4, !tbaa !51
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
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !52
  tail call void %i.cf(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.cg = icmp ugt i32 %i.q, 255
  br i1 %i.cg, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i32, ptr %i.bx, align 4, !tbaa !51 ; 3 uses
  switch i32 %i.ch, label %bb.ae [
    i32 1, label %bb.ad
    i32 2, label %bb.af
end_hunk_0
begin_hunk_1_@start_input_ppm:bb.a
bb.ag:                                            ; preds = %bb.ae
  %i.cl = icmp eq i32 %i.ch, 4
  br i1 %i.cl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_gray_cmyk_row, ptr %i.cm, align 8, !tbaa !53
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ag
  %i.cn = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store i32 10, ptr %i.co, align 8, !tbaa !28
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !34
  tail call void %i.cp(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.aj:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !8
  %notmask233 = shl nsw i32 -1, %i.cr
  %i.cs = xor i32 %notmask233, %i.q
  %i.ct = icmp eq i32 %i.cs, -1
  %i.cu = load i32, ptr %i.bx, align 4, !tbaa !51 ; 4 uses
  %i.cv = icmp eq i32 %i.cu, 1
  %or.cond267 = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond267, label %bb.ak, label %thread-pre-split

bb.ak:                                            ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_raw_row, ptr %i.cw, align 8, !tbaa !53
  br label %bb.bh

thread-pre-split:                                 ; preds = %bb.aj
  switch i32 %i.cu, label %bb.am [
    i32 1, label %bb.al
    i32 2, label %bb.an
  ]

bb.al:                                            ; preds = %thread-pre-split
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_scaled_gray_row, ptr %i.cx, align 8, !tbaa !53
  br label %bb.bh

bb.am:                                            ; preds = %thread-pre-split
  %i.cy = add i32 %i.cu, -6
  %or.cond247 = icmp ult i32 %i.cy, 10
  br i1 %or.cond247, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %thread-pre-split
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_gray_rgb_row, ptr %i.cz, align 8, !tbaa !53
  br label %bb.bh

bb.ao:                                            ; preds = %bb.am
  %i.da = icmp eq i32 %i.cu, 4
  br i1 %i.da, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_gray_cmyk_row, ptr %i.db, align 8, !tbaa !53
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ao
  %i.dc = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 10, ptr %i.dd, align 8, !tbaa !28
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !34
  tail call void %i.de(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.ar:                                            ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !51
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 6, ptr %i.df, align 4, !tbaa !51
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.di = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  store i32 %i.m, ptr %i.dj, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i32 %i.o, ptr %i.dk, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 52
  store i32 %i.q, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 1034, ptr %i.dm, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52
  tail call void %i.do(ptr noundef nonnull %0, i32 noundef 1) #6
  %i.dp = icmp ugt i32 %i.q, 255
  br i1 %i.dp, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.dq = load i32, ptr %i.df, align 4, !tbaa !51 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 2
  %i.ds = add i32 %i.dq, -6
  %or.cond248 = icmp ult i32 %i.ds, 10
  %or.cond254 = or i1 %i.dr, %or.cond248
  br i1 %or.cond254, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_rgb_row, ptr %i.dt, align 8, !tbaa !53
  br label %bb.bh

bb.aw:                                            ; preds = %bb.au
  %i.du = icmp eq i32 %i.dq, 4
  br i1 %i.du, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_word_rgb_cmyk_row, ptr %i.dv, align 8, !tbaa !53
  br label %bb.bh

bb.ay:                                            ; preds = %bb.aw
  %i.dw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i32 10, ptr %i.dx, align 8, !tbaa !28
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !34
  tail call void %i.dy(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.az:                                            ; preds = %bb.at
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !8
  %notmask = shl nsw i32 -1, %i.ea
  %i.eb = xor i32 %notmask, %i.q
  %i.ec = icmp eq i32 %i.eb, -1
  %i.ed = load i32, ptr %i.df, align 4, !tbaa !51 ; 5 uses
  br i1 %i.ec, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  switch i32 %i.ed, label %.thread [
    i32 6, label %bb.bb
    i32 2, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_raw_row, ptr %i.ee, align 8, !tbaa !53
  br label %bb.bh

bb.bc:                                            ; preds = %bb.az
  %i.ef = icmp eq i32 %i.ed, 2
  %i.eg = add i32 %i.ed, -6
  %or.cond249 = icmp ult i32 %i.eg, 10
  %or.cond268 = or i1 %i.ef, %or.cond249
  br i1 %or.cond268, label %bb.bd, label %bb.be

.thread:                                          ; preds = %bb.ba
  %.old = add i32 %i.ed, -6
  %or.cond249.old = icmp ult i32 %.old, 10
  br i1 %or.cond249.old, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.thread, %bb.bc
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_rgb_row, ptr %i.eh, align 8, !tbaa !53
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc, %.thread
  %i.ei = icmp eq i32 %i.ed, 4
  br i1 %i.ei, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_rgb_cmyk_row, ptr %i.ej, align 8, !tbaa !53
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ek = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i32 10, ptr %i.el, align 8, !tbaa !28
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !34
  tail call void %i.em(ptr noundef nonnull %0) #6
  br label %bb.bh

bb.bh:                                            ; preds = %bb.v, %bb.y, %bb.x, %bb.m, %bb.q, %bb.r, %bb.o, %bb.ax, %bb.ay, %bb.av, %bb.bd, %bb.bg, %bb.bf, %bb.bb, %bb.af, %bb.ai, %bb.ah, %bb.ad, %bb.al, %bb.ap, %bb.aq, %bb.an, %bb.ak, %bb.i
  %.not236 = phi i1 [ false, %bb.i ], [ false, %bb.bg ], [ false, %bb.m ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.ai ], [ true, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.ay ], [ true, %bb.bb ], [ false, %bb.bd ], [ false, %bb.bf ], [ false, %bb.o ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.v ]
  %.not235 = phi i1 [ true, %bb.i ], [ true, %bb.bg ], [ true, %bb.m ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %bb.ah ], [ true, %bb.ai ], [ false, %bb.ak ], [ true, %bb.al ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %bb.aq ], [ true, %bb.av ], [ true, %bb.ax ], [ true, %bb.ay ], [ false, %bb.bb ], [ true, %bb.bd ], [ true, %bb.bf ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.v ]
  %.not234 = phi i1 [ false, %bb.i ], [ false, %bb.bg ], [ true, %bb.m ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.ap ], [ false, %bb.aq ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.bf ], [ true, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.v ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !51 ; 6 uses
  %i.ep = icmp eq i32 %i.eo, 2
  %i.eq = add i32 %i.eo, -6
  %or.cond250 = icmp ult i32 %i.eq, 10
  %or.cond255 = or i1 %i.ep, %or.cond250
  br i1 %or.cond255, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.er = zext nneg i32 %i.eo to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  br label %.sink.split

bb.bj:                                            ; preds = %bb.bh
  switch i32 %i.eo, label %bb.bk [
    i32 1, label %.sink.split
    i32 4, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.bj, %bb.bj, %bb.bi
  %.sink263 = phi i32 [ %i.et, %bb.bi ], [ %i.eo, %bb.bj ], [ %i.eo, %bb.bj ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sink263, ptr %i.eu, align 8, !tbaa !54
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split, %bb.bj
  br i1 %.not234, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %2 = icmp eq i32 %i.h, 54
  %3 = mul nuw nsw i64 %i.z, 3
  %.sink265 = select i1 %2, i64 %3, i64 %i.z
  %4 = icmp ugt i32 %i.q, 255
  %5 = zext i1 %4 to i64
  %6 = shl nuw nsw i64 %.sink265, %5              ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 %6, ptr %i.ev, align 8, !tbaa !55
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !35
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !36
  %i.ez = tail call ptr %i.ey(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %6) #6
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !56
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not235, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !57
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !35
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !58
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !54
  %i.fk = mul i32 %i.fj, %i.m
  %i.fl = tail call ptr %i.fh(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.fk, i32 noundef 1) #6
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sink257 = phi ptr [ %i.fl, %bb.bo ], [ %i.fd, %bb.bn ]
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sink257, ptr %i.fm, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.fn, align 8, !tbaa !60
  br i1 %.not236, label %.loopexit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !35
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !36
  %i.fr = tail call i32 @llvm.umax.i32(i32 %i.q, i32 255)
  %i.fs = zext i32 %i.fr to i64
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %i.fu = tail call ptr %i.fq(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ft) #6 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fu, i8 0, i64 %i.ft, i1 false)
  %i.fw = lshr i32 %i.q, 1
  %i.fx = zext nneg i32 %i.fw to i64              ; 3 uses
  %i.fy = zext i32 %i.q to i64                    ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ga = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %i.gb = icmp eq i32 %i.q, 0
  br i1 %i.gb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bq
  %unroll_iter = and i64 %i.ga, 8589934590
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.new
  %.0215256 = phi i64 [ 0, %.new ], [ %i.gv, %bb.br ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.br ]
  %i.gc = load i32, ptr %i.fz, align 8, !tbaa !8
  %notmask238 = shl nsw i32 -1, %i.gc
  %i.gd = xor i32 %notmask238, -1
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = mul nuw nsw i64 %.0215256, %i.ge
  %i.gg = add nuw nsw i64 %i.gf, %i.fx
  %i.gh = udiv i64 %i.gg, %i.fy
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !61
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.0215256
  store i8 %i.gi, ptr %i.gk, align 1, !tbaa !33
  %i.gl = or disjoint i64 %.0215256, 1            ; 2 uses
  %i.gm = load i32, ptr %i.fz, align 8, !tbaa !8
  %notmask238.1 = shl nsw i32 -1, %i.gm
  %i.gn = xor i32 %notmask238.1, -1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = mul nuw nsw i64 %i.gl, %i.go
  %i.gq = add nuw nsw i64 %i.gp, %i.fx
  %i.gr = udiv i64 %i.gq, %i.fy
  %i.gs = trunc i64 %i.gr to i8
  %i.gt = load ptr, ptr %i.fv, align 8, !tbaa !61
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  store i8 %i.gs, ptr %i.gu, align 1, !tbaa !33
  %i.gv = add nuw nsw i64 %.0215256, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.br, !llvm.loop !62

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.br
  %i.gw = and i64 %i.fy, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gw, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bq
  %.0215256.epil.init = phi i64 [ 0, %bb.bq ], [ %i.gv, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i64 %i.ga to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.gx = load i32, ptr %i.fz, align 8, !tbaa !8
  %notmask238.epil = shl nsw i32 -1, %i.gx
  %i.gy = xor i32 %notmask238.epil, -1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = mul nuw nsw i64 %.0215256.epil.init, %i.gz
  %i.hb = add nuw nsw i64 %i.ha, %i.fx
  %i.hc = udiv i64 %i.hb, %i.fy
  %i.hd = trunc i64 %i.hc to i8
  %i.he = load ptr, ptr %i.fv, align 8, !tbaa !61
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.0215256.epil.init
  store i8 %i.hd, ptr %i.hf, align 1, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.bp
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
end_hunk_1
