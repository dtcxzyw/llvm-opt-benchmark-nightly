Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/rdbmp?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jinit_read_bmp:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq i32 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 15, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.b, ptr %i.e, align 4, !tbaa !33
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 128) #5 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %0, ptr %i.l, align 8, !tbaa !45
  store ptr @start_input_bmp, ptr %i.k, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @read_icc_profile_bmp, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @finish_input_bmp, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  store i32 0, ptr %i.o, align 4, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i32 %1, ptr %i.p, align 8, !tbaa !46
  ret ptr %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_bmp(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [14 x i8], align 2                ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 14, ptr noundef %i.d)
  %i.f = icmp eq i64 %i.e, 14
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 43, ptr %i.h, align 8, !tbaa !32
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void %i.i(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i16, ptr %i.a, align 2
  %.not = icmp eq i16 %i.j, 19778
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 1008, ptr %i.l, align 8, !tbaa !32
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !34
  tail call void %i.m(ptr noundef %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i32, ptr %i.n, align 2              ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.q = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef %i.p)
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 43, ptr %i.t, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !34
  tail call void %i.u(ptr noundef nonnull %0) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = load i32, ptr %i.b, align 16             ; 4 uses
  %i.w = add i32 %i.v, -65
  %or.cond = icmp ult i32 %i.w, -53
  %i.x = add nsw i32 %i.v, 14                     ; 2 uses
  %i.y = icmp sgt i32 %i.x, %i.o
  %or.cond249 = select i1 %or.cond, i1 true, i1 %i.y
  br i1 %or.cond249, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 1003, ptr %i.aa, align 8, !tbaa !32
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !34
  tail call void %i.ab(ptr noundef %0) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ad = add nsw i32 %i.v, -4
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.ag = call i64 @fread(ptr noundef nonnull %i.ac, i64 noundef 1, i64 noundef %i.ae, ptr noundef %i.af)
  %i.ah = icmp eq i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 43, ptr %i.aj, align 8, !tbaa !32
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void %i.ak(ptr noundef nonnull %0) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  switch i32 %i.v, label %bb.x [
    i32 12, label %bb.l
    i32 40, label %bb.p
    i32 64, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = load i16, ptr %i.ac, align 4
  %i.am = zext i16 %i.al to i32                   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32                   ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load i16, ptr %i.aq, align 8            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !48
  %i.aw = load ptr, ptr %0, align 8, !tbaa !27    ; 9 uses
  switch i16 %i.at, label %bb.o [
    i16 8, label %bb.m
    i16 24, label %bb.n
    i16 32, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 1013, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.am, ptr %i.ay, align 4, !tbaa !33
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i32 %i.ap, ptr %i.ba, align 4, !tbaa !33
  %i.bb = load ptr, ptr %0, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77
  tail call void %i.bd(ptr noundef %0, i32 noundef 1) #5
  br label %bb.y

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  store i32 %i.am, ptr %i.be, align 4, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store i32 %i.ap, ptr %i.bf, align 4, !tbaa !49
  %i.bg = load i32, ptr %i.av, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 1012, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !77
  tail call void %i.bk(ptr noundef %0, i32 noundef 1) #5
  br label %bb.y

bb.o:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i32 1002, ptr %i.bl, align 8, !tbaa !32
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !34
  tail call void %i.bm(ptr noundef %0) #5
  br label %bb.y

bb.p:                                             ; preds = %bb.k, %bb.k
  %i.bn = load i32, ptr %i.ac, align 4            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load i32, ptr %i.bo, align 8            ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.br = load i16, ptr %i.bq, align 4            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bx = load i32, ptr %i.bw, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load <2 x i32>, ptr %i.by, align 8
  %.fr = freeze <2 x i32> %i.bz                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cb = load i32, ptr %i.ca, align 16           ; 2 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !27    ; 9 uses
  switch i16 %i.bt, label %bb.s [
    i16 8, label %bb.q
    i16 24, label %bb.r
    i16 32, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 1011, ptr %i.cd, align 8, !tbaa !32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  store i32 %i.bn, ptr %i.ce, align 4, !tbaa !33
  %i.cf = load ptr, ptr %0, align 8, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store i32 %i.bp, ptr %i.cg, align 4, !tbaa !33
  %i.ch = load ptr, ptr %0, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !77
  tail call void %i.cj(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  store i32 %i.bn, ptr %i.ck, align 4, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  store i32 %i.bp, ptr %i.cl, align 4, !tbaa !49
  %i.cm = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !49
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 1010, ptr %i.co, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !77
  tail call void %i.cq(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 1002, ptr %i.cr, align 8, !tbaa !32
  %i.cs = load ptr, ptr %i.cc, align 8, !tbaa !34
  tail call void %i.cs(ptr noundef nonnull %0) #5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0224 = phi i32 [ 0, %bb.s ], [ 4, %bb.q ], [ 0, %bb.r ] ; 2 uses
  %.not241 = icmp eq i32 %i.bx, 0
  br i1 %.not241, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 1006, ptr %i.cu, align 8, !tbaa !32
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !34
  tail call void %i.cv(ptr noundef nonnull %0) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %2 = icmp slt <2 x i32> %.fr, splat (i32 1)
  %3 = bitcast <2 x i1> %2 to i2
  %or.cond3 = icmp eq i2 %3, 0
  br i1 %or.cond3, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cw = udiv <2 x i32> %.fr, splat (i32 100)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cy = trunc <2 x i32> %i.cw to <2 x i16>
  store <2 x i16> %i.cy, ptr %i.cx, align 8, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 294
  store i8 2, ptr %i.cz, align 2, !tbaa !79
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.da = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i32 1003, ptr %i.db, align 8, !tbaa !32
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !34
  tail call void %i.dc(ptr noundef %0) #5
  br label %bb.cn

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.m, %bb.n, %bb.o
  %.0230 = phi i32 [ %i.am, %bb.o ], [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.bn, %bb.w ], [ %i.bn, %bb.v ] ; 11 uses
  %.0229 = phi i32 [ %i.ap, %bb.o ], [ %i.ap, %bb.m ], [ %i.ap, %bb.n ], [ %i.bp, %bb.w ], [ %i.bp, %bb.v ] ; 5 uses
  %.0228 = phi i16 [ %i.ar, %bb.o ], [ %i.ar, %bb.m ], [ %i.ar, %bb.n ], [ %i.br, %bb.w ], [ %i.br, %bb.v ]
  %.0226 = phi i32 [ 0, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ], [ %i.cb, %bb.w ], [ %i.cb, %bb.v ] ; 4 uses
  %.1225 = phi i32 [ 0, %bb.o ], [ 3, %bb.m ], [ 0, %bb.n ], [ %.0224, %bb.w ], [ %.0224, %bb.v ] ; 3 uses
  %i.dd = icmp slt i32 %.0230, 1
  %i.de = icmp slt i32 %.0229, 1
  %or.cond5 = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond5, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i32 1007, ptr %i.dg, align 8, !tbaa !32
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !34
  tail call void %i.dh(ptr noundef nonnull %0) #5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.di = sext i32 %.0230 to i64
  %i.dj = icmp sgt i32 %.0230, 65500
  %i.dk = sext i32 %.0229 to i64
  %i.dl = icmp sgt i32 %.0229, 65500
  %or.cond8 = select i1 %i.dj, i1 true, i1 %i.dl
  br i1 %or.cond8, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i32 41, ptr %i.dn, align 8, !tbaa !32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  store i32 65500, ptr %i.do, align 4, !tbaa !33
  %i.dp = load ptr, ptr %0, align 8, !tbaa !27
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34
  tail call void %i.dq(ptr noundef nonnull %0) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !80 ; 3 uses
  %.not243 = icmp ne i32 %i.ds, 0
  %i.dt = mul nsw i64 %i.dk, %i.di
  %i.du = zext i32 %i.ds to i64
  %i.dv = icmp ugt i64 %i.dt, %i.du
  %or.cond252 = select i1 %.not243, i1 %i.dv, i1 false
  br i1 %or.cond252, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i32 41, ptr %i.dx, align 8, !tbaa !32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 44
  store i32 %i.ds, ptr %i.dy, align 4, !tbaa !33
  %i.dz = load ptr, ptr %0, align 8, !tbaa !27
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !34
  tail call void %i.ea(ptr noundef nonnull %0) #5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not244 = icmp eq i16 %.0228, 1
  br i1 %.not244, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store i32 1004, ptr %i.ec, align 8, !tbaa !32
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !34
  tail call void %i.ed(ptr noundef nonnull %0) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ee = sub nsw i32 %i.o, %i.x                  ; 2 uses
  %.not264 = icmp eq i32 %.1225, 0
  br i1 %.not264, label %bb.be, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = icmp slt i32 %.0226, 1
  br i1 %i.ef, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = icmp samesign ugt i32 %.0226, 256
  br i1 %i.eg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store i32 1001, ptr %i.ei, align 8, !tbaa !32
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !34
  tail call void %i.ej(ptr noundef nonnull %0) #5
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj
  %.1227 = phi i32 [ %.0226, %bb.ai ], [ %.0226, %bb.aj ], [ 256, %bb.ah ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !81
  %i.eo = tail call ptr %i.en(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.1227, i32 noundef 3) #5
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 9 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !50
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %.1227, ptr %i.eq, align 4, !tbaa !51
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  switch i32 %.1225, label %.thread.i [
    i32 3, label %.preheader.i
    i32 4, label %.preheader83.i
  ]

.preheader83.i:                                   ; preds = %bb.ak
  %wide.trip.count.i = zext nneg i32 %.1227 to i64
  br label %bb.as

.preheader.i:                                     ; preds = %bb.ak
  %wide.trip.count94.i = zext nneg i32 %.1227 to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ar, %.preheader.i
  %indvars.iv91.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next92.i, %bb.ar ] ; 7 uses
  %.088.i = phi i32 [ 1, %.preheader.i ], [ %.1.i, %bb.ar ]
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.et = tail call i32 @getc(ptr noundef %i.es)  ; 2 uses
  %i.eu = icmp eq i32 %i.et, -1
  br i1 %i.eu, label %bb.am, label %read_byte.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !45 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !27 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 43, ptr %i.ex, align 8, !tbaa !32
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !34
  tail call void %i.ey(ptr noundef nonnull %i.ev) #5, !inline_history !71
  br label %read_byte.exit.i

read_byte.exit.i:                                 ; preds = %bb.am, %bb.al
  %i.ez = trunc i32 %i.et to i8
  %i.fa = load ptr, ptr %i.ep, align 8, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !52
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv91.i
  store i8 %i.ez, ptr %i.fd, align 1, !tbaa !33
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.ff = tail call i32 @getc(ptr noundef %i.fe)  ; 2 uses
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %bb.an, label %read_byte.exit66.i

bb.an:                                            ; preds = %read_byte.exit.i
  %i.fh = load ptr, ptr %i.er, align 8, !tbaa !45 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !27 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store i32 43, ptr %i.fj, align 8, !tbaa !32
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !34
  tail call void %i.fk(ptr noundef nonnull %i.fh) #5, !inline_history !71
  br label %read_byte.exit66.i

read_byte.exit66.i:                               ; preds = %bb.an, %read_byte.exit.i
  %i.fl = trunc i32 %i.ff to i8
  %i.fm = load ptr, ptr %i.ep, align 8, !tbaa !50
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv91.i
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !33
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.fr = tail call i32 @getc(ptr noundef %i.fq)  ; 2 uses
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.ao, label %read_byte.exit67.i

bb.ao:                                            ; preds = %read_byte.exit66.i
  %i.ft = load ptr, ptr %i.er, align 8, !tbaa !45 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !27 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  store i32 43, ptr %i.fv, align 8, !tbaa !32
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !34
  tail call void %i.fw(ptr noundef nonnull %i.ft) #5, !inline_history !71
  br label %read_byte.exit67.i

read_byte.exit67.i:                               ; preds = %bb.ao, %read_byte.exit66.i
  %i.fx = trunc i32 %i.fr to i8
  %i.fy = load ptr, ptr %i.ep, align 8, !tbaa !50
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !52
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv91.i
  store i8 %i.fx, ptr %i.ga, align 1, !tbaa !33
  %i.gb = load ptr, ptr %i.ep, align 8, !tbaa !50 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !52
end_hunk_0
