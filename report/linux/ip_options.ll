Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ip_options?download=true
inline.NumInlined: 50
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__ip_options_compile:bb.a
  %.0.copyload6 = load i32, ptr %i.ei, align 1
  %i.ej = call i32 @inet_addr_type(ptr noundef %0, i32 noundef %.0.copyload6) #9
  %i.ek = icmp eq i32 %i.ej, 1                    ; 2 uses
  %brmerge = or i1 %.not, %i.ek
  br i1 %brmerge, label %bb.as, label %.thread

.thread:                                          ; preds = %bb.ar
  %i.el = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr i8, ptr %i.el, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 3
  br label %.sink.split

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ek, label %.thread144, label %._crit_edge268

._crit_edge268:                                   ; preds = %bb.as
  %.pre269 = load ptr, ptr %i.a, align 8
  br label %.sink.split

bb.at:                                            ; preds = %bb.ak
  br i1 %.not, label %bb.au, label %.thread144

bb.au:                                            ; preds = %bb.at
  %i.er = load ptr, ptr %i.n, align 16
  %i.es = call zeroext i1 @ns_capable(ptr noundef %i.er, i32 noundef 13) #9
  br i1 %i.es, label %.thread144, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.et = load ptr, ptr %i.a, align 8
  %i.eu = getelementptr i8, ptr %i.et, i64 3
  br label %.thread149

.sink.split:                                      ; preds = %.thread, %._crit_edge268, %bb.an, %spec_dst_fill.exit131
  %.sink361 = phi i8 [ 48, %bb.an ], [ 48, %spec_dst_fill.exit131 ], [ 16, %._crit_edge268 ], [ 16, %.thread ]
  %.sink359 = phi ptr [ %i.v, %bb.an ], [ %i.dy, %spec_dst_fill.exit131 ], [ %.pre269, %._crit_edge268 ], [ %i.el, %.thread ]
  %.4139.ph = phi i32 [ %.0135.ph216, %bb.an ], [ %.9, %spec_dst_fill.exit131 ], [ %.0135.ph216, %._crit_edge268 ], [ %.0135.ph216, %.thread ]
  %.4.ph = phi ptr [ null, %bb.an ], [ %i.ed, %spec_dst_fill.exit131 ], [ null, %._crit_edge268 ], [ %i.eq, %.thread ]
  %i.ev = load i8, ptr %i.s, align 4
  %i.ew = or i8 %i.ev, %.sink361
  store i8 %i.ew, ptr %i.s, align 4
  %i.ex = getelementptr i8, ptr %.sink359, i64 2  ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = add i8 %i.ey, 8
  store i8 %i.ez, ptr %i.ex, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %bb.al
  %.4139 = phi i32 [ %.0135.ph216, %bb.al ], [ %.4139.ph, %.sink.split ] ; 2 uses
  %.4 = phi ptr [ %i.dk, %bb.al ], [ %.4.ph, %.sink.split ] ; 2 uses
  %.not116 = icmp eq ptr %.4, null
  br i1 %.not116, label %.thread144, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fa = call i32 @inet_current_timestamp() #9
  store i32 %i.fa, ptr %.4, align 1
  br label %.thread144.sink.split

bb.ay:                                            ; preds = %bb.ai
  %i.fb = getelementptr i8, ptr %i.v, i64 3       ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = and i32 %i.fd, 15                       ; 2 uses
  %.not114 = icmp eq i32 %i.fe, 3
  br i1 %.not114, label %.thread144, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.mask = and i32 %i.fd, 240                     ; 2 uses
  %i.ff = icmp eq i32 %.mask, 240                 ; 2 uses
  %brmerge126 = or i1 %.not, %i.ff
  br i1 %brmerge126, label %bb.ba, label %.thread153

.thread153:                                       ; preds = %bb.az
  %i.fg = add nuw nsw i32 %.mask, 16
  %i.fh = or disjoint i32 %i.fg, %i.fe
  %i.fi = trunc nuw i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fb, align 1
  br label %.thread144.sink.split

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ff, label %.thread149, label %.thread144

.thread144.sink.split:                            ; preds = %bb.ax, %.thread153
  %.6.ph = phi i32 [ %.4139, %bb.ax ], [ %.0135.ph216, %.thread153 ]
  %i.fj = load i8, ptr %i.s, align 4
  %i.fk = or i8 %i.fj, 4
  store i8 %i.fk, ptr %i.s, align 4
  br label %.thread144

