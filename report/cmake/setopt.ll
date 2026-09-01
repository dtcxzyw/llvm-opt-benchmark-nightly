Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/setopt?download=true
inline.NumInlined: 70
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@setopt_cptr:bb.a
bb.ep:                                            ; preds = %bb.eo
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.ld = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.lc, ptr noundef %2)
  br label %setopt_cptr_proxy.exit.thread

bb.eq:                                            ; preds = %bb.bt
  %i.le = tail call zeroext i1 @Curl_ssl_supports(ptr noundef %0, i32 noundef 4) #10
  br i1 %i.le, label %bb.er, label %setopt_cptr_proxy.exit.thread

bb.er:                                            ; preds = %bb.eq
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.lg = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.lf, ptr noundef %2)
  br label %setopt_cptr_proxy.exit.thread

bb.es:                                            ; preds = %bb.bt
  %.not234 = icmp eq ptr %2, null
  br i1 %.not234, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.lh = call fastcc i32 @protocol2num(ptr noundef %2, ptr noundef %i.c) ; 2 uses
  %.not235 = icmp eq i32 %i.lh, 0
  br i1 %.not235, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.li = load i64, ptr %i.c, align 8, !tbaa !20
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1840
  store i64 %i.li, ptr %i.lj, align 8, !tbaa !93
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %setopt_cptr_proxy.exit.thread

bb.ew:                                            ; preds = %bb.es
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 1840
  store i64 -1, ptr %i.lk, align 8, !tbaa !93
  br label %setopt_cptr_proxy.exit.thread

bb.ex:                                            ; preds = %bb.bt
  %.not232 = icmp eq ptr %2, null
  br i1 %.not232, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ll = call fastcc i32 @protocol2num(ptr noundef %2, ptr noundef %i.d) ; 2 uses
  %.not233 = icmp eq i32 %i.ll, 0
  br i1 %.not233, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.lm = load i64, ptr %i.d, align 8, !tbaa !20
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i64 %i.lm, ptr %i.ln, align 8, !tbaa !94
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %setopt_cptr_proxy.exit.thread

bb.fb:                                            ; preds = %bb.ex
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store i64 15, ptr %i.lo, align 8, !tbaa !94
  br label %setopt_cptr_proxy.exit.thread

bb.fc:                                            ; preds = %bb.bt
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.lq = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.lp, ptr noundef %2)
  br label %setopt_cptr_proxy.exit.thread

bb.fd:                                            ; preds = %bb.bt
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.ls = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.lr, ptr noundef %2)
  br label %setopt_cptr_proxy.exit.thread

bb.fe:                                            ; preds = %bb.bt
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.lu = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.lt, ptr noundef %2)
  %i.lv = load ptr, ptr %i.lt, align 8, !tbaa !11
  %.not231 = icmp eq ptr %i.lv, null
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.lx = load i16, ptr %i.lw, align 1
  %i.ly = select i1 %.not231, i16 0, i16 16384
  %i.lz = and i16 %i.lx, -16385
  %i.ma = or disjoint i16 %i.lz, %i.ly
  store i16 %i.ma, ptr %i.lw, align 1
  br label %setopt_cptr_proxy.exit.thread

bb.ff:                                            ; preds = %bb.bt
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr %2, ptr %i.mb, align 8, !tbaa !173
  br label %setopt_cptr_proxy.exit.thread

bb.fg:                                            ; preds = %bb.bt
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr %2, ptr %i.mc, align 8, !tbaa !174
  br label %setopt_cptr_proxy.exit.thread

bb.fh:                                            ; preds = %bb.bt
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 3 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !175
  %.not224 = icmp eq ptr %i.me, null
  br i1 %.not224, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.mf = tail call ptr @Curl_hsts_init() #10     ; 2 uses
  store ptr %i.mf, ptr %i.md, align 8, !tbaa !175
  %.not225 = icmp eq ptr %i.mf, null
  br i1 %.not225, label %setopt_cptr_proxy.exit.thread, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.not226 = icmp eq ptr %2, null
  br i1 %.not226, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.mh = tail call i32 @Curl_setstropt(ptr noundef nonnull %i.mg, ptr noundef nonnull %2) ; 2 uses
  %.not229 = icmp eq i32 %i.mh, 0
  br i1 %.not229, label %bb.fl, label %setopt_cptr_proxy.exit.thread

