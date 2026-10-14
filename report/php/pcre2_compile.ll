Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@get_branchlength:bb.a
  %i.ce = zext i16 %i.cb to i32
  %i.cf = icmp samesign ult i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.y, label %.thread174, !llvm.loop !224

bb.ab:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %.0298, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !78 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0298, i64 14
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !82
  %i.ck = icmp eq i16 %i.cj, 0
  %i.cl = icmp eq i32 %i.ch, 0
  br i1 %i.cl, label %.thread174, label %bb.ac

.thread174:                                       ; preds = %bb.ab, %bb.x, %bb.aa
  store i32 115, ptr %2, align 4, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %i.bo, ptr %i.cm, align 8, !tbaa !46
  br label %.thread212

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp eq i32 %i.be, -2145320960
  br i1 %i.cn, label %.thread171, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ck, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.co = load i32, ptr %i.j, align 8, !tbaa !35
  %i.cp = and i32 %i.co, 2097152
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.thread171, label %.loopexit

bb.af:                                            ; preds = %bb.d
  %i.cr = load i32, ptr %i.k, align 4, !tbaa !47
  %i.cs = and i32 %i.cr, 512
  %.not158 = icmp eq i32 %i.cs, 0
  br i1 %.not158, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i32, ptr %i.j, align 8, !tbaa !35
  %i.cu = and i32 %i.ct, 2097152
  %.not159 = icmp eq i32 %i.cu, 0
  br i1 %.not159, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cv = and i32 %i.t, 65535                     ; 4 uses
  %i.cw = icmp samesign ult i32 %i.cv, 10
  br i1 %i.cw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cx = zext nneg i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25
  br label %.thread171

