Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %i.bb = icmp eq i32 %5, %12
  br i1 %i.bb, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !13
  %i.bh = mul nsw i32 %i.bg, %i.g
  %i.bi = add nsw i32 %i.bh, %i.f
  %i.bj = sdiv i32 %i.bi, %i.d
  store i32 %i.bj, ptr %16, align 4, !tbaa !13
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.bl = mul nsw i32 %i.bk, %i.g
  %i.bm = add nsw i32 %i.bl, %i.f
  %i.bn = sdiv i32 %i.bm, %i.d
  store i32 %i.bn, ptr %i.bd, align 4, !tbaa !13
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !13
  %i.bp = mul nsw i32 %i.bo, %i.g
  %i.bq = add nsw i32 %i.bp, %i.f
  %i.br = sdiv i32 %i.bq, %i.d
  store i32 %i.br, ptr %i.bf, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = mul nsw i32 %i.bt, %i.g
  %i.bv = add nsw i32 %i.bu, %i.f
  %i.bw = sdiv i32 %i.bv, %i.d
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = mul nsw i32 %i.bz, %i.g
  %i.cb = add nsw i32 %i.ca, %i.f
  %i.cc = sdiv i32 %i.cb, %i.d
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = mul nsw i32 %i.cf, %i.g
  %i.ch = add nsw i32 %i.cg, %i.f
  %i.ci = sdiv i32 %i.ch, %i.d
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 36
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.cm = mul nsw i32 %i.cl, %i.g
  %i.cn = add nsw i32 %i.cm, %i.f
  %i.co = sdiv i32 %i.cn, %i.d
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13
  %i.cs = mul nsw i32 %i.cr, %i.g
  %i.ct = add nsw i32 %i.cs, %i.f
  %i.cu = sdiv i32 %i.ct, %i.d
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !13
  %i.cy = mul nsw i32 %i.cx, %i.g
  %i.cz = add nsw i32 %i.cy, %i.f
  %i.da = sdiv i32 %i.cz, %i.d
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.da, ptr %i.db, align 4, !tbaa !13
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %16, ptr noundef nonnull align 4 dereferenceable(48) %i.a, i64 44, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13 ; 2 uses
  %i.de = shl i32 %i.dd, %i.j
  %i.df = sub nsw i32 0, %i.j                     ; 3 uses
  %i.dg = ashr i32 %i.dd, %i.df
  %i.dh = icmp slt i32 %i.j, 0                    ; 3 uses
  %i.di = select i1 %i.dh, i32 %i.dg, i32 %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %i.dm = shl i32 %i.dl, %i.j
  %i.dn = ashr i32 %i.dl, %i.df
  %i.do = select i1 %i.dh, i32 %i.dn, i32 %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13 ; 2 uses
  %i.ds = shl i32 %i.dr, %i.j
  %i.dt = ashr i32 %i.dr, %i.df
  %i.du = select i1 %i.dh, i32 %i.dt, i32 %i.ds
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !13
  %i.dw = call fastcc i32 @DoSharpArgbToYuv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef nonnull %8, i32 noundef %9, ptr noundef nonnull %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %16, i32 noundef %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.i, %bb.e, %bb.c, %bb.b, %bb.a, %.loopexit
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.dw, %.loopexit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @SharpYuvOptionsInitInternal(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond.not22 = and i1 %i.b, %i.a
  %i.c = and i32 %2, -65536
  %or.cond7.not = icmp eq i32 %i.c, 262144
  %or.cond20 = and i1 %or.cond.not22, %or.cond7.not
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DoSharpArgbToYuv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8, i32 noundef %9, ptr nofree noundef writeonly captures(none) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr nofree noundef nonnull readonly captures(none) %15, i32 noundef %16) unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %13, 1                       ; 2 uses
  %i.b = and i32 %i.a, -2                         ; 15 uses
  %i.c = add nsw i32 %14, 1                       ; 2 uses
  %i.d = and i32 %i.c, -2                         ; 4 uses
  %i.e = ashr i32 %i.a, 1                         ; 12 uses
  %i.f = ashr i32 %i.c, 1                         ; 2 uses
  %i.g = icmp slt i32 %5, 13
  %i.h = sub nsw i32 14, %5
  %i.i = select i1 %i.g, i32 2, i32 %i.h          ; 3 uses
  %i.j = add nsw i32 %i.i, %5                     ; 26 uses
  %i.k = sext i32 %i.b to i64                     ; 20 uses
  %i.l = mul nsw i64 %i.k, 6                      ; 2 uses
  %i.m = sext i32 %i.d to i64
  %i.n = mul nsw i64 %i.m, %i.k                   ; 3 uses
  %i.o = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.p = sext i32 %i.e to i64                     ; 9 uses
  %i.q = mul nsw i64 %i.p, 3                      ; 2 uses
  %i.r = sext i32 %i.f to i64
  %i.s = mul nsw i64 %i.q, %i.r                   ; 3 uses
  %reass.add279 = add nsw i64 %i.n, %i.s
  %i.t = add nsw i64 %i.l, %i.q
  %i.u = add nsw i64 %i.t, %i.o
  %i.v = shl i64 %reass.add279, 2
  %i.w = shl nsw i64 %i.u, 1
  %i.x = add i64 %i.v, %i.w
  %i.y = tail call noalias noundef ptr @malloc(i64 noundef %i.x) #12 ; 22 uses
  %i.z = sitofp i32 %i.b to double
  %i.aa = fmul nnan double %i.z, 3.000000e+00
  %i.ab = sitofp i32 %i.d to double
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fptoui double %i.ac to i64
  %i.ae = icmp eq ptr %i.y, null
  br i1 %i.ae, label %ConvertWRGBToYUV.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.l ; 5 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.n ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.n ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.o ; 9 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.s ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.s ; 2 uses
  %i.al = icmp sgt i32 %14, 0
  br i1 %i.al, label %.lr.ph, label %..preheader282_crit_edge