.thread144:                                       ; preds = %.thread144.sink.split, %bb.al, %bb.as, %bb.au, %bb.at, %bb.aw, %bb.ba, %bb.ay
  %.6 = phi i32 [ %.0135.ph216, %bb.ay ], [ %.0135.ph216, %bb.ba ], [ %.0135.ph216, %bb.as ], [ %.4139, %bb.aw ], [ %.0135.ph216, %bb.al ], [ %.0135.ph216, %bb.at ], [ %.0135.ph216, %bb.au ], [ %.6.ph, %.thread144.sink.split ]
  %i.fl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.p
  %i.fo = trunc i64 %i.fn to i8
  store i8 %i.fo, ptr %i.r, align 1
  br label %.outer

bb.bb:                                            ; preds = %bb.m
  %i.fp = icmp ult i8 %i.au, 4
  br i1 %i.fp, label %.thread149.loopexit.split.loop.exit324, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = getelementptr i8, ptr %i.v, i64 2
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.bd, label %.outer

bb.bd:                                            ; preds = %bb.bc
  %i.ft = getelementptr i8, ptr %i.v, i64 3
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.be, label %.outer

bb.be:                                            ; preds = %bb.bd
  %i.fw = ptrtoint ptr %i.v to i64
  %i.fx = sub i64 %i.fw, %i.p
  %i.fy = trunc i64 %i.fx to i8
  store i8 %i.fy, ptr %i.q, align 1
  br label %.outer

bb.bf:                                            ; preds = %bb.m
  br i1 %.not, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.n, align 16
  %i.ga = call zeroext i1 @ns_capable(ptr noundef %i.fz, i32 noundef 13) #9
  %.pre267.pre = load ptr, ptr %i.a, align 8      ; 2 uses
  br i1 %i.ga, label %bb.bh, label %.thread149

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre267 = phi ptr [ %.pre267.pre, %bb.bg ], [ %i.v, %bb.bf ] ; 2 uses
  %i.gb = load i8, ptr %i.o, align 2
  %.not110 = icmp eq i8 %i.gb, 0
  br i1 %.not110, label %bb.bi, label %.thread149

bb.bi:                                            ; preds = %bb.bh
  %i.gc = ptrtoint ptr %.pre267 to i64
  %i.gd = sub i64 %i.gc, %i.p
  %i.ge = trunc i64 %i.gd to i8
  store i8 %i.ge, ptr %i.o, align 2
  %i.gf = call i32 @cipso_v4_validate(ptr noundef %2, ptr noundef nonnull %i.a) #9
  %.not111 = icmp eq i32 %i.gf, 0
  %.pre281 = load ptr, ptr %i.a, align 8          ; 2 uses
  br i1 %.not111, label %.outer, label %.thread149

bb.bj:                                            ; preds = %bb.m
  br i1 %.not, label %bb.bk, label %.outer

bb.bk:                                            ; preds = %bb.bj
  %i.gg = load ptr, ptr %i.n, align 16
  %i.gh = call zeroext i1 @ns_capable(ptr noundef %i.gg, i32 noundef 13) #9
  %.pre280 = load ptr, ptr %i.a, align 8          ; 2 uses
  br i1 %i.gh, label %.outer, label %.thread149

.outer:                                           ; preds = %bb.bj, %bb.bk, %bb.bi, %bb.bc, %bb.bd, %bb.be, %.thread144, %bb.ae, %bb.u
  %i.gi = phi ptr [ %.pre280, %bb.bk ], [ %i.v, %bb.bj ], [ %i.bm, %bb.u ], [ %i.ct, %bb.ae ], [ %i.fl, %.thread144 ], [ %i.v, %bb.be ], [ %i.v, %bb.bd ], [ %i.v, %bb.bc ], [ %.pre281, %bb.bi ]
  %.7 = phi i32 [ %.0135.ph216, %bb.bk ], [ %.0135.ph216, %bb.bj ], [ %.0135.ph216, %bb.u ], [ %.2137, %bb.ae ], [ %.6, %.thread144 ], [ %.0135.ph216, %bb.be ], [ %.0135.ph216, %bb.bd ], [ %.0135.ph216, %bb.bc ], [ %.0135.ph216, %bb.bi ]
  %i.gj = sub nuw nsw i32 %.091172, %i.av         ; 2 uses
  %i.gk = zext i8 %i.au to i64
  %i.gl = getelementptr i8, ptr %i.gi, i64 %i.gk  ; 2 uses
  store ptr %i.gl, ptr %i.a, align 8
  %.not363 = icmp eq i32 %i.gj, 0
  br i1 %.not363, label %.loopexit.thread, label %.lr.ph, !llvm.loop !17

