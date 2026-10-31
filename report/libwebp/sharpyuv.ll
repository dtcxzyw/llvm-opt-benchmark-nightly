Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a

bb.k:                                             ; preds = %bb.j, %.critedge
  tail call void @SharpYuvInit(ptr noundef nonnull @SharpYuvGetCPUInfo)
  %i.bb = icmp eq i32 %5, %12
  br i1 %i.bb, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !13
  %i.bi = mul nsw i32 %i.bh, %i.g
  %i.bj = add nsw i32 %i.bi, %i.f
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !13
  %i.bl = mul nsw i32 %i.bk, %i.g
  %i.bm = add nsw i32 %i.bl, %i.f
  %i.bn = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bm, i64 1
  %i.bp = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.bq = shufflevector <2 x i32> %i.bp, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.br = sdiv <2 x i32> %i.bo, %i.bq
  store <2 x i32> %i.br, ptr %16, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bt = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.bu = mul nsw i32 %i.bt, %i.g
  %i.bv = add nsw i32 %i.bu, %i.f
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bx = mul nsw i32 %i.bw, %i.g
  %i.by = add nsw i32 %i.bx, %i.f
  %i.bz = insertelement <2 x i32> poison, i32 %i.bv, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %i.by, i64 1
  %i.cb = sdiv <2 x i32> %i.ca, %i.bq
  store <2 x i32> %i.cb, ptr %i.bd, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cd = load i32, ptr %i.be, align 4, !tbaa !13
  %i.ce = mul nsw i32 %i.cd, %i.g
  %i.cf = add nsw i32 %i.ce, %i.f
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ch = mul nsw i32 %i.cg, %i.g
  %i.ci = add nsw i32 %i.ch, %i.f
  %i.cj = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ck = insertelement <2 x i32> %i.cj, i32 %i.ci, i64 1
  %i.cl = sdiv <2 x i32> %i.ck, %i.bq
  store <2 x i32> %i.cl, ptr %i.bf, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.co = mul nsw i32 %i.cn, %i.g
  %i.cp = add nsw i32 %i.co, %i.f
  %i.cq = sdiv i32 %i.cp, %i.d
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = mul nsw i32 %i.ct, %i.g
  %i.cv = add nsw i32 %i.cu, %i.f
  %i.cw = sdiv i32 %i.cv, %i.d
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !13
  %i.da = mul nsw i32 %i.cz, %i.g
  %i.db = add nsw i32 %i.da, %i.f
  %i.dc = sdiv i32 %i.db, %i.d
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !13
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 4 dereferenceable(48) %i.a, i64 44, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !13 ; 2 uses
  %i.dg = shl i32 %i.df, %i.j
  %i.dh = sub nsw i32 0, %i.j                     ; 3 uses
  %i.di = ashr i32 %i.df, %i.dh
  %i.dj = icmp slt i32 %i.j, 0                    ; 3 uses
  %i.dk = select i1 %i.dj, i32 %i.di, i32 %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13 ; 2 uses
  %i.do = shl i32 %i.dn, %i.j
  %i.dp = ashr i32 %i.dn, %i.dh
  %i.dq = select i1 %i.dj, i32 %i.dp, i32 %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 28
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13 ; 2 uses
  %i.du = shl i32 %i.dt, %i.j
  %i.dv = ashr i32 %i.dt, %i.dh
  %i.dw = select i1 %i.dj, i32 %i.dv, i32 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !13
  %i.dy = call fastcc i32 @DoSharpArgbToYuv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef nonnull %8, i32 noundef %9, ptr noundef nonnull %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %16, i32 noundef %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.i, %bb.e, %bb.c, %bb.b, %bb.a, %.loopexit
  %.1 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.dy, %.loopexit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.j ]
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
  %i.e = ashr i32 %i.a, 1                         ; 13 uses
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
  %17 = shl nsw i64 %i.ao, 1                      ; 2 uses
  %18 = sub nsw i64 %i.az, %17
  %19 = shl nsw i64 %i.at, 1
  %i.ba = mul nsw i64 %i.k, 12                    ; 3 uses
  %20 = sub nsw i64 %i.ba, %17
  %21 = add nsw i64 %i.ao, %i.at
  %i.bb = shl nsw i64 %21, 1
  %i.bc = sub nsw i64 %i.az, %i.bb
  %22 = shl nsw i64 %i.at, 1
  %i.bd = mul nsw i64 %i.k, 10
  %23 = shl nsw i64 %i.at, 1
  %24 = sub nsw i64 %i.ba, %23
  %min.iters.check335 = icmp slt i32 %i.b, 8
  %invariant.op = add i64 %i.ba, -1
  %invariant.op430 = add i64 %i.bd, -1
  %invariant.op432 = add i64 %24, -1
  %n.vec337 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n345 = icmp eq i64 %n.vec337, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.be = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp slt i32 %i.b, 8
  %invariant.op434 = add i64 %18, -1
  %invariant.op436 = add i64 %20, -1
  %invariant.op438 = add i64 %i.bc, -1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter428 = and i64 %wide.trip.count.i, 1
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  %i.bf = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