bb.fl:                                            ; preds = %bb.fk
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 4 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !176
  %i.mk = tail call ptr @curl_slist_append(ptr noundef %i.mj, ptr noundef nonnull %2) #10 ; 2 uses
  %.not230 = icmp eq ptr %i.mk, null
  br i1 %.not230, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ml = load ptr, ptr %i.mi, align 8, !tbaa !176
  tail call void @curl_slist_free_all(ptr noundef %i.ml) #10
  store ptr null, ptr %i.mi, align 8, !tbaa !176
  br label %setopt_cptr_proxy.exit.thread

bb.fn:                                            ; preds = %bb.fl
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !176
  br label %setopt_cptr_proxy.exit.thread

bb.fo:                                            ; preds = %bb.fj
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !176
  tail call void @curl_slist_free_all(ptr noundef %i.mn) #10
  store ptr null, ptr %i.mm, align 8, !tbaa !176
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !177 ; 2 uses
  %.not227 = icmp eq ptr %i.mp, null
  br i1 %.not227, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 264
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !178
  %.not228 = icmp eq ptr %i.mr, null
  br i1 %.not228, label %bb.fq, label %setopt_cptr_proxy.exit.thread

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  tail call void @Curl_hsts_cleanup(ptr noundef nonnull %i.md) #10
  br label %setopt_cptr_proxy.exit.thread

.thread:                                          ; preds = %setopt_cptr_proxy.exit, %bb.bt
  br label %setopt_cptr_proxy.exit.thread