..preheader282_crit_edge:                         ; preds = %bb.b
  %.pre = mul nsw i32 %i.b, 3
  %.pre300 = sext i32 %.pre to i64
  %.pre302 = mul nsw i32 %i.e, 3                  ; 2 uses
  %.pre304 = shl nsw i32 %i.b, 1                  ; 2 uses
  %.pre306 = sext i32 %.pre304 to i64
  %.pre308 = tail call i32 @llvm.smax.i32(i32 range(i32 0, -1) %i.b, i32 1)
  %.pre309 = zext nneg i32 %.pre308 to i64
  %.pre310 = sext i32 %.pre302 to i64
  br label %.preheader282

.lr.ph:                                           ; preds = %bb.b
  %i.am = add nsw i32 %14, -1
  %i.an = mul i32 %i.b, 3
  %i.ao = sext i32 %i.an to i64                   ; 5 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ao ; 10 uses
  %i.aq = sext i32 %4 to i64                      ; 3 uses
  %i.ar = shl nsw i64 %i.ao, 1
  %i.as = shl i32 %i.b, 1                         ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 9 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 13 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %invariant.gep13.i = getelementptr [2 x i8], ptr %i.y, i64 %i.at ; 5 uses
  %invariant.gep.i225 = getelementptr [2 x i8], ptr %i.ap, i64 %i.k ; 5 uses
  %invariant.gep13.i226 = getelementptr [2 x i8], ptr %i.ap, i64 %i.at ; 5 uses
  %i.au = mul nsw i32 %i.e, 3                     ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 4 uses
  %i.aw = shl nsw i64 %i.av, 1
  %i.ax = shl nsw i32 %4, 1
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = mul nsw i64 %i.k, 14                    ; 2 uses
  %i.ba = shl nsw i64 %i.ao, 1                    ; 2 uses
  %i.bb = sub nsw i64 %i.az, %i.ba
  %i.bc = shl nsw i64 %i.at, 1
  %i.bd = mul nsw i64 %i.k, 12                    ; 3 uses
  %i.be = sub nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.ao, %i.at
  %i.bg = shl nsw i64 %i.bf, 1
  %i.bh = sub nsw i64 %i.az, %i.bg
  %i.bi = shl nsw i64 %i.at, 1
  %i.bj = mul nsw i64 %i.k, 10
  %i.bk = shl nsw i64 %i.at, 1
  %i.bl = sub nsw i64 %i.bd, %i.bk
  %min.iters.check335 = icmp slt i32 %i.b, 8
  %invariant.op = add i64 %i.bd, -1
  %invariant.op380 = add i64 %i.bj, -1
  %invariant.op382 = add i64 %i.bl, -1
  %n.vec337 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n345 = icmp eq i64 %n.vec337, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %17 = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp slt i32 %i.b, 8
  %invariant.op384 = add i64 %i.bb, -1
  %invariant.op386 = add i64 %i.be, -1
  %invariant.op388 = add i64 %i.bh, -1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter378 = and i64 %wide.trip.count.i, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  %18 = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