bb.aj:                                            ; preds = %._crit_edge383, %bb.ah
  %.pre-phi = phi i32 [ %.pre384, %._crit_edge383 ], [ %i.cv, %bb.ah ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !28
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !28
  %i.dg = zext i32 %i.df to i64
  %i.dh = or disjoint i64 %i.dd, %i.dg
  store ptr %i.de, ptr %i.c, align 8, !tbaa !68
  br label %.thread171

.thread171:                                       ; preds = %bb.ac, %bb.ae, %bb.aj, %bb.ai
  %.0130 = phi i64 [ %i.dh, %bb.aj ], [ %i.cz, %bb.ai ], [ %i.bo, %bb.ae ], [ %i.bo, %bb.ac ]
  %.1126 = phi i32 [ %.pre-phi, %bb.aj ], [ %i.cv, %bb.ai ], [ %i.ch, %bb.ae ], [ %i.ch, %bb.ac ] ; 4 uses
  %i.di = load i32, ptr %i.p, align 4, !tbaa !37
  %i.dj = icmp ugt i32 %.1126, %i.di
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread171
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i64 %.0130, ptr %i.dk, align 8, !tbaa !46
  store i32 115, ptr %2, align 4, !tbaa !28
  br label %.thread212

bb.al:                                            ; preds = %.thread171
  %i.dl = icmp eq i32 %.1126, 0
  br i1 %i.dl, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %i.q, align 8, !tbaa !56  ; 3 uses
  %i.dn = or i32 %.1126, -2146959360
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !28 ; 2 uses
  %.not162306 = icmp eq i32 %i.do, -2147483648
  br i1 %.not162306, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.am, %bb.ap
  %i.dp = phi i32 [ %i.dv, %bb.ap ], [ %i.do, %bb.am ] ; 2 uses
  %storemerge307 = phi ptr [ %i.du, %bb.ap ], [ %i.dm, %bb.am ] ; 3 uses
  %i.dq = and i32 %i.dp, -65536
  %i.dr = icmp eq i32 %i.dq, -2147155968
  br i1 %i.dr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph309
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge307, i64 4
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph309
  %i.dt = icmp eq i32 %i.dp, %i.dn
  br i1 %i.dt, label %._crit_edge310, label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %storemerge304 = phi ptr [ %i.ds, %bb.an ], [ %storemerge307, %bb.ao ]
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge304, i64 4 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28 ; 2 uses
  %.not162 = icmp eq i32 %i.dv, -2147483648
  br i1 %.not162, label %._crit_edge310, label %.lr.ph309, !llvm.loop !225

._crit_edge310:                                   ; preds = %bb.ap, %bb.ao, %bb.am
  %storemerge.lcssa305 = phi ptr [ %i.dm, %bb.am ], [ %storemerge307, %bb.ao ], [ %i.du, %bb.ap ] ; 5 uses
  store ptr %storemerge.lcssa305, ptr %i.d, align 8, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge.lcssa305, i64 4 ; 2 uses
  %i.dx = call fastcc ptr @parsed_skip(ptr noundef nonnull %i.dw, i32 noundef 2) ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %select.unfold, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge310
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %i.ea = icmp ugt ptr %i.dz, %storemerge.lcssa305
  %i.eb = icmp ult ptr %i.dz, %i.dx
  %or.cond166 = and i1 %i.ea, %i.eb
  br i1 %or.cond166, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aq
  br i1 %.not163316, label %.critedge, label %.lr.ph318

.lr.ph318:                                        ; preds = %.preheader, %bb.ar
  %.0127317 = phi ptr [ %i.ef, %bb.ar ], [ %4, %.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0127317, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !229
  %i.ee = icmp eq ptr %i.ed, %storemerge.lcssa305
  br i1 %i.ee, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph318
  %i.ef = load ptr, ptr %.0127317, align 8, !tbaa !230 ; 2 uses
  %.not163 = icmp eq ptr %i.ef, null
  br i1 %.not163, label %.critedge, label %.lr.ph318, !llvm.loop !226

.critedge:                                        ; preds = %bb.ar, %.preheader
  store ptr %4, ptr %6, align 8, !tbaa !230
  store ptr %storemerge.lcssa305, ptr %i.r, align 8, !tbaa !229
  store ptr %i.dw, ptr %i.d, align 8, !tbaa !68
  %i.eg = call fastcc i32 @get_grouplength(ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0, ptr noundef %2, ptr noundef %3, i32 noundef %.1126, ptr noundef nonnull %6, ptr noundef %5) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge
  %i.ei = load i32, ptr %2, align 4, !tbaa !28
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.loopexit, label %.thread212

bb.at:                                            ; preds = %.critedge
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !28
  br label %bb.bl

bb.au:                                            ; preds = %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.em = call fastcc ptr @parsed_skip(ptr noundef nonnull %i.el, i32 noundef 2)
  store ptr %i.em, ptr %i.c, align 8, !tbaa !68
  br label %.thread201

bb.av:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %.sink.split

bb.aw:                                            ; preds = %bb.d
  %i.en = and i32 %i.t, 65535                     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.eo, ptr %i.c, align 8, !tbaa !68
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.eq = shl nuw nsw i32 %i.en, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.er ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not234 = icmp eq i32 %i.en, 0
  br i1 %.not234, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.et = load i32, ptr %i.j, align 8, !tbaa !35
  %i.eu = and i32 %i.et, 2097152
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ew = load i32, ptr %i.es, align 4, !tbaa !28 ; 3 uses
  %i.ex = and i32 %i.ew, 1073741824
  %.not.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i, label %bb.az, label %get_grouplength.exit.thread191

get_grouplength.exit.thread191:                   ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread212

bb.az:                                            ; preds = %bb.ay
  %.not43.i = icmp sgt i32 %i.ew, -1
  br i1 %.not43.i, label %bb.ba, label %get_grouplength.exit.thread231

get_grouplength.exit.thread231:                   ; preds = %bb.az
  %7 = call fastcc ptr @parsed_skip(ptr noundef nonnull %i.eo, i32 noundef 2), !inline_history !231
  store ptr %7, ptr %i.c, align 8, !tbaa !68
  %8 = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !28       ; 2 uses
  store i32 %9, ptr %i.b, align 4, !tbaa !28
  %10 = and i32 %i.ew, 65535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bl

.sink.split:                                      ; preds = %bb.av, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.sink468 = phi i64 [ 16, %bb.d ], [ 16, %bb.d ], [ 4, %bb.av ], [ 16, %bb.d ], [ 16, %bb.d ], [ 16, %bb.d ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink468
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !68
  %i.ez = load ptr, ptr %i.i, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.az, %bb.ax, %bb.aw
  %i.fa = phi i1 [ false, %bb.aw ], [ true, %bb.az ], [ true, %bb.ax ], [ false, %.sink.split ] ; 2 uses
  %i.fb = phi ptr [ %i.es, %bb.aw ], [ %i.es, %bb.az ], [ %i.es, %bb.ax ], [ %i.ez, %.sink.split ] ; 5 uses
  %i.fc = call fastcc i32 @get_branchlength(ptr noundef nonnull %i.c, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5), !inline_history !231 ; 2 uses
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba, %bb.bb
  %i.fe = phi i32 [ %i.fk, %bb.bb ], [ %i.fc, %bb.ba ]
  %.036.i292 = phi i32 [ %.1.i, %bb.bb ], [ 2147483647, %bb.ba ]
  %.037.i291 = phi i32 [ %spec.select.i, %bb.bb ], [ -1, %bb.ba ]
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.fe, i32 %.037.i291) ; 3 uses
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !28
  %.1.i = call i32 @llvm.smin.i32(i32 %i.ff, i32 %.036.i292) ; 4 uses
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !28
  %i.fi = icmp eq i32 %i.fh, -2145845248
  br i1 %i.fi, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store ptr %i.fj, ptr %i.c, align 8, !tbaa !68
  %i.fk = call fastcc i32 @get_branchlength(ptr noundef nonnull %i.c, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5), !inline_history !231 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %._crit_edge, label %.lr.ph

bb.bc:                                            ; preds = %.lr.ph
  br i1 %i.fa, label %bb.bd, label %get_grouplength.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load i32, ptr %i.fb, align 4, !tbaa !28
  %i.fn = or i32 %spec.select.i, %i.fm
  %i.fo = or i32 %i.fn, -2147483648
  store i32 %i.fo, ptr %i.fb, align 4, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %.1.i, ptr %i.fp, align 4, !tbaa !28
  br label %get_grouplength.exit

._crit_edge:                                      ; preds = %bb.ba, %bb.bb
  br i1 %i.fa, label %bb.be, label %get_grouplength.exit.thread

bb.be:                                            ; preds = %._crit_edge
  %i.fq = load i32, ptr %i.fb, align 4, !tbaa !28
  %i.fr = or i32 %i.fq, 1073741824
  store i32 %i.fr, ptr %i.fb, align 4, !tbaa !28
  br label %get_grouplength.exit.thread

get_grouplength.exit.thread:                      ; preds = %bb.be, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread212

get_grouplength.exit:                             ; preds = %bb.bc, %bb.bd
  store i32 %.1.i, ptr %i.b, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bl

bb.bf:                                            ; preds = %bb.d, %bb.d, %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !28 ; 2 uses
  store ptr %i.fu, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq i32 %i.fv, 65536
  br i1 %.not, label %.loopexit, label %.thread194

.thread194:                                       ; preds = %bb.d, %bb.d, %bb.d, %bb.bf
  %.0121199 = phi i32 [ %i.fv, %bb.bf ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.d ] ; 3 uses
  %.0122198 = phi i32 [ %i.ft, %bb.bf ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ] ; 4 uses
  %i.fw = icmp ne i32 %.0133, 0
  %i.fx = icmp ne i32 %.0121199, 0                ; 2 uses
  %or.cond7 = and i1 %i.fw, %i.fx
  br i1 %or.cond7, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.thread194
  %i.fy = sub nsw i32 2147483647, %.0139
  %i.fz = udiv i32 %i.fy, %.0133
  %i.ga = add i32 %.0121199, -1
  %i.gb = icmp ult i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.bh, label %.thread

.thread:                                          ; preds = %bb.bg
  %i.gc = icmp eq i32 %.0122198, 0                ; 2 uses
  %i.gd = add i32 %.0122198, -1
  %i.ge = mul i32 %i.gd, %.0131
  %i.gf = select i1 %i.gc, i32 %.0131, i32 0
  %.1136402 = sub i32 %.0135, %i.gf
  %.0123403 = select i1 %i.gc, i32 0, i32 %i.ge
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  store i32 187, ptr %2, align 4, !tbaa !28
  br label %.thread212

bb.bi:                                            ; preds = %.thread194
  %i.gg = icmp eq i32 %.0122198, 0                ; 2 uses
  %i.gh = add i32 %.0122198, -1
  %i.gi = mul i32 %i.gh, %.0131
  %i.gj = select i1 %i.gg, i32 %.0131, i32 0
  %.1136 = sub i32 %.0135, %i.gj                  ; 2 uses
  %.0123 = select i1 %i.gg, i32 0, i32 %i.gi      ; 2 uses
  br i1 %i.fx, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gk = sub i32 %.0139, %.0133
  br label %.thread201

bb.bk:                                            ; preds = %.thread, %bb.bi
  %.0123405 = phi i32 [ %.0123403, %.thread ], [ %.0123, %bb.bi ]
  %.1136404 = phi i32 [ %.1136402, %.thread ], [ %.1136, %bb.bi ]
  %i.gl = add i32 %.0121199, -1
  %i.gm = mul i32 %i.gl, %.0133
  br label %bb.bl

.loopexit:                                        ; preds = %bb.ae, %bb.ad, %bb.aq, %bb.d, %bb.bf, %bb.al, %bb.af, %bb.ag, %bb.w, %.lr.ph318, %bb.as
  store i32 125, ptr %2, align 4, !tbaa !28
  br label %.thread212

bb.bl:                                            ; preds = %get_grouplength.exit.thread231, %get_grouplength.exit, %bb.d, %bb.d, %bb.l, %bb.c, %bb.h, %bb.at, %bb.i, %bb.p, %bb.q, %bb.bk
  %.2137 = phi i32 [ %.1136404, %bb.bk ], [ %.0135, %bb.i ], [ %.0135, %bb.h ], [ %.0135, %bb.d ], [ %.0135, %bb.at ], [ %.0135, %bb.c ], [ %.0135, %bb.q ], [ %.0135, %bb.p ], [ %.0135, %bb.l ], [ %.0135, %bb.d ], [ %.0135, %get_grouplength.exit ], [ %.0135, %get_grouplength.exit.thread231 ]
  %.0124 = phi i32 [ %i.gm, %bb.bk ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.d ], [ %i.eg, %bb.at ], [ 1, %bb.c ], [ 1, %bb.q ], [ 1, %bb.p ], [ 2, %bb.l ], [ 1, %bb.d ], [ %spec.select.i, %get_grouplength.exit ], [ %10, %get_grouplength.exit.thread231 ] ; 2 uses
  %.1 = phi i32 [ %.0123405, %bb.bk ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.d ], [ %i.ek, %bb.at ], [ 1, %bb.c ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.l ], [ 1, %bb.d ], [ %.1.i, %get_grouplength.exit ], [ %9, %get_grouplength.exit.thread231 ]
  %i.gn = sub nsw i32 2147483647, %.0139
  %i.go = icmp slt i32 %i.gn, %.0124
  br i1 %i.go, label %bb.bm, label %.thread201

.thread201:                                       ; preds = %bb.bj, %bb.au, %bb.v, %bb.u, %bb.t, %bb.s, %bb.m, %bb.k, %bb.j, %bb.g, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.f, %bb.bl
  %.1210 = phi i32 [ %.1, %bb.bl ], [ %.0123, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.f ] ; 2 uses
  %.0124209 = phi i32 [ %.0124, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.f ] ; 2 uses
  %.2137207 = phi i32 [ %.2137, %bb.bl ], [ %.1136, %bb.bj ], [ %.0135, %bb.au ], [ %.0135, %bb.v ], [ %.0135, %bb.u ], [ %.0135, %bb.t ], [ %.0135, %bb.s ], [ %.0135, %bb.m ], [ %.0135, %bb.k ], [ %.0135, %bb.j ], [ %.0135, %bb.g ], [ %.0135, %bb.d ], [ %.0135, %bb.d ], [ %.0135, %bb.d ], [ %.0135, %bb.d ], [ %.0135, %bb.d ], [ %.0135, %bb.d ], [ %.0135, %bb.f ]
  %.1140206 = phi i32 [ %.0139, %bb.bl ], [ %i.gk, %bb.bj ], [ %.0139, %bb.au ], [ %.0139, %bb.v ], [ %.0139, %bb.u ], [ %.0139, %bb.t ], [ %.0139, %bb.s ], [ %.0139, %bb.m ], [ %.0139, %bb.k ], [ %.0139, %bb.j ], [ %.0139, %bb.g ], [ %.0139, %bb.d ], [ %.0139, %bb.d ], [ %.0139, %bb.d ], [ %.0139, %bb.d ], [ %.0139, %bb.d ], [ %.0139, %bb.d ], [ %.0139, %bb.f ]
  %i.gp = add i32 %.1140206, %.0124209            ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 65535
  br i1 %i.gq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.thread201, %bb.bl
  store i32 187, ptr %2, align 4, !tbaa !28
  br label %.thread212

.thread212:                                       ; preds = %bb.l, %bb.r, %bb.v, %bb.bm, %.loopexit, %bb.bh, %bb.o, %.thread174, %bb.ak, %bb.as, %get_grouplength.exit.thread, %get_grouplength.exit.thread191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.bo

bb.bn:                                            ; preds = %.thread201
  %i.gr = add i32 %.2137207, %.1210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.gs = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4 ; 2 uses
  store ptr %i.gt, ptr %i.c, align 8, !tbaa !68
  br label %bb.c

.loopexit238:                                     ; preds = %bb.d, %bb.d, %bb.e
  %i.gu = phi ptr [ %i.x, %bb.e ], [ %i.s, %bb.d ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store ptr %i.gu, ptr %0, align 8, !tbaa !68
  store i32 %.0135, ptr %1, align 4, !tbaa !28
  br label %bb.bo

select.unfold:                                    ; preds = %bb.i, %._crit_edge310, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 190, ptr %2, align 4, !tbaa !28
  br label %bb.bo

bb.bo:                                            ; preds = %.thread212, %select.unfold, %.loopexit238, %bb.b
  %.5 = phi i32 [ -1, %bb.b ], [ -1, %.thread212 ], [ %.0139, %.loopexit238 ], [ -1, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc noundef ptr @parsed_skip(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.m
  %.029.us = phi ptr [ %i.w, %bb.m ], [ %0, %bb.a ] ; 14 uses
  %.026.us = phi i32 [ %.2.us, %bb.m ], [ 0, %bb.a ] ; 11 uses
  %i.b = load i32, ptr %.029.us, align 4, !tbaa !28 ; 4 uses
  %i.c = lshr i32 %i.b, 16                        ; 2 uses
  %trunc.us = trunc nuw i32 %i.c to i16
  switch i16 %trunc.us, label %bb.j [
    i16 -32768, label %.split40.us.loopexit
    i16 -32765, label %bb.i
    i16 -32744, label %bb.f
    i16 -32727, label %bb.e
    i16 -32723, label %bb.e
    i16 -32721, label %bb.e
    i16 -32719, label %bb.e
    i16 -32717, label %bb.e
    i16 -32755, label %.split40.us
    i16 -32766, label %bb.d
    i16 -32760, label %bb.d
    i16 -32753, label %bb.d
    i16 -32752, label %bb.d
    i16 -32751, label %bb.d
    i16 -32750, label %bb.d
    i16 -32749, label %bb.d
    i16 -32748, label %bb.d
    i16 -32747, label %bb.d
    i16 -32733, label %bb.d
    i16 -32732, label %bb.d
    i16 -32729, label %bb.d
    i16 -32731, label %bb.d
    i16 -32730, label %bb.d
    i16 -32728, label %bb.d
    i16 -32742, label %bb.d
    i16 -32734, label %bb.d
    i16 -32767, label %bb.k
    i16 -32743, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.d = icmp eq i32 %.026.us, 0
  br i1 %i.d, label %.split40.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %.026.us, -1
  br label %bb.k

bb.d:                                             ; preds = %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us, %.split.us
  %i.f = add i32 %.026.us, 1
  br label %bb.k

bb.e:                                             ; preds = %.split.us, %.split.us, %.split.us, %.split.us, %.split.us
  %i.g = getelementptr inbounds nuw i8, ptr %.029.us, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.029.us, i64 %i.i
  br label %bb.k

bb.f:                                             ; preds = %.split.us
  %trunc33.us = trunc i32 %i.b to i16
  switch i16 %trunc33.us, label %bb.k [
    i16 15, label %bb.h
    i16 16, label %bb.h
    i16 27, label %bb.g
    i16 28, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.029.us, i64 12
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.029.us, i64 4
  br label %bb.k

bb.i:                                             ; preds = %.split.us
  %i.m = and i32 %i.b, 65534
  %i.n = icmp samesign ugt i32 %i.m, 9
  %spec.select.idx.us = select i1 %i.n, i64 8, i64 0
  %spec.select.us = getelementptr inbounds nuw i8, ptr %.029.us, i64 %spec.select.idx.us
  br label %bb.k

bb.j:                                             ; preds = %.split.us
  %i.o = icmp sgt i32 %i.b, -1
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.split.us, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.130.us = phi ptr [ %.029.us, %bb.j ], [ %.029.us, %bb.c ], [ %spec.select.us, %bb.i ], [ %.029.us, %bb.f ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.e ], [ %.029.us, %bb.d ], [ %.029.us, %.split.us ]
  %.1.us = phi i32 [ %.026.us, %bb.j ], [ %i.e, %bb.c ], [ %.026.us, %bb.i ], [ %.026.us, %bb.f ], [ %.026.us, %bb.h ], [ %.026.us, %bb.g ], [ %.026.us, %bb.e ], [ %i.f, %bb.d ], [ %.026.us, %.split.us ]
  %i.p = and i32 %i.c, 32767                      ; 2 uses
  %i.q = icmp samesign ugt i32 %i.p, 63
  br i1 %i.q, label %.split40.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @meta_extra_lengths, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.130.us, i64 %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.231.us = phi ptr [ %i.v, %bb.l ], [ %.029.us, %bb.j ]
  %.2.us = phi i32 [ %.1.us, %bb.l ], [ %.026.us, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %.231.us, i64 4
  br label %.split.us

.split:                                           ; preds = %bb.a, %bb.z
  %.029 = phi ptr [ %i.at, %bb.z ], [ %0, %bb.a ] ; 15 uses
  %.026 = phi i32 [ %.2, %bb.z ], [ 0, %bb.a ]    ; 13 uses
  %i.x = load i32, ptr %.029, align 4, !tbaa !28  ; 4 uses
  %i.y = lshr i32 %i.x, 16                        ; 2 uses
  %trunc = trunc nuw i32 %i.y to i16
  switch i16 %trunc, label %bb.n [
    i16 -32768, label %.split40.us
    i16 -32765, label %bb.o
    i16 -32744, label %bb.p
    i16 -32727, label %bb.s
    i16 -32723, label %bb.s
    i16 -32721, label %bb.s
    i16 -32719, label %bb.s
    i16 -32717, label %bb.s
    i16 -32755, label %bb.x
    i16 -32766, label %bb.t
    i16 -32760, label %bb.t
    i16 -32753, label %bb.t
    i16 -32752, label %bb.t
    i16 -32751, label %bb.t
    i16 -32750, label %bb.t
    i16 -32749, label %bb.t
    i16 -32748, label %bb.t
    i16 -32747, label %bb.t
    i16 -32733, label %bb.t
    i16 -32732, label %bb.t
    i16 -32729, label %bb.t
    i16 -32731, label %bb.t
    i16 -32730, label %bb.t
    i16 -32728, label %bb.t
    i16 -32742, label %bb.t
    i16 -32734, label %bb.t
    i16 -32767, label %bb.u
    i16 -32743, label %bb.v
  ]

bb.n:                                             ; preds = %.split
  %i.z = icmp sgt i32 %i.x, -1
  br i1 %i.z, label %bb.z, label %bb.x

bb.o:                                             ; preds = %.split
  %i.aa = and i32 %i.x, 65534
  %i.ab = icmp samesign ugt i32 %i.aa, 9
  %spec.select.idx = select i1 %i.ab, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.029, i64 %spec.select.idx
  br label %bb.x

bb.p:                                             ; preds = %.split
  %trunc33 = trunc i32 %i.x to i16
  switch i16 %trunc33, label %bb.x [
    i16 15, label %bb.q
    i16 16, label %bb.q
    i16 27, label %bb.r
    i16 28, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
end_hunk_0