.preheader282:                                    ; preds = %UpdateW.exit249, %..preheader282_crit_edge
  %.pre-phi311 = phi i64 [ %.pre310, %..preheader282_crit_edge ], [ %i.av, %UpdateW.exit249 ] ; 4 uses
  %wide.trip.count.i251.pre-phi = phi i64 [ %.pre309, %..preheader282_crit_edge ], [ %wide.trip.count.i, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi307 = phi i64 [ %.pre306, %..preheader282_crit_edge ], [ %i.at, %UpdateW.exit249 ] ; 4 uses
  %.pre-phi305 = phi i32 [ %.pre304, %..preheader282_crit_edge ], [ %i.as, %UpdateW.exit249 ]
  %.pre-phi303 = phi i32 [ %.pre302, %..preheader282_crit_edge ], [ %i.au, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi301 = phi i64 [ %.pre300, %..preheader282_crit_edge ], [ %i.ao, %UpdateW.exit249 ]
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.y, i64 %.pre-phi301 ; 7 uses
  %i.bh = add nsw i32 %i.d, -2
  %i.bi = add nsw i32 %i.b, -1                    ; 3 uses
  %i.bj = ashr i32 %i.bi, 1                       ; 6 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.j           ; 13 uses
  %i.bk = xor i32 %notmask.i.i.i, -1              ; 12 uses
  %i.bl = add nsw i32 %i.bi, %i.b
  %i.bm = sext i32 %i.bl to i64
  %i.bn = sext i32 %i.bi to i64                   ; 7 uses
  %i.bo = add nsw i32 %i.e, -1
  %i.bp = sext i32 %i.bo to i64                   ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bn
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bn
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %i.bv = getelementptr [2 x i8], ptr %i.bg, i64 %i.k ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.bn
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bn
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.k ; 3 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.k ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.bn
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %i.bn
  %invariant.gep25.i253 = getelementptr [2 x i8], ptr %i.y, i64 %.pre-phi307
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.k
  %invariant.gep25.i263 = getelementptr [2 x i8], ptr %i.bg, i64 %.pre-phi307
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %UpdateW.exit249
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %UpdateW.exit249 ] ; 3 uses
  %.0200290 = phi ptr [ %0, %.lr.ph ], [ %i.jf, %UpdateW.exit249 ] ; 3 uses
  %.0201289 = phi ptr [ %1, %.lr.ph ], [ %i.jg, %UpdateW.exit249 ] ; 3 uses
  %.0202288 = phi ptr [ %2, %.lr.ph ], [ %i.jh, %UpdateW.exit249 ] ; 3 uses
  %.0207287 = phi ptr [ %i.aj, %.lr.ph ], [ %i.je, %UpdateW.exit249 ] ; 3 uses
  %.0208286 = phi ptr [ %i.ai, %.lr.ph ], [ %i.jc, %UpdateW.exit249 ] ; 2 uses
  %.0210285 = phi ptr [ %i.ag, %.lr.ph ], [ %i.jd, %UpdateW.exit249 ] ; 3 uses
  %.0212284 = phi ptr [ %i.af, %.lr.ph ], [ %i.jb, %UpdateW.exit249 ] ; 6 uses
  %.0215283 = phi i32 [ 0, %.lr.ph ], [ %i.ji, %UpdateW.exit249 ] ; 2 uses
  %25 = mul i64 %22, %indvar                      ; 3 uses
  %26 = mul i64 %19, %indvar                      ; 3 uses
  %i.ch = icmp eq i32 %.0215283, %i.am
  tail call fastcc void @ImportOneRow(ptr noundef %.0200290, ptr noundef %.0201289, ptr noundef %.0202288, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.y)
  br i1 %i.ch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ci = getelementptr inbounds i8, ptr %.0200290, i64 %i.aq
  %i.cj = getelementptr inbounds i8, ptr %.0201289, i64 %i.aq
  %i.ck = getelementptr inbounds i8, ptr %.0202288, i64 %i.aq
  tail call fastcc void @ImportOneRow(ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef %i.ck, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.ap)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull align 2 %i.y, i64 %i.ar, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %min.iters.check335, label %scalar.ph334.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %bb.f
  %.reass = add i64 %25, %invariant.op
  %diff.check329 = icmp ult i64 %.reass, 15
  %.reass431 = add i64 %25, %invariant.op430
  %diff.check330 = icmp ult i64 %.reass431, 15
  %conflict.rdx331 = or i1 %diff.check329, %diff.check330
  %.reass433 = add i64 %25, %invariant.op432
  %diff.check332 = icmp ult i64 %.reass433, 15
  %conflict.rdx333 = or i1 %conflict.rdx331, %diff.check332
  br i1 %conflict.rdx333, label %scalar.ph334.preheader, label %vector.body338

vector.body338:                                   ; preds = %vector.memcheck328, %vector.body338
  %index339 = phi i64 [ %index.next343, %vector.body338 ], [ 0, %vector.memcheck328 ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index339
  %wide.load340 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !15
  %i.cm = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.cn = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index339
  %wide.load341 = load <8 x i16>, ptr %i.cn, align 2, !tbaa !15
  %i.co = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.cp = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %index339
  %wide.load342 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !15
  %i.cq = zext <8 x i16> %wide.load342 to <8 x i32>
  %i.cr = mul nuw nsw <8 x i32> %i.cm, splat (i32 13933)
  %i.cs = mul nuw <8 x i32> %i.co, splat (i32 46871)
  %i.ct = mul nuw nsw <8 x i32> %i.cq, splat (i32 4732)
  %i.cu = add nuw nsw <8 x i32> %i.cr, splat (i32 32768)
  %i.cv = add nuw <8 x i32> %i.cu, %i.cs
  %i.cw = add nuw <8 x i32> %i.cv, %i.ct
  %i.cx = lshr <8 x i32> %i.cw, splat (i32 16)
  %i.cy = trunc nuw <8 x i32> %i.cx to <8 x i16>
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %index339
  store <8 x i16> %i.cy, ptr %i.cz, align 2, !tbaa !15
  %index.next343 = add nuw i64 %index339, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.da, label %middle.block344, label %vector.body338, !llvm.loop !20

middle.block344:                                  ; preds = %vector.body338
  br i1 %cmp.n345, label %StoreGray.exit, label %scalar.ph334.preheader

scalar.ph334.preheader:                           ; preds = %vector.memcheck328, %bb.f, %middle.block344
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck328 ], [ 0, %bb.f ], [ %n.vec337, %middle.block344 ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph334.prol.loopexit, label %scalar.ph334.prol

scalar.ph334.prol:                                ; preds = %scalar.ph334.preheader
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i.ph
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !15
  %i.dd = zext i16 %i.dc to i32
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph
  %i.de = load i16, ptr %gep.i.prol, align 2, !tbaa !15
  %i.df = zext i16 %i.de to i32
  %gep14.i.prol = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i.ph
  %i.dg = load i16, ptr %gep14.i.prol, align 2, !tbaa !15
  %i.dh = zext i16 %i.dg to i32
  %i.di = mul nuw nsw i32 %i.dd, 13933
  %i.dj = mul nuw i32 %i.df, 46871
  %i.dk = mul nuw nsw i32 %i.dh, 4732
  %i.dl = add nuw nsw i32 %i.di, 32768
  %i.dm = add nuw i32 %i.dl, %i.dj
  %i.dn = add nuw i32 %i.dm, %i.dk
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.i.ph
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !15
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph334.prol.loopexit

scalar.ph334.prol.loopexit:                       ; preds = %scalar.ph334.prol, %scalar.ph334.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph334.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph334.prol ]
  %i.dr = icmp eq i64 %indvars.iv.i.ph, %i.be
  br i1 %i.dr, label %StoreGray.exit, label %scalar.ph334

scalar.ph334:                                     ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph334 ], [ %indvars.iv.i.unr, %scalar.ph334.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !15
  %i.du = zext i16 %i.dt to i32
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.dv = load i16, ptr %gep.i, align 2, !tbaa !15
  %i.dw = zext i16 %i.dv to i32
  %gep14.i = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i
  %i.dx = load i16, ptr %gep14.i, align 2, !tbaa !15
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.du, 13933
  %i.ea = mul nuw i32 %i.dw, 46871
  %i.eb = mul nuw nsw i32 %i.dy, 4732
  %i.ec = add nuw nsw i32 %i.dz, 32768
  %i.ed = add nuw i32 %i.ec, %i.ea
  %i.ee = add nuw i32 %i.ed, %i.eb
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = trunc nuw i32 %i.ef to i16
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.i
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !15
  %i.ek = zext i16 %i.ej to i32
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.el = load i16, ptr %gep.i.1, align 2, !tbaa !15
  %i.em = zext i16 %i.el to i32
  %gep14.i.1 = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.next.i
  %i.en = load i16, ptr %gep14.i.1, align 2, !tbaa !15
  %i.eo = zext i16 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.ek, 13933
  %i.eq = mul nuw i32 %i.em, 46871
  %i.er = mul nuw nsw i32 %i.eo, 4732
  %i.es = add nuw nsw i32 %i.ep, 32768
  %i.et = add nuw i32 %i.es, %i.eq
  %i.eu = add nuw i32 %i.et, %i.er
  %i.ev = lshr i32 %i.eu, 16
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.0212284, i64 %indvars.iv.next.i
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %StoreGray.exit, label %scalar.ph334, !llvm.loop !21

StoreGray.exit:                                   ; preds = %scalar.ph334.prol.loopexit, %scalar.ph334, %middle.block344
  %i.ey = getelementptr inbounds [2 x i8], ptr %.0212284, i64 %i.k ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %StoreGray.exit
  %.reass435 = add i64 %26, %invariant.op434
  %diff.check = icmp ult i64 %.reass435, 15
  %.reass437 = add i64 %26, %invariant.op436
  %diff.check323 = icmp ult i64 %.reass437, 15
  %conflict.rdx = or i1 %diff.check, %diff.check323
  %.reass439 = add i64 %26, %invariant.op438
  %diff.check324 = icmp ult i64 %.reass439, 15
  %conflict.rdx325 = or i1 %conflict.rdx, %diff.check324
  br i1 %conflict.rdx325, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ez, align 2, !tbaa !15
  %i.fa = zext <8 x i16> %wide.load to <8 x i32>
  %i.fb = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %index
  %wide.load326 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !15
  %i.fc = zext <8 x i16> %wide.load326 to <8 x i32>
  %i.fd = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %index
  %wide.load327 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !15
  %i.fe = zext <8 x i16> %wide.load327 to <8 x i32>
  %i.ff = mul nuw nsw <8 x i32> %i.fa, splat (i32 13933)
  %i.fg = mul nuw <8 x i32> %i.fc, splat (i32 46871)
  %i.fh = mul nuw nsw <8 x i32> %i.fe, splat (i32 4732)
  %i.fi = add nuw nsw <8 x i32> %i.ff, splat (i32 32768)
  %i.fj = add nuw <8 x i32> %i.fi, %i.fg
  %i.fk = add nuw <8 x i32> %i.fj, %i.fh
  %i.fl = lshr <8 x i32> %i.fk, splat (i32 16)
  %i.fm = trunc nuw <8 x i32> %i.fl to <8 x i16>
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index
  store <8 x i16> %i.fm, ptr %i.fn, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %StoreGray.exit232.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %StoreGray.exit, %middle.block
  %indvars.iv.i227.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %StoreGray.exit ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod429.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i227.ph
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !15
  %i.fr = zext i16 %i.fq to i32
  %gep.i228.prol = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i227.ph
  %i.fs = load i16, ptr %gep.i228.prol, align 2, !tbaa !15
  %i.ft = zext i16 %i.fs to i32
  %gep14.i229.prol = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i227.ph
  %i.fu = load i16, ptr %gep14.i229.prol, align 2, !tbaa !15
  %i.fv = zext i16 %i.fu to i32
  %i.fw = mul nuw nsw i32 %i.fr, 13933
  %i.fx = mul nuw i32 %i.ft, 46871
  %i.fy = mul nuw nsw i32 %i.fv, 4732
  %i.fz = add nuw nsw i32 %i.fw, 32768
  %i.ga = add nuw i32 %i.fz, %i.fx
  %i.gb = add nuw i32 %i.ga, %i.fy
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.i227.ph
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !15
  %indvars.iv.next.i230.prol = or disjoint i64 %indvars.iv.i227.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i227.unr = phi i64 [ %indvars.iv.i227.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i230.prol, %scalar.ph.prol ]
  %i.gf = icmp eq i64 %indvars.iv.i227.ph, %i.bf
  br i1 %i.gf, label %StoreGray.exit232.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i227 = phi i64 [ %indvars.iv.next.i230.1, %scalar.ph ], [ %indvars.iv.i227.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i227
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !15
  %i.gi = zext i16 %i.gh to i32
  %gep.i228 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i227
  %i.gj = load i16, ptr %gep.i228, align 2, !tbaa !15
  %i.gk = zext i16 %i.gj to i32
  %gep14.i229 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i227
  %i.gl = load i16, ptr %gep14.i229, align 2, !tbaa !15
  %i.gm = zext i16 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gi, 13933
  %i.go = mul nuw i32 %i.gk, 46871
  %i.gp = mul nuw nsw i32 %i.gm, 4732
  %i.gq = add nuw nsw i32 %i.gn, 32768
  %i.gr = add nuw i32 %i.gq, %i.go
  %i.gs = add nuw i32 %i.gr, %i.gp
  %i.gt = lshr i32 %i.gs, 16
  %i.gu = trunc nuw i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.i227
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !15
  %indvars.iv.next.i230 = add nuw nsw i64 %indvars.iv.i227, 1 ; 4 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.next.i230
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !15
  %i.gy = zext i16 %i.gx to i32
  %gep.i228.1 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.next.i230
  %i.gz = load i16, ptr %gep.i228.1, align 2, !tbaa !15
  %i.ha = zext i16 %i.gz to i32
  %gep14.i229.1 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.next.i230
  %i.hb = load i16, ptr %gep14.i229.1, align 2, !tbaa !15
  %i.hc = zext i16 %i.hb to i32
  %i.hd = mul nuw nsw i32 %i.gy, 13933
  %i.he = mul nuw i32 %i.ha, 46871
  %i.hf = mul nuw nsw i32 %i.hc, 4732
  %i.hg = add nuw nsw i32 %i.hd, 32768
  %i.hh = add nuw i32 %i.hg, %i.he
  %i.hi = add nuw i32 %i.hh, %i.hf
  %i.hj = lshr i32 %i.hi, 16
  %i.hk = trunc nuw i32 %i.hj to i16
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv.next.i230
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !15
  %indvars.iv.next.i230.1 = add nuw nsw i64 %indvars.iv.i227, 2 ; 2 uses
  %exitcond.not.i231.1 = icmp eq i64 %indvars.iv.next.i230.1, %wide.trip.count.i
  br i1 %exitcond.not.i231.1, label %StoreGray.exit232.preheader, label %scalar.ph, !llvm.loop !23

StoreGray.exit232.preheader:                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %StoreGray.exit232

StoreGray.exit232:                                ; preds = %StoreGray.exit232.preheader, %StoreGray.exit232
  %indvars.iv.i236 = phi i64 [ %indvars.iv.next.i238, %StoreGray.exit232 ], [ 0, %StoreGray.exit232.preheader ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i236
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !15
  %i.ho = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hn, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i237 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i236
  %i.hp = load i16, ptr %gep.i237, align 2, !tbaa !15
  %i.hq = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hp, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %indvars.iv.i236
  %i.hr = load i16, ptr %gep26.i, align 2, !tbaa !15
  %i.hs = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.hr, i32 noundef %i.j, i32 noundef %16) #11
  %i.ht = zext i32 %i.ho to i64
  %i.hu = zext i32 %i.hq to i64
  %i.hv = zext i32 %i.hs to i64
  %i.hw = mul nuw nsw i64 %i.ht, 13933
  %i.hx = mul nuw nsw i64 %i.hu, 46871
  %i.hy = mul nuw nsw i64 %i.hv, 4732
  %i.hz = add nuw nsw i64 %i.hw, 32768
  %i.ia = add nuw nsw i64 %i.hz, %i.hx
  %i.ib = add nuw nsw i64 %i.ia, %i.hy
  %i.ic = lshr i64 %i.ib, 16
  %i.id = trunc nuw i64 %i.ic to i32
  %i.ie = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.id, i32 noundef %i.j, i32 noundef %16) #11
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.0210285, i64 %indvars.iv.i236
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !15
  %indvars.iv.next.i238 = add nuw nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %exitcond.not.i239 = icmp eq i64 %indvars.iv.next.i238, %wide.trip.count.i
  br i1 %exitcond.not.i239, label %UpdateW.exit, label %StoreGray.exit232, !llvm.loop !24

UpdateW.exit:                                     ; preds = %StoreGray.exit232
  %i.ig = getelementptr inbounds [2 x i8], ptr %.0210285, i64 %i.k
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %UpdateW.exit
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i247, %bb.g ], [ 0, %UpdateW.exit ] ; 5 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i244
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !15
  %i.ij = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ii, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i245 = getelementptr [2 x i8], ptr %invariant.gep.i225, i64 %indvars.iv.i244
  %i.ik = load i16, ptr %gep.i245, align 2, !tbaa !15
  %i.il = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ik, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i246 = getelementptr [2 x i8], ptr %invariant.gep13.i226, i64 %indvars.iv.i244
  %i.im = load i16, ptr %gep26.i246, align 2, !tbaa !15
  %i.in = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.im, i32 noundef %i.j, i32 noundef %16) #11
  %i.io = zext i32 %i.ij to i64
  %i.ip = zext i32 %i.il to i64
  %i.iq = zext i32 %i.in to i64
  %i.ir = mul nuw nsw i64 %i.io, 13933
  %i.is = mul nuw nsw i64 %i.ip, 46871
  %i.it = mul nuw nsw i64 %i.iq, 4732
  %i.iu = add nuw nsw i64 %i.ir, 32768
  %i.iv = add nuw nsw i64 %i.iu, %i.is
  %i.iw = add nuw nsw i64 %i.iv, %i.it
  %i.ix = lshr i64 %i.iw, 16
  %i.iy = trunc nuw i64 %i.ix to i32
  %i.iz = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.iy, i32 noundef %i.j, i32 noundef %16) #11
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %indvars.iv.i244
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !15
  %indvars.iv.next.i247 = add nuw nsw i64 %indvars.iv.i244, 1 ; 2 uses
  %exitcond.not.i248 = icmp eq i64 %indvars.iv.next.i247, %wide.trip.count.i
  br i1 %exitcond.not.i248, label %UpdateW.exit249, label %bb.g, !llvm.loop !24

