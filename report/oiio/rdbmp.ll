inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@start_input_bmp:bb.a
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !38 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !27 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  store i32 44, ptr %i.jv, align 8, !tbaa !28
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !34
  tail call void %i.jw(ptr noundef nonnull %i.jt) #5, !inline_history !66
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %bb.bf, %bb.bg
  %i.jx = icmp samesign ugt i32 %.1230268, 1
  br i1 %i.jx, label %bb.bf, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %read_byte.exit, %.thread278, %bb.be
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !51
  switch i32 %i.jz, label %bb.cg [
    i32 8, label %bb.bh
    i32 24, label %bb.bo
    i32 32, label %bb.bx
  ]

bb.bh:                                            ; preds = %._crit_edge
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !64 ; 5 uses
  switch i32 %i.kb, label %bb.bi [
    i32 0, label %.thread279
    i32 2, label %bb.bj
  ]

.thread279:                                       ; preds = %bb.bh
  store i32 6, ptr %i.ka, align 4, !tbaa !64
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kc = add i32 %i.kb, -6
  %or.cond255 = icmp ult i32 %i.kc, 10
  br i1 %or.cond255, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread279, %bb.bh, %bb.bi
  %i.kd = phi i32 [ %i.kb, %bb.bi ], [ %i.kb, %bb.bh ], [ 6, %.thread279 ]
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.kg, ptr %i.kh, align 8, !tbaa !68
  br label %bb.ch

