Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/rust-demangle?download=true
inline.NumInlined: 217
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@print_ident:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.aq = icmp ugt i64 %i.j, 134217728
  br i1 %i.aq, label %bb.ac, label %bb.bl

bb.ac:                                            ; preds = %bb.ab
  %i.ar = icmp ugt i64 %i.j, 268435456
  br i1 %i.ar, label %bb.ad, label %bb.bl

bb.ad:                                            ; preds = %bb.ac
  %i.as = icmp ugt i64 %i.j, 536870912
  br i1 %i.as, label %bb.ae, label %bb.bl

bb.ae:                                            ; preds = %bb.ad
  %i.at = icmp ugt i64 %i.j, 1073741824
  br i1 %i.at, label %bb.af, label %bb.bl

bb.af:                                            ; preds = %bb.ae
  %i.au = icmp ugt i64 %i.j, 2147483648
  br i1 %i.au, label %bb.ag, label %bb.bl

bb.ag:                                            ; preds = %bb.af
  %i.av = icmp ugt i64 %i.j, 4294967296
  br i1 %i.av, label %bb.ah, label %bb.bl

bb.ah:                                            ; preds = %bb.ag
  %i.aw = icmp ugt i64 %i.j, 8589934592
  br i1 %i.aw, label %bb.ai, label %bb.bl

bb.ai:                                            ; preds = %bb.ah
  %i.ax = icmp ugt i64 %i.j, 17179869184
  br i1 %i.ax, label %bb.aj, label %bb.bl

bb.aj:                                            ; preds = %bb.ai
  %i.ay = icmp ugt i64 %i.j, 34359738368
  br i1 %i.ay, label %bb.ak, label %bb.bl

bb.ak:                                            ; preds = %bb.aj
  %i.az = icmp ugt i64 %i.j, 68719476736
  br i1 %i.az, label %bb.al, label %bb.bl

bb.al:                                            ; preds = %bb.ak
  %i.ba = icmp ugt i64 %i.j, 137438953472
  br i1 %i.ba, label %bb.am, label %bb.bl

bb.am:                                            ; preds = %bb.al
  %i.bb = icmp ugt i64 %i.j, 274877906944
  br i1 %i.bb, label %bb.an, label %bb.bl

bb.an:                                            ; preds = %bb.am
  %i.bc = icmp ugt i64 %i.j, 549755813888
  br i1 %i.bc, label %bb.ao, label %bb.bl

bb.ao:                                            ; preds = %bb.an
  %i.bd = icmp ugt i64 %i.j, 1099511627776
  br i1 %i.bd, label %bb.ap, label %bb.bl

bb.ap:                                            ; preds = %bb.ao
  %i.be = icmp ugt i64 %i.j, 2199023255552
  br i1 %i.be, label %bb.aq, label %bb.bl

bb.aq:                                            ; preds = %bb.ap
  %i.bf = icmp ugt i64 %i.j, 4398046511104
  br i1 %i.bf, label %bb.ar, label %bb.bl

bb.ar:                                            ; preds = %bb.aq
  %i.bg = icmp ugt i64 %i.j, 8796093022208
  br i1 %i.bg, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.bh = icmp ugt i64 %i.j, 17592186044416
  br i1 %i.bh, label %bb.at, label %bb.bl

bb.at:                                            ; preds = %bb.as
  %i.bi = icmp ugt i64 %i.j, 35184372088832
  br i1 %i.bi, label %bb.au, label %bb.bl

bb.au:                                            ; preds = %bb.at
  %i.bj = icmp ugt i64 %i.j, 70368744177664
  br i1 %i.bj, label %bb.av, label %bb.bl

bb.av:                                            ; preds = %bb.au
  %i.bk = icmp ugt i64 %i.j, 140737488355328
  br i1 %i.bk, label %bb.aw, label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.bl = icmp ugt i64 %i.j, 281474976710656
  br i1 %i.bl, label %bb.ax, label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.bm = icmp ugt i64 %i.j, 562949953421312
  br i1 %i.bm, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.bn = icmp ugt i64 %i.j, 1125899906842624
  br i1 %i.bn, label %bb.az, label %bb.bl

