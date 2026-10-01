Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale_unscaled?download=true
inline.NumInlined: 35
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 106
begin_hunk_0_@nv24ToPlanarWrapper:bb.a
bb.b:                                             ; preds = %bb.a
  %i.u = icmp sgt i32 %4, 0
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 132) #14
  tail call void @abort() #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = mul nsw i32 %i.t, %3
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 3 uses
  %i.y = icmp eq i32 %i.t, %i.p
  %i.z = icmp sgt i32 %i.p, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.aa = sext i32 %i.r to i64                    ; 5 uses
  %i.ab = sext i32 %i.p to i64                    ; 5 uses
  %i.ac = sext i32 %i.t to i64                    ; 5 uses
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.ad = icmp ult i32 %4, 4
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %4, 2147483644
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i32 %4, -1
  %i.af = mul nuw nsw i32 %i.p, %i.ae
  %i.ag = add nsw i32 %i.af, %i.r
  %i.ah = sext i32 %i.ag to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr readonly align 1 %i.o, i64 %i.ah, i1 false)
  br label %ff_copyPlane.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.02328.i = phi ptr [ %i.o, %.lr.ph.i.new ], [ %i.ao, %bb.f ] ; 2 uses
  %.02427.i = phi ptr [ %i.x, %.lr.ph.i.new ], [ %i.ap, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02427.i, ptr align 1 %.02328.i, i64 %i.aa, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %.02328.i, i64 %i.ab ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.02427.i, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ai, i64 %i.aa, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.ab ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ak, i64 %i.aa, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.am, i64 %i.aa, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.ab ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ac ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ff_copyPlane.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

ff_copyPlane.exit.loopexit.unr-lcssa:             ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ff_copyPlane.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ff_copyPlane.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.02328.i.epil.init = phi ptr [ %i.o, %.lr.ph.i ], [ %i.ao, %ff_copyPlane.exit.loopexit.unr-lcssa ]
  %.02427.i.epil.init = phi ptr [ %i.x, %.lr.ph.i ], [ %i.ap, %ff_copyPlane.exit.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.02328.i.epil = phi ptr [ %.02328.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.g ] ; 2 uses
  %.02427.i.epil = phi ptr [ %.02427.i.epil.init, %.epil.preheader ], [ %i.ar, %bb.g ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02427.i.epil, ptr align 1 %.02328.i.epil, i64 %i.aa, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %.02328.i.epil, i64 %i.ab
  %i.ar = getelementptr inbounds i8, ptr %.02427.i.epil, i64 %i.ac
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ff_copyPlane.exit, label %bb.g, !llvm.loop !78

ff_copyPlane.exit:                                ; preds = %ff_copyPlane.exit.loopexit.unr-lcssa, %bb.g, %bb.a, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !51
  %i.au = icmp eq i32 %i.at, 188
  %i.av = load ptr, ptr @deinterleaveBytes, align 8, !tbaa !55 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.az = load i32, ptr %i.ay, align 16, !tbaa !56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16 ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ff_copyPlane.exit
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !16
  %i.bd = load i32, ptr %i.j, align 4, !tbaa !16
  tail call void %i.av(ptr noundef %i.ax, ptr noundef %i.g, ptr noundef %i.n, i32 noundef %i.az, i32 noundef %4, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd) #14
  br label %bb.j

bb.i:                                             ; preds = %ff_copyPlane.exit
  %i.be = load i32, ptr %i.j, align 4, !tbaa !16
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !16
  tail call void %i.av(ptr noundef %i.ax, ptr noundef %i.n, ptr noundef %i.g, i32 noundef %i.az, i32 noundef %4, i32 noundef %i.bb, i32 noundef %i.be, i32 noundef %i.bf) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %4
}

declare ptr @ff_yuv2rgb_get_func_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @planarToP01xWrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef returned %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.b) #14 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54
  %i.f = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.e) #14 ; 6 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.h = load i32, ptr %6, align 4, !tbaa !16     ; 3 uses
  %i.i = mul i32 %i.h, %3
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 3 uses
  %i.p = mul nsw i32 %i.o, %3
  %i.q = sdiv i32 %i.p, 2
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !57
  %.neg74 = add i32 %i.w, %i.u
  %i.ab = add i32 %i.y, %i.aa
  %i.ac = sub i32 %.neg74, %i.ab                  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57
  %.neg77 = add i32 %i.ag, %i.ae
  %i.al = add i32 %i.ai, %i.ak
  %i.am = sub i32 %.neg77, %i.al                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57
  %.neg80 = add i32 %i.aq, %i.ao
  %i.av = add i32 %i.as, %i.au
  %i.aw = sub i32 %.neg80, %i.av                  ; 2 uses
  %i.ax = load i32, ptr %2, align 4, !tbaa !16    ; 2 uses
  %i.ay = and i32 %i.ax, 1
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = and i32 %i.ba, 1
  %.not67 = icmp eq i32 %i.bb, 0
  br i1 %.not67, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16 ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not68 = icmp eq i32 %i.be, 0
  %i.bf = and i32 %i.h, 1
  %.not69 = icmp eq i32 %i.bf, 0
  %or.cond = select i1 %.not68, i1 %.not69, i1 false
  %i.bg = and i32 %i.o, 1
  %.not70 = icmp eq i32 %i.bg, 0
  %or.cond72 = select i1 %or.cond, i1 %.not70, i1 false
  br i1 %or.cond72, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.bh = icmp sgt i32 %4, 0
  br i1 %i.bh, label %.lr.ph94, label %bb.h