bb.bk:                                            ; preds = %bb.bi
  switch i32 %i.kb, label %bb.bn [
    i32 1, label %bb.bl
    i32 4, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.ki, align 8, !tbaa !68
  br label %bb.ch

bb.bm:                                            ; preds = %bb.bk
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 4, ptr %i.kj, align 8, !tbaa !68
  br label %bb.ch

bb.bn:                                            ; preds = %bb.bk
  %i.kk = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  store i32 10, ptr %i.kl, align 8, !tbaa !28
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !34
  tail call void %i.km(ptr noundef nonnull %0) #5
  br label %bb.ch

bb.bo:                                            ; preds = %._crit_edge
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !64 ; 5 uses
  switch i32 %i.ko, label %bb.bp [
    i32 0, label %.thread259
    i32 2, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.kp = add i32 %i.ko, -6
  %or.cond256 = icmp ult i32 %i.kp, 10
  br i1 %or.cond256, label %bb.bq, label %bb.br

.thread259:                                       ; preds = %bb.bo
  store i32 8, ptr %i.kn, align 4, !tbaa !64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %.thread259, %bb.bp
  %i.kq = phi i32 [ %i.ko, %bb.bp ], [ %i.ko, %bb.bo ], [ 8, %.thread259 ]
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !68
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.kv = icmp eq i32 %i.ko, 4
  br i1 %i.kv, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 4, ptr %i.kw, align 8, !tbaa !68
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.kx = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  store i32 10, ptr %i.ky, align 8, !tbaa !28
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !34
  tail call void %i.kz(ptr noundef nonnull %0) #5
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bq
  %i.la = sext i32 %.0 to i64
  %i.lb = mul nsw i64 %i.la, 3
  %i.lc = icmp ugt i64 %i.lb, 4294967295
  br i1 %i.lc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ld = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  store i32 72, ptr %i.le, align 8, !tbaa !28
  %i.lf = load ptr, ptr %i.ld, align 8, !tbaa !34
  tail call void %i.lf(ptr noundef nonnull %0) #5
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.lg = mul i32 %.0, 3
  br label %bb.ch

bb.bx:                                            ; preds = %._crit_edge
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !64 ; 5 uses
  switch i32 %i.li, label %bb.by [
    i32 0, label %.thread263
    i32 2, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.lj = add i32 %i.li, -6
  %or.cond257 = icmp ult i32 %i.lj, 10
  br i1 %or.cond257, label %bb.bz, label %bb.ca

.thread263:                                       ; preds = %bb.bx
  store i32 13, ptr %i.lh, align 4, !tbaa !64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %.thread263, %bb.by
  %i.lk = phi i32 [ %i.li, %bb.by ], [ %i.li, %bb.bx ], [ 13, %.thread263 ]
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr @rgb_pixelsize, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !4
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ln, ptr %i.lo, align 8, !tbaa !68
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %i.lp = icmp eq i32 %i.li, 4
  br i1 %i.lp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 4, ptr %i.lq, align 8, !tbaa !68
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.lr = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 40
  store i32 10, ptr %i.ls, align 8, !tbaa !28
  %i.lt = load ptr, ptr %i.lr, align 8, !tbaa !34
  tail call void %i.lt(ptr noundef nonnull %0) #5
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz
  %.not249 = icmp ult i32 %.0, 1073741824
  br i1 %.not249, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lu = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  store i32 72, ptr %i.lv, align 8, !tbaa !28
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !34
  tail call void %i.lw(ptr noundef nonnull %0) #5
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.lx = shl i32 %.0, 2
  br label %bb.ch

bb.cg:                                            ; preds = %._crit_edge
  %i.ly = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store i32 1002, ptr %i.lz, align 8, !tbaa !28
  %i.ma = load ptr, ptr %i.ly, align 8, !tbaa !34
  tail call void %i.ma(ptr noundef %0) #5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bj, %bb.bm, %bb.bn, %bb.bl, %bb.cg, %bb.cf, %bb.bw
  %.0228 = phi i32 [ 0, %bb.cg ], [ %i.lx, %bb.cf ], [ %i.lg, %bb.bw ], [ %.0, %bb.bl ], [ %.0, %bb.bn ], [ %.0, %bb.bm ], [ %.0, %bb.bj ] ; 2 uses
  %2 = sub i32 0, %.0228
  %i.mb = and i32 %2, 3
  %3 = add i32 %.0228, %i.mb                      ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %3, ptr %i.mc, align 4, !tbaa !69
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.me = load i32, ptr %i.md, align 8, !tbaa !49
  %.not251 = icmp eq i32 %i.me, 0
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !35 ; 2 uses
  br i1 %.not251, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !70
  %i.mj = tail call ptr %i.mi(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %3, i32 noundef %.0226, i32 noundef 1) #5
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !71
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @preload_image, ptr %i.ml, align 8, !tbaa !72
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !73 ; 2 uses
  %.not252 = icmp eq ptr %i.mn, null
  br i1 %.not252, label %bb.cp, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 36 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !74
  %i.mq = add nsw i32 %i.mp, 1
  store i32 %i.mq, ptr %i.mo, align 4, !tbaa !74
  br label %bb.cp

bb.ck:                                            ; preds = %bb.ch
  %i.mr = load ptr, ptr %i.mg, align 8, !tbaa !36
  %i.ms = zext i32 %3 to i64
  %i.mt = tail call ptr %i.mr(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ms) #5
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !77
  %i.mv = load i32, ptr %i.jy, align 8, !tbaa !51
  switch i32 %i.mv, label %bb.co [
    i32 8, label %bb.cl
    i32 24, label %bb.cm
    i32 32, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_8bit_row, ptr %i.mw, align 8, !tbaa !72
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_24bit_row, ptr %i.mx, align 8, !tbaa !72
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @get_32bit_row, ptr %i.my, align 8, !tbaa !72
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.mz = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  store i32 1002, ptr %i.na, align 8, !tbaa !28
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !34
  tail call void %i.nb(ptr noundef nonnull %0) #5
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.ci, %bb.cj
  %i.nc = sext i32 %.0 to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !68 ; 2 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = mul nsw i64 %i.nf, %i.nc
  %i.nh = icmp ugt i64 %i.ng, 4294967295
  br i1 %i.nh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ni = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  store i32 72, ptr %i.nj, align 8, !tbaa !28
  %i.nk = load ptr, ptr %i.ni, align 8, !tbaa !34
  tail call void %i.nk(ptr noundef nonnull %0) #5
  %.pre = load i32, ptr %i.nd, align 8, !tbaa !68
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.nl = phi i32 [ %.pre, %bb.cq ], [ %i.ne, %bb.cp ]
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !56
  %i.nq = mul i32 %i.nl, %.0
  %i.nr = tail call ptr %i.np(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.nq, i32 noundef 1) #5
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.nr, ptr %i.ns, align 8, !tbaa !78
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.nt, align 8, !tbaa !79
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 8, ptr %i.nu, align 8, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.0, ptr %i.nv, align 8, !tbaa !80
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0226, ptr %i.nw, align 4, !tbaa !81
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_bmp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81   ; 2 uses
  %.not47 = icmp eq i32 %i.f, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not43 = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 4 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.046.us = phi i32 [ %i.aa, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.p = tail call ptr %i.n(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef %.046.us, i32 noundef 1, i32 noundef 1) #5
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.r = load i32, ptr %i.k, align 4, !tbaa !69
  %i.s = zext i32 %i.r to i64
  %i.t = tail call i64 @fread(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.s, ptr noundef %i.b)
  %i.u = load i32, ptr %i.k, align 4, !tbaa !69
  %i.v = zext i32 %i.u to i64
  %.not44.us = icmp eq i64 %i.t, %i.v
  br i1 %.not44.us, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.split.us
  %i.w = tail call i32 @feof(ptr noundef %i.b) #5
  %.not45.us = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %. = select i1 %.not45.us, i32 37, i32 44
  store i32 %., ptr %i.y, align 8, !tbaa !28
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !34
  tail call void %i.z(ptr noundef nonnull %0) #5
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %.lr.ph.split.us
  %i.aa = add nuw i32 %.046.us, 1                 ; 2 uses
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !81  ; 2 uses
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !83

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph ] ; 3 uses
  %i.ad = phi i32 [ %i.aw, %bb.c ], [ %i.f, %.lr.ph ]
  store i64 %indvars.iv, ptr %i.g, align 8, !tbaa !84
  %i.ae = zext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.h, align 8, !tbaa !85
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !86
  tail call void %i.af(ptr noundef nonnull %0) #5
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.ak = trunc nuw i64 %indvars.iv to i32
  %i.al = tail call ptr %i.ai(ptr noundef nonnull %0, ptr noundef %i.aj, i32 noundef %i.ak, i32 noundef 1, i32 noundef 1) #5
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !60
  %i.an = load i32, ptr %i.k, align 4, !tbaa !69
  %i.ao = zext i32 %i.an to i64
  %i.ap = tail call i64 @fread(ptr noundef %i.am, i64 noundef 1, i64 noundef %i.ao, ptr noundef %i.b)
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !69
  %i.ar = zext i32 %i.aq to i64
  %.not44 = icmp eq i64 %i.ap, %i.ar
  br i1 %.not44, label %bb.c, label %.sink.split56

.sink.split56:                                    ; preds = %.lr.ph.split
  %i.as = tail call i32 @feof(ptr noundef %i.b) #5
  %.not45 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.59 = select i1 %.not45, i32 37, i32 44
  store i32 %.59, ptr %i.au, align 8, !tbaa !28
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !34
  tail call void %i.av(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %.sink.split56, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.e, align 4, !tbaa !81  ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph.split, label %._crit_edge.thread, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.az = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.b ]  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.ba = phi i32 [ %i.az, %._crit_edge ], [ %i.aw, %bb.c ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !87
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = phi i32 [ %i.ba, %._crit_edge.thread ], [ %i.az, %._crit_edge ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
end_hunk_0