UpdateW.exit249:                                  ; preds = %bb.g
  tail call fastcc void @UpdateChroma(ptr noundef %i.y, ptr noundef %i.ap, ptr noundef %.0207287, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0208286, ptr nonnull align 2 %.0207287, i64 %i.aw, i1 false)
  %i.jb = getelementptr inbounds [2 x i8], ptr %.0212284, i64 %i.at
  %i.jc = getelementptr inbounds [2 x i8], ptr %.0208286, i64 %i.av
  %i.jd = getelementptr inbounds [2 x i8], ptr %.0210285, i64 %i.at
  %i.je = getelementptr inbounds [2 x i8], ptr %.0207287, i64 %i.av
  %i.jf = getelementptr inbounds i8, ptr %.0200290, i64 %i.ay
  %i.jg = getelementptr inbounds i8, ptr %.0201289, i64 %i.ay
  %i.jh = getelementptr inbounds i8, ptr %.0202288, i64 %i.ay
  %i.ji = add nuw nsw i32 %.0215283, 2            ; 2 uses
  %i.jj = icmp slt i32 %i.ji, %14
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jj, label %bb.c, label %.preheader282, !llvm.loop !25

.preheader:                                       ; preds = %.preheader.backedge, %.preheader282
  %.0214292 = phi i32 [ 0, %.preheader282 ], [ %.0214292.be, %.preheader.backedge ] ; 3 uses
  %.0217291 = phi i64 [ -1, %.preheader282 ], [ %i.to, %.preheader.backedge ]
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %UpdateW.exit269
  %.1216 = phi i32 [ %i.tu, %UpdateW.exit269 ], [ 0, %.preheader ] ; 2 uses
  %.1213 = phi ptr [ %i.tq, %UpdateW.exit269 ], [ %i.af, %.preheader ] ; 9 uses
  %.1211 = phi ptr [ %i.ts, %UpdateW.exit269 ], [ %i.ag, %.preheader ] ; 2 uses
  %.1209 = phi ptr [ %i.tr, %UpdateW.exit269 ], [ %i.ai, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.tt, %UpdateW.exit269 ], [ %i.aj, %.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@DoSharpArgbToYuv:bb.a
  %i.pk = sext i16 %i.pj to i32
  %i.pl = load i16, ptr %.1213, align 2, !tbaa !15
  %i.pm = zext i16 %i.pl to i32
  %i.pn = mul nsw i32 %i.pi, 3
  %i.po = add nsw i32 %i.pk, 2
  %i.pp = add nsw i32 %i.po, %i.pn
  %i.pq = ashr i32 %i.pp, 2
  %i.pr = add nsw i32 %i.pq, %i.pm                ; 3 uses
  %i.ps = and i32 %i.pr, %notmask.i.i.i
  %.not.i.i.us.2.i = icmp eq i32 %i.ps, 0
  %i.pt = icmp slt i32 %i.pr, 0
  %i.pu = select i1 %i.pt, i32 0, i32 %i.bk
  %i.pv = select i1 %.not.i.i.us.2.i, i32 %i.pr, i32 %i.pu
  %i.pw = trunc i32 %i.pv to i16
  store i16 %i.pw, ptr %i.ca, align 2, !tbaa !15
  %i.px = load i16, ptr %i.pf, align 2, !tbaa !15
  %i.py = sext i16 %i.px to i32
  %i.pz = load i16, ptr %i.pg, align 2, !tbaa !15
  %i.qa = sext i16 %i.pz to i32
  %i.qb = load i16, ptr %i.jo, align 2, !tbaa !15
  %i.qc = zext i16 %i.qb to i32
  %i.qd = mul nsw i32 %i.py, 3
  %i.qe = add nsw i32 %i.qa, 2
  %i.qf = add nsw i32 %i.qe, %i.qd
  %i.qg = ashr i32 %i.qf, 2
  %i.qh = add nsw i32 %i.qg, %i.qc                ; 3 uses
  %i.qi = and i32 %i.qh, %notmask.i.i.i
  %.not.i.i62.us.2.i = icmp eq i32 %i.qi, 0
  %i.qj = icmp slt i32 %i.qh, 0
  %i.qk = select i1 %i.qj, i32 0, i32 %i.bk
  %i.ql = select i1 %.not.i.i62.us.2.i, i32 %i.qh, i32 %i.qk
  %i.qm = trunc i32 %i.ql to i16
  store i16 %i.qm, ptr %i.cb, align 2, !tbaa !15
  %i.qn = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.qn(ptr noundef nonnull %i.pf, ptr noundef nonnull %i.pe, i32 noundef %i.bj, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.cc, i32 noundef %i.j) #11, !inline_history !26
  %i.qo = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.qo(ptr noundef nonnull %i.pf, ptr noundef nonnull %i.pg, i32 noundef %i.bj, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.cd, i32 noundef %i.j) #11, !inline_history !26
  %i.qp = getelementptr inbounds [2 x i8], ptr %i.pf, i64 %i.bp ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !15
  %i.qr = sext i16 %i.qq to i32
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.pe, i64 %i.bp
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !15
  %i.qu = sext i16 %i.qt to i32
  %i.qv = load i16, ptr %i.js, align 2, !tbaa !15
  %i.qw = zext i16 %i.qv to i32
  %i.qx = mul nsw i32 %i.qr, 3
  %i.qy = add nsw i32 %i.qu, 2
  %i.qz = add nsw i32 %i.qy, %i.qx
  %i.ra = ashr i32 %i.qz, 2
  %i.rb = add nsw i32 %i.ra, %i.qw                ; 3 uses
  %i.rc = and i32 %i.rb, %notmask.i.i.i
  %.not.i.i64.us.2.i = icmp eq i32 %i.rc, 0
  %i.rd = icmp slt i32 %i.rb, 0
  %i.re = select i1 %i.rd, i32 0, i32 %i.bk
  %i.rf = select i1 %.not.i.i64.us.2.i, i32 %i.rb, i32 %i.re
  %i.rg = trunc i32 %i.rf to i16
  store i16 %i.rg, ptr %i.ce, align 2, !tbaa !15
  %i.rh = load i16, ptr %i.qp, align 2, !tbaa !15
  %i.ri = sext i16 %i.rh to i32
  %i.rj = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %i.bp
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !15
  %i.rl = sext i16 %i.rk to i32
  %i.rm = load i16, ptr %i.jr, align 2, !tbaa !15
  %i.rn = zext i16 %i.rm to i32
  %i.ro = mul nsw i32 %i.ri, 3
  %i.rp = add nsw i32 %i.rl, 2
  %i.rq = add nsw i32 %i.rp, %i.ro
  %i.rr = ashr i32 %i.rq, 2
  %i.rs = add nsw i32 %i.rr, %i.rn                ; 3 uses
  %i.rt = and i32 %i.rs, %notmask.i.i.i
  %.not.i.i66.us.2.i = icmp eq i32 %i.rt, 0
  %i.ru = icmp slt i32 %i.rs, 0
  %i.rv = select i1 %i.ru, i32 0, i32 %i.bk
  %i.rw = select i1 %.not.i.i66.us.2.i, i32 %i.rs, i32 %i.rv
  %i.rx = trunc i32 %i.rw to i16
  store i16 %i.rx, ptr %i.cf, align 2, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i254 = phi i64 [ %indvars.iv.next.i257, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i254
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !15
  %i.sa = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.rz, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i255 = getelementptr [2 x i8], ptr %i.bu, i64 %indvars.iv.i254
  %i.sb = load i16, ptr %gep.i255, align 2, !tbaa !15
  %i.sc = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sb, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i256 = getelementptr [2 x i8], ptr %invariant.gep25.i253, i64 %indvars.iv.i254
  %i.sd = load i16, ptr %gep26.i256, align 2, !tbaa !15
  %i.se = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sd, i32 noundef %i.j, i32 noundef %16) #11
  %i.sf = zext i32 %i.sa to i64
  %i.sg = zext i32 %i.sc to i64
  %i.sh = zext i32 %i.se to i64
  %i.si = mul nuw nsw i64 %i.sf, 13933
  %i.sj = mul nuw nsw i64 %i.sg, 46871
  %i.sk = mul nuw nsw i64 %i.sh, 4732
  %i.sl = add nuw nsw i64 %i.si, 32768
  %i.sm = add nuw nsw i64 %i.sl, %i.sj
  %i.sn = add nuw nsw i64 %i.sm, %i.sk
  %i.so = lshr i64 %i.sn, 16
  %i.sp = trunc nuw i64 %i.so to i32
  %i.sq = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.sp, i32 noundef %i.j, i32 noundef %16) #11
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.i254
  store i16 %i.sq, ptr %i.sr, align 2, !tbaa !15
  %indvars.iv.next.i257 = add nuw nsw i64 %indvars.iv.i254, 1 ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next.i257, %wide.trip.count.i251.pre-phi
  br i1 %exitcond.not.i258, label %UpdateW.exit259, label %bb.i, !llvm.loop !24