.lr.ph94:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !53
  %.fr109 = freeze i32 %i.bj                      ; 10 uses
  %i.bk = ashr exact i32 %i.ax, 1                 ; 2 uses
  %i.bl = sext i32 %i.bk to i64                   ; 8 uses
  %i.bm = ashr exact i32 %i.h, 1                  ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.bq = sdiv i32 %.fr109, 2                     ; 5 uses
  %i.br = icmp sgt i32 %.fr109, 1
  %i.bs = ashr exact i32 %i.ba, 1
  %i.bt = sext i32 %i.bs to i64                   ; 5 uses
  %i.bu = ashr exact i32 %i.bd, 1
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %i.bw = ashr exact i32 %i.o, 1
  %i.bx = sext i32 %i.bw to i64
  %.promoted = load ptr, ptr %1, align 8, !tbaa !58 ; 7 uses
  br i1 %i.br, label %.lr.ph.us.us.preheader, label %.lr.ph94.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph94
  %i.by = add nsw i32 %i.bq, -1
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = shl nuw nsw i64 %i.bz, 1
  %i.cc = add nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cd = add nsw i32 %4, -1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = mul nsw i64 %i.bn, %i.ce
  %i.cg = add nsw i32 %.fr109, -1
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = add i64 %i.cf, %i.ch
  %i.cj = shl i64 %i.ci, 1
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.j
  %scevgep145 = getelementptr i8, ptr %i.cl, i64 2
  %i.cm = mul nsw i64 %i.bl, %i.ce
  %i.cn = add i64 %i.cm, %i.ch
  %i.co = shl i64 %i.cn, 1
  %i.cp = getelementptr i8, ptr %.promoted, i64 %i.co
  %scevgep146 = getelementptr i8, ptr %i.cp, i64 2
  %i.cq = zext nneg i32 %.fr109 to i64            ; 5 uses
  %min.iters.check152 = icmp ult i32 %.fr109, 4
  %bound0147 = icmp ult ptr %i.k, %scevgep146
  %bound1148 = icmp ult ptr %.promoted, %scevgep145
  %found.conflict149 = and i1 %bound0147, %bound1148
  %i.cr = or i32 %i.bk, %i.bm
  %i.cs = icmp slt i32 %i.cr, 0
  %i.ct = or i1 %found.conflict149, %i.cs
  %min.iters.check153 = icmp ult i32 %.fr109, 16
  %i.cu = and i64 %i.cq, 12
  %n.vec155 = and i64 %i.cq, 2147483632           ; 5 uses
  %i.cv = shl nuw nsw i64 %n.vec155, 1            ; 2 uses
  %i.cw = trunc nuw nsw i64 %n.vec155 to i32
  %i.cx = sub nsw i32 %.fr109, %i.cw
  %broadcast.splatinsert156 = insertelement <8 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat157 = shufflevector <8 x i32> %broadcast.splatinsert156, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n166 = icmp eq i64 %n.vec155, %i.cq
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  %n.vec170 = and i64 %i.cq, 2147483644           ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec170, 1            ; 2 uses
  %i.cz = trunc nuw nsw i64 %n.vec170 to i32
  %i.da = sub nsw i32 %.fr109, %i.cz
  %broadcast.splatinsert171 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat172 = shufflevector <4 x i32> %broadcast.splatinsert171, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n178 = icmp eq i64 %n.vec170, %i.cq
  %i.db = add nsw i32 %i.bq, -1                   ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.db, 3
  %n.vec = and i64 %i.dd, 8589934588              ; 5 uses
  %i.de = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.df = shl nuw nsw i64 %n.vec, 2
  %i.dg = trunc i64 %n.vec to i32
  %i.dh = sub i32 %i.bq, %i.dg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.us.preheader, %bb.d
  %i.di = phi ptr [ %i.ek, %bb.d ], [ %.promoted, %.lr.ph.us.us.preheader ] ; 6 uses
  %.06193.us.us = phi i32 [ %i.fs, %bb.d ], [ 0, %.lr.ph.us.us.preheader ] ; 2 uses
  %.06392.us.us = phi ptr [ %.164.us.us, %bb.d ], [ %i.s, %.lr.ph.us.us.preheader ] ; 9 uses
  %.06591.us.us = phi ptr [ %i.el, %bb.d ], [ %i.k, %.lr.ph.us.us.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check152, i1 true, i1 %i.ct
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cv
  %i.dk = getelementptr i8, ptr %.06591.us.us, i64 %i.cv
  br label %vector.body158

vector.body158:                                   ; preds = %vector.ph154, %vector.body158
  %index159 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.dl = shl i64 %index159, 1                    ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.di, i64 %i.dl ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.06591.us.us, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load162 = load <8 x i16>, ptr %next.gep160, align 2, !tbaa !60, !alias.scope !92
  %wide.load163 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !60, !alias.scope !92
  %i.dn = zext <8 x i16> %wide.load162 to <8 x i32>
  %i.do = zext <8 x i16> %wide.load163 to <8 x i32>
  %i.dp = shl <8 x i32> %i.dn, %broadcast.splat157
  %i.dq = shl <8 x i32> %i.do, %broadcast.splat157
  %i.dr = trunc <8 x i32> %i.dp to <8 x i16>
  %i.ds = trunc <8 x i32> %i.dq to <8 x i16>
  %i.dt = getelementptr i8, ptr %next.gep161, i64 16
  store <8 x i16> %i.dr, ptr %next.gep161, align 2, !tbaa !60, !alias.scope !93, !noalias !92
  store <8 x i16> %i.ds, ptr %i.dt, align 2, !tbaa !60, !alias.scope !93, !noalias !92
  %index.next164 = add nuw i64 %index159, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.du, label %middle.block165, label %vector.body158, !llvm.loop !82

middle.block165:                                  ; preds = %vector.body158
  br i1 %cmp.n166, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block165
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec155, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dv = getelementptr i8, ptr %i.di, i64 %i.cy
  %i.dw = getelementptr i8, ptr %.06591.us.us, i64 %i.cy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next177, %vec.epilog.vector.body ] ; 2 uses
  %i.dx = shl i64 %index173, 1                    ; 2 uses
  %next.gep174 = getelementptr i8, ptr %i.di, i64 %i.dx
  %next.gep175 = getelementptr i8, ptr %.06591.us.us, i64 %i.dx
  %wide.load176 = load <4 x i16>, ptr %next.gep174, align 2, !tbaa !60, !alias.scope !92
  %i.dy = zext <4 x i16> %wide.load176 to <4 x i32>
  %i.dz = shl <4 x i32> %i.dy, %broadcast.splat172
  %i.ea = trunc <4 x i32> %i.dz to <4 x i16>
  store <4 x i16> %i.ea, ptr %next.gep175, align 2, !tbaa !60, !alias.scope !93, !noalias !92
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n178, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05983.us.us.ph = phi ptr [ %i.di, %iter.check ], [ %i.dv, %vec.epilog.middle.block ], [ %i.dj, %vec.epilog.iter.check ]
  %.06082.us.us.ph = phi ptr [ %.06591.us.us, %iter.check ], [ %i.dw, %vec.epilog.middle.block ], [ %i.dk, %vec.epilog.iter.check ]
  %.06281.us.us.ph = phi i32 [ %.fr109, %iter.check ], [ %i.da, %vec.epilog.middle.block ], [ %i.cx, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.05983.us.us = phi ptr [ %i.ec, %vec.epilog.scalar.ph ], [ %.05983.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.06082.us.us = phi ptr [ %i.eh, %vec.epilog.scalar.ph ], [ %.06082.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.06281.us.us = phi i32 [ %i.ei, %vec.epilog.scalar.ph ], [ %.06281.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.05983.us.us, i64 2
  %i.ed = load i16, ptr %.05983.us.us, align 2, !tbaa !60
  %i.ee = zext i16 %i.ed to i32
  %i.ef = shl i32 %i.ee, %i.ac
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %.06082.us.us, i64 2
  store i16 %i.eg, ptr %.06082.us.us, align 2, !tbaa !60
  %i.ei = add nsw i32 %.06281.us.us, -1
  %i.ej = icmp sgt i32 %.06281.us.us, 1
  br i1 %i.ej, label %vec.epilog.scalar.ph, label %._crit_edge.us.us, !llvm.loop !84

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block165
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.bl ; 2 uses
  %i.el = getelementptr inbounds [2 x i8], ptr %.06591.us.us, i64 %i.bn
  %i.em = and i32 %.06193.us.us, 1
  %.not71.us.us = icmp eq i32 %i.em, 0
  br i1 %.not71.us.us, label %.lr.ph89.us.us, label %bb.d

.lr.ph89.us.us:                                   ; preds = %._crit_edge.us.us
  %i.en = load ptr, ptr %i.bo, align 8, !tbaa !58 ; 7 uses
  %i.eo = load ptr, ptr %i.bp, align 8, !tbaa !58 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.us.us
  %i.ep = getelementptr i8, ptr %.06392.us.us, i64 %i.ca
  %scevgep = getelementptr i8, ptr %i.ep, i64 4   ; 2 uses
  %scevgep131 = getelementptr i8, ptr %i.en, i64 %i.cc
  %scevgep132 = getelementptr i8, ptr %i.eo, i64 %i.cc
  %bound0 = icmp ult ptr %.06392.us.us, %scevgep131
  %bound1 = icmp ult ptr %i.en, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %.06392.us.us, %scevgep132
  %bound1134 = icmp ult ptr %i.eo, %scevgep
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eq = getelementptr i8, ptr %i.eo, i64 %i.de
  %i.er = getelementptr i8, ptr %i.en, i64 %i.de
  %i.es = getelementptr i8, ptr %.06392.us.us, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.et = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.et
  %next.gep138 = getelementptr i8, ptr %i.en, i64 %i.et
  %i.eu = shl i64 %index, 2
  %next.gep139 = getelementptr i8, ptr %.06392.us.us, i64 %i.eu
  %wide.load = load <4 x i16>, ptr %next.gep138, align 2, !tbaa !60, !alias.scope !94
  %i.ev = zext <4 x i16> %wide.load to <4 x i32>
  %i.ew = shl <4 x i32> %i.ev, %broadcast.splat
  %wide.load140 = load <4 x i16>, ptr %next.gep, align 2, !tbaa !60, !alias.scope !95
  %i.ex = zext <4 x i16> %wide.load140 to <4 x i32>
  %i.ey = shl <4 x i32> %i.ex, %broadcast.splat137
  %i.ez = shufflevector <4 x i32> %i.ew, <4 x i32> %i.ey, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.ez to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep139, align 2, !tbaa !60, !alias.scope !96, !noalias !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge90.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph89.us.us, %middle.block
  %.087.us.us.ph = phi ptr [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph89.us.us ], [ %i.eq, %middle.block ]
  %.05786.us.us.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph89.us.us ], [ %i.er, %middle.block ]
  %.05885.us.us.ph = phi ptr [ %.06392.us.us, %vector.memcheck ], [ %.06392.us.us, %.lr.ph89.us.us ], [ %i.es, %middle.block ]
  %.184.us.us.ph = phi i32 [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph89.us.us ], [ %i.dh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.087.us.us = phi ptr [ %i.fh, %scalar.ph ], [ %.087.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.05786.us.us = phi ptr [ %i.fb, %scalar.ph ], [ %.05786.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.05885.us.us = phi ptr [ %i.fm, %scalar.ph ], [ %.05885.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.184.us.us = phi i32 [ %i.fn, %scalar.ph ], [ %.184.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05786.us.us, i64 2
  %i.fc = load i16, ptr %.05786.us.us, align 2, !tbaa !60
  %i.fd = zext i16 %i.fc to i32
  %i.fe = shl i32 %i.fd, %i.am
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %.05885.us.us, i64 2
  store i16 %i.ff, ptr %.05885.us.us, align 2, !tbaa !60
  %i.fh = getelementptr inbounds nuw i8, ptr %.087.us.us, i64 2
  %i.fi = load i16, ptr %.087.us.us, align 2, !tbaa !60
  %i.fj = zext i16 %i.fi to i32
  %i.fk = shl i32 %i.fj, %i.aw
  %i.fl = trunc i32 %i.fk to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %.05885.us.us, i64 4
  store i16 %i.fl, ptr %i.fg, align 2, !tbaa !60
  %i.fn = add nsw i32 %.184.us.us, -1
  %i.fo = icmp sgt i32 %.184.us.us, 1
  br i1 %i.fo, label %scalar.ph, label %._crit_edge90.us.us, !llvm.loop !90

._crit_edge90.us.us:                              ; preds = %scalar.ph, %middle.block
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.bt
  store ptr %i.fp, ptr %i.bo, align 8, !tbaa !58
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.bv
  store ptr %i.fq, ptr %i.bp, align 8, !tbaa !58
  %i.fr = getelementptr inbounds [2 x i8], ptr %.06392.us.us, i64 %i.bx
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge90.us.us, %._crit_edge.us.us
  %.164.us.us = phi ptr [ %.06392.us.us, %._crit_edge.us.us ], [ %i.fr, %._crit_edge90.us.us ]
  %i.fs = add nuw nsw i32 %.06193.us.us, 1        ; 2 uses
  %exitcond118.not = icmp eq i32 %i.fs, %4
  br i1 %exitcond118.not, label %._crit_edge95, label %iter.check, !llvm.loop !91

.lr.ph94.split:                                   ; preds = %.lr.ph94
  %i.ft = icmp eq i32 %.fr109, 1
  br i1 %i.ft, label %._crit_edge.us103.preheader, label %.lr.ph94.split.split.preheader

.lr.ph94.split.split.preheader:                   ; preds = %.lr.ph94.split
  %xtraiter = and i32 %4, 1
  %i.fu = icmp eq i32 %4, 1
  br i1 %i.fu, label %.lr.ph94.split.split.epil.preheader, label %.lr.ph94.split.split.preheader.new

.lr.ph94.split.split.preheader.new:               ; preds = %.lr.ph94.split.split.preheader
  %unroll_iter = and i32 %4, 2147483646
  br label %.lr.ph94.split.split

._crit_edge.us103.preheader:                      ; preds = %.lr.ph94.split
  %xtraiter188 = and i32 %4, 1
  %i.fv = icmp eq i32 %4, 1
  br i1 %i.fv, label %._crit_edge.us103.epil.preheader, label %._crit_edge.us103.preheader.new

._crit_edge.us103.preheader.new:                  ; preds = %._crit_edge.us103.preheader
  %unroll_iter194 = and i32 %4, 2147483646
  br label %._crit_edge.us103

._crit_edge.us103:                                ; preds = %._crit_edge.us103, %._crit_edge.us103.preheader.new
  %i.fw = phi ptr [ %.promoted, %._crit_edge.us103.preheader.new ], [ %i.gl, %._crit_edge.us103 ] ; 2 uses
  %.06193.us96 = phi i32 [ 0, %._crit_edge.us103.preheader.new ], [ %i.gn, %._crit_edge.us103 ]
  %.06591.us98 = phi ptr [ %i.k, %._crit_edge.us103.preheader.new ], [ %i.gm, %._crit_edge.us103 ] ; 2 uses
  %niter195 = phi i32 [ 0, %._crit_edge.us103.preheader.new ], [ %niter195.next.1, %._crit_edge.us103 ]
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !60
  %i.fy = zext i16 %i.fx to i32
  %i.fz = shl i32 %i.fy, %i.ac
  %i.ga = trunc i32 %i.fz to i16
  store i16 %i.ga, ptr %.06591.us98, align 2, !tbaa !60
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.bl ; 2 uses
  %i.gc = getelementptr inbounds [2 x i8], ptr %.06591.us98, i64 %i.bn ; 2 uses
  %i.gd = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.ge = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.bt
  store ptr %i.gf, ptr %i.bo, align 8, !tbaa !58
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.bv
  store ptr %i.gg, ptr %i.bp, align 8, !tbaa !58
  %i.gh = load i16, ptr %i.gb, align 2, !tbaa !60
  %i.gi = zext i16 %i.gh to i32
  %i.gj = shl i32 %i.gi, %i.ac
  %i.gk = trunc i32 %i.gj to i16
  store i16 %i.gk, ptr %i.gc, align 2, !tbaa !60
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.gb, i64 %i.bl ; 3 uses
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.bn ; 2 uses
  %i.gn = add nuw nsw i32 %.06193.us96, 2         ; 2 uses
  %niter195.next.1 = add nuw nsw i32 %niter195, 2 ; 2 uses
  %niter195.ncmp.1 = icmp eq i32 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %._crit_edge95.loopexit182.unr-lcssa, label %._crit_edge.us103, !llvm.loop !91

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 296) #14
  tail call void @abort() #15
  unreachable

.lr.ph94.split.split:                             ; preds = %.lr.ph94.split.split, %.lr.ph94.split.split.preheader.new
  %i.go = phi ptr [ %.promoted, %.lr.ph94.split.split.preheader.new ], [ %8, %.lr.ph94.split.split ]
  %.06193 = phi i32 [ 0, %.lr.ph94.split.split.preheader.new ], [ %i.gt, %.lr.ph94.split.split ]
  %niter = phi i32 [ 0, %.lr.ph94.split.split.preheader.new ], [ %niter.next.1, %.lr.ph94.split.split ]
  %7 = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.bl
  %i.gp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.gq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.bt
  store ptr %i.gr, ptr %i.bo, align 8, !tbaa !58
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %i.bv
  store ptr %i.gs, ptr %i.bp, align 8, !tbaa !58
  %8 = getelementptr inbounds [2 x i8], ptr %7, i64 %i.bl ; 3 uses
  %i.gt = add nuw nsw i32 %.06193, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge95.loopexit184.unr-lcssa, label %.lr.ph94.split.split, !llvm.loop !91

._crit_edge95.loopexit182.unr-lcssa:              ; preds = %._crit_edge.us103
  %lcmp.mod191.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod191.not, label %._crit_edge95, label %._crit_edge.us103.epil.preheader

._crit_edge.us103.epil.preheader:                 ; preds = %._crit_edge95.loopexit182.unr-lcssa, %._crit_edge.us103.preheader
  %.epil.init190 = phi ptr [ %.promoted, %._crit_edge.us103.preheader ], [ %i.gl, %._crit_edge95.loopexit182.unr-lcssa ] ; 2 uses
  %.06193.us96.epil.init = phi i32 [ 0, %._crit_edge.us103.preheader ], [ %i.gn, %._crit_edge95.loopexit182.unr-lcssa ]
  %.06591.us98.epil.init = phi ptr [ %i.k, %._crit_edge.us103.preheader ], [ %i.gm, %._crit_edge95.loopexit182.unr-lcssa ]
  %lcmp.mod193 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.gu = load i16, ptr %.epil.init190, align 2, !tbaa !60
  %i.gv = zext i16 %i.gu to i32
  %i.gw = shl i32 %i.gv, %i.ac
  %i.gx = trunc i32 %i.gw to i16
  store i16 %i.gx, ptr %.06591.us98.epil.init, align 2, !tbaa !60
  %i.gy = getelementptr inbounds [2 x i8], ptr %.epil.init190, i64 %i.bl ; 2 uses
  %i.gz = and i32 %.06193.us96.epil.init, 1
  %.not71.us104.epil = icmp eq i32 %i.gz, 0
  br i1 %.not71.us104.epil, label %bb.f, label %._crit_edge95

bb.f:                                             ; preds = %._crit_edge.us103.epil.preheader
  %i.ha = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.hb = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.bt
  store ptr %i.hc, ptr %i.bo, align 8, !tbaa !58
  %i.hd = getelementptr inbounds [2 x i8], ptr %i.hb, i64 %i.bv
  store ptr %i.hd, ptr %i.bp, align 8, !tbaa !58
  br label %._crit_edge95

._crit_edge95.loopexit184.unr-lcssa:              ; preds = %.lr.ph94.split.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge95, label %.lr.ph94.split.split.epil.preheader

.lr.ph94.split.split.epil.preheader:              ; preds = %._crit_edge95.loopexit184.unr-lcssa, %.lr.ph94.split.split.preheader
  %.epil.init = phi ptr [ %.promoted, %.lr.ph94.split.split.preheader ], [ %8, %._crit_edge95.loopexit184.unr-lcssa ]
  %.06193.epil.init = phi i32 [ 0, %.lr.ph94.split.split.preheader ], [ %i.gt, %._crit_edge95.loopexit184.unr-lcssa ]
  %lcmp.mod187 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.he = getelementptr inbounds [2 x i8], ptr %.epil.init, i64 %i.bl ; 2 uses
  %i.hf = and i32 %.06193.epil.init, 1
  %.not71.epil = icmp eq i32 %i.hf, 0
  br i1 %.not71.epil, label %bb.g, label %._crit_edge95

bb.g:                                             ; preds = %.lr.ph94.split.split.epil.preheader
  %i.hg = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.hh = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.bt
  store ptr %i.hi, ptr %i.bo, align 8, !tbaa !58
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.hh, i64 %i.bv
  store ptr %i.hj, ptr %i.bp, align 8, !tbaa !58
  br label %._crit_edge95

._crit_edge95:                                    ; preds = %._crit_edge95.loopexit184.unr-lcssa, %bb.g, %.lr.ph94.split.split.epil.preheader, %._crit_edge95.loopexit182.unr-lcssa, %bb.f, %._crit_edge.us103.epil.preheader, %bb.d
  %.us-phi = phi ptr [ %i.ek, %bb.d ], [ %i.gy, %._crit_edge.us103.epil.preheader ], [ %i.gl, %._crit_edge95.loopexit182.unr-lcssa ], [ %i.gy, %bb.f ], [ %8, %._crit_edge95.loopexit184.unr-lcssa ], [ %i.he, %bb.g ], [ %i.he, %.lr.ph94.split.split.epil.preheader ]
  store ptr %.us-phi, ptr %1, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge95, %.preheader
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @planar8ToP01xleWrapper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef returned %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !52     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.g = load i32, ptr %6, align 4, !tbaa !16     ; 3 uses
  %i.h = mul i32 %i.g, %3
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 3 uses
  %i.o = mul nsw i32 %i.n, %3
  %i.p = sdiv i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %i.q
  %i.s = and i32 %i.g, 1
  %.not = icmp eq i32 %i.s, 0
  %i.t = and i32 %i.n, 1
  %.not60 = icmp eq i32 %i.t, 0
  %or.cond = select i1 %.not, i1 %.not60, i1 false
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.u = icmp sgt i32 %4, 0
  br i1 %i.u, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !53
  %.fr95 = freeze i32 %i.w                        ; 10 uses
  %i.x = load i32, ptr %2, align 4, !tbaa !16     ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 7 uses
  %i.z = ashr exact i32 %i.g, 1                   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 7 uses
  %i.ab = sdiv i32 %.fr95, 2                      ; 5 uses
  %i.ac = icmp sgt i32 %.fr95, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = ashr exact i32 %i.n, 1
  %i.ag = sext i32 %i.af to i64
  br i1 %i.ac, label %.lr.ph.us.us.preheader, label %.lr.ph78.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph78
  %i.ah = add nsw i32 %i.ab, -1
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.al = add nsw i32 %4, -1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = mul nsw i64 %i.aa, %i.am
  %i.ao = add nsw i32 %.fr95, -1
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = add i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 1
  %i.as = getelementptr i8, ptr %i.f, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.i
  %scevgep118 = getelementptr i8, ptr %i.at, i64 2
  %i.au = mul nsw i64 %i.y, %i.am
  %i.av = getelementptr i8, ptr %i.a, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.ap
  %scevgep119 = getelementptr i8, ptr %i.aw, i64 1
  %i.ax = zext nneg i32 %.fr95 to i64             ; 5 uses
  %min.iters.check125 = icmp ult i32 %.fr95, 4
  %bound0120 = icmp ult ptr %i.j, %scevgep119
  %bound1121 = icmp ult ptr %i.a, %scevgep118
  %found.conflict122 = and i1 %bound0120, %bound1121
  %i.ay = or i32 %i.x, %i.z
  %i.az = icmp slt i32 %i.ay, 0
  %i.ba = or i1 %found.conflict122, %i.az
  %min.iters.check126 = icmp ult i32 %.fr95, 16
  %i.bb = and i64 %i.ax, 12
  %n.vec128 = and i64 %i.ax, 2147483632           ; 6 uses
  %i.bc = shl nuw nsw i64 %n.vec128, 1
  %i.bd = trunc nuw nsw i64 %n.vec128 to i32
  %i.be = sub nsw i32 %.fr95, %i.bd
  %cmp.n137 = icmp eq i64 %n.vec128, %i.ax
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  %n.vec141 = and i64 %i.ax, 2147483644           ; 5 uses
  %i.bf = shl nuw nsw i64 %n.vec141, 1
  %i.bg = trunc nuw nsw i64 %n.vec141 to i32
  %i.bh = sub nsw i32 %.fr95, %i.bg
  %cmp.n147 = icmp eq i64 %n.vec141, %i.ax
  %i.bi = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bi, 3
  %n.vec = and i64 %i.bk, 8589934588              ; 6 uses
  %i.bl = shl nuw nsw i64 %n.vec, 2
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = sub i32 %i.ab, %i.bm
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.us.preheader, %bb.b
  %.04977.us.us = phi i32 [ %i.dq, %bb.b ], [ 0, %.lr.ph.us.us.preheader ] ; 2 uses
  %.05176.us.us = phi ptr [ %.152.us.us, %bb.b ], [ %i.r, %.lr.ph.us.us.preheader ] ; 9 uses
  %.05375.us.us = phi ptr [ %i.cm, %bb.b ], [ %i.j, %.lr.ph.us.us.preheader ] ; 6 uses
  %.05474.us.us = phi ptr [ %.155.us.us, %bb.b ], [ %i.e, %.lr.ph.us.us.preheader ] ; 8 uses
  %.05673.us.us = phi ptr [ %.157.us.us, %bb.b ], [ %i.c, %.lr.ph.us.us.preheader ] ; 8 uses
  %.05872.us.us = phi ptr [ %i.cl, %bb.b ], [ %i.a, %.lr.ph.us.us.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check125, i1 true, i1 %i.ba
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check
  %i.bo = getelementptr i8, ptr %.05872.us.us, i64 %n.vec128
  %i.bp = getelementptr i8, ptr %.05375.us.us, i64 %i.bc
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph127, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body129 ] ; 3 uses
  %next.gep131 = getelementptr i8, ptr %.05872.us.us, i64 %index130 ; 2 uses
  %i.bq = shl i64 %index130, 1
  %next.gep132 = getelementptr i8, ptr %.05375.us.us, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep131, i64 8
  %wide.load133 = load <8 x i8>, ptr %next.gep131, align 1, !tbaa !64, !alias.scope !112
  %wide.load134 = load <8 x i8>, ptr %i.br, align 1, !tbaa !64, !alias.scope !112
  %i.bs = zext <8 x i8> %wide.load133 to <8 x i16>
  %i.bt = zext <8 x i8> %wide.load134 to <8 x i16>
  %i.bu = shl nuw <8 x i16> %i.bs, splat (i16 8)
  %i.bv = shl nuw <8 x i16> %i.bt, splat (i16 8)
  %i.bw = getelementptr i8, ptr %next.gep132, i64 16
  store <8 x i16> %i.bu, ptr %next.gep132, align 2, !tbaa !60, !alias.scope !113, !noalias !112
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !tbaa !60, !alias.scope !113, !noalias !112
  %index.next135 = add nuw i64 %index130, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.bx, label %middle.block136, label %vector.body129, !llvm.loop !101

middle.block136:                                  ; preds = %vector.body129
  br i1 %cmp.n137, label %._crit_edge.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block136
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec128, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.by = getelementptr i8, ptr %.05872.us.us, i64 %n.vec141
  %i.bz = getelementptr i8, ptr %.05375.us.us, i64 %i.bf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 3 uses
  %next.gep143 = getelementptr i8, ptr %.05872.us.us, i64 %index142
  %i.ca = shl i64 %index142, 1
  %next.gep144 = getelementptr i8, ptr %.05375.us.us, i64 %i.ca
  %wide.load145 = load <4 x i8>, ptr %next.gep143, align 1, !tbaa !64, !alias.scope !112
  %i.cb = zext <4 x i8> %wide.load145 to <4 x i16>
  %i.cc = shl nuw <4 x i16> %i.cb, splat (i16 8)
  store <4 x i16> %i.cc, ptr %next.gep144, align 2, !tbaa !60, !alias.scope !113, !noalias !112
  %index.next146 = add nuw i64 %index142, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n147, label %._crit_edge.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04764.us.us.ph = phi ptr [ %.05872.us.us, %iter.check ], [ %i.by, %vec.epilog.middle.block ], [ %i.bo, %vec.epilog.iter.check ]
  %.04863.us.us.ph = phi ptr [ %.05375.us.us, %iter.check ], [ %i.bz, %vec.epilog.middle.block ], [ %i.bp, %vec.epilog.iter.check ]
  %.05062.us.us.ph = phi i32 [ %.fr95, %iter.check ], [ %i.bh, %vec.epilog.middle.block ], [ %i.be, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.04764.us.us = phi ptr [ %i.ce, %vec.epilog.scalar.ph ], [ %.04764.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.04863.us.us = phi ptr [ %i.ci, %vec.epilog.scalar.ph ], [ %.04863.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05062.us.us = phi i32 [ %i.cj, %vec.epilog.scalar.ph ], [ %.05062.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04764.us.us, i64 1
  %i.cf = load i8, ptr %.04764.us.us, align 1, !tbaa !64
  %i.cg = zext i8 %i.cf to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.04863.us.us, i64 2
  store i16 %i.ch, ptr %.04863.us.us, align 2, !tbaa !60
  %i.cj = add nsw i32 %.05062.us.us, -1
  %i.ck = icmp sgt i32 %.05062.us.us, 1
  br i1 %i.ck, label %vec.epilog.scalar.ph, label %._crit_edge.us.us, !llvm.loop !103

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block136
  %i.cl = getelementptr inbounds i8, ptr %.05872.us.us, i64 %i.y
  %i.cm = getelementptr inbounds [2 x i8], ptr %.05375.us.us, i64 %i.aa
  %i.cn = and i32 %.04977.us.us, 1
  %.not61.us.us = icmp eq i32 %i.cn, 0
  br i1 %.not61.us.us, label %.lr.ph70.us.us.preheader, label %bb.b

.lr.ph70.us.us.preheader:                         ; preds = %._crit_edge.us.us
  br i1 %min.iters.check, label %.lr.ph70.us.us.preheader151, label %vector.memcheck
end_hunk_0
begin_hunk_1_@gbr16ptopacked16:bb.a
  %conflict.rdx925 = or i1 %found.conflict923, %conflict.rdx920
  br i1 %conflict.rdx925, label %scalar.ph926.preheader, label %vector.ph928

vector.ph928:                                     ; preds = %vector.memcheck902
  %i.aaf = getelementptr i8, ptr %i.cm, i64 %i.az
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph928
  %index935 = phi i64 [ 0, %vector.ph928 ], [ %index.next942, %vector.body934 ] ; 6 uses
  %i.aag = shl i64 %index935, 3
  %next.gep936 = getelementptr i8, ptr %i.cm, i64 %i.aag
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %index935
  %wide.load937 = load <8 x i16>, ptr %i.aah, align 2, !tbaa !60, !alias.scope !914
  %i.aai = zext <8 x i16> %wide.load937 to <8 x i32> ; 2 uses
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %index935
  %wide.load938 = load <8 x i16>, ptr %i.aaj, align 2, !tbaa !60, !alias.scope !915
  %i.aak = zext <8 x i16> %wide.load938 to <8 x i32> ; 2 uses
  %i.aal = getelementptr inbounds nuw [2 x i8], ptr %i.aac, i64 %index935
  %wide.load939 = load <8 x i16>, ptr %i.aal, align 2, !tbaa !60, !alias.scope !916
  %i.aam = zext <8 x i16> %wide.load939 to <8 x i32> ; 2 uses
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %i.aad, i64 %index935
  %wide.load940 = load <8 x i16>, ptr %i.aan, align 2, !tbaa !60, !alias.scope !917
  %i.aao = zext <8 x i16> %wide.load940 to <8 x i32> ; 2 uses
  %i.aap = shufflevector <8 x i32> %i.aai, <8 x i32> %i.aak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaq = shl nuw nsw <16 x i32> %i.aap, %i.ba
  %i.aar = shufflevector <8 x i32> %i.aai, <8 x i32> %i.aak, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aas = lshr <16 x i32> %i.aar, %i.bb
  %i.aat = or <16 x i32> %i.aaq, %i.aas
  %i.aau = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aav = shl nuw nsw <16 x i32> %i.aau, %i.bc
  %i.aaw = shufflevector <8 x i32> %i.aam, <8 x i32> %i.aao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aax = lshr <16 x i32> %i.aaw, %i.bd
  %i.aay = or <16 x i32> %i.aav, %i.aax
  %i.aaz = shufflevector <16 x i32> %i.aat, <16 x i32> %i.aay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %interleaved.vec941 = trunc <32 x i32> %i.aaz to <32 x i16>
  store <32 x i16> %interleaved.vec941, ptr %next.gep936, align 2, !tbaa !60, !alias.scope !918, !noalias !919
  %index.next942 = add nuw i64 %index935, 8       ; 2 uses
  %i.aba = icmp eq i64 %index.next942, %n.vec929
  br i1 %i.aba, label %middle.block943, label %vector.body934, !llvm.loop !850

middle.block943:                                  ; preds = %vector.body934
  br i1 %cmp.n944, label %vector.ph, label %scalar.ph926.preheader

scalar.ph926.preheader:                           ; preds = %vector.memcheck902, %.lr.ph410, %middle.block943
  %indvars.iv458.ph = phi i64 [ 0, %vector.memcheck902 ], [ 0, %.lr.ph410 ], [ %n.vec929, %middle.block943 ]
  %.10409.ph = phi ptr [ %i.cm, %vector.memcheck902 ], [ %i.cm, %.lr.ph410 ], [ %i.aaf, %middle.block943 ]
  br label %scalar.ph926

scalar.ph926:                                     ; preds = %scalar.ph926.preheader, %scalar.ph926
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %scalar.ph926 ], [ %indvars.iv458.ph, %scalar.ph926.preheader ] ; 5 uses
  %.10409 = phi ptr [ %i.acg, %scalar.ph926 ], [ %.10409.ph, %scalar.ph926.preheader ] ; 5 uses
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %i.aaa, i64 %indvars.iv458
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !60
  %i.abd = zext i16 %i.abc to i32                 ; 2 uses
  %i.abe = shl nuw nsw i32 %i.abd, %i.b
  %i.abf = lshr i32 %i.abd, %i.d
  %i.abg = or i32 %i.abe, %i.abf
  %i.abh = trunc i32 %i.abg to i16
  %i.abi = getelementptr inbounds nuw i8, ptr %.10409, i64 2
  store i16 %i.abh, ptr %.10409, align 2, !tbaa !60
  %i.abj = getelementptr inbounds nuw [2 x i8], ptr %i.aab, i64 %indvars.iv458
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !60
  %i.abl = zext i16 %i.abk to i32                 ; 2 uses
  %i.abm = shl nuw nsw i32 %i.abl, %i.b
  %i.abn = lshr i32 %i.abl, %i.d
  %i.abo = or i32 %i.abm, %i.abn
  %i.abp = trunc i32 %i.abo to i16
  %i.abq = getelementptr inbounds nuw i8, ptr %.10409, i64 4
  store i16 %i.abp, ptr %i.abi, align 2, !tbaa !60
  %i.abr = getelementptr inbounds nuw [2 x i8], ptr %i.aac, i64 %indvars.iv458
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !60
  %i.abt = zext i16 %i.abs to i32                 ; 2 uses
  %i.abu = shl nuw nsw i32 %i.abt, %i.b
  %i.abv = lshr i32 %i.abt, %i.d
  %i.abw = or i32 %i.abu, %i.abv
  %i.abx = trunc i32 %i.abw to i16
  %i.aby = getelementptr inbounds nuw i8, ptr %.10409, i64 6
  store i16 %i.abx, ptr %i.abq, align 2, !tbaa !60
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.aad, i64 %indvars.iv458
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !60
  %i.acb = zext i16 %i.aca to i32                 ; 2 uses
  %i.acc = shl nuw nsw i32 %i.acb, %i.b
  %i.acd = lshr i32 %i.acb, %i.d
  %i.ace = or i32 %i.acc, %i.acd
  %i.acf = trunc i32 %i.ace to i16
  %i.acg = getelementptr inbounds nuw i8, ptr %.10409, i64 8
  store i16 %i.acf, ptr %i.aby, align 2, !tbaa !60
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %vector.ph, label %scalar.ph926, !llvm.loop !851

scalar.ph966:                                     ; preds = %scalar.ph966.preheader, %scalar.ph966
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %scalar.ph966 ], [ %indvars.iv453.ph, %scalar.ph966.preheader ] ; 4 uses
  %.11406 = phi ptr [ %i.ade, %scalar.ph966 ], [ %.11406.ph, %scalar.ph966.preheader ] ; 4 uses
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.zc, i64 %indvars.iv453
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !60
  %i.acj = zext i16 %i.aci to i32                 ; 2 uses
  %i.ack = shl nuw nsw i32 %i.acj, %i.b
  %i.acl = lshr i32 %i.acj, %i.d
  %i.acm = or i32 %i.ack, %i.acl
  %i.acn = trunc i32 %i.acm to i16
  %i.aco = getelementptr inbounds nuw i8, ptr %.11406, i64 2
  store i16 %i.acn, ptr %.11406, align 2, !tbaa !60
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.zd, i64 %indvars.iv453
  %i.acq = load i16, ptr %i.acp, align 2, !tbaa !60
  %i.acr = zext i16 %i.acq to i32                 ; 2 uses
  %i.acs = shl nuw nsw i32 %i.acr, %i.b
  %i.act = lshr i32 %i.acr, %i.d
  %i.acu = or i32 %i.acs, %i.act
  %i.acv = trunc i32 %i.acu to i16
  %i.acw = getelementptr inbounds nuw i8, ptr %.11406, i64 4
  store i16 %i.acv, ptr %i.aco, align 2, !tbaa !60
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.ze, i64 %indvars.iv453
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !60
  %i.acz = zext i16 %i.acy to i32                 ; 2 uses
  %i.ada = shl nuw nsw i32 %i.acz, %i.b
  %i.adb = lshr i32 %i.acz, %i.d
  %i.adc = or i32 %i.ada, %i.adb
  %i.add = trunc i32 %i.adc to i16
  %i.ade = getelementptr inbounds nuw i8, ptr %.11406, i64 6
  store i16 %i.add, ptr %i.acw, align 2, !tbaa !60
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %vector.ph, label %scalar.ph966, !llvm.loop !852

vector.ph:                                        ; preds = %scalar.ph1005, %scalar.ph966, %scalar.ph926, %scalar.ph882, %scalar.ph843, %scalar.ph803, %scalar.ph759, %scalar.ph720, %scalar.ph680, %scalar.ph636, %scalar.ph597, %scalar.ph563, %.preheader, %.preheader381, %.preheader383, %.preheader385, %.preheader387, %.preheader389, %.preheader391, %.preheader393, %.preheader395, %.preheader397, %.preheader399, %.preheader401, %middle.block575, %middle.block613, %middle.block652, %middle.block697, %middle.block736, %middle.block775, %middle.block820, %middle.block859, %middle.block898, %middle.block943, %middle.block982, %middle.block1021
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i32>, ptr %i.adf, align 4, !tbaa !16
  %i.adg = ashr <2 x i32> %wide.load, splat (i32 1)
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load544 = load <2 x ptr>, ptr %i.adh, align 8, !tbaa !58
  %i.adi = sext <2 x i32> %i.adg to <2 x i64>
  %wide.gep = getelementptr inbounds [2 x i8], <2 x ptr> %wide.load544, <2 x i64> %i.adi
  store <2 x ptr> %wide.gep, ptr %i.adh, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.adj = icmp eq i64 %index.next, %n.vec
  br i1 %i.adj, label %middle.block, label %vector.body, !llvm.loop !853

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit1025, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv508 = phi i64 [ %indvars.iv.next509, %scalar.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv508
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !16
  %i.adm = ashr i32 %i.adl, 1
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv508 ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !58
  %i.adp = sext i32 %i.adm to i64
  %i.adq = getelementptr inbounds [2 x i8], ptr %i.ado, i64 %i.adp
  store ptr %i.adq, ptr %i.adn, align 8, !tbaa !58
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %.loopexit1025, label %scalar.ph, !llvm.loop !854

.loopexit1025:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %._crit_edge, label %bb.b, !llvm.loop !855

._crit_edge:                                      ; preds = %.loopexit1025, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gbr16ptopacked30(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 4) %5, i32 noundef range(i32 -2147483648, 2147483638) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %6, -1
  br i1 %i.a, label %.preheader51, label %bb.d

.preheader51:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %.preheader51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.e = icmp sgt i32 %7, 0                       ; 2 uses
  switch i32 %5, label %.lr.ph57.split [
    i32 3, label %.lr.ph57.split.us
    i32 1, label %.lr.ph57.split.us
  ]

.lr.ph57.split.us:                                ; preds = %.lr.ph57, %.lr.ph57
  br i1 %i.e, label %.lr.ph.us.us.preheader, label %.loopexit50.us.preheader

.loopexit50.us.preheader:                         ; preds = %.lr.ph57.split.us
  %.pre = load i32, ptr %1, align 4, !tbaa !16
  %.pre95 = load ptr, ptr %0, align 8, !tbaa !58  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre96 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !16
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre99 = load i32, ptr %.phi.trans.insert98, align 4, !tbaa !16
  %.pre100 = load ptr, ptr %i.d, align 8, !tbaa !58 ; 2 uses
  %i.f = ashr i32 %.pre, 1
  %i.g = sext i32 %i.f to i64                     ; 9 uses
  %i.h = ashr i32 %.pre96, 1
  %i.i = sext i32 %i.h to i64                     ; 9 uses
  %i.j = ashr i32 %.pre99, 1
  %i.k = sext i32 %i.j to i64                     ; 9 uses
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.l = icmp ult i32 %4, 8
  br i1 %i.l, label %.loopexit50.us.epil.preheader, label %.loopexit50.us.preheader.new

.loopexit50.us.preheader.new:                     ; preds = %.loopexit50.us.preheader
  %unroll_iter = and i32 %4, 2147483640
  br label %.loopexit50.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph57.split.us
  %i.m = sext i32 %3 to i64
  %wide.trip.count74 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %7 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %..loopexit50_crit_edge.us.us.preheader
  %indvars.iv70 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next71, %..loopexit50_crit_edge.us.us.preheader ] ; 2 uses
  %i.p = mul nsw i64 %indvars.iv70, %i.m
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !60
  %i.u = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = lshr i32 %i.v, %6
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i16, ptr %i.y, align 2, !tbaa !60
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = lshr i32 %i.ab, %6
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !60
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %i.ai = lshr i32 %i.ah, %6
  %i.aj = shl i32 %i.w, 20
  %i.ak = add i32 %i.aj, -1073741824
  %i.al = shl nuw nsw i32 %i.ac, 10
  %i.am = add i32 %i.ak, %i.al
  %i.an = add i32 %i.am, %i.ai
  %i.ao = shl nuw nsw i64 %indvars.iv, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ao
  store i32 %i.an, ptr %i.ap, align 1, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond65.not, label %..loopexit50_crit_edge.us.us.preheader, label %bb.b, !llvm.loop !920

..loopexit50_crit_edge.us.us.preheader:           ; preds = %bb.b
  %i.aq = load i32, ptr %1, align 4, !tbaa !16
  %i.ar = ashr i32 %i.aq, 1
  %i.as = load ptr, ptr %0, align 8, !tbaa !58
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.at
  store ptr %i.au, ptr %0, align 8, !tbaa !58
  %i.av = load i32, ptr %i.n, align 4, !tbaa !16
  %i.aw = ashr i32 %i.av, 1
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ay
  store ptr %i.az, ptr %i.c, align 8, !tbaa !58
  %i.ba = load i32, ptr %i.o, align 4, !tbaa !16
  %i.bb = ashr i32 %i.ba, 1
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bd
  store ptr %i.be, ptr %i.d, align 8, !tbaa !58
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph.us.us, !llvm.loop !921

.loopexit50.us:                                   ; preds = %.loopexit50.us, %.loopexit50.us.preheader.new
  %i.bf = phi ptr [ %.pre100, %.loopexit50.us.preheader.new ], [ %31, %.loopexit50.us ]
  %i.bg = phi ptr [ %.pre97, %.loopexit50.us.preheader.new ], [ %30, %.loopexit50.us ]
  %i.bh = phi ptr [ %.pre95, %.loopexit50.us.preheader.new ], [ %29, %.loopexit50.us ]
  %niter = phi i32 [ 0, %.loopexit50.us.preheader.new ], [ %niter.next.7, %.loopexit50.us ]
  %8 = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.g
  %9 = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.i
  %10 = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.k
  %11 = getelementptr inbounds [2 x i8], ptr %8, i64 %i.g
  %12 = getelementptr inbounds [2 x i8], ptr %9, i64 %i.i
  %13 = getelementptr inbounds [2 x i8], ptr %10, i64 %i.k
  %14 = getelementptr inbounds [2 x i8], ptr %11, i64 %i.g
  %15 = getelementptr inbounds [2 x i8], ptr %12, i64 %i.i
  %16 = getelementptr inbounds [2 x i8], ptr %13, i64 %i.k
  %17 = getelementptr inbounds [2 x i8], ptr %14, i64 %i.g
  %18 = getelementptr inbounds [2 x i8], ptr %15, i64 %i.i
  %19 = getelementptr inbounds [2 x i8], ptr %16, i64 %i.k
  %20 = getelementptr inbounds [2 x i8], ptr %17, i64 %i.g
  %21 = getelementptr inbounds [2 x i8], ptr %18, i64 %i.i
  %22 = getelementptr inbounds [2 x i8], ptr %19, i64 %i.k
  %23 = getelementptr inbounds [2 x i8], ptr %20, i64 %i.g
  %24 = getelementptr inbounds [2 x i8], ptr %21, i64 %i.i
  %25 = getelementptr inbounds [2 x i8], ptr %22, i64 %i.k
  %26 = getelementptr inbounds [2 x i8], ptr %23, i64 %i.g
  %27 = getelementptr inbounds [2 x i8], ptr %24, i64 %i.i
  %28 = getelementptr inbounds [2 x i8], ptr %25, i64 %i.k
  %29 = getelementptr inbounds [2 x i8], ptr %26, i64 %i.g ; 3 uses
  %30 = getelementptr inbounds [2 x i8], ptr %27, i64 %i.i ; 3 uses
  %31 = getelementptr inbounds [2 x i8], ptr %28, i64 %i.k ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.sink.split.loopexit129.unr-lcssa, label %.loopexit50.us, !llvm.loop !921

.lr.ph57.split:                                   ; preds = %.lr.ph57
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph57.split
  %.pre101 = load i32, ptr %1, align 4, !tbaa !16
  %.pre102 = load ptr, ptr %0, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre104 = load i32, ptr %.phi.trans.insert103, align 4, !tbaa !16
  %.pre105 = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre107 = load i32, ptr %.phi.trans.insert106, align 4, !tbaa !16
  %.pre108 = load ptr, ptr %i.d, align 8, !tbaa !58 ; 2 uses
  %i.bi = ashr i32 %.pre101, 1
  %i.bj = sext i32 %i.bi to i64                   ; 9 uses
  %i.bk = ashr i32 %.pre104, 1
  %i.bl = sext i32 %i.bk to i64                   ; 9 uses
  %i.bm = ashr i32 %.pre107, 1
  %i.bn = sext i32 %i.bm to i64                   ; 9 uses
  %xtraiter141 = and i32 %4, 7                    ; 3 uses
  %i.bo = icmp ult i32 %4, 8
  br i1 %i.bo, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter154 = and i32 %4, 2147483640
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph57.split
  %i.bp = sext i32 %3 to i64
  %wide.trip.count93 = zext nneg i32 %4 to i64
  %wide.trip.count84 = zext nneg i32 %7 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us.preheader
  %indvars.iv90 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next91, %..loopexit_crit_edge.us.preheader ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv90, %i.bp
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.c ], [ 0, %.preheader.us ] ; 5 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv81
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !60
  %i.bx = zext i16 %i.bw to i32
  %i.by = lshr i32 %i.bx, %6
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv81
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !60
  %i.cc = zext i16 %i.cb to i32
  %i.cd = lshr i32 %i.cc, %6
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv81
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !60
  %i.ch = zext i16 %i.cg to i32
  %i.ci = lshr i32 %i.ch, %6
  %i.cj = shl i32 %i.by, 20
  %i.ck = add i32 %i.cj, -1073741824
  %i.cl = shl nuw nsw i32 %i.cd, 10
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = add i32 %i.cm, %i.ci
  %i.co = shl nuw nsw i64 %indvars.iv81, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.co
  store i32 %i.cn, ptr %i.cp, align 1, !tbaa !64
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %..loopexit_crit_edge.us.preheader, label %bb.c, !llvm.loop !922

..loopexit_crit_edge.us.preheader:                ; preds = %bb.c
  %i.cq = load i32, ptr %1, align 4, !tbaa !16
  %i.cr = ashr i32 %i.cq, 1
  %i.cs = load ptr, ptr %0, align 8, !tbaa !58
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cs, i64 %i.ct
  store ptr %i.cu, ptr %0, align 8, !tbaa !58
  %i.cv = load i32, ptr %i.bq, align 4, !tbaa !16
  %i.cw = ashr i32 %i.cv, 1
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [2 x i8], ptr %i.cx, i64 %i.cy
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !58
  %i.da = load i32, ptr %i.br, align 4, !tbaa !16
  %i.db = ashr i32 %i.da, 1
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.dd = sext i32 %i.db to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %i.dc, i64 %i.dd
  store ptr %i.de, ptr %i.d, align 8, !tbaa !58
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge, label %.preheader.us, !llvm.loop !921

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 1088) #14
  tail call void @abort() #15
  unreachable

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %i.df = phi ptr [ %.pre108, %.preheader.preheader.new ], [ %55, %.preheader ]
  %i.dg = phi ptr [ %.pre105, %.preheader.preheader.new ], [ %54, %.preheader ]
  %i.dh = phi ptr [ %.pre102, %.preheader.preheader.new ], [ %53, %.preheader ]
  %niter155 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter155.next.7, %.preheader ]
  %32 = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.bj
  %33 = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.bl
  %34 = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.bn
  %35 = getelementptr inbounds [2 x i8], ptr %32, i64 %i.bj
  %36 = getelementptr inbounds [2 x i8], ptr %33, i64 %i.bl
  %37 = getelementptr inbounds [2 x i8], ptr %34, i64 %i.bn
  %38 = getelementptr inbounds [2 x i8], ptr %35, i64 %i.bj
  %39 = getelementptr inbounds [2 x i8], ptr %36, i64 %i.bl
  %40 = getelementptr inbounds [2 x i8], ptr %37, i64 %i.bn
  %41 = getelementptr inbounds [2 x i8], ptr %38, i64 %i.bj
  %42 = getelementptr inbounds [2 x i8], ptr %39, i64 %i.bl
  %43 = getelementptr inbounds [2 x i8], ptr %40, i64 %i.bn
  %44 = getelementptr inbounds [2 x i8], ptr %41, i64 %i.bj
  %45 = getelementptr inbounds [2 x i8], ptr %42, i64 %i.bl
  %46 = getelementptr inbounds [2 x i8], ptr %43, i64 %i.bn
  %47 = getelementptr inbounds [2 x i8], ptr %44, i64 %i.bj
  %48 = getelementptr inbounds [2 x i8], ptr %45, i64 %i.bl
  %49 = getelementptr inbounds [2 x i8], ptr %46, i64 %i.bn
  %50 = getelementptr inbounds [2 x i8], ptr %47, i64 %i.bj
  %51 = getelementptr inbounds [2 x i8], ptr %48, i64 %i.bl
  %52 = getelementptr inbounds [2 x i8], ptr %49, i64 %i.bn
  %53 = getelementptr inbounds [2 x i8], ptr %50, i64 %i.bj ; 3 uses
  %54 = getelementptr inbounds [2 x i8], ptr %51, i64 %i.bl ; 3 uses
  %55 = getelementptr inbounds [2 x i8], ptr %52, i64 %i.bn ; 3 uses
  %niter155.next.7 = add nuw nsw i32 %niter155, 8 ; 2 uses
  %niter155.ncmp.7 = icmp eq i32 %niter155.next.7, %unroll_iter154
  br i1 %niter155.ncmp.7, label %._crit_edge.sink.split.loopexit.unr-lcssa, label %.preheader, !llvm.loop !921

._crit_edge.sink.split.loopexit.unr-lcssa:        ; preds = %.preheader
  %lcmp.mod149.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod149.not, label %._crit_edge.sink.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.sink.split.loopexit.unr-lcssa, %.preheader.preheader
  %.epil.init144 = phi ptr [ %.pre108, %.preheader.preheader ], [ %55, %._crit_edge.sink.split.loopexit.unr-lcssa ]
  %.epil.init146 = phi ptr [ %.pre105, %.preheader.preheader ], [ %54, %._crit_edge.sink.split.loopexit.unr-lcssa ]
  %.epil.init148 = phi ptr [ %.pre102, %.preheader.preheader ], [ %53, %._crit_edge.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod153 = icmp ne i32 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %i.di = phi ptr [ %i.dn, %.preheader.epil ], [ %.epil.init144, %.preheader.epil.preheader ]
  %i.dj = phi ptr [ %i.dm, %.preheader.epil ], [ %.epil.init146, %.preheader.epil.preheader ]
  %i.dk = phi ptr [ %i.dl, %.preheader.epil ], [ %.epil.init148, %.preheader.epil.preheader ]
  %epil.iter142 = phi i32 [ %epil.iter142.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %i.bj ; 2 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dj, i64 %i.bl ; 2 uses
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.bn ; 2 uses
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %._crit_edge.sink.split, label %.preheader.epil, !llvm.loop !923

._crit_edge.sink.split.loopexit129.unr-lcssa:     ; preds = %.loopexit50.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.sink.split, label %.loopexit50.us.epil.preheader

.loopexit50.us.epil.preheader:                    ; preds = %._crit_edge.sink.split.loopexit129.unr-lcssa, %.loopexit50.us.preheader
  %.epil.init = phi ptr [ %.pre100, %.loopexit50.us.preheader ], [ %31, %._crit_edge.sink.split.loopexit129.unr-lcssa ]
  %.epil.init134 = phi ptr [ %.pre97, %.loopexit50.us.preheader ], [ %30, %._crit_edge.sink.split.loopexit129.unr-lcssa ]
  %.epil.init136 = phi ptr [ %.pre95, %.loopexit50.us.preheader ], [ %29, %._crit_edge.sink.split.loopexit129.unr-lcssa ]
  %lcmp.mod140 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.loopexit50.us.epil

.loopexit50.us.epil:                              ; preds = %.loopexit50.us.epil, %.loopexit50.us.epil.preheader
  %i.do = phi ptr [ %i.dt, %.loopexit50.us.epil ], [ %.epil.init, %.loopexit50.us.epil.preheader ]
  %i.dp = phi ptr [ %i.ds, %.loopexit50.us.epil ], [ %.epil.init134, %.loopexit50.us.epil.preheader ]
  %i.dq = phi ptr [ %i.dr, %.loopexit50.us.epil ], [ %.epil.init136, %.loopexit50.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.loopexit50.us.epil ], [ 0, %.loopexit50.us.epil.preheader ]
  %i.dr = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.g ; 2 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.i ; 2 uses
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.k ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.sink.split, label %.loopexit50.us.epil, !llvm.loop !924

._crit_edge.sink.split:                           ; preds = %._crit_edge.sink.split.loopexit129.unr-lcssa, %.loopexit50.us.epil, %._crit_edge.sink.split.loopexit.unr-lcssa, %.preheader.epil
  %.lcssa.sink = phi ptr [ %i.dl, %.preheader.epil ], [ %53, %._crit_edge.sink.split.loopexit.unr-lcssa ], [ %29, %._crit_edge.sink.split.loopexit129.unr-lcssa ], [ %i.dr, %.loopexit50.us.epil ]
  %.lcssa114.sink = phi ptr [ %i.dm, %.preheader.epil ], [ %54, %._crit_edge.sink.split.loopexit.unr-lcssa ], [ %30, %._crit_edge.sink.split.loopexit129.unr-lcssa ], [ %i.ds, %.loopexit50.us.epil ]
  %.lcssa115.sink = phi ptr [ %i.dn, %.preheader.epil ], [ %55, %._crit_edge.sink.split.loopexit.unr-lcssa ], [ %31, %._crit_edge.sink.split.loopexit129.unr-lcssa ], [ %i.dt, %.loopexit50.us.epil ]
  store ptr %.lcssa.sink, ptr %0, align 8, !tbaa !58
  store ptr %.lcssa114.sink, ptr %i.c, align 8, !tbaa !58
  store ptr %.lcssa115.sink, ptr %i.d, align 8, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %..loopexit50_crit_edge.us.us.preheader, %..loopexit_crit_edge.us.preheader, %._crit_edge.sink.split, %.preheader51
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @bayer_bggr8_to_rgb24_copy(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.044 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.b ]
  %.04043 = phi ptr [ %0, %.lr.ph ], [ %i.ab, %bb.b ] ; 4 uses
  %.04142 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.b ] ; 8 uses
  %i.d = getelementptr i8, ptr %.04043, i64 %i.b  ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64    ; 4 uses
  %i.g = getelementptr i8, ptr %.04142, i64 %i.c  ; 6 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !64
  %i.h = getelementptr i8, ptr %i.g, i64 3
  store i8 %i.f, ptr %i.h, align 1, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %.04142, i64 3
  store i8 %i.f, ptr %i.i, align 1, !tbaa !64
  store i8 %i.f, ptr %.04142, align 1, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %.04043, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !64    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04142, i64 4
  store i8 %i.k, ptr %i.l, align 1, !tbaa !64
  %i.m = zext i8 %i.k to i16
  %i.n = load i8, ptr %i.d, align 1, !tbaa !64
  %i.o = zext i8 %i.n to i16
  %i.p = add nuw nsw i16 %i.o, %i.m
  %i.q = lshr i16 %i.p, 1
  %i.r = trunc nuw i16 %i.q to i8                 ; 2 uses
  %i.s = getelementptr i8, ptr %i.g, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %.04142, i64 1
  store i8 %i.r, ptr %i.t, align 1, !tbaa !64
  %i.u = load i8, ptr %i.d, align 1, !tbaa !64
  %i.v = getelementptr i8, ptr %i.g, i64 1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !64
  %i.w = load i8, ptr %.04043, align 1, !tbaa !64 ; 4 uses
  %i.x = getelementptr i8, ptr %i.g, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %.04142, i64 5
  store i8 %i.w, ptr %i.y, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %.04142, i64 2
  store i8 %i.w, ptr %i.z, align 1, !tbaa !64
  %i.aa = getelementptr i8, ptr %i.g, i64 5
  store i8 %i.w, ptr %i.aa, align 1, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %.04043, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.04142, i64 6
  %i.ad = add nuw nsw i32 %.044, 2                ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %4
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !925

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @bayer_bggr8_to_rgb24_interpolate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 6)) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64    ; 4 uses
  %i.e = sext i32 %3 to i64                       ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store i8 %i.d, ptr %i.f, align 1, !tbaa !64
  %i.g = add nsw i32 %3, 3
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h
  store i8 %i.d, ptr %i.i, align 1, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.d, ptr %i.j, align 1, !tbaa !64
  store i8 %i.d, ptr %2, align 1, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.l, ptr %i.m, align 1, !tbaa !64
  %i.n = zext i8 %i.l to i16
  %i.o = sext i32 %1 to i64                       ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64
  %i.r = zext i8 %i.q to i16
  %i.s = add nuw nsw i16 %i.r, %i.n
  %i.t = lshr i16 %i.s, 1
  %i.u = trunc nuw i16 %i.t to i8                 ; 2 uses
  %i.v = add nsw i32 %3, 4
  %i.w = sext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.u, ptr %i.y, align 1, !tbaa !64
  %i.z = load i8, ptr %i.p, align 1, !tbaa !64
  %i.aa = add nsw i32 %3, 1
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !64
  %i.ad = load i8, ptr %0, align 1, !tbaa !64     ; 4 uses
  %i.ae = add nsw i32 %3, 2
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.ad, ptr %i.ai, align 1, !tbaa !64
  %i.aj = add nsw i32 %3, 5
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  store i8 %i.ad, ptr %i.al, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.an = add nsw i32 %4, -2
  %.0160161 = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.ao = icmp sgt i32 %4, 4
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ap = sub nsw i32 0, %1
  %i.aq = xor i32 %1, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub i32 1, %1
  %i.at = sext i32 %i.as to i64
  %i.au = sext i32 %i.ap to i64
  %i.av = shl nsw i32 %1, 1
  %i.aw = sext i32 %i.av to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0160165 = phi ptr [ %.0160161, %.lr.ph ], [ %.0160, %bb.b ] ; 10 uses
  %.0164 = phi i32 [ 2, %.lr.ph ], [ %i.fb, %bb.b ]
  %.0159163 = phi ptr [ %i.am, %.lr.ph ], [ %i.cu, %bb.b ] ; 13 uses
  %.pn162 = phi ptr [ %2, %.lr.ph ], [ %.0160165, %bb.b ] ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %.0159163, i64 %i.ar
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !64
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds i8, ptr %.0159163, i64 %i.at ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = zext i8 %i.bb to i16
  %i.bd = add nuw nsw i16 %i.bc, %i.az
  %i.be = getelementptr i8, ptr %.0159163, i64 %i.o ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -1     ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  %i.bh = zext i8 %i.bg to i16
  %i.bi = add nuw nsw i16 %i.bd, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.0159163, i64 %i.b ; 4 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !64
  %i.bl = zext i8 %i.bk to i16
  %i.bm = add nuw nsw i16 %i.bi, %i.bl
  %i.bn = lshr i16 %i.bm, 2
  %i.bo = trunc nuw i16 %i.bn to i8
  store i8 %i.bo, ptr %.0160165, align 1, !tbaa !64
  %i.bp = getelementptr inbounds i8, ptr %.0159163, i64 %i.au
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64
  %i.br = zext i8 %i.bq to i16
  %i.bs = getelementptr inbounds i8, ptr %.0159163, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = zext i8 %i.bt to i16
  %i.bv = add nuw nsw i16 %i.bu, %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %.0159163, i64 1 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.by = zext i8 %i.bx to i16
  %i.bz = add nuw nsw i16 %i.bv, %i.by
  %i.ca = load i8, ptr %i.be, align 1, !tbaa !64
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add nuw nsw i16 %i.bz, %i.cb
  %i.cd = lshr i16 %i.cc, 2
  %i.ce = trunc nuw i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.pn162, i64 7
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !64
  %i.cg = load i8, ptr %.0159163, align 1, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn162, i64 8
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %i.ci = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.cj = zext i8 %i.ci to i16
  %i.ck = load i8, ptr %i.bj, align 1, !tbaa !64
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cl, %i.cj
  %i.cn = lshr i16 %i.cm, 1
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.pn162, i64 9
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !64
  %i.cq = load i8, ptr %i.bw, align 1, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %.pn162, i64 10
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !64
  %i.cs = load i8, ptr %.0159163, align 1, !tbaa !64
  %i.ct = zext i8 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %.0159163, i64 2 ; 4 uses
end_hunk_1