bb.az:                                            ; preds = %bb.ay
  %i.bo = icmp ugt i64 %i.j, 2251799813685248
  br i1 %i.bo, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.bp = icmp ugt i64 %i.j, 4503599627370496
  br i1 %i.bp, label %bb.bb, label %bb.bl

bb.bb:                                            ; preds = %bb.ba
  %i.bq = icmp ugt i64 %i.j, 9007199254740992
  br i1 %i.bq, label %bb.bc, label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  %i.br = icmp ugt i64 %i.j, 18014398509481984
  br i1 %i.br, label %bb.bd, label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.bs = icmp ugt i64 %i.j, 36028797018963968
  br i1 %i.bs, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.bt = icmp ugt i64 %i.j, 72057594037927936
  br i1 %i.bt, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.bu = icmp ugt i64 %i.j, 144115188075855872
  br i1 %i.bu, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.bv = icmp ugt i64 %i.j, 288230376151711744
  br i1 %i.bv, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.bw = icmp ugt i64 %i.j, 576460752303423488
  br i1 %i.bw, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.bx = icmp ugt i64 %i.j, 1152921504606846976
  br i1 %i.bx, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.by = icmp ugt i64 %i.j, 2305843009213693952
  br i1 %i.by, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %bb.ci

bb.bl:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader204
  %.0162.lcssa = phi i64 [ 4, %.preheader204 ], [ 8, %bb.d ], [ 16, %bb.e ], [ 32, %bb.f ], [ 64, %bb.g ], [ 128, %bb.h ], [ 256, %bb.i ], [ 512, %bb.j ], [ 1024, %bb.k ], [ 2048, %bb.l ], [ 4096, %bb.m ], [ 8192, %bb.n ], [ 16384, %bb.o ], [ 32768, %bb.p ], [ 65536, %bb.q ], [ 131072, %bb.r ], [ 262144, %bb.s ], [ 524288, %bb.t ], [ 1048576, %bb.u ], [ 2097152, %bb.v ], [ 4194304, %bb.w ], [ 8388608, %bb.x ], [ 16777216, %bb.y ], [ 33554432, %bb.z ], [ 67108864, %bb.aa ], [ 134217728, %bb.ab ], [ 268435456, %bb.ac ], [ 536870912, %bb.ad ], [ 1073741824, %bb.ae ], [ 2147483648, %bb.af ], [ 4294967296, %bb.ag ], [ 8589934592, %bb.ah ], [ 17179869184, %bb.ai ], [ 34359738368, %bb.aj ], [ 68719476736, %bb.ak ], [ 137438953472, %bb.al ], [ 274877906944, %bb.am ], [ 549755813888, %bb.an ], [ 1099511627776, %bb.ao ], [ 2199023255552, %bb.ap ], [ 4398046511104, %bb.aq ], [ 8796093022208, %bb.ar ], [ 17592186044416, %bb.as ], [ 35184372088832, %bb.at ], [ 70368744177664, %bb.au ], [ 140737488355328, %bb.av ], [ 281474976710656, %bb.aw ], [ 562949953421312, %bb.ax ], [ 1125899906842624, %bb.ay ], [ 2251799813685248, %bb.az ], [ 4503599627370496, %bb.ba ], [ 9007199254740992, %bb.bb ], [ 18014398509481984, %bb.bc ], [ 36028797018963968, %bb.bd ], [ 72057594037927936, %bb.be ], [ 144115188075855872, %bb.bf ], [ 288230376151711744, %bb.bg ], [ 576460752303423488, %bb.bh ], [ 1152921504606846976, %bb.bi ], [ 2305843009213693952, %bb.bj ] ; 2 uses
  %i.bz = shl nuw i64 %.0162.lcssa, 2
  %i.ca = tail call noalias ptr @malloc(i64 noundef %i.bz) #15 ; 6 uses
  %.not176 = icmp eq ptr %i.ca, null
  br i1 %.not176, label %bb.bm, label %.preheader203

