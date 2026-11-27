Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/zmbv?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@decode_init:bb.a
  %.0 = phi i32 [ -1094995529, %bb.b ], [ %i.ac, %bb.e ], [ -12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 0) i32 @decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !61   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 57 uses
  %i.e = icmp slt i32 %i.b, 1
  br i1 %i.e, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 8 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !42
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 832 ; 4 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.l = add nsw i32 %i.b, -1
  %i.m = and i32 %i.i, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 860 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !63
  %i.o = icmp samesign ult i32 %i.b, 7
  br i1 %i.o, label %bb.av, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.k, align 1, !tbaa !42    ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !42    ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 828 ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !42
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 824 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !42
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 840 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 844 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 984 ; 5 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.am = add nsw i32 %i.b, -7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.4, i32 noundef %i.i, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.aa, i32 noundef %i.ae, i32 noundef %i.ai) #7
  %i.an = icmp ne i8 %i.p, 0
  %i.ao = icmp ne i8 %i.s, 1
  %or.cond = or i1 %i.an, %i.ao
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.q, i32 noundef %i.t) #7
  br label %bb.av

bb.f:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %.pre = load i32, ptr %i.aj, align 4, !tbaa !45 ; 2 uses
  %i.ar = icmp eq i32 %.pre, 0
  %or.cond243 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond243, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.ap, i32 noundef %.pre) #7
  br label %bb.av

bb.h:                                             ; preds = %bb.f
  %i.as = load i32, ptr %i.x, align 4, !tbaa !64  ; 2 uses
  %switch = icmp ult i32 %i.as, 2
  br i1 %switch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.as) #7
  br label %bb.av

bb.j:                                             ; preds = %bb.h
  %i.at = load i32, ptr %i.ab, align 8, !tbaa !65 ; 3 uses
  switch i32 %i.at, label %bb.n [
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.l
    i32 8, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 8, ptr %i.au, align 8, !tbaa !39
  store ptr @zmbv_decode_xor_8, ptr %i.ak, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 11, ptr %i.av, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !36
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 16, ptr %i.ay, align 8, !tbaa !39
  store ptr @zmbv_decode_xor_16, ptr %i.ak, align 8, !tbaa !66
  %i.az = icmp eq i32 %i.at, 5
  %spec.select = select i1 %i.az, i32 39, i32 37
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.ba, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !36
  %i.bd = shl nsw i32 %i.bc, 1
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 32, ptr %i.be, align 8, !tbaa !39
  store ptr @zmbv_decode_xor_32, ptr %i.ak, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 121, ptr %i.bf, align 8, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !36
  %i.bi = shl nsw i32 %i.bh, 2
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  store ptr null, ptr %i.ak, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %i.at) #7
  br label %bb.av

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sink = phi i32 [ %i.bi, %bb.m ], [ %i.bd, %bb.l ], [ %i.ax, %bb.k ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 836
  store i32 %.sink, ptr %i.bj, align 4, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 864
  %i.bl = tail call i32 @inflateReset(ptr noundef nonnull %i.bk) #7 ; 2 uses
  %.not221 = icmp eq i32 %i.bl, 0
  br i1 %.not221, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.bl) #7
  br label %bb.av