.preheader282:                                    ; preds = %UpdateW.exit249, %..preheader282_crit_edge
  %.pre-phi311 = phi i64 [ %.pre310, %..preheader282_crit_edge ], [ %i.av, %UpdateW.exit249 ] ; 4 uses
  %wide.trip.count.i251.pre-phi = phi i64 [ %.pre309, %..preheader282_crit_edge ], [ %wide.trip.count.i, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi307 = phi i64 [ %.pre306, %..preheader282_crit_edge ], [ %i.at, %UpdateW.exit249 ] ; 4 uses
  %.pre-phi305 = phi i32 [ %.pre304, %..preheader282_crit_edge ], [ %i.as, %UpdateW.exit249 ]
  %.pre-phi303 = phi i32 [ %.pre302, %..preheader282_crit_edge ], [ %i.au, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi301 = phi i64 [ %.pre300, %..preheader282_crit_edge ], [ %i.ao, %UpdateW.exit249 ]
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.y, i64 %.pre-phi301 ; 7 uses
  %i.bn = add nsw i32 %i.d, -2
  %i.bo = add nsw i32 %i.b, -1                    ; 3 uses
  %i.bp = ashr i32 %i.bo, 1                       ; 6 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.j           ; 13 uses
  %i.bq = xor i32 %notmask.i.i.i, -1              ; 12 uses
  %i.br = add nsw i32 %i.bo, %i.b
  %i.bs = sext i32 %i.br to i64
  %i.bt = sext i32 %i.bo to i64                   ; 7 uses
  %i.bu = add nsw i32 %i.e, -1
  %i.bv = sext i32 %i.bu to i64                   ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.by = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bt
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bt
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %i.cb = getelementptr [2 x i8], ptr %i.bm, i64 %i.k ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.bt
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.bt
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.k ; 3 uses
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.k ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.bt
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.bt
  %invariant.gep25.i253 = getelementptr [2 x i8], ptr %i.y, i64 %.pre-phi307
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.k
  %invariant.gep25.i263 = getelementptr [2 x i8], ptr %i.bm, i64 %.pre-phi307
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %UpdateW.exit249
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %UpdateW.exit249 ] ; 3 uses
  %.0200290 = phi ptr [ %0, %.lr.ph ], [ %i.jn, %UpdateW.exit249 ] ; 3 uses
  %.0201289 = phi ptr [ %1, %.lr.ph ], [ %i.jo, %UpdateW.exit249 ] ; 3 uses
  %.0202288 = phi ptr [ %2, %.lr.ph ], [ %i.jp, %UpdateW.exit249 ] ; 3 uses
  %.0207287 = phi ptr [ %i.aj, %.lr.ph ], [ %i.jm, %UpdateW.exit249 ] ; 3 uses
  %.0208286 = phi ptr [ %i.ai, %.lr.ph ], [ %i.jk, %UpdateW.exit249 ] ; 2 uses
  %.0210285 = phi ptr [ %i.ag, %.lr.ph ], [ %i.jl, %UpdateW.exit249 ] ; 3 uses
  %.0212284 = phi ptr [ %i.af, %.lr.ph ], [ %i.jj, %UpdateW.exit249 ] ; 6 uses
  %.0215283 = phi i32 [ 0, %.lr.ph ], [ %i.jq, %UpdateW.exit249 ] ; 2 uses
  %i.cn = mul i64 %i.bi, %indvar                  ; 3 uses
  %i.co = mul i64 %i.bc, %indvar                  ; 3 uses
  %i.cp = icmp eq i32 %.0215283, %i.am
  tail call fastcc void @ImportOneRow(ptr noundef %.0200290, ptr noundef %.0201289, ptr noundef %.0202288, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.y)
  br i1 %i.cp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = getelementptr inbounds i8, ptr %.0200290, i64 %i.aq
  %i.cr = getelementptr inbounds i8, ptr %.0201289, i64 %i.aq
  %i.cs = getelementptr inbounds i8, ptr %.0202288, i64 %i.aq
  tail call fastcc void @ImportOneRow(ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.ap)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull align 2 %i.y, i64 %i.ar, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %min.iters.check335, label %scalar.ph334.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %bb.f
  %.reass = add i64 %i.cn, %invariant.op
  %diff.check329 = icmp ult i64 %.reass, 15
  %.reass381 = add i64 %i.cn, %invariant.op380
  %diff.check330 = icmp ult i64 %.reass381, 15
  %conflict.rdx331 = or i1 %diff.check329, %diff.check330
  %.reass383 = add i64 %i.cn, %invariant.op382
  %diff.check332 = icmp ult i64 %.reass383, 15
  %conflict.rdx333 = or i1 %conflict.rdx331, %diff.check332
  br i1 %conflict.rdx333, label %scalar.ph334.preheader, label %vector.body338

vector.body338:                                   ; preds = %vector.memcheck328, %vector.body338
  %index339 = phi i64 [ %index.next343, %vector.body338 ], [ 0, %vector.memcheck328 ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index339
  %wide.load340 = load <8 x i16>, ptr %i.ct, align 2, !tbaa !15
  %i.cu = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.cv = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index339
  %wide.load341 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !15
  %i.cw = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.cx = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %index339
  %wide.load342 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !15
  %i.cy = zext <8 x i16> %wide.load342 to <8 x i32>
  %i.cz = mul nuw nsw <8 x i32> %i.cu, splat (i32 13933)
  %i.da = mul nuw <8 x i32> %i.cw, splat (i32 46871)
  %i.db = mul nuw nsw <8 x i32> %i.cy, splat (i32 4732)
  %i.dc = add nuw nsw <8 x i32> %i.cz, splat (i32 32768)
  %i.dd = add nuw <8 x i32> %i.dc, %i.da
  %i.de = add nuw <8 x i32> %i.dd, %i.db
  %i.df = lshr <8 x i32> %i.de, splat (i32 16)
  %i.dg = trunc nuw <8 x i32> %i.df to <8 x i16>
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %index339
  store <8 x i16> %i.dg, ptr %i.dh, align 2, !tbaa !15
  %index.next343 = add nuw i64 %index339, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.di, label %middle.block344, label %vector.body338, !llvm.loop !20

middle.block344:                                  ; preds = %vector.body338
  br i1 %cmp.n345, label %StoreGray.exit, label %scalar.ph334.preheader

scalar.ph334.preheader:                           ; preds = %vector.memcheck328, %bb.f, %middle.block344
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck328 ], [ 0, %bb.f ], [ %n.vec337, %middle.block344 ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph334.prol.loopexit, label %scalar.ph334.prol

scalar.ph334.prol:                                ; preds = %scalar.ph334.preheader
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i.ph
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !15
  %i.dl = zext i16 %i.dk to i32
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph
  %i.dm = load i16, ptr %gep.i.prol, align 2, !tbaa !15
  %i.dn = zext i16 %i.dm to i32
  %gep14.i.prol = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i.ph
  %i.do = load i16, ptr %gep14.i.prol, align 2, !tbaa !15
  %i.dp = zext i16 %i.do to i32
  %i.dq = mul nuw nsw i32 %i.dl, 13933
  %i.dr = mul nuw i32 %i.dn, 46871
  %i.ds = mul nuw nsw i32 %i.dp, 4732
  %i.dt = add nuw nsw i32 %i.dq, 32768
  %i.du = add nuw i32 %i.dt, %i.dr
  %i.dv = add nuw i32 %i.du, %i.ds
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.i.ph
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !15
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph334.prol.loopexit

scalar.ph334.prol.loopexit:                       ; preds = %scalar.ph334.prol, %scalar.ph334.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph334.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph334.prol ]
  %i.dz = icmp eq i64 %indvars.iv.i.ph, %17
  br i1 %i.dz, label %StoreGray.exit, label %scalar.ph334

scalar.ph334:                                     ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph334 ], [ %indvars.iv.i.unr, %scalar.ph334.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !15
  %i.ec = zext i16 %i.eb to i32
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ed = load i16, ptr %gep.i, align 2, !tbaa !15
  %i.ee = zext i16 %i.ed to i32
  %gep14.i = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i
  %i.ef = load i16, ptr %gep14.i, align 2, !tbaa !15
  %i.eg = zext i16 %i.ef to i32
  %i.eh = mul nuw nsw i32 %i.ec, 13933
  %i.ei = mul nuw i32 %i.ee, 46871
  %i.ej = mul nuw nsw i32 %i.eg, 4732
  %i.ek = add nuw nsw i32 %i.eh, 32768
  %i.el = add nuw i32 %i.ek, %i.ei
  %i.em = add nuw i32 %i.el, %i.ej
  %i.en = lshr i32 %i.em, 16
  %i.eo = trunc nuw i32 %i.en to i16
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.i
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !15
  %i.es = zext i16 %i.er to i32
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.et = load i16, ptr %gep.i.1, align 2, !tbaa !15
  %i.eu = zext i16 %i.et to i32
  %gep14.i.1 = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.next.i
  %i.ev = load i16, ptr %gep14.i.1, align 2, !tbaa !15
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.es, 13933
  %i.ey = mul nuw i32 %i.eu, 46871
  %i.ez = mul nuw nsw i32 %i.ew, 4732
  %i.fa = add nuw nsw i32 %i.ex, 32768
  %i.fb = add nuw i32 %i.fa, %i.ey
  %i.fc = add nuw i32 %i.fb, %i.ez
  %i.fd = lshr i32 %i.fc, 16
  %i.fe = trunc nuw i32 %i.fd to i16
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.next.i
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %StoreGray.exit, label %scalar.ph334, !llvm.loop !21

StoreGray.exit:                                   ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334, %middle.block344
  %i.fg = getelementptr inbounds [2 x i8], ptr %.0212284, i64 %i.k ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %StoreGray.exit
  %.reass385 = add i64 %i.co, %invariant.op384
  %diff.check = icmp ult i64 %.reass385, 15
  %.reass387 = add i64 %i.co, %invariant.op386
  %diff.check323 = icmp ult i64 %.reass387, 15
  %conflict.rdx = or i1 %diff.check, %diff.check323
  %.reass389 = add i64 %i.co, %invariant.op388
  %diff.check324 = icmp ult i64 %.reass389, 15
  %conflict.rdx325 = or i1 %conflict.rdx, %diff.check324
  br i1 %conflict.rdx325, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %wide.load = load <8 x i16>, ptr %i.fh, align 2, !tbaa !15
  %i.fi = zext <8 x i16> %wide.load to <8 x i32>
  %i.fj = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %index
  %wide.load326 = load <8 x i16>, ptr %i.fj, align 2, !tbaa !15
  %i.fk = zext <8 x i16> %wide.load326 to <8 x i32>
  %i.fl = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %index
  %wide.load327 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !15
  %i.fm = zext <8 x i16> %wide.load327 to <8 x i32>
  %i.fn = mul nuw nsw <8 x i32> %i.fi, splat (i32 13933)
  %i.fo = mul nuw <8 x i32> %i.fk, splat (i32 46871)
  %i.fp = mul nuw nsw <8 x i32> %i.fm, splat (i32 4732)
  %i.fq = add nuw nsw <8 x i32> %i.fn, splat (i32 32768)
  %i.fr = add nuw <8 x i32> %i.fq, %i.fo
  %i.fs = add nuw <8 x i32> %i.fr, %i.fp
  %i.ft = lshr <8 x i32> %i.fs, splat (i32 16)
  %i.fu = trunc nuw <8 x i32> %i.ft to <8 x i16>
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %index
  store <8 x i16> %i.fu, ptr %i.fv, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %StoreGray.exit232.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %StoreGray.exit, %middle.block
  %indvars.iv.i227.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %StoreGray.exit ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod379.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i227.ph
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !15
  %i.fz = zext i16 %i.fy to i32
  %gep.i228.prol = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i227.ph
  %i.ga = load i16, ptr %gep.i228.prol, align 2, !tbaa !15
  %i.gb = zext i16 %i.ga to i32
  %gep14.i229.prol = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i227.ph
  %i.gc = load i16, ptr %gep14.i229.prol, align 2, !tbaa !15
  %i.gd = zext i16 %i.gc to i32
  %i.ge = mul nuw nsw i32 %i.fz, 13933
  %i.gf = mul nuw i32 %i.gb, 46871
  %i.gg = mul nuw nsw i32 %i.gd, 4732
  %i.gh = add nuw nsw i32 %i.ge, 32768
  %i.gi = add nuw i32 %i.gh, %i.gf
  %i.gj = add nuw i32 %i.gi, %i.gg
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.i227.ph
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !15
  %indvars.iv.next.i230.prol = or disjoint i64 %indvars.iv.i227.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i227.unr = phi i64 [ %indvars.iv.i227.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i230.prol, %scalar.ph.prol ]
  %i.gn = icmp eq i64 %indvars.iv.i227.ph, %18
  br i1 %i.gn, label %StoreGray.exit232.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i227 = phi i64 [ %indvars.iv.next.i230.1, %scalar.ph ], [ %indvars.iv.i227.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i227
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !15
  %i.gq = zext i16 %i.gp to i32
  %gep.i228 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i227
  %i.gr = load i16, ptr %gep.i228, align 2, !tbaa !15
  %i.gs = zext i16 %i.gr to i32
  %gep14.i229 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i227
  %i.gt = load i16, ptr %gep14.i229, align 2, !tbaa !15
  %i.gu = zext i16 %i.gt to i32
  %i.gv = mul nuw nsw i32 %i.gq, 13933
  %i.gw = mul nuw i32 %i.gs, 46871
  %i.gx = mul nuw nsw i32 %i.gu, 4732
  %i.gy = add nuw nsw i32 %i.gv, 32768
  %i.gz = add nuw i32 %i.gy, %i.gw
  %i.ha = add nuw i32 %i.gz, %i.gx
  %i.hb = lshr i32 %i.ha, 16
  %i.hc = trunc nuw i32 %i.hb to i16
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.i227
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !15
  %indvars.iv.next.i230 = add nuw nsw i64 %indvars.iv.i227, 1 ; 4 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.next.i230
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !15
  %i.hg = zext i16 %i.hf to i32
  %gep.i228.1 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.next.i230
  %i.hh = load i16, ptr %gep.i228.1, align 2, !tbaa !15
  %i.hi = zext i16 %i.hh to i32
  %gep14.i229.1 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.next.i230
  %i.hj = load i16, ptr %gep14.i229.1, align 2, !tbaa !15
  %i.hk = zext i16 %i.hj to i32
  %i.hl = mul nuw nsw i32 %i.hg, 13933
  %i.hm = mul nuw i32 %i.hi, 46871
  %i.hn = mul nuw nsw i32 %i.hk, 4732
  %i.ho = add nuw nsw i32 %i.hl, 32768
  %i.hp = add nuw i32 %i.ho, %i.hm
  %i.hq = add nuw i32 %i.hp, %i.hn
  %i.hr = lshr i32 %i.hq, 16
  %i.hs = trunc nuw i32 %i.hr to i16
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.next.i230
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !15
  %indvars.iv.next.i230.1 = add nuw nsw i64 %indvars.iv.i227, 2 ; 2 uses
  %exitcond.not.i231.1 = icmp eq i64 %indvars.iv.next.i230.1, %wide.trip.count.i
  br i1 %exitcond.not.i231.1, label %StoreGray.exit232.preheader, label %scalar.ph, !llvm.loop !23

StoreGray.exit232.preheader:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %StoreGray.exit232

StoreGray.exit232:                                ; preds = %StoreGray.exit232.preheader, %StoreGray.exit232
  %indvars.iv.i236 = phi i64 [ %indvars.iv.next.i238, %StoreGray.exit232 ], [ 0, %StoreGray.exit232.preheader ] ; 5 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i236
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !15
  %i.hw = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hv, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i237 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i236
  %i.hx = load i16, ptr %gep.i237, align 2, !tbaa !15
  %i.hy = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hx, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i236
  %i.hz = load i16, ptr %gep26.i, align 2, !tbaa !15
  %i.ia = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hz, i32 noundef %i.j, i32 noundef %16) #11
  %i.ib = zext i32 %i.hw to i64
  %i.ic = zext i32 %i.hy to i64
  %i.id = zext i32 %i.ia to i64
  %i.ie = mul nuw nsw i64 %i.ib, 13933
  %i.if = mul nuw nsw i64 %i.ic, 46871
  %i.ig = mul nuw nsw i64 %i.id, 4732
  %i.ih = add nuw nsw i64 %i.ie, 32768
  %i.ii = add nuw nsw i64 %i.ih, %i.if
  %i.ij = add nuw nsw i64 %i.ii, %i.ig
  %i.ik = lshr i64 %i.ij, 16
  %i.il = trunc nuw i64 %i.ik to i32
  %i.im = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.il, i32 noundef %i.j, i32 noundef %16) #11
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.0210285, i64 %indvars.iv.i236
  store i16 %i.im, ptr %i.in, align 2, !tbaa !15
  %indvars.iv.next.i238 = add nuw nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i238, %wide.trip.count.i
  br i1 %exitcond.not.i239, label %UpdateW.exit, label %StoreGray.exit232, !llvm.loop !24