.preheader203:                                    ; preds = %bb.bl
  %.not238 = icmp eq i64 %i.j, 0
  br i1 %.not238, label %.preheader202, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader203
  %i.cb = load ptr, ptr %1, align 8, !tbaa !28    ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.cc = icmp eq i64 %i.j, 1
  br i1 %i.cc, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.j, -2
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %bb.ci

.preheader202.loopexit.unr-lcssa:                 ; preds = %bb.bn
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader202, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader202.loopexit.unr-lcssa, %.lr.ph
  %.0152214.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.db, %.preheader202.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod330 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod330)
  %i.cd = shl i64 %.0152214.epil.init, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 4 uses
  store i8 0, ptr %i.ce, align 1, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store i8 0, ptr %i.cf, align 1, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 0, ptr %i.cg, align 1, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0152214.epil.init
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !23
  br label %.preheader202

.preheader202:                                    ; preds = %.epil.preheader, %.preheader202.loopexit.unr-lcssa, %.preheader203
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50 ; 5 uses
  %.not239 = icmp eq i64 %i.cl, 0
  br i1 %.not239, label %.thread192, label %.preheader

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.new
  %.0152214 = phi i64 [ 0, %.lr.ph.new ], [ %i.db, %bb.bn ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bn ]
  %i.cm = shl nuw nsw i64 %.0152214, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cm ; 4 uses
  store i8 0, ptr %i.cn, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 0, ptr %i.co, align 1, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 0, ptr %i.cp, align 1, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0152214
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 3
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !23
  %i.ct = or disjoint i64 %.0152214, 1            ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cu ; 4 uses
  store i8 0, ptr %i.cv, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 0, ptr %i.cw, align 1, !tbaa !23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 0, ptr %i.cx, align 1, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ct
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !23
  %i.db = add nuw nsw i64 %.0152214, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader202.loopexit.unr-lcssa, label %bb.bn, !llvm.loop !53

.preheader:                                       ; preds = %.preheader202, %._crit_edge
  %.0139227 = phi i64 [ %i.dk, %._crit_edge ], [ 0, %.preheader202 ] ; 3 uses
  %.0141226 = phi i32 [ %i.dx, %._crit_edge ], [ 128, %.preheader202 ]
  %.0143225 = phi i64 [ %i.fj, %._crit_edge ], [ 0, %.preheader202 ]
  %.0146224 = phi i64 [ %i.ft, %._crit_edge ], [ 72, %.preheader202 ] ; 4 uses
  %.0149223 = phi i64 [ 2, %._crit_edge ], [ 700, %.preheader202 ]
  %.1153222 = phi i64 [ %i.dt, %._crit_edge ], [ %i.j, %.preheader202 ] ; 2 uses
  %.0156221 = phi ptr [ %i.ed, %._crit_edge ], [ %i.ca, %.preheader202 ] ; 6 uses
  %.1163220 = phi i64 [ %.2164, %._crit_edge ], [ %.0162.lcssa, %.preheader202 ] ; 4 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.0139227, i64 %i.cl)
  %exitcond257.not303.not = icmp ult i64 %.0139227, %i.cl
  br i1 %exitcond257.not303.not, label %.lr.ph308, label %.preheader._crit_edge

.lr.ph308:                                        ; preds = %.preheader
  %.not177301 = icmp ult i64 %.0146224, 36
  %i.dc = tail call i64 @llvm.usub.sat.i64(i64 36, i64 %.0146224)
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 26)
  %.1133302 = select i1 %.not177301, i64 %i.dd, i64 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bt
  %i.de = sub nuw nsw i64 36, %.1133307
  %i.df = mul i64 %i.de, %.0136306
  %i.dg = add i64 %i.dj, 36                       ; 3 uses
  %i.dh = tail call i64 @llvm.usub.sat.i64(i64 %i.dg, i64 %.0146224)
  %.not177 = icmp ugt i64 %i.dg, %.0146224
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dh, i64 26)
  %.1133 = select i1 %.not177, i64 %i.di, i64 1
  %exitcond257.not = icmp eq i64 %i.dk, %umax
  br i1 %exitcond257.not, label %.preheader._crit_edge, label %bb.bp, !llvm.loop !54