UpdateW.exit259:                                  ; preds = %bb.i, %UpdateW.exit259
  %indvars.iv.i264 = phi i64 [ %indvars.iv.next.i267, %UpdateW.exit259 ], [ 0, %bb.i ] ; 5 uses
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.i264
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !15
  %i.su = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.st, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i265 = getelementptr [2 x i8], ptr %i.bv, i64 %indvars.iv.i264
  %i.sv = load i16, ptr %gep.i265, align 2, !tbaa !15
  %i.sw = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sv, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i266 = getelementptr [2 x i8], ptr %invariant.gep25.i263, i64 %indvars.iv.i264
  %i.sx = load i16, ptr %gep26.i266, align 2, !tbaa !15
  %i.sy = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sx, i32 noundef %i.j, i32 noundef %16) #11
  %i.sz = zext i32 %i.su to i64
  %i.ta = zext i32 %i.sw to i64
  %i.tb = zext i32 %i.sy to i64
  %i.tc = mul nuw nsw i64 %i.sz, 13933
  %i.td = mul nuw nsw i64 %i.ta, 46871
  %i.te = mul nuw nsw i64 %i.tb, 4732
  %i.tf = add nuw nsw i64 %i.tc, 32768
  %i.tg = add nuw nsw i64 %i.tf, %i.td
  %i.th = add nuw nsw i64 %i.tg, %i.te
  %i.ti = lshr i64 %i.th, 16
  %i.tj = trunc nuw i64 %i.ti to i32
  %i.tk = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.tj, i32 noundef %i.j, i32 noundef %16) #11
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %indvars.iv.i264
  store i16 %i.tk, ptr %i.tl, align 2, !tbaa !15
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i264, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i251.pre-phi
  br i1 %exitcond.not.i268, label %UpdateW.exit269, label %UpdateW.exit259, !llvm.loop !24