UpdateW.exit:                                     ; preds = %StoreGray.exit232
  %i.io = getelementptr inbounds [2 x i8], ptr %.0210285, i64 %i.k
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %UpdateW.exit
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i247, %bb.g ], [ 0, %UpdateW.exit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i244
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !15
  %i.ir = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.iq, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i245 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i244
  %i.is = load i16, ptr %gep.i245, align 2, !tbaa !15
  %i.it = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.is, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i246 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i244
  %i.iu = load i16, ptr %gep26.i246, align 2, !tbaa !15
  %i.iv = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.iu, i32 noundef %i.j, i32 noundef %16) #11
  %i.iw = zext i32 %i.ir to i64
  %i.ix = zext i32 %i.it to i64
  %i.iy = zext i32 %i.iv to i64
  %i.iz = mul nuw nsw i64 %i.iw, 13933
  %i.ja = mul nuw nsw i64 %i.ix, 46871
  %i.jb = mul nuw nsw i64 %i.iy, 4732
  %i.jc = add nuw nsw i64 %i.iz, 32768
  %i.jd = add nuw nsw i64 %i.jc, %i.ja
  %i.je = add nuw nsw i64 %i.jd, %i.jb
  %i.jf = lshr i64 %i.je, 16
  %i.jg = trunc nuw i64 %i.jf to i32
  %i.jh = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.jg, i32 noundef %i.j, i32 noundef %16) #11
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %indvars.iv.i244
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !15
  %indvars.iv.next.i247 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %exitcond.not.i248 = icmp eq i64 %indvars.iv.next.i247, %wide.trip.count.i
  br i1 %exitcond.not.i248, label %UpdateW.exit249, label %bb.g, !llvm.loop !24