bb.q:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !39 ; 3 uses
  %i.bq = icmp slt i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 808 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !37
  %i.bx = mul nsw i32 %i.bw, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = sdiv i32 %i.bp, 8
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call ptr @av_realloc_f(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef %i.ca) #7
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 800 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = load i32, ptr %i.bt, align 8, !tbaa !35
  %i.cf = load i32, ptr %i.bv, align 4, !tbaa !37
  %i.cg = mul nsw i32 %i.cf, %i.ce
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load i32, ptr %i.bo, align 8, !tbaa !39
  %i.cj = sdiv i32 %i.ci, 8
  %i.ck = sext i32 %i.cj to i64
  %i.cl = tail call ptr @av_realloc_f(ptr noundef %i.cd, i64 noundef %i.ch, i64 noundef %i.ck) #7
  store ptr %i.cl, ptr %i.cc, align 8, !tbaa !47
  %i.cm = load i32, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  store i32 %i.cm, ptr %i.bm, align 4, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cn = phi i32 [ %i.cm, %bb.r ], [ %i.bp, %bb.q ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %i.cq = load <2 x i32>, ptr %i.co, align 8, !tbaa !48
  %i.cr = load <2 x i32>, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %i.cs = add <2 x i32> %i.cq, splat (i32 -1)
  %i.ct = add <2 x i32> %i.cs, %i.cr
  %i.cu = sdiv <2 x i32> %i.ct, %i.cr
  store <2 x i32> %i.cu, ptr %i.cp, align 8, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %.not222 = icmp eq ptr %i.cw, null
  br i1 %.not222, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 800 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !47
  %.not223 = icmp eq ptr %i.cy, null
  br i1 %.not223, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 0, ptr %i.bm, align 4, !tbaa !69
  br label %bb.av

bb.v:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = mul nsw i32 %i.dc, %i.da
  %i.de = sdiv i32 %i.cn, 8
  %i.df = mul nsw i32 %i.dd, %i.de
  %i.dg = sext i32 %i.df to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cw, i8 0, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !47
  %i.di = load i32, ptr %i.cz, align 8, !tbaa !35
  %i.dj = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dk = mul nsw i32 %i.dj, %i.di
  %i.dl = load i32, ptr %i.bo, align 8, !tbaa !39
  %i.dm = sdiv i32 %i.dl, 8
  %i.dn = mul nsw i32 %i.dk, %i.dm
  %i.do = sext i32 %i.dn to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dh, i8 0, i64 %i.do, i1 false)
  store i32 1, ptr %i.n, align 4, !tbaa !63
  %.pre233 = load i32, ptr %i.j, align 8, !tbaa !43
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %i.dp = phi i32 [ %.pre233, %bb.v ], [ %i.i, %bb.b ] ; 2 uses
  %.0209 = phi ptr [ %i.al, %bb.v ], [ %i.k, %bb.b ] ; 2 uses
  %.0208 = phi i32 [ %i.am, %bb.v ], [ %i.l, %bb.b ] ; 4 uses
  %i.dq = and i32 %i.dp, 1
  %.not224 = icmp eq i32 %i.dq, 0
  br i1 %.not224, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !37
  %i.dv = mul nsw i32 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dy = sdiv i32 %i.dx, 8
  %i.dz = mul nsw i32 %i.dv, %i.dy
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !49
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 852
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !50
  %i.ee = shl i32 %i.eb, 1
  %i.ef = mul i32 %i.ee, %i.ed
  %i.eg = add nsw i32 %i.ef, 2
  %i.eh = and i32 %i.eg, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0206 = phi i32 [ %i.dz, %bb.x ], [ %i.eh, %bb.y ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !67
  %i.ek = icmp eq i32 %i.ej, 11
  %i.el = and i32 %i.dp, 3
  %.not225 = icmp ne i32 %i.el, 0
  %i.em = add nsw i32 %.0206, 768
  %i.en = and i1 %.not225, %i.ek
  %.1207 = select i1 %i.en, i32 %i.em, i32 %.0206 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 860
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !63
  %.not226 = icmp eq i32 %i.ep, 0
  br i1 %.not226, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10) #7
  br label %bb.av

bb.ab:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 828
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !64
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !40
  %i.ev = icmp ult i32 %i.eu, %.0208
  br i1 %i.ev, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #7
  br label %bb.av

bb.ae:                                            ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !41
  %i.ey = zext nneg i32 %.0208 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr nonnull align 1 %.0209, i64 %i.ey, i1 false)
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 864 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 904 ; 2 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !70
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 880
  store i64 0, ptr %i.fb, align 8, !tbaa !71
  store ptr %.0209, ptr %i.ez, align 8, !tbaa !72
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 872
  store i32 %.0208, ptr %i.fc, align 8, !tbaa !73
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 888
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !74
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !75
  %i.fj = tail call i32 @inflate(ptr noundef nonnull %i.ez, i32 noundef 2) #7 ; 2 uses
  %or.cond3 = icmp ult i32 %i.fj, 2
  br i1 %or.cond3, label %.thread, label %bb.ag

.thread:                                          ; preds = %bb.af
  %i.fk = load i64, ptr %i.fa, align 8, !tbaa !70
  %i.fl = trunc i64 %i.fk to i32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %i.fj) #7
  br label %bb.av

bb.ah:                                            ; preds = %.thread, %bb.ae
  %.sink245 = phi i32 [ %i.fl, %.thread ], [ %.0208, %bb.ae ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  store i32 %.sink245, ptr %i.fm, align 8, !tbaa !51
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.fo = icmp sgt i32 %.1207, %.sink245
  br i1 %i.fo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = load i32, ptr %i.j, align 8, !tbaa !43
  %.not227 = trunc i32 %i.fp to i1
  %i.fq = icmp slt i32 %.1207, %.sink245
  %or.cond230 = select i1 %.not227, i1 %i.fq, i1 false
  br i1 %or.cond230, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %.sink245, i32 noundef %.1207) #7
  br label %bb.av

bb.ak:                                            ; preds = %bb.ai
  %i.fr = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ft = load i32, ptr %i.j, align 8, !tbaa !43
  %i.fu = and i32 %i.ft, 1
  %.not228 = icmp eq i32 %i.fu, 0
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !80 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  br i1 %.not228, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = or i32 %i.fw, 2
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !80
  store i32 1, ptr %i.fx, align 8, !tbaa !81
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !41 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 824
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !65
  %i.gd = icmp eq i32 %i.gc, 4
  br i1 %i.gd, label %bb.an, label %zmbv_decode_intra.exit

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.ge, ptr noundef nonnull align 1 dereferenceable(768) %i.ga, i64 768, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 768
  br label %zmbv_decode_intra.exit

zmbv_decode_intra.exit:                           ; preds = %bb.am, %bb.an
  %.0.i = phi ptr [ %i.gf, %bb.an ], [ %i.ga, %bb.am ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !46
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 820
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !38
  %i.gm = mul nsw i32 %i.gl, %i.gj
end_hunk_0