.preheader._crit_edge:                            ; preds = %.preheader, %bb.bo
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %print_str.exit182

bb.bp:                                            ; preds = %.lr.ph308, %bb.bo
  %.1133307 = phi i64 [ %.1133302, %.lr.ph308 ], [ %.1133, %bb.bo ] ; 2 uses
  %i.dj = phi i64 [ 36, %.lr.ph308 ], [ %i.dg, %bb.bo ]
  %.0136306 = phi i64 [ 1, %.lr.ph308 ], [ %i.df, %bb.bo ] ; 2 uses
  %.0137305 = phi i64 [ 0, %.lr.ph308 ], [ %i.ds, %bb.bo ]
  %.1140304 = phi i64 [ %.0139227, %.lr.ph308 ], [ %i.dk, %bb.bo ] ; 2 uses
  %i.dk = add i64 %.1140304, 1                    ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1140304
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !23  ; 3 uses
  %i.dn = add i8 %i.dm, -97                       ; 2 uses
  %or.cond = icmp ult i8 %i.dn, 26
  br i1 %or.cond, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.do = add i8 %i.dm, -48
  %or.cond5 = icmp ult i8 %i.do, 10
  br i1 %or.cond5, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.dp = add nsw i8 %i.dm, -22
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %print_str.exit182

bb.bt:                                            ; preds = %bb.bp, %bb.br
  %.0131 = phi i8 [ %i.dp, %bb.br ], [ %i.dn, %bb.bp ]
  %i.dq = zext nneg i8 %.0131 to i64              ; 2 uses
  %i.dr = mul i64 %.0136306, %i.dq
  %i.ds = add i64 %i.dr, %.0137305                ; 3 uses
  %.not178 = icmp samesign ugt i64 %.1133307, %i.dq
  br i1 %.not178, label %bb.bu, label %bb.bo, !llvm.loop !54

bb.bu:                                            ; preds = %bb.bt
  %i.dt = add i64 %.1153222, 1                    ; 8 uses
  %i.du = add i64 %i.ds, %.0143225                ; 2 uses
  %i.dv = udiv i64 %i.du, %i.dt
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = add i32 %.0141226, %i.dw                ; 9 uses
  %i.dy = urem i64 %i.du, %i.dt                   ; 3 uses
  %i.dz = icmp ult i64 %.1163220, %i.dt
  br i1 %i.dz, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.ea = icmp ult i64 %.1163220, 2305843009213693952
  br i1 %i.ea, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %print_str.exit182

bb.bx:                                            ; preds = %bb.bv
  %i.eb = shl nuw nsw i64 %.1163220, 1            ; 2 uses
  %.not179 = icmp ult i64 %i.eb, %i.dt
  br i1 %.not179, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %print_str.exit182

bb.bz:                                            ; preds = %bb.bx, %bb.bu
  %.2164 = phi i64 [ %i.eb, %bb.bx ], [ %.1163220, %bb.bu ] ; 2 uses
  %i.ec = shl nuw i64 %.2164, 2
  %i.ed = tail call ptr @realloc(ptr noundef nonnull %.0156221, i64 noundef %i.ec) #14 ; 5 uses
  %.not180 = icmp eq ptr %i.ed, null
  br i1 %.not180, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i8 1, ptr %i.a, align 8, !tbaa !17
  br label %print_str.exit182