UpdateW.exit249:                                  ; preds = %bb.g
  tail call fastcc void @UpdateChroma(ptr noundef %i.y, ptr noundef %i.ap, ptr noundef %.0207287, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0208286, ptr nonnull align 2 %.0207287, i64 %i.aw, i1 false)
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0212284, i64 %i.at
  %i.jk = getelementptr inbounds [2 x i8], ptr %.0208286, i64 %i.av
  %i.jl = getelementptr inbounds [2 x i8], ptr %.0210285, i64 %i.at
  %i.jm = getelementptr inbounds [2 x i8], ptr %.0207287, i64 %i.av
  %i.jn = getelementptr inbounds i8, ptr %.0200290, i64 %i.ay
  %i.jo = getelementptr inbounds i8, ptr %.0201289, i64 %i.ay
  %i.jp = getelementptr inbounds i8, ptr %.0202288, i64 %i.ay
  %i.jq = add nuw nsw i32 %.0215283, 2            ; 2 uses
  %i.jr = icmp slt i32 %i.jq, %14
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jr, label %bb.c, label %.preheader282, !llvm.loop !25

.preheader:                                       ; preds = %.preheader.backedge, %.preheader282
  %.0214292 = phi i32 [ 0, %.preheader282 ], [ %.0214292.be, %.preheader.backedge ] ; 3 uses
  %.0217291 = phi i64 [ -1, %.preheader282 ], [ %i.tw, %.preheader.backedge ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %UpdateW.exit269
  %.1216 = phi i32 [ %i.uc, %UpdateW.exit269 ], [ 0, %.preheader ] ; 2 uses
  %.1213 = phi ptr [ %i.ty, %UpdateW.exit269 ], [ %i.af, %.preheader ] ; 9 uses
  %.1211 = phi ptr [ %i.ua, %UpdateW.exit269 ], [ %i.ag, %.preheader ] ; 2 uses
  %.1209 = phi ptr [ %i.tz, %UpdateW.exit269 ], [ %i.ai, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.ub, %UpdateW.exit269 ], [ %i.aj, %.preheader ] ; 2 uses
  %.0205 = phi ptr [ %i.jv, %UpdateW.exit269 ], [ %i.ai, %.preheader ] ; 8 uses
  %.0204 = phi ptr [ %.0205, %UpdateW.exit269 ], [ %i.ai, %.preheader ] ; 4 uses
  %.0203 = phi i64 [ %i.tw, %UpdateW.exit269 ], [ 0, %.preheader ]
  %i.js = icmp slt i32 %.1216, %i.bn
  %i.jt = select i1 %i.js, i32 %.pre-phi303, i32 0
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [2 x i8], ptr %.0205, i64 %i.ju ; 5 uses
  %i.jw = getelementptr inbounds [2 x i8], ptr %.1213, i64 %i.k ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.1213, i64 2 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 3 uses
  %i.jz = getelementptr inbounds [2 x i8], ptr %.1213, i64 %i.bs ; 3 uses
  %i.ka = getelementptr inbounds [2 x i8], ptr %.1213, i64 %i.bt ; 3 uses
  %i.kb = load i16, ptr %.0205, align 2, !tbaa !15
  %i.kc = sext i16 %i.kb to i32
  %i.kd = load i16, ptr %.0204, align 2, !tbaa !15
  %i.ke = sext i16 %i.kd to i32
  %i.kf = load i16, ptr %.1213, align 2, !tbaa !15
  %i.kg = zext i16 %i.kf to i32
  %i.kh = mul nsw i32 %i.kc, 3
  %i.ki = add nsw i32 %i.ke, 2
  %i.kj = add nsw i32 %i.ki, %i.kh
  %i.kk = ashr i32 %i.kj, 2
  %i.kl = add nsw i32 %i.kk, %i.kg                ; 3 uses
  %i.km = and i32 %i.kl, %notmask.i.i.i
  %.not.i.i.us.i = icmp eq i32 %i.km, 0
  %i.kn = icmp slt i32 %i.kl, 0
  %i.ko = select i1 %i.kn, i32 0, i32 %i.bq
  %i.kp = select i1 %.not.i.i.us.i, i32 %i.kl, i32 %i.ko
  %i.kq = trunc i32 %i.kp to i16
  store i16 %i.kq, ptr %i.y, align 2, !tbaa !15
  %i.kr = load i16, ptr %.0205, align 2, !tbaa !15
  %i.ks = sext i16 %i.kr to i32
  %i.kt = load i16, ptr %i.jv, align 2, !tbaa !15
  %i.ku = sext i16 %i.kt to i32
  %i.kv = load i16, ptr %i.jw, align 2, !tbaa !15
  %i.kw = zext i16 %i.kv to i32
  %i.kx = mul nsw i32 %i.ks, 3
  %i.ky = add nsw i32 %i.ku, 2
  %i.kz = add nsw i32 %i.ky, %i.kx
  %i.la = ashr i32 %i.kz, 2
  %i.lb = add nsw i32 %i.la, %i.kw                ; 3 uses
  %i.lc = and i32 %i.lb, %notmask.i.i.i
  %.not.i.i62.us.i = icmp eq i32 %i.lc, 0
  %i.ld = icmp slt i32 %i.lb, 0
  %i.le = select i1 %i.ld, i32 0, i32 %i.bq
  %i.lf = select i1 %.not.i.i62.us.i, i32 %i.lb, i32 %i.le
  %i.lg = trunc i32 %i.lf to i16
  store i16 %i.lg, ptr %i.bm, align 2, !tbaa !15
  %i.lh = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.lh(ptr noundef nonnull %.0205, ptr noundef nonnull %.0204, i32 noundef %i.bp, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.bw, i32 noundef %i.j) #11, !inline_history !26
  %i.li = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.li(ptr noundef nonnull %.0205, ptr noundef nonnull %i.jv, i32 noundef %i.bp, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.bx, i32 noundef %i.j) #11, !inline_history !26
  %i.lj = getelementptr inbounds [2 x i8], ptr %.0205, i64 %i.bv ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !15
  %i.ll = sext i16 %i.lk to i32
  %i.lm = getelementptr inbounds [2 x i8], ptr %.0204, i64 %i.bv
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !15
  %i.lo = sext i16 %i.ln to i32
  %i.lp = load i16, ptr %i.ka, align 2, !tbaa !15
  %i.lq = zext i16 %i.lp to i32
  %i.lr = mul nsw i32 %i.ll, 3
  %i.ls = add nsw i32 %i.lo, 2
end_hunk_0