UpdateW.exit269:                                  ; preds = %UpdateW.exit259
  tail call fastcc void @UpdateChroma(ptr noundef %i.y, ptr noundef %i.bg, ptr noundef %i.ak, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %16)
  %i.tm = load ptr, ptr @SharpYuvUpdateY, align 8, !tbaa !9
  %i.tn = tail call i64 %i.tm(ptr noundef %.1211, ptr noundef nonnull %i.ah, ptr noundef nonnull %.1213, i32 noundef %.pre-phi305, i32 noundef %i.j) #11
  %i.to = add i64 %i.tn, %.0203                   ; 4 uses
  %i.tp = load ptr, ptr @SharpYuvUpdateRGB, align 8, !tbaa !9
  tail call void %i.tp(ptr noundef %.1, ptr noundef nonnull %i.ak, ptr noundef %.1209, i32 noundef %.pre-phi303) #11
  %i.tq = getelementptr inbounds [2 x i8], ptr %.1213, i64 %.pre-phi307
  %i.tr = getelementptr inbounds [2 x i8], ptr %.1209, i64 %.pre-phi311
  %i.ts = getelementptr inbounds [2 x i8], ptr %.1211, i64 %.pre-phi307
  %i.tt = getelementptr inbounds [2 x i8], ptr %.1, i64 %.pre-phi311
  %i.tu = add nuw nsw i32 %.1216, 2               ; 2 uses
  %i.tv = icmp slt i32 %i.tu, %i.d
  br i1 %i.tv, label %bb.h, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %UpdateW.exit269
  %.not = icmp eq i32 %.0214292, 0
  br i1 %.not, label %.preheader.backedge, label %bb.k

.preheader.backedge:                              ; preds = %bb.j, %bb.k
  %.0214292.be = phi i32 [ %i.ty, %bb.k ], [ 1, %bb.j ]
  br label %.preheader, !llvm.loop !28

bb.k:                                             ; preds = %bb.j
  %i.tw = icmp uge i64 %i.to, %i.ad
  %i.tx = icmp ule i64 %i.to, %.0217291
  %or.cond.not297 = and i1 %i.tw, %i.tx
  %i.ty = add nuw nsw i32 %.0214292, 1
  %i.tz = icmp ult i32 %.0214292, 3
  %or.cond294 = select i1 %or.cond.not297, i1 %i.tz, i1 false
  br i1 %or.cond294, label %.preheader.backedge, label %split

split:                                            ; preds = %bb.k
  %notmask.i = shl nsw i32 -1, %12
  %i.ua = xor i32 %notmask.i, -1                  ; 3 uses
  %i.ub = add nsw i32 %i.i, 16
  %i.uc = add nsw i32 %i.i, 15
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw i64 1, %i.ud                    ; 8 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.ui = zext nneg i32 %i.ub to i64              ; 8 uses
  %i.uj = icmp slt i32 %12, 9                     ; 2 uses
  %i.uk = sext i32 %7 to i64                      ; 3 uses
  %smax129.i = tail call i32 @llvm.smax.i32(i32 %13, i32 1) ; 2 uses
  %smax132.i = tail call i32 @llvm.smax.i32(i32 %14, i32 1) ; 3 uses
  br i1 %i.uj, label %.split.us.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %split
  %.pre.pre.i = load i32, ptr %15, align 4, !tbaa !13
  %.pre150.pre.i = load i32, ptr %i.uf, align 4, !tbaa !13
  %.pre151.pre.i = load i32, ptr %i.ug, align 4, !tbaa !13
  %.pre152.pre.i = load i32, ptr %i.uh, align 4, !tbaa !13
  %wide.trip.count.i270 = zext nneg i32 %smax129.i to i64
  %i.ul = sext i32 %.pre.pre.i to i64
  %i.um = sext i32 %.pre150.pre.i to i64
  %i.un = sext i32 %.pre151.pre.i to i64
  %i.uo = sext i32 %.pre152.pre.i to i64
  %i.up = add i64 %i.ue, %i.uo
  br label %.split.i

.split.us.us.preheader.i:                         ; preds = %split
  %wide.trip.count130.i = zext nneg i32 %smax129.i to i64 ; 4 uses
  %i.uq = zext nneg i32 %smax132.i to i64
  %i.ur = add nsw i64 %i.uq, -1
  %i.us = mul nsw i64 %i.ur, %i.uk
  %27 = getelementptr i8, ptr %6, i64 %i.us
  %scevgep.a = getelementptr i8, ptr %27, i64 %wide.trip.count130.i
  %scevgep348 = getelementptr i8, ptr %15, i64 16
  %min.iters.check350 = icmp slt i32 %13, 2
  %bound0 = icmp ult ptr %6, %scevgep348
  %bound1 = icmp ult ptr %15, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %7, 0
  %i.ut = or i1 %found.conflict, %stride.check
  %n.vec352 = and i64 %wide.trip.count130.i, 2147483646 ; 3 uses
  %broadcast.splatinsert359 = insertelement <2 x i64> poison, i64 %i.ue, i64 0
  %broadcast.splat360 = shufflevector <2 x i64> %broadcast.splatinsert359, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <2 x i64> poison, i64 %i.ui, i64 0
  %broadcast.splat362 = shufflevector <2 x i64> %broadcast.splatinsert361, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n374 = icmp eq i64 %n.vec352, %wide.trip.count130.i
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split109.us.us.i, %.split.us.us.preheader.i
  %.096.us.i = phi ptr [ %i.yo, %.split109.us.us.i ], [ %6, %.split.us.us.preheader.i ] ; 3 uses
  %.094.us.i = phi ptr [ %i.yn, %.split109.us.us.i ], [ %i.ai, %.split.us.us.preheader.i ] ; 7 uses
  %.093.us.i = phi ptr [ %i.yi, %.split109.us.us.i ], [ %i.af, %.split.us.us.preheader.i ] ; 3 uses
  %.0.us.i = phi i32 [ %i.yp, %.split109.us.us.i ], [ 0, %.split.us.us.preheader.i ] ; 2 uses
  %brmerge = select i1 %min.iters.check350, i1 true, i1 %i.ut
  br i1 %brmerge, label %scalar.ph349.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.split.us.us.i
  %i.uu = load i32, ptr %15, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.uu, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.uv = sext <2 x i32> %broadcast.splat to <2 x i64>
  %i.uw = load i32, ptr %i.uf, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert353 = insertelement <2 x i32> poison, i32 %i.uw, i64 0
  %broadcast.splat354 = shufflevector <2 x i32> %broadcast.splatinsert353, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ux = sext <2 x i32> %broadcast.splat354 to <2 x i64>
  %i.uy = load i32, ptr %i.ug, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert355 = insertelement <2 x i32> poison, i32 %i.uy, i64 0
  %broadcast.splat356 = shufflevector <2 x i32> %broadcast.splatinsert355, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.uz = sext <2 x i32> %broadcast.splat356 to <2 x i64>
  %i.va = load i32, ptr %i.uh, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert357 = insertelement <2 x i32> poison, i32 %i.va, i64 0
  %broadcast.splat358 = shufflevector <2 x i32> %broadcast.splatinsert357, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vb = sext <2 x i32> %broadcast.splat358 to <2 x i64>
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph351
  %index364 = phi i64 [ 0, %vector.ph351 ], [ %index.next372, %vector.body363 ] ; 4 uses
  %i.vc = trunc nuw nsw i64 %index364 to i32
  %i.vd = lshr exact i32 %i.vc, 1                 ; 3 uses
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i, i64 %index364
  %wide.load365 = load <2 x i16>, ptr %i.ve, align 2, !tbaa !15
  %i.vf = zext <2 x i16> %wide.load365 to <2 x i32> ; 3 uses
  %i.vg = zext nneg i32 %i.vd to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !15
  %broadcast.splatinsert366 = insertelement <2 x i16> poison, i16 %i.vi, i64 0
  %broadcast.splat367 = shufflevector <2 x i16> %broadcast.splatinsert366, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vj = sext <2 x i16> %broadcast.splat367 to <2 x i32>
  %i.vk = add nsw <2 x i32> %i.vj, %i.vf
  %i.vl = add nuw nsw i32 %i.vd, %i.e
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.vm
  %i.vo = load i16, ptr %i.vn, align 2, !tbaa !15
  %broadcast.splatinsert368 = insertelement <2 x i16> poison, i16 %i.vo, i64 0
  %broadcast.splat369 = shufflevector <2 x i16> %broadcast.splatinsert368, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vp = sext <2 x i16> %broadcast.splat369 to <2 x i32>
  %i.vq = add nsw <2 x i32> %i.vp, %i.vf
  %i.vr = add nuw nsw i32 %i.vd, %i.b
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.vs
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !15
  %broadcast.splatinsert370 = insertelement <2 x i16> poison, i16 %i.vu, i64 0
  %broadcast.splat371 = shufflevector <2 x i16> %broadcast.splatinsert370, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vv = sext <2 x i16> %broadcast.splat371 to <2 x i32>
  %i.vw = add nsw <2 x i32> %i.vv, %i.vf
  %i.vx = sext <2 x i32> %i.vk to <2 x i64>
  %i.vy = mul nsw <2 x i64> %i.uv, %i.vx
  %i.vz = sext <2 x i32> %i.vq to <2 x i64>
  %i.wa = mul nsw <2 x i64> %i.ux, %i.vz
  %i.wb = sext <2 x i32> %i.vw to <2 x i64>
  %i.wc = mul nsw <2 x i64> %i.uz, %i.wb
  %i.wd = add <2 x i64> %i.vy, %broadcast.splat360
  %i.we = add <2 x i64> %i.wd, %i.wa
  %i.wf = add <2 x i64> %i.we, %i.wc
  %i.wg = add <2 x i64> %i.wf, %i.vb
  %i.wh = ashr <2 x i64> %i.wg, %broadcast.splat362
  %i.wi = trunc <2 x i64> %i.wh to <2 x i16>
  %i.wj = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.wi, <2 x i16> zeroinitializer)
  %i.wk = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.wj, <2 x i16> splat (i16 255))
  %i.wl = trunc nuw <2 x i16> %i.wk to <2 x i8>
  %i.wm = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %index364
  store <2 x i8> %i.wl, ptr %i.wm, align 1, !tbaa !19, !alias.scope !45, !noalias !44
  %index.next372 = add nuw i64 %index364, 2       ; 2 uses
  %i.wn = icmp eq i64 %index.next372, %n.vec352
  br i1 %i.wn, label %middle.block373, label %vector.body363, !llvm.loop !32