setopt_cptr_proxy.exit.thread:                    ; preds = %bb.fn, %bb.fq, %bb.fp, %bb.ao, %bb.aw, %bb.al, %bb.bg, %bb.ah, %bb.at, %bb.ad, %bb.bj, %bb.aa, %bb.ba, %bb.x, %bb.bm, %bb.u, %bb.aq, %bb.r, %bb.bq, %bb.o, %bb.bs, %bb.l, %bb.br, %bb.i, %bb.bn, %bb.bk, %bb.bh, %bb.bb, %bb.aj, %bb.ax, %bb.au, %bb.ar, %bb.am, %bb.af, %bb.ai, %bb.ay, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %Curl_setstropt.exit116.i, %bb.bo, %bb.cg, %bb.ch, %bb.co, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.dq, %bb.dr, %bb.ds, %bb.el, %bb.fe, %bb.ff, %bb.fg, %bb.cn, %bb.cm, %.thread253, %bb.cs, %bb.eg, %bb.eh, %bb.ef, %bb.ee, %bb.ew, %bb.ev, %bb.fb, %bb.fa, %bb.cu, %bb.fm, %bb.fi, %bb.fk, %bb.eq, %bb.eo, %bb.em, %bb.ej, %bb.bt, %bb.df, %.split, %.split210, %bb.cl, %bb.ck, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %setopt_cptr_proxy.exit, %.thread, %bb.fd, %bb.fc, %bb.er, %bb.ep, %bb.en, %bb.ek, %bb.ei, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.cx, %bb.cw, %bb.cv, %bb.cr, %bb.cq, %bb.cp, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu
  %.1209 = phi i32 [ 0, %bb.fn ], [ 48, %.thread ], [ %i.fz, %bb.bu ], [ %i.gf, %bb.bw ], [ %.1.i, %setopt_cptr_proxy.exit ], [ %i.gi, %bb.by ], [ 4, %bb.bv ], [ %i.gl, %bb.ca ], [ 4, %bb.bx ], [ %i.go, %bb.cc ], [ 4, %bb.bz ], [ 27, %bb.fm ], [ %i.gq, %bb.cd ], [ %i.gs, %bb.ce ], [ %i.gt, %bb.cf ], [ 27, %bb.ck ], [ 4, %bb.cb ], [ %i.hr, %bb.cp ], [ %i.ht, %bb.cq ], [ %i.hu, %bb.cr ], [ %i.id, %bb.cv ], [ %i.if, %bb.cw ], [ %i.ih, %bb.cx ], [ %i.hf, %.split210 ], [ %i.jg, %bb.do ], [ %i.ji, %bb.dp ], [ 4, %bb.df ], [ %i.jr, %bb.dt ], [ %i.jt, %bb.du ], [ %i.jv, %bb.dv ], [ %i.jx, %bb.dw ], [ %i.jz, %bb.dx ], [ %i.kb, %bb.dy ], [ %i.kd, %bb.dz ], [ %i.kf, %bb.ea ], [ %i.kh, %bb.eb ], [ %i.kj, %bb.ec ], [ %i.kl, %bb.ed ], [ %i.kt, %bb.ei ], [ %i.kw, %bb.ek ], [ 4, %bb.bt ], [ %i.la, %bb.en ], [ 4, %bb.ej ], [ %i.ld, %bb.ep ], [ 4, %bb.em ], [ %i.lg, %bb.er ], [ 4, %bb.eo ], [ %i.lq, %bb.fc ], [ %i.ls, %bb.fd ], [ 0, %bb.cl ], [ 0, %.split ], [ 4, %bb.eq ], [ 27, %bb.fi ], [ %i.mh, %bb.fk ], [ 0, %bb.cg ], [ 0, %bb.ch ], [ %i.hl, %bb.cn ], [ %i.hl, %bb.cm ], [ %i.hp, %bb.co ], [ %i.hw, %bb.cs ], [ 0, %.thread253 ], [ 4, %bb.bo ], [ 0, %bb.cy ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.dd ], [ 0, %bb.de ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ 0, %bb.dm ], [ %i.iy, %bb.dn ], [ 0, %bb.dq ], [ 0, %bb.dr ], [ %i.jm, %bb.ds ], [ %i.ko, %bb.eg ], [ %i.kp, %bb.eh ], [ 0, %bb.ef ], [ 0, %bb.ee ], [ 0, %bb.el ], [ %i.lh, %bb.ev ], [ 0, %bb.ew ], [ %i.ll, %bb.fa ], [ 0, %bb.fb ], [ %i.lu, %bb.fe ], [ 0, %bb.ff ], [ 0, %bb.fg ], [ 27, %bb.cu ], [ 0, %bb.ao ], [ 43, %bb.aw ], [ 43, %bb.al ], [ 43, %bb.bg ], [ 43, %bb.ah ], [ 43, %bb.at ], [ 43, %bb.ad ], [ 43, %bb.bj ], [ 43, %bb.aa ], [ 43, %bb.ba ], [ 43, %bb.x ], [ 43, %bb.bm ], [ 43, %bb.u ], [ 43, %bb.aq ], [ 43, %bb.r ], [ 43, %bb.bq ], [ 43, %bb.o ], [ 0, %bb.bs ], [ 43, %bb.l ], [ 27, %bb.br ], [ 43, %bb.i ], [ 27, %bb.bn ], [ 27, %bb.bk ], [ 27, %bb.bh ], [ 27, %bb.bb ], [ 4, %bb.aj ], [ 27, %bb.ax ], [ 27, %bb.au ], [ 27, %bb.ar ], [ 27, %bb.am ], [ 4, %bb.af ], [ 27, %bb.ai ], [ 4, %bb.ay ], [ 27, %bb.ae ], [ 27, %bb.ab ], [ 27, %bb.y ], [ 27, %bb.v ], [ 27, %bb.s ], [ 27, %bb.p ], [ 27, %bb.m ], [ 27, %bb.j ], [ %.0.i115.i, %Curl_setstropt.exit116.i ], [ 0, %bb.fp ], [ 0, %bb.fq ]
  ret i32 %.1209
}