.thread149.loopexit.split.loop.exit314.a:         ; preds = %bb.o
  %i.gm = getelementptr i8, ptr %i.v, i64 2
  br label %.thread149

.thread149.loopexit.split.loop.exit316.a:         ; preds = %bb.w
  %i.gn = getelementptr i8, ptr %i.v, i64 1
  br label %.thread149

.thread149.loopexit.split.loop.exit318.a:         ; preds = %bb.x
  %i.go = getelementptr i8, ptr %i.v, i64 2
  br label %.thread149

.thread149.loopexit.split.loop.exit320.a:         ; preds = %bb.z
  %i.gp = getelementptr i8, ptr %i.v, i64 2
  br label %.thread149

.thread149.loopexit.split.loop.exit322.a:         ; preds = %bb.ag
  %i.gq = getelementptr i8, ptr %i.v, i64 1
  br label %.thread149

.thread149.loopexit.split.loop.exit324:           ; preds = %bb.bb
  %i.gr = getelementptr i8, ptr %i.v, i64 1
  br label %.thread149

.thread149.loopexit.split.loop.exit326:           ; preds = %bb.n
  %i.gs = getelementptr i8, ptr %i.v, i64 1
  br label %.thread149

.thread149.loopexit.split.loop.exit328:           ; preds = %bb.r
  %i.gt = getelementptr i8, ptr %i.v, i64 1
  br label %.thread149

.thread149:                                       ; preds = %bb.bh, %bb.bg, %bb.bi, %bb.bk, %bb.aj, %bb.aq, %bb.am, %bb.l, %bb.ba, %bb.ah, %bb.af, %bb.v, %bb.p, %bb.k, %.thread149.loopexit.split.loop.exit314.a, %.thread149.loopexit.split.loop.exit316.a, %.thread149.loopexit.split.loop.exit318.a, %.thread149.loopexit.split.loop.exit320.a, %.thread149.loopexit.split.loop.exit322.a, %.thread149.loopexit.split.loop.exit324, %.thread149.loopexit.split.loop.exit326, %.thread149.loopexit.split.loop.exit328, %bb.av
  %.5 = phi ptr [ %i.go, %.thread149.loopexit.split.loop.exit318.a ], [ %i.eu, %bb.av ], [ %i.gs, %.thread149.loopexit.split.loop.exit326 ], [ %i.gt, %.thread149.loopexit.split.loop.exit328 ], [ %i.gm, %.thread149.loopexit.split.loop.exit314.a ], [ %i.gn, %.thread149.loopexit.split.loop.exit316.a ], [ %i.gp, %.thread149.loopexit.split.loop.exit320.a ], [ %i.gq, %.thread149.loopexit.split.loop.exit322.a ], [ %i.gr, %.thread149.loopexit.split.loop.exit324 ], [ %i.v, %bb.k ], [ %i.cz, %bb.aq ], [ %i.cz, %bb.aj ], [ %i.fb, %bb.ba ], [ %i.cz, %bb.ah ], [ %i.v, %bb.af ], [ %i.v, %bb.v ], [ %i.cz, %bb.am ], [ %.pre280, %bb.bk ], [ %i.v, %bb.l ], [ %i.v, %bb.p ], [ %.pre267.pre, %bb.bg ], [ %.pre281, %bb.bi ], [ %.pre267, %bb.bh ]
  %.not122 = icmp eq ptr %3, null
  br i1 %.not122, label %.loopexit.thread, label %bb.bl