middle.block373:                                  ; preds = %vector.body363
  br i1 %cmp.n374, label %.split109.us.us.i, label %scalar.ph349.preheader

scalar.ph349.preheader:                           ; preds = %.split.us.us.i, %middle.block373
  %indvars.iv126.i.ph = phi i64 [ %n.vec352, %middle.block373 ], [ 0, %.split.us.us.i ]
  br label %scalar.ph349

scalar.ph349:                                     ; preds = %scalar.ph349.preheader, %scalar.ph349
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %scalar.ph349 ], [ %indvars.iv126.i.ph, %scalar.ph349.preheader ] ; 4 uses
  %i.wo = trunc nuw nsw i64 %indvars.iv126.i to i32
  %i.wp = lshr i32 %i.wo, 1                       ; 3 uses
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i, i64 %indvars.iv126.i
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !15
  %i.ws = zext i16 %i.wr to i32                   ; 3 uses
  %i.wt = zext nneg i32 %i.wp to i64
  %i.wu = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.wt
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !15
  %i.ww = sext i16 %i.wv to i32
  %i.wx = add nsw i32 %i.ww, %i.ws
  %i.wy = add nsw i32 %i.wp, %i.e
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.wz
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !15
  %i.xc = sext i16 %i.xb to i32
  %i.xd = add nsw i32 %i.xc, %i.ws
  %i.xe = add nsw i32 %i.wp, %i.b
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.xf
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !15
  %i.xi = sext i16 %i.xh to i32
  %i.xj = add nsw i32 %i.xi, %i.ws
  %i.xk = load i32, ptr %15, align 4, !tbaa !13
  %i.xl = sext i32 %i.xk to i64
  %i.xm = sext i32 %i.wx to i64
  %i.xn = mul nsw i64 %i.xl, %i.xm
  %i.xo = load i32, ptr %i.uf, align 4, !tbaa !13
  %i.xp = sext i32 %i.xo to i64
  %i.xq = sext i32 %i.xd to i64
  %i.xr = mul nsw i64 %i.xp, %i.xq
  %i.xs = load i32, ptr %i.ug, align 4, !tbaa !13
  %i.xt = sext i32 %i.xs to i64
  %i.xu = sext i32 %i.xj to i64
  %i.xv = mul nsw i64 %i.xt, %i.xu
  %i.xw = load i32, ptr %i.uh, align 4, !tbaa !13
  %i.xx = sext i32 %i.xw to i64
  %i.xy = add i64 %i.xn, %i.ue
  %i.xz = add i64 %i.xy, %i.xr
  %i.ya = add i64 %i.xz, %i.xv
  %i.yb = add i64 %i.ya, %i.xx
  %i.yc = ashr i64 %i.yb, %i.ui
  %i.yd = trunc i64 %i.yc to i16
  %i.ye = tail call i16 @llvm.smax.i16(i16 %i.yd, i16 0)
  %i.yf = tail call i16 @llvm.umin.i16(i16 %i.ye, i16 255)
  %i.yg = trunc nuw i16 %i.yf to i8
  %i.yh = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %indvars.iv126.i
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !19
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %.split109.us.us.i, label %scalar.ph349, !llvm.loop !33

.split109.us.us.i:                                ; preds = %scalar.ph349, %middle.block373
  %i.yi = getelementptr inbounds [2 x i8], ptr %.093.us.i, i64 %i.k
  %i.yj = trunc i32 %.0.us.i to i1
  %i.yk = select i1 %i.yj, i32 3, i32 0
  %i.yl = mul nsw i32 %i.yk, %i.e
  %i.ym = sext i32 %i.yl to i64
  %i.yn = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.ym
  %i.yo = getelementptr inbounds i8, ptr %.096.us.i, i64 %i.uk
  %i.yp = add nuw nsw i32 %.0.us.i, 1             ; 2 uses
  %exitcond133.not.i = icmp eq i32 %i.yp, %smax132.i
  br i1 %exitcond133.not.i, label %.preheader.i, label %.split.us.us.i, !llvm.loop !34

.split.i:                                         ; preds = %.split109.i, %.split.preheader.i
  %.096.i = phi ptr [ %i.aaj, %.split109.i ], [ %6, %.split.preheader.i ] ; 2 uses
  %.094.i = phi ptr [ %i.aai, %.split109.i ], [ %i.ai, %.split.preheader.i ] ; 4 uses
  %.093.i = phi ptr [ %i.aad, %.split109.i ], [ %i.af, %.split.preheader.i ] ; 2 uses
  %.0.i = phi i32 [ %i.aak, %.split109.i ], [ 0, %.split.preheader.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i
  %indvars.iv.i271 = phi i64 [ %indvars.iv.next.i272, %bb.l ], [ 0, %.split.i ] ; 4 uses
  %i.yq = trunc nuw nsw i64 %indvars.iv.i271 to i32
  %i.yr = lshr i32 %i.yq, 1                       ; 3 uses
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %.093.i, i64 %indvars.iv.i271
  %i.yt = load i16, ptr %i.ys, align 2, !tbaa !15
  %i.yu = zext i16 %i.yt to i32                   ; 3 uses
  %i.yv = zext nneg i32 %i.yr to i64
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %.094.i, i64 %i.yv
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !15
  %i.yy = sext i16 %i.yx to i32
  %i.yz = add nsw i32 %i.yy, %i.yu
  %i.za = add nsw i32 %i.yr, %i.e
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zb
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !15
  %i.ze = sext i16 %i.zd to i32
  %i.zf = add nsw i32 %i.ze, %i.yu
  %i.zg = add nsw i32 %i.yr, %i.b
  %i.zh = sext i32 %i.zg to i64
  %i.zi = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zh
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !15
  %i.zk = sext i16 %i.zj to i32
  %i.zl = add nsw i32 %i.zk, %i.yu
  %i.zm = sext i32 %i.yz to i64
  %i.zn = mul nsw i64 %i.zm, %i.ul
  %i.zo = sext i32 %i.zf to i64
  %i.zp = mul nsw i64 %i.zo, %i.um
  %i.zq = sext i32 %i.zl to i64
  %i.zr = mul nsw i64 %i.zq, %i.un
  %i.zs = add i64 %i.up, %i.zn
  %i.zt = add i64 %i.zs, %i.zp
  %i.zu = add i64 %i.zt, %i.zr
  %i.zv = ashr i64 %i.zu, %i.ui                   ; 2 uses
  %i.zw = and i64 %i.zv, 32768
  %.not.i = icmp eq i64 %i.zw, 0
  %i.zx = trunc i64 %i.zv to i32
  %i.zy = and i32 %i.zx, 65535
  %i.zz = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.ua, i32 %i.zy)
  %i.aaa = trunc nuw i32 %i.zz to i16
  %i.aab = select i1 %.not.i, i16 %i.aaa, i16 0
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %indvars.iv.i271
  store i16 %i.aab, ptr %i.aac, align 2, !tbaa !15
  %indvars.iv.next.i272 = add nuw nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %exitcond.not.i273 = icmp eq i64 %indvars.iv.next.i272, %wide.trip.count.i270
  br i1 %exitcond.not.i273, label %.split109.i, label %bb.l, !llvm.loop !35

.split109.i:                                      ; preds = %bb.l
  %i.aad = getelementptr inbounds [2 x i8], ptr %.093.i, i64 %i.k
  %i.aae = trunc i32 %.0.i to i1
  %i.aaf = select i1 %i.aae, i32 3, i32 0
  %i.aag = mul nsw i32 %i.aaf, %i.e
  %i.aah = sext i32 %i.aag to i64
  %i.aai = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.aah
  %i.aaj = getelementptr inbounds i8, ptr %.096.i, i64 %i.uk
  %i.aak = add nuw nsw i32 %.0.i, 1               ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aak, %smax132.i
  br i1 %exitcond125.not.i, label %.preheader.i, label %.split.i, !llvm.loop !34