bb.cb:                                            ; preds = %bb.bz
  %i.ee = shl i64 %i.dy, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = sub i64 %.1153222, %i.dy
  %i.ei = shl i64 %i.eh, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull align 1 %i.ef, i64 %i.ei, i1 false)
  %i.ej = icmp ugt i32 %i.dx, 65535
  %i.ek = lshr i32 %i.dx, 18
  %i.el = trunc i32 %i.ek to i8
  %i.em = or i8 %i.el, -16
  %i.en = select i1 %i.ej, i8 %i.em, i8 0
  store i8 %i.en, ptr %i.ef, align 1, !tbaa !23
  %i.eo = icmp ugt i32 %i.dx, 2047
  br i1 %i.eo, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ep = icmp ult i32 %i.dx, 65536
  %i.eq = select i1 %i.ep, i32 224, i32 128
  %i.er = lshr i32 %i.dx, 12
  %i.es = and i32 %i.er, 63
  %i.et = or i32 %i.eq, %i.es
  %i.eu = trunc nuw i32 %i.et to i8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.ev = phi i8 [ %i.eu, %bb.cc ], [ 0, %bb.cb ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !23
  %i.ex = icmp ult i32 %i.dx, 2048
  %i.ey = select i1 %i.ex, i32 192, i32 128
  %i.ez = lshr i32 %i.dx, 6
  %i.fa = and i32 %i.ez, 63
  %i.fb = or disjoint i32 %i.ey, %i.fa
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !23
  %i.fe = trunc i32 %i.dx to i8
  %i.ff = and i8 %i.fe, 63
  %i.fg = or disjoint i8 %i.ff, -128
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !23
  %i.fi = icmp eq i64 %i.dk, %i.cl
  br i1 %i.fi, label %.thread192, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fj = add nuw i64 %i.dy, 1
  %i.fk = udiv i64 %i.ds, %.0149223               ; 2 uses
  %i.fl = udiv i64 %i.fk, %i.dt
  %i.fm = add nuw i64 %i.fl, %i.fk                ; 3 uses
  %i.fn = icmp ugt i64 %i.fm, 455
  br i1 %i.fn, label %.lr.ph217, label %._crit_edge

.lr.ph217:                                        ; preds = %bb.ce, %.lr.ph217
  %.1135216 = phi i64 [ %i.fp, %.lr.ph217 ], [ 0, %bb.ce ]
  %.1138215 = phi i64 [ %i.fo, %.lr.ph217 ], [ %i.fm, %bb.ce ] ; 2 uses
  %i.fo = udiv i64 %.1138215, 35                  ; 2 uses
  %i.fp = add i64 %.1135216, 36                   ; 2 uses
  %i.fq = icmp ugt i64 %.1138215, 15959
  br i1 %i.fq, label %.lr.ph217, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph217, %bb.ce
  %.1138.lcssa = phi i64 [ %i.fm, %bb.ce ], [ %i.fo, %.lr.ph217 ]
  %.1135.lcssa = phi i64 [ 0, %bb.ce ], [ %i.fp, %.lr.ph217 ]
  %i.fr = trunc nuw i64 %.1138.lcssa to i16       ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.fr, 36
  %.rhs.trunc = add nuw nsw i16 %i.fr, 38
  %i.fs = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.fs to i64
  %i.ft = add i64 %.1135.lcssa, %.zext
  %i.fu = icmp ult i64 %i.dk, %i.cl
  br i1 %i.fu, label %.preheader, label %.thread192

.thread192:                                       ; preds = %._crit_edge, %bb.cd, %.preheader202
  %.3159 = phi ptr [ %i.ca, %.preheader202 ], [ %i.ed, %bb.cd ], [ %i.ed, %._crit_edge ] ; 6 uses
  %.3155 = phi i64 [ %i.j, %.preheader202 ], [ %i.dt, %bb.cd ], [ %i.dt, %._crit_edge ]
  %i.fv = shl i64 %.3155, 2                       ; 2 uses
  %.not240 = icmp eq i64 %i.fv, 0
  br i1 %.not240, label %._crit_edge236, label %.lr.ph235

.lr.ph235:                                        ; preds = %.thread192, %bb.ch
  %.0234 = phi i64 [ %.1.1, %bb.ch ], [ 0, %.thread192 ] ; 3 uses
  %.3233 = phi i64 [ %i.gf, %bb.ch ], [ 0, %.thread192 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.3159, i64 %.3233
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !23  ; 2 uses
  %.not181 = icmp eq i8 %i.fx, 0
  br i1 %.not181, label %.lr.ph235.1, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph235
  %i.fy = add i64 %.0234, 1
end_hunk_0