bb.bl:                                            ; preds = %.thread149
  %i.gu = ptrtoint ptr %.5 to i64
  %i.gv = ptrtoint ptr %i.j to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %.tr = trunc i64 %i.gw to i32
  %i.gx = and i32 %.tr, 255
  store i32 %i.gx, ptr %3, align 4
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.outer, %bb.j, %.lr.ph226.prol.loopexit, %bb.i, %.preheader, %bb.d, %.thread149, %bb.bl
  %.0 = phi i32 [ 0, %bb.d ], [ -22, %bb.bl ], [ -22, %.thread149 ], [ 0, %.lr.ph226.prol.loopexit ], [ 0, %bb.j ], [ 0, %.preheader ], [ 0, %bb.i ], [ 0, %.outer ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @cipso_v4_validate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ip_options_compile(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.b = call i32 @__ip_options_compile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4
  %i.f = getelementptr i8, ptr %2, i64 40
  call void @__icmp_send(ptr noundef nonnull %2, i32 noundef 12, i32 noundef 0, i32 noundef %i.e, ptr noundef %i.f) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @ip_options_undo(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 3
  %i.f = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 -3
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = add nsw i64 %i.i, -7
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.f, i64 %i.j, i1 false)
  %i.k = load i32, ptr %0, align 4
  store i32 %i.k, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr i8, ptr %0, i64 12         ; 3 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 8
  %.not28 = icmp eq i8 %i.n, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 10
  %i.p = load i8, ptr %i.o, align 2
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -2       ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = add i8 %i.t, -4                          ; 2 uses
  store i8 %i.u, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr i8, ptr %i.r, i64 -5
  %i.x = getelementptr i8, ptr %i.w, i64 %i.v
  store i32 0, ptr %i.x, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr i8, ptr %0, i64 11
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %.not29 = icmp eq i8 %i.z, 0
  br i1 %.not29, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa     ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4     ; 2 uses
  %i.ad = load i8, ptr %i.l, align 4
  %i.ae = and i8 %i.ad, 16
  %.not30 = icmp eq i8 %i.ae, 0
  br i1 %.not30, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ab, i64 -2     ; 4 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = add i8 %i.ag, -4                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ac, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  store i32 0, ptr %i.ak, align 1
  %i.al = getelementptr i8, ptr %i.ab, i64 -1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 15
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.af, align 1
  %i.aq = add i8 %i.ap, -4
  store i8 %i.aq, ptr %i.af, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.ar = load i8, ptr %i.l, align 4
  %i.as = and i8 %i.ar, 32
  %.not31 = icmp eq i8 %i.as, 0
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.ab, i64 -2     ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = add i8 %i.au, -4                        ; 2 uses
  store i8 %i.av, ptr %i.at, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.ac, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1
  store i32 0, ptr %i.ay, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @ip_options_get(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr %2, i8 %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = add i32 %4, 3
  %i.c = and i32 %i.b, -4
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 32
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483616, 2147483680) %i.e, i32 noundef 3520) #12 ; 12 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %.not28 = icmp eq i32 %4, 0
  br i1 %.not28, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 24
  store i8 0, ptr %i.g, align 8
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = trunc i8 %3 to i1
  br i1 %i.j, label %copy_from_sockptr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %4, 0
  br i1 %i.k, label %bb.d, label %check_copy_size.exit.i.i, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "202: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 202b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #10, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.4, i32 57, i32 2307, i64 16) #10, !srcloc !19
  tail call void asm sideeffect "203: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 203b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #10, !srcloc !20
  br label %.critedge

check_copy_size.exit.i.i:                         ; preds = %bb.c
  %i.l = tail call i64 @_copy_from_user(ptr noundef %i.h, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #9
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %.critedge

copy_from_sockptr.exit.thread:                    ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 1 %2, i64 range(i64 -2147483648, 2147483648) %i.i, i1 false)
  br label %bb.e

.critedge:                                        ; preds = %bb.d, %check_copy_size.exit.i.i
  tail call void @kfree(ptr noundef nonnull %i.f) #9
  br label %bb.o

bb.e:                                             ; preds = %copy_from_sockptr.exit.thread, %check_copy_size.exit.i.i
  %i.o = and i32 %4, 3
  %.not3037 = icmp eq i32 %i.o, 0
  br i1 %.not3037, label %._crit_edge.thread47, label %.lr.ph

._crit_edge.thread47:                             ; preds = %bb.e
  %i.p = trunc i32 %4 to i8
  %i.q = getelementptr i8, ptr %i.f, i64 24
  store i8 %i.p, ptr %i.q, align 8
  br label %bb.i

.lr.ph:                                           ; preds = %bb.e
end_hunk_0