.preheader.i:                                     ; preds = %.split109.i, %.split109.us.us.i
  %i.aal = getelementptr i8, ptr %15, i64 16      ; 5 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 3 uses
  %i.aat = sext i32 %9 to i64                     ; 3 uses
  %i.aau = sext i32 %11 to i64                    ; 3 uses
  %smax145.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 2 uses
  %smax148.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
  br i1 %i.uj, label %.split115.us.us.preheader.i, label %.split115.preheader.i

.split115.preheader.i:                            ; preds = %.preheader.i
  %.pre153.pre.i = load i32, ptr %i.aal, align 4, !tbaa !13
  %.pre154.pre.i = load i32, ptr %i.aam, align 4, !tbaa !13
  %.pre155.pre.i = load i32, ptr %i.aan, align 4, !tbaa !13
  %.pre156.pre.i = load i32, ptr %i.aao, align 4, !tbaa !13
  %.pre157.pre.i = load i32, ptr %i.aap, align 4, !tbaa !13
  %.pre158.pre.i = load i32, ptr %i.aaq, align 4, !tbaa !13
  %.pre159.pre.i = load i32, ptr %i.aar, align 4, !tbaa !13
  %.pre160.pre.i = load i32, ptr %i.aas, align 4, !tbaa !13
  %wide.trip.count138.i = zext nneg i32 %smax145.i to i64
  %i.aav = sext i32 %.pre153.pre.i to i64
  %i.aaw = sext i32 %.pre154.pre.i to i64
  %i.aax = sext i32 %.pre155.pre.i to i64
  %i.aay = sext i32 %.pre156.pre.i to i64
  %i.aaz = sext i32 %.pre157.pre.i to i64
  %i.aba = sext i32 %.pre158.pre.i to i64
  %i.abb = sext i32 %.pre159.pre.i to i64
  %i.abc = sext i32 %.pre160.pre.i to i64
  %i.abd = add i64 %i.ue, %i.aay
  %i.abe = add i64 %i.ue, %i.abc
  br label %.split115.i

.split115.us.us.preheader.i:                      ; preds = %.preheader.i
  %wide.trip.count146.i = zext nneg i32 %smax145.i to i64 ; 5 uses
  %i.abf = zext nneg i32 %smax148.i to i64
  %i.abg = add nsw i64 %i.abf, -1                 ; 2 uses
  %i.abh = mul nsw i64 %i.abg, %i.aat
  %i.abi = getelementptr i8, ptr %8, i64 %i.abh
  %scevgep377 = getelementptr i8, ptr %i.abi, i64 %wide.trip.count146.i ; 2 uses
  %i.abj = mul nsw i64 %i.abg, %i.aau
  %28 = getelementptr i8, ptr %10, i64 %i.abj
  %scevgep378 = getelementptr i8, ptr %28, i64 %wide.trip.count146.i ; 2 uses
  %scevgep379 = getelementptr i8, ptr %15, i64 48 ; 2 uses
  %min.iters.check394 = icmp slt i32 %i.e, 12
  %bound0380 = icmp ult ptr %8, %scevgep378
  %bound1381 = icmp ult ptr %10, %scevgep377
  %found.conflict382 = and i1 %bound0380, %bound1381
  %i.abk = or i32 %11, %9
  %i.abl = icmp slt i32 %i.abk, 0
  %i.abm = or i1 %found.conflict382, %i.abl
  %bound0385 = icmp ult ptr %8, %scevgep379
  %bound1386 = icmp ult ptr %i.aal, %scevgep377
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %i.abm, %found.conflict387
  %bound0389 = icmp ult ptr %10, %scevgep379
  %bound1390 = icmp ult ptr %i.aal, %scevgep378
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %n.vec396 = and i64 %wide.trip.count146.i, 2147483644 ; 3 uses
  %broadcast.splatinsert413 = insertelement <4 x i64> poison, i64 %i.ue, i64 0
  %broadcast.splat414 = shufflevector <4 x i64> %broadcast.splatinsert413, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert415 = insertelement <4 x i64> poison, i64 %i.ui, i64 0
  %broadcast.splat416 = shufflevector <4 x i64> %broadcast.splatinsert415, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n424 = icmp eq i64 %n.vec396, %wide.trip.count146.i
  br label %.split115.us.us.i

.split115.us.us.i:                                ; preds = %.split117.us.us.i, %.split115.us.us.preheader.i
  %.098.us.i = phi ptr [ %i.afj, %.split117.us.us.i ], [ %10, %.split115.us.us.preheader.i ] ; 3 uses
  %.097.us.i = phi ptr [ %i.afi, %.split117.us.us.i ], [ %8, %.split115.us.us.preheader.i ] ; 3 uses
  %.195.us.i = phi ptr [ %i.afh, %.split117.us.us.i ], [ %i.ai, %.split115.us.us.preheader.i ] ; 5 uses
  %.1.us.i = phi i32 [ %i.afk, %.split117.us.us.i ], [ 0, %.split115.us.us.preheader.i ]
  %invariant.gep169.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.p ; 2 uses
  %invariant.gep171.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.k ; 2 uses
  %brmerge440 = select i1 %min.iters.check394, i1 true, i1 %conflict.rdx392
  br i1 %brmerge440, label %scalar.ph393.preheader, label %vector.ph395

vector.ph395:                                     ; preds = %.split115.us.us.i
  %i.abn = load i32, ptr %i.aal, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %i.abn, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abo = sext <4 x i32> %broadcast.splat398 to <4 x i64>
  %i.abp = load i32, ptr %i.aam, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %i.abp, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abq = sext <4 x i32> %broadcast.splat400 to <4 x i64>
  %i.abr = load i32, ptr %i.aan, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert401 = insertelement <4 x i32> poison, i32 %i.abr, i64 0
  %broadcast.splat402 = shufflevector <4 x i32> %broadcast.splatinsert401, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abs = sext <4 x i32> %broadcast.splat402 to <4 x i64>
  %i.abt = load i32, ptr %i.aao, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert403 = insertelement <4 x i32> poison, i32 %i.abt, i64 0
  %broadcast.splat404 = shufflevector <4 x i32> %broadcast.splatinsert403, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abu = sext <4 x i32> %broadcast.splat404 to <4 x i64>
  %i.abv = load i32, ptr %i.aap, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert405 = insertelement <4 x i32> poison, i32 %i.abv, i64 0
  %broadcast.splat406 = shufflevector <4 x i32> %broadcast.splatinsert405, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abw = sext <4 x i32> %broadcast.splat406 to <4 x i64>
  %i.abx = load i32, ptr %i.aaq, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert407 = insertelement <4 x i32> poison, i32 %i.abx, i64 0
  %broadcast.splat408 = shufflevector <4 x i32> %broadcast.splatinsert407, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aby = sext <4 x i32> %broadcast.splat408 to <4 x i64>
  %i.abz = load i32, ptr %i.aar, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert409 = insertelement <4 x i32> poison, i32 %i.abz, i64 0
  %broadcast.splat410 = shufflevector <4 x i32> %broadcast.splatinsert409, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aca = sext <4 x i32> %broadcast.splat410 to <4 x i64>
  %i.acb = load i32, ptr %i.aas, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert411 = insertelement <4 x i32> poison, i32 %i.acb, i64 0
  %broadcast.splat412 = shufflevector <4 x i32> %broadcast.splatinsert411, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acc = sext <4 x i32> %broadcast.splat412 to <4 x i64>
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph395
  %index418 = phi i64 [ 0, %vector.ph395 ], [ %index.next422, %vector.body417 ] ; 6 uses
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %index418
  %wide.load419 = load <4 x i16>, ptr %i.acd, align 2, !tbaa !15
  %i.ace = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %index418
  %wide.load420 = load <4 x i16>, ptr %i.ace, align 2, !tbaa !15
  %i.acf = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index418
  %wide.load421 = load <4 x i16>, ptr %i.acf, align 2, !tbaa !15
  %i.acg = sext <4 x i16> %wide.load419 to <4 x i64> ; 2 uses
  %i.ach = mul nsw <4 x i64> %i.abo, %i.acg
  %i.aci = sext <4 x i16> %wide.load420 to <4 x i64> ; 2 uses
  %i.acj = mul nsw <4 x i64> %i.abq, %i.aci
  %i.ack = sext <4 x i16> %wide.load421 to <4 x i64> ; 2 uses
  %i.acl = mul nsw <4 x i64> %i.abs, %i.ack
  %i.acm = add <4 x i64> %i.ach, %broadcast.splat414
  %i.acn = add <4 x i64> %i.acm, %i.acj
  %i.aco = add <4 x i64> %i.acn, %i.acl
  %i.acp = add <4 x i64> %i.aco, %i.abu
  %i.acq = ashr <4 x i64> %i.acp, %broadcast.splat416
  %i.acr = mul nsw <4 x i64> %i.abw, %i.acg
  %i.acs = mul nsw <4 x i64> %i.aby, %i.aci
  %i.act = mul nsw <4 x i64> %i.aca, %i.ack
  %i.acu = add <4 x i64> %i.acr, %broadcast.splat414
  %i.acv = add <4 x i64> %i.acu, %i.acs
  %i.acw = add <4 x i64> %i.acv, %i.act
  %i.acx = add <4 x i64> %i.acw, %i.acc
  %i.acy = ashr <4 x i64> %i.acx, %broadcast.splat416
  %i.acz = trunc <4 x i64> %i.acq to <4 x i16>
  %i.ada = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.acz, <4 x i16> zeroinitializer)
  %i.adb = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.ada, <4 x i16> splat (i16 255))
  %i.adc = trunc nuw <4 x i16> %i.adb to <4 x i8>
  %i.add = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %index418
  store <4 x i8> %i.adc, ptr %i.add, align 1, !tbaa !19, !alias.scope !47, !noalias !48
  %i.ade = trunc <4 x i64> %i.acy to <4 x i16>
  %i.adf = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ade, <4 x i16> zeroinitializer)
  %i.adg = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.adf, <4 x i16> splat (i16 255))
  %i.adh = trunc nuw <4 x i16> %i.adg to <4 x i8>
  %i.adi = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %index418
  store <4 x i8> %i.adh, ptr %i.adi, align 1, !tbaa !19, !alias.scope !49, !noalias !46
  %index.next422 = add nuw i64 %index418, 4       ; 2 uses
  %i.adj = icmp eq i64 %index.next422, %n.vec396
  br i1 %i.adj, label %middle.block423, label %vector.body417, !llvm.loop !40