; Function Attrs: nounwind uwtable
define dso_local i32 @curl_easy_setopt(ptr noundef %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @Curl_vsetopt(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = icmp eq i32 %i.a, 43
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @Curl_failf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 43, %bb.a ], [ 43, %bb.c ], [ %i.a, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 49) i32 @setopt_long_bool(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0                        ; 55 uses
  switch i32 %1, label %.thread [
    i32 75, label %bb.b
    i32 74, label %bb.c
    i32 41, label %bb.d
    i32 42, label %bb.e
    i32 43, label %bb.f
    i32 44, label %bb.g
    i32 45, label %bb.k
    i32 245, label %bb.l
    i32 46, label %bb.m
    i32 54, label %bb.m
    i32 69, label %bb.p
    i32 285, label %bb.q
    i32 96, label %bb.r
    i32 58, label %bb.s
    i32 207, label %bb.t
    i32 105, label %bb.u
    i32 157, label %bb.v
    i32 158, label %bb.w
    i32 80, label %bb.x
    i32 47, label %bb.z
    i32 61, label %bb.ac
    i32 274, label %bb.ad
    i32 248, label %bb.ae
    i32 249, label %bb.af
    i32 166, label %bb.ag
    i32 48, label %bb.ah
    i32 50, label %bb.ai
    i32 106, label %bb.aj
    i32 85, label %bb.ak
    i32 188, label %bb.al
    i32 137, label %bb.am
    i32 197, label %bb.an
    i32 27, label %bb.ao
    i32 53, label %bb.ap
    i32 64, label %bb.aq
    i32 306, label %bb.ar
    i32 307, label %bb.as
    i32 308, label %bb.at
    i32 81, label %bb.av
    i32 232, label %bb.aw
    i32 172, label %bb.ay
    i32 99, label %bb.ba
    i32 121, label %bb.bb
    i32 136, label %bb.bc
    i32 150, label %bb.bd
    i32 218, label %bb.be
    i32 213, label %bb.bf
    i32 244, label %bb.bg
    i32 226, label %bb.bh
    i32 234, label %bb.bi
    i32 237, label %bb.bj
    i32 265, label %bb.bk
    i32 275, label %bb.bl
    i32 278, label %bb.bm
    i32 322, label %bb.bn
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = select i1 %i.a, i32 268435456, i32 0
  %i.e = and i32 %i.c, -268435457
  %i.f = or disjoint i32 %i.e, %i.d
  store i32 %i.f, ptr %i.b, align 1
  br label %bb.bo

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = select i1 %i.a, i32 536870912, i32 0
  %i.j = and i32 %i.h, -536870913
  %i.k = or disjoint i32 %i.j, %i.i
  store i32 %i.k, ptr %i.g, align 1
  br label %bb.bo

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = select i1 %i.a, i32 134217728, i32 0
  %i.o = and i32 %i.m, -134217729
  %i.p = or disjoint i32 %i.o, %i.n
  store i32 %i.p, ptr %i.l, align 1
  br label %bb.bo

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.r = load i32, ptr %i.q, align 1
  %i.s = select i1 %i.a, i32 8388608, i32 0
  %i.t = and i32 %i.r, -8388609
  %i.u = or disjoint i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 1
  br label %bb.bo

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2628 ; 2 uses
  %i.w = zext i1 %i.a to i8
  %i.x = load i8, ptr %i.v, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.w
  store i8 %i.z, ptr %i.v, align 4
  br label %bb.bo

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = select i1 %i.a, i32 67108864, i32 0
  %i.ad = and i32 %i.ab, -67108865
  %i.ae = or disjoint i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2044 ; 3 uses
  br i1 %i.a, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 5, ptr %i.af, align 4, !tbaa !102
  br label %bb.bo

bb.i:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !102
  %i.ah = icmp eq i8 %i.ag, 5
  br i1 %i.ah, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.af, align 4, !tbaa !102
  br label %.thread

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 1
  %i.ak = select i1 %i.a, i32 524288, i32 0
  %i.al = and i32 %i.aj, -524289
  %i.am = or disjoint i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.ai, align 1
  br label %bb.bo

bb.l:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = select i1 %i.a, i32 1048576, i32 0
  %i.aq = and i32 %i.ao, -1048577
  %i.ar = or disjoint i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.an, align 1
  br label %bb.bo

bb.m:                                             ; preds = %bb.a, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2044 ; 2 uses
  br i1 %i.a, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 4, ptr %i.as, align 4, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.au = load i32, ptr %i.at, align 1
  %i.av = and i32 %i.au, -67108865
  store i32 %i.av, ptr %i.at, align 1
  br label %bb.bo

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %i.as, align 4, !tbaa !102
  br label %.thread

bb.p:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = select i1 %i.a, i32 256, i32 0
  %i.az = and i32 %i.ax, -257
  %i.ba = or disjoint i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.aw, align 1
  br label %bb.bo

bb.q:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2055 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = select i1 %i.a, i8 4, i8 0
  %i.be = and i8 %i.bc, -5
  %i.bf = or disjoint i8 %i.be, %i.bd
  store i8 %i.bf, ptr %i.bb, align 1
  br label %bb.bo

bb.r:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = select i1 %i.a, i32 32, i32 0
  %i.bj = and i32 %i.bh, -33
  %i.bk = or disjoint i32 %i.bj, %i.bi
  store i32 %i.bk, ptr %i.bg, align 1
  br label %bb.bo

bb.s:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = select i1 %i.a, i32 33554432, i32 0
  %i.bo = and i32 %i.bm, -33554433
  %i.bp = or disjoint i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.bl, align 1
  br label %bb.bo

bb.t:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = select i1 %i.a, i32 2097152, i32 0
  %i.bt = and i32 %i.br, -2097153
  %i.bu = or disjoint i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.bq, align 1
  br label %bb.bo

bb.u:                                             ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = select i1 %i.a, i32 4194304, i32 0
  %i.by = and i32 %i.bw, -4194305
  %i.bz = or disjoint i32 %i.by, %i.bx
  store i32 %i.bz, ptr %i.bv, align 1
  br label %bb.bo

bb.v:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 1
  %i.cc = select i1 %i.a, i16 0, i16 2
  %i.cd = and i16 %i.cb, -3
  %i.ce = or disjoint i16 %i.cd, %i.cc
  store i16 %i.ce, ptr %i.ca, align 1
  br label %bb.bo

bb.w:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = select i1 %i.a, i16 0, i16 4
  %i.ci = and i16 %i.cg, -5
  %i.cj = or disjoint i16 %i.ci, %i.ch
  store i16 %i.cj, ptr %i.cf, align 1
  br label %bb.bo

bb.x:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2044
  store i8 0, ptr %i.ck, align 4, !tbaa !102
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = and i32 %i.cm, -67108865
  store i32 %i.cn, ptr %i.cl, align 1
  br label %bb.bo

bb.z:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2044 ; 2 uses
  br i1 %i.a, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.co, align 4, !tbaa !102
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 1
  %i.cr = and i32 %i.cq, -67108865
  store i32 %i.cr, ptr %i.cp, align 1
  br label %bb.bo

bb.ab:                                            ; preds = %bb.z
  store i8 0, ptr %i.co, align 4, !tbaa !102
  br label %.thread

bb.ac:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = select i1 %i.a, i32 512, i32 0
  %i.cv = and i32 %i.ct, -513
  %i.cw = or disjoint i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %i.cs, align 1
  br label %bb.bo

bb.ad:                                            ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = select i1 %i.a, i16 4096, i16 0
  %i.da = and i16 %i.cy, -4097
  %i.db = or disjoint i16 %i.da, %i.cz
  store i16 %i.db, ptr %i.cx, align 1
  br label %bb.bo

bb.ae:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1078 ; 2 uses
  %i.dd = zext i1 %i.a to i8
  %i.de = load i8, ptr %i.dc, align 2
  %i.df = and i8 %i.de, -2
  %i.dg = or disjoint i8 %i.df, %i.dd
  store i8 %i.dg, ptr %i.dc, align 2
  tail call void @Curl_ssl_conn_config_update(ptr noundef %0, i1 noundef zeroext true) #10
  br label %bb.bo

bb.af:                                            ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1078 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 2
  %i.dj = select i1 %i.a, i8 2, i8 0
  %i.dk = and i8 %i.di, -3
  %i.dl = or disjoint i8 %i.dk, %i.dj
  store i8 %i.dl, ptr %i.dh, align 2
  tail call void @Curl_ssl_conn_config_update(ptr noundef %0, i1 noundef zeroext true) #10
  br label %bb.bo

bb.ag:                                            ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = select i1 %i.a, i16 8, i16 0
  %i.dp = and i16 %i.dn, -9
  %i.dq = or disjoint i16 %i.dp, %i.do
  store i16 %i.dq, ptr %i.dm, align 1
  br label %bb.bo

bb.ah:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = select i1 %i.a, i32 4096, i32 0
  %i.du = and i32 %i.ds, -4097
  %i.dv = or disjoint i32 %i.du, %i.dt
  store i32 %i.dv, ptr %i.dr, align 1
  br label %bb.bo

bb.ai:                                            ; preds = %bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 1
  %i.dy = select i1 %i.a, i32 2048, i32 0
  %i.dz = and i32 %i.dx, -2049
  %i.ea = or disjoint i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.dw, align 1
  br label %bb.bo

bb.aj:                                            ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 1
  %i.ed = select i1 %i.a, i32 32768, i32 0
  %i.ee = and i32 %i.ec, -32769
  %i.ef = or disjoint i32 %i.ee, %i.ed
  store i32 %i.ef, ptr %i.eb, align 1
  br label %bb.bo

bb.ak:                                            ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 1
  %i.ei = select i1 %i.a, i32 16384, i32 0
  %i.ej = and i32 %i.eh, -16385
  %i.ek = or disjoint i32 %i.ej, %i.ei
  store i32 %i.ek, ptr %i.eg, align 1
  br label %bb.bo

bb.al:                                            ; preds = %bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.em = load i32, ptr %i.el, align 1
  %i.en = select i1 %i.a, i32 65536, i32 0
  %i.eo = and i32 %i.em, -65537
  %i.ep = or disjoint i32 %i.eo, %i.en
  store i32 %i.ep, ptr %i.el, align 1
  br label %bb.bo

bb.am:                                            ; preds = %bb.a
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 1
  %i.es = select i1 %i.a, i32 131072, i32 0
  %i.et = and i32 %i.er, -131073
  %i.eu = or disjoint i32 %i.et, %i.es
  store i32 %i.eu, ptr %i.eq, align 1
  br label %bb.bo

bb.an:                                            ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = select i1 %i.a, i32 262144, i32 0
  %i.ey = and i32 %i.ew, -262145
  %i.ez = or disjoint i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.ev, align 1
  br label %bb.bo

bb.ao:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 1
  %i.fc = select i1 %i.a, i32 64, i32 0
  %i.fd = and i32 %i.fb, -65
  %i.fe = or disjoint i32 %i.fd, %i.fc
  store i32 %i.fe, ptr %i.fa, align 1
  br label %bb.bo

bb.ap:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 1
  %i.fh = select i1 %i.a, i32 1024, i32 0
  %i.fi = and i32 %i.fg, -1025
  %i.fj = or disjoint i32 %i.fi, %i.fh
  store i32 %i.fj, ptr %i.ff, align 1
  br label %bb.bo

bb.aq:                                            ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 894 ; 2 uses
  %i.fl = zext i1 %i.a to i8
  %i.fm = load i8, ptr %i.fk, align 2
  %i.fn = and i8 %i.fm, -2
  %i.fo = or disjoint i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.fk, align 2
  tail call void @Curl_ssl_conn_config_update(ptr noundef %0, i1 noundef zeroext false) #10
  br label %bb.bo

bb.ar:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2053 ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 1
  %i.fr = select i1 %i.a, i16 -32768, i16 0
  %i.fs = and i16 %i.fq, 32767
  %i.ft = or disjoint i16 %i.fs, %i.fr
  store i16 %i.ft, ptr %i.fp, align 1
  br label %bb.bo

bb.as:                                            ; preds = %bb.a
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 2055 ; 2 uses
  %i.fv = zext i1 %i.a to i8
  %i.fw = load i8, ptr %i.fu, align 1
  %i.fx = and i8 %i.fw, -2
  %i.fy = or disjoint i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fu, align 1
  br label %bb.bo

bb.at:                                            ; preds = %bb.a
  %i.fz = tail call zeroext i1 @Curl_ssl_cert_status_request() #10
  br i1 %i.fz, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 2055 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = select i1 %i.a, i8 2, i8 0
  %i.gd = and i8 %i.gb, -3
  %i.ge = or disjoint i8 %i.gd, %i.gc
  store i8 %i.ge, ptr %i.ga, align 1
end_hunk_0