middle.block423:                                  ; preds = %vector.body417
  br i1 %cmp.n424, label %.split117.us.us.i, label %scalar.ph393.preheader

scalar.ph393.preheader:                           ; preds = %.split115.us.us.i, %middle.block423
  %indvars.iv142.i.ph = phi i64 [ %n.vec396, %middle.block423 ], [ 0, %.split115.us.us.i ]
  br label %scalar.ph393

scalar.ph393:                                     ; preds = %scalar.ph393.preheader, %scalar.ph393
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %scalar.ph393 ], [ %indvars.iv142.i.ph, %scalar.ph393.preheader ] ; 6 uses
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %indvars.iv142.i
  %i.adl = load i16, ptr %i.adk, align 2, !tbaa !15
  %gep170.i = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %indvars.iv142.i
  %i.adm = load i16, ptr %gep170.i, align 2, !tbaa !15
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv142.i
  %i.adn = load i16, ptr %gep172.i, align 2, !tbaa !15
  %i.ado = load i32, ptr %i.aal, align 4, !tbaa !13
  %i.adp = sext i32 %i.ado to i64
  %i.adq = sext i16 %i.adl to i64                 ; 2 uses
  %i.adr = mul nsw i64 %i.adp, %i.adq
  %i.ads = load i32, ptr %i.aam, align 4, !tbaa !13
  %i.adt = sext i32 %i.ads to i64
  %i.adu = sext i16 %i.adm to i64                 ; 2 uses
  %i.adv = mul nsw i64 %i.adt, %i.adu
  %i.adw = load i32, ptr %i.aan, align 4, !tbaa !13
  %i.adx = sext i32 %i.adw to i64
  %i.ady = sext i16 %i.adn to i64                 ; 2 uses
  %i.adz = mul nsw i64 %i.adx, %i.ady
  %i.aea = load i32, ptr %i.aao, align 4, !tbaa !13
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = add i64 %i.adr, %i.ue
  %i.aed = add i64 %i.aec, %i.adv
  %i.aee = add i64 %i.aed, %i.adz
  %i.aef = add i64 %i.aee, %i.aeb
  %i.aeg = ashr i64 %i.aef, %i.ui
  %i.aeh = load i32, ptr %i.aap, align 4, !tbaa !13
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = mul nsw i64 %i.aei, %i.adq
  %i.aek = load i32, ptr %i.aaq, align 4, !tbaa !13
  %i.ael = sext i32 %i.aek to i64
  %i.aem = mul nsw i64 %i.ael, %i.adu
  %i.aen = load i32, ptr %i.aar, align 4, !tbaa !13
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = mul nsw i64 %i.aeo, %i.ady
  %i.aeq = load i32, ptr %i.aas, align 4, !tbaa !13
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = add i64 %i.aej, %i.ue
  %i.aet = add i64 %i.aes, %i.aem
  %i.aeu = add i64 %i.aet, %i.aep
  %i.aev = add i64 %i.aeu, %i.aer
  %i.aew = ashr i64 %i.aev, %i.ui
  %i.aex = trunc i64 %i.aeg to i16
  %i.aey = tail call i16 @llvm.smax.i16(i16 %i.aex, i16 0)
  %i.aez = tail call i16 @llvm.umin.i16(i16 %i.aey, i16 255)
  %i.afa = trunc nuw i16 %i.aez to i8
  %i.afb = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %indvars.iv142.i
  store i8 %i.afa, ptr %i.afb, align 1, !tbaa !19
  %i.afc = trunc i64 %i.aew to i16
  %i.afd = tail call i16 @llvm.smax.i16(i16 %i.afc, i16 0)
  %i.afe = tail call i16 @llvm.umin.i16(i16 %i.afd, i16 255)
  %i.aff = trunc nuw i16 %i.afe to i8
  %i.afg = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %indvars.iv142.i
  store i8 %i.aff, ptr %i.afg, align 1, !tbaa !19
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %.split117.us.us.i, label %scalar.ph393, !llvm.loop !41

.split117.us.us.i:                                ; preds = %scalar.ph393, %middle.block423
  %i.afh = getelementptr inbounds [2 x i8], ptr %.195.us.i, i64 %.pre-phi311
  %i.afi = getelementptr inbounds i8, ptr %.097.us.i, i64 %i.aat
  %i.afj = getelementptr inbounds i8, ptr %.098.us.i, i64 %i.aau
  %i.afk = add nuw nsw i32 %.1.us.i, 1            ; 2 uses
  %exitcond149.not.i = icmp eq i32 %i.afk, %smax148.i
  br i1 %exitcond149.not.i, label %ConvertWRGBToYUV.exit, label %.split115.us.us.i, !llvm.loop !42

.split115.i:                                      ; preds = %.split117.i, %.split115.preheader.i
  %.098.i = phi ptr [ %i.agw, %.split117.i ], [ %10, %.split115.preheader.i ] ; 2 uses
  %.097.i = phi ptr [ %i.agv, %.split117.i ], [ %8, %.split115.preheader.i ] ; 2 uses
  %.195.i = phi ptr [ %i.agu, %.split117.i ], [ %i.ai, %.split115.preheader.i ] ; 4 uses
  %.1.i = phi i32 [ %i.agx, %.split117.i ], [ 0, %.split115.preheader.i ]
  %invariant.gep.i274 = getelementptr [2 x i8], ptr %.195.i, i64 %i.p
  %invariant.gep167.i = getelementptr [2 x i8], ptr %.195.i, i64 %i.k
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.split115.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %bb.m ], [ 0, %.split115.i ] ; 6 uses
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %.195.i, i64 %indvars.iv134.i
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !15
  %gep.i275 = getelementptr [2 x i8], ptr %invariant.gep.i274, i64 %indvars.iv134.i
  %i.afn = load i16, ptr %gep.i275, align 2, !tbaa !15
  %gep168.i = getelementptr [2 x i8], ptr %invariant.gep167.i, i64 %indvars.iv134.i
  %i.afo = load i16, ptr %gep168.i, align 2, !tbaa !15
  %i.afp = sext i16 %i.afm to i64                 ; 2 uses
  %i.afq = mul nsw i64 %i.afp, %i.aav
  %i.afr = sext i16 %i.afn to i64                 ; 2 uses
  %i.afs = mul nsw i64 %i.afr, %i.aaw
  %i.aft = sext i16 %i.afo to i64                 ; 2 uses
  %i.afu = mul nsw i64 %i.aft, %i.aax
  %i.afv = add i64 %i.abd, %i.afq
  %i.afw = add i64 %i.afv, %i.afs
  %i.afx = add i64 %i.afw, %i.afu
  %i.afy = ashr i64 %i.afx, %i.ui                 ; 2 uses
  %i.afz = mul nsw i64 %i.afp, %i.aaz
end_hunk_1
