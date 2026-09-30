Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.x = icmp samesign ugt i32 %5, 8
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = or i32 %4, %3
  %i.z = and i32 %i.y, 1
  %or.cond = icmp eq i32 %i.z, 0
  br i1 %or.cond, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp samesign ugt i32 %12, 8            ; 2 uses
  %i.ab = add nuw nsw i32 %13, 1
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = zext nneg i32 %9 to i64
  %i.aj = sext i32 %11 to i64
  %i.ak = icmp slt i32 %7, 0
  br i1 %i.ak, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = zext nneg i32 %7 to i64
  %i.am = zext nneg i32 %13 to i64                ; 2 uses
  %i.an = zext i1 %i.aa to i64                    ; 2 uses
  %i.ao = shl nuw nsw i64 %i.am, %i.an
  %i.ap = icmp samesign ugt i64 %i.ao, %i.al
  %i.aq = icmp slt i32 %9, 0
  %or.cond29 = or i1 %i.aq, %i.ap
  br i1 %or.cond29, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = shl nuw nsw i64 %i.ad, %i.an            ; 2 uses
  %i.as = icmp samesign ugt i64 %i.ar, %i.ai
  %i.at = icmp slt i32 %11, 0
  %or.cond31 = or i1 %i.at, %i.as
  %i.au = icmp ugt i64 %i.ar, %i.aj
  %or.cond157 = or i1 %i.au, %or.cond31
  br i1 %or.cond157, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq i32 %3, 0
  %i.aw = mul nuw nsw i64 %i.am, %i.af
  %i.ax = icmp samesign ugt i64 %i.aw, %i.ah
  %or.cond159 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond159, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.i
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.ay = or i32 %9, %7
  %i.az = or i32 %i.ay, %11
  %i.ba = and i32 %i.az, 1
  %or.cond161 = icmp eq i32 %i.ba, 0
  br i1 %or.cond161, label %bb.k, label %bb.m

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
  %i.bm = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp slt i32 %i.b, 8
  %invariant.op384 = add i64 %i.bb, -1
  %invariant.op386 = add i64 %i.be, -1
  %invariant.op388 = add i64 %i.bh, -1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter378 = and i64 %wide.trip.count.i, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  %i.bn = add nsw i64 %wide.trip.count.i, -1
  br label %bb.c

.preheader282:                                    ; preds = %UpdateW.exit249, %..preheader282_crit_edge
  %.pre-phi311 = phi i64 [ %.pre310, %..preheader282_crit_edge ], [ %i.av, %UpdateW.exit249 ] ; 4 uses
  %wide.trip.count.i251.pre-phi = phi i64 [ %.pre309, %..preheader282_crit_edge ], [ %wide.trip.count.i, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi307 = phi i64 [ %.pre306, %..preheader282_crit_edge ], [ %i.at, %UpdateW.exit249 ] ; 4 uses
  %.pre-phi305 = phi i32 [ %.pre304, %..preheader282_crit_edge ], [ %i.as, %UpdateW.exit249 ]
  %.pre-phi303 = phi i32 [ %.pre302, %..preheader282_crit_edge ], [ %i.au, %UpdateW.exit249 ] ; 2 uses
  %.pre-phi301 = phi i64 [ %.pre300, %..preheader282_crit_edge ], [ %i.ao, %UpdateW.exit249 ]
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.y, i64 %.pre-phi301 ; 7 uses
  %i.bp = add nsw i32 %i.d, -2
  %i.bq = add nsw i32 %i.b, -1                    ; 3 uses
  %i.br = ashr i32 %i.bq, 1                       ; 6 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.j           ; 13 uses
  %i.bs = xor i32 %notmask.i.i.i, -1              ; 12 uses
  %i.bt = add nsw i32 %i.bq, %i.b
  %i.bu = sext i32 %i.bt to i64
  %i.bv = sext i32 %i.bq to i64                   ; 7 uses
  %i.bw = add nsw i32 %i.e, -1
  %i.bx = sext i32 %i.bw to i64                   ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bv
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bv
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.k ; 5 uses
  %i.cd = getelementptr [2 x i8], ptr %i.bo, i64 %i.k ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.bv
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.bv
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.k ; 3 uses
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.k ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.bv
  %i.cn = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.bv
  %invariant.gep25.i253 = getelementptr [2 x i8], ptr %i.y, i64 %.pre-phi307
  %i.co = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.k
  %invariant.gep25.i263 = getelementptr [2 x i8], ptr %i.bo, i64 %.pre-phi307
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %UpdateW.exit249
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %UpdateW.exit249 ] ; 3 uses
  %.0200290 = phi ptr [ %0, %.lr.ph ], [ %i.jp, %UpdateW.exit249 ] ; 3 uses
  %.0201289 = phi ptr [ %1, %.lr.ph ], [ %i.jq, %UpdateW.exit249 ] ; 3 uses
  %.0202288 = phi ptr [ %2, %.lr.ph ], [ %i.jr, %UpdateW.exit249 ] ; 3 uses
  %.0207287 = phi ptr [ %i.aj, %.lr.ph ], [ %i.jo, %UpdateW.exit249 ] ; 3 uses
  %.0208286 = phi ptr [ %i.ai, %.lr.ph ], [ %i.jm, %UpdateW.exit249 ] ; 2 uses
  %.0210285 = phi ptr [ %i.ag, %.lr.ph ], [ %i.jn, %UpdateW.exit249 ] ; 3 uses
  %.0212284 = phi ptr [ %i.af, %.lr.ph ], [ %i.jl, %UpdateW.exit249 ] ; 6 uses
  %.0215283 = phi i32 [ 0, %.lr.ph ], [ %i.js, %UpdateW.exit249 ] ; 2 uses
  %i.cp = mul i64 %i.bi, %indvar                  ; 3 uses
  %i.cq = mul i64 %i.bc, %indvar                  ; 3 uses
  %i.cr = icmp eq i32 %.0215283, %i.am
  tail call fastcc void @ImportOneRow(ptr noundef %.0200290, ptr noundef %.0201289, ptr noundef %.0202288, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.y)
  br i1 %i.cr, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cs = getelementptr inbounds i8, ptr %.0200290, i64 %i.aq
  %i.ct = getelementptr inbounds i8, ptr %.0201289, i64 %i.aq
  %i.cu = getelementptr inbounds i8, ptr %.0202288, i64 %i.aq
  tail call fastcc void @ImportOneRow(ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.cu, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef %i.ap)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ap, ptr nonnull align 2 %i.y, i64 %i.ar, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %min.iters.check335, label %scalar.ph334.preheader, label %vector.memcheck328

vector.memcheck328:                               ; preds = %bb.f
  %.reass = add i64 %i.cp, %invariant.op
  %diff.check329 = icmp ult i64 %.reass, 15
  %.reass381 = add i64 %i.cp, %invariant.op380
  %diff.check330 = icmp ult i64 %.reass381, 15
  %conflict.rdx331 = or i1 %diff.check329, %diff.check330
  %.reass383 = add i64 %i.cp, %invariant.op382
  %diff.check332 = icmp ult i64 %.reass383, 15
  %conflict.rdx333 = or i1 %conflict.rdx331, %diff.check332
  br i1 %conflict.rdx333, label %scalar.ph334.preheader, label %vector.body338

vector.body338:                                   ; preds = %vector.memcheck328, %vector.body338
  %index339 = phi i64 [ %index.next343, %vector.body338 ], [ 0, %vector.memcheck328 ] ; 5 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %index339
  %wide.load340 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !15
  %i.cw = zext <8 x i16> %wide.load340 to <8 x i32>
  %i.cx = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index339
  %wide.load341 = load <8 x i16>, ptr %i.cx, align 2, !tbaa !15
  %i.cy = zext <8 x i16> %wide.load341 to <8 x i32>
  %i.cz = getelementptr [2 x i8], ptr %invariant.gep13.i, i64 %index339
  %wide.load342 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !15
  %i.da = zext <8 x i16> %wide.load342 to <8 x i32>
  %i.db = mul nuw nsw <8 x i32> %i.cw, splat (i32 13933)
  %i.dc = mul nuw <8 x i32> %i.cy, splat (i32 46871)
  %i.dd = mul nuw nsw <8 x i32> %i.da, splat (i32 4732)
  %i.de = add nuw nsw <8 x i32> %i.db, splat (i32 32768)
  %i.df = add nuw <8 x i32> %i.de, %i.dc
  %i.dg = add nuw <8 x i32> %i.df, %i.dd
end_hunk_0
begin_hunk_1_@DoSharpArgbToYuv:bb.a
  store i16 %i.ow, ptr %i.cg, align 2, !tbaa !15
  %i.ox = load i16, ptr %i.of, align 2, !tbaa !15
  %i.oy = sext i16 %i.ox to i32
  %i.oz = getelementptr inbounds [2 x i8], ptr %i.mw, i64 %i.bx
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !15
  %i.pb = sext i16 %i.pa to i32
  %i.pc = load i16, ptr %i.kb, align 2, !tbaa !15
  %i.pd = zext i16 %i.pc to i32
  %i.pe = mul nsw i32 %i.oy, 3
  %i.pf = add nsw i32 %i.pb, 2
  %i.pg = add nsw i32 %i.pf, %i.pe
  %i.ph = ashr i32 %i.pg, 2
  %i.pi = add nsw i32 %i.ph, %i.pd                ; 3 uses
  %i.pj = and i32 %i.pi, %notmask.i.i.i
  %.not.i.i66.us.1.i = icmp eq i32 %i.pj, 0
  %i.pk = icmp slt i32 %i.pi, 0
  %i.pl = select i1 %i.pk, i32 0, i32 %i.bs
  %i.pm = select i1 %.not.i.i66.us.1.i, i32 %i.pi, i32 %i.pl
  %i.pn = trunc i32 %i.pm to i16
  store i16 %i.pn, ptr %i.ch, align 2, !tbaa !15
  %i.po = getelementptr inbounds [2 x i8], ptr %i.mu, i64 %i.p ; 3 uses
  %i.pp = getelementptr inbounds [2 x i8], ptr %i.mv, i64 %i.p ; 5 uses
  %i.pq = getelementptr inbounds [2 x i8], ptr %i.mw, i64 %i.p ; 3 uses
  %i.pr = load i16, ptr %i.pp, align 2, !tbaa !15
  %i.ps = sext i16 %i.pr to i32
  %i.pt = load i16, ptr %i.po, align 2, !tbaa !15
  %i.pu = sext i16 %i.pt to i32
  %i.pv = load i16, ptr %.1213, align 2, !tbaa !15
  %i.pw = zext i16 %i.pv to i32
  %i.px = mul nsw i32 %i.ps, 3
  %i.py = add nsw i32 %i.pu, 2
  %i.pz = add nsw i32 %i.py, %i.px
  %i.qa = ashr i32 %i.pz, 2
  %i.qb = add nsw i32 %i.qa, %i.pw                ; 3 uses
  %i.qc = and i32 %i.qb, %notmask.i.i.i
  %.not.i.i.us.2.i = icmp eq i32 %i.qc, 0
  %i.qd = icmp slt i32 %i.qb, 0
  %i.qe = select i1 %i.qd, i32 0, i32 %i.bs
  %i.qf = select i1 %.not.i.i.us.2.i, i32 %i.qb, i32 %i.qe
  %i.qg = trunc i32 %i.qf to i16
  store i16 %i.qg, ptr %i.ci, align 2, !tbaa !15
  %i.qh = load i16, ptr %i.pp, align 2, !tbaa !15
  %i.qi = sext i16 %i.qh to i32
  %i.qj = load i16, ptr %i.pq, align 2, !tbaa !15
  %i.qk = sext i16 %i.qj to i32
  %i.ql = load i16, ptr %i.jy, align 2, !tbaa !15
  %i.qm = zext i16 %i.ql to i32
  %i.qn = mul nsw i32 %i.qi, 3
  %i.qo = add nsw i32 %i.qk, 2
  %i.qp = add nsw i32 %i.qo, %i.qn
  %i.qq = ashr i32 %i.qp, 2
  %i.qr = add nsw i32 %i.qq, %i.qm                ; 3 uses
  %i.qs = and i32 %i.qr, %notmask.i.i.i
  %.not.i.i62.us.2.i = icmp eq i32 %i.qs, 0
  %i.qt = icmp slt i32 %i.qr, 0
  %i.qu = select i1 %i.qt, i32 0, i32 %i.bs
  %i.qv = select i1 %.not.i.i62.us.2.i, i32 %i.qr, i32 %i.qu
  %i.qw = trunc i32 %i.qv to i16
  store i16 %i.qw, ptr %i.cj, align 2, !tbaa !15
  %i.qx = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.qx(ptr noundef nonnull %i.pp, ptr noundef nonnull %i.po, i32 noundef %i.br, ptr noundef nonnull %i.jz, ptr noundef nonnull %i.ck, i32 noundef %i.j) #11, !inline_history !26
  %i.qy = load ptr, ptr @SharpYuvFilterRow, align 8, !tbaa !9
  tail call void %i.qy(ptr noundef nonnull %i.pp, ptr noundef nonnull %i.pq, i32 noundef %i.br, ptr noundef nonnull %i.ka, ptr noundef nonnull %i.cl, i32 noundef %i.j) #11, !inline_history !26
  %i.qz = getelementptr inbounds [2 x i8], ptr %i.pp, i64 %i.bx ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !15
  %i.rb = sext i16 %i.ra to i32
  %i.rc = getelementptr inbounds [2 x i8], ptr %i.po, i64 %i.bx
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !15
  %i.re = sext i16 %i.rd to i32
  %i.rf = load i16, ptr %i.kc, align 2, !tbaa !15
  %i.rg = zext i16 %i.rf to i32
  %i.rh = mul nsw i32 %i.rb, 3
  %i.ri = add nsw i32 %i.re, 2
  %i.rj = add nsw i32 %i.ri, %i.rh
  %i.rk = ashr i32 %i.rj, 2
  %i.rl = add nsw i32 %i.rk, %i.rg                ; 3 uses
  %i.rm = and i32 %i.rl, %notmask.i.i.i
  %.not.i.i64.us.2.i = icmp eq i32 %i.rm, 0
  %i.rn = icmp slt i32 %i.rl, 0
  %i.ro = select i1 %i.rn, i32 0, i32 %i.bs
  %i.rp = select i1 %.not.i.i64.us.2.i, i32 %i.rl, i32 %i.ro
  %i.rq = trunc i32 %i.rp to i16
  store i16 %i.rq, ptr %i.cm, align 2, !tbaa !15
  %i.rr = load i16, ptr %i.qz, align 2, !tbaa !15
  %i.rs = sext i16 %i.rr to i32
  %i.rt = getelementptr inbounds [2 x i8], ptr %i.pq, i64 %i.bx
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !15
  %i.rv = sext i16 %i.ru to i32
  %i.rw = load i16, ptr %i.kb, align 2, !tbaa !15
  %i.rx = zext i16 %i.rw to i32
  %i.ry = mul nsw i32 %i.rs, 3
  %i.rz = add nsw i32 %i.rv, 2
  %i.sa = add nsw i32 %i.rz, %i.ry
  %i.sb = ashr i32 %i.sa, 2
  %i.sc = add nsw i32 %i.sb, %i.rx                ; 3 uses
  %i.sd = and i32 %i.sc, %notmask.i.i.i
  %.not.i.i66.us.2.i = icmp eq i32 %i.sd, 0
  %i.se = icmp slt i32 %i.sc, 0
  %i.sf = select i1 %i.se, i32 0, i32 %i.bs
  %i.sg = select i1 %.not.i.i66.us.2.i, i32 %i.sc, i32 %i.sf
  %i.sh = trunc i32 %i.sg to i16
  store i16 %i.sh, ptr %i.cn, align 2, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i254 = phi i64 [ %indvars.iv.next.i257, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv.i254
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !15
  %i.sk = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sj, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i255 = getelementptr [2 x i8], ptr %i.cc, i64 %indvars.iv.i254
  %i.sl = load i16, ptr %gep.i255, align 2, !tbaa !15
  %i.sm = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sl, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i256 = getelementptr [2 x i8], ptr %invariant.gep25.i253, i64 %indvars.iv.i254
  %i.sn = load i16, ptr %gep26.i256, align 2, !tbaa !15
  %i.so = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.sn, i32 noundef %i.j, i32 noundef %16) #11
  %i.sp = zext i32 %i.sk to i64
  %i.sq = zext i32 %i.sm to i64
  %i.sr = zext i32 %i.so to i64
  %i.ss = mul nuw nsw i64 %i.sp, 13933
  %i.st = mul nuw nsw i64 %i.sq, 46871
  %i.su = mul nuw nsw i64 %i.sr, 4732
  %i.sv = add nuw nsw i64 %i.ss, 32768
  %i.sw = add nuw nsw i64 %i.sv, %i.st
  %i.sx = add nuw nsw i64 %i.sw, %i.su
  %i.sy = lshr i64 %i.sx, 16
  %i.sz = trunc nuw i64 %i.sy to i32
  %i.ta = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.sz, i32 noundef %i.j, i32 noundef %16) #11
  %i.tb = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv.i254
  store i16 %i.ta, ptr %i.tb, align 2, !tbaa !15
  %indvars.iv.next.i257 = add nuw nsw i64 %indvars.iv.i254, 1 ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next.i257, %wide.trip.count.i251.pre-phi
  br i1 %exitcond.not.i258, label %UpdateW.exit259, label %bb.i, !llvm.loop !24

UpdateW.exit259:                                  ; preds = %bb.i, %UpdateW.exit259
  %indvars.iv.i264 = phi i64 [ %indvars.iv.next.i267, %UpdateW.exit259 ], [ 0, %bb.i ] ; 5 uses
  %i.tc = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.i264
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !15
  %i.te = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.td, i32 noundef %i.j, i32 noundef %16) #11
  %gep.i265 = getelementptr [2 x i8], ptr %i.cd, i64 %indvars.iv.i264
  %i.tf = load i16, ptr %gep.i265, align 2, !tbaa !15
  %i.tg = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.tf, i32 noundef %i.j, i32 noundef %16) #11
  %gep26.i266 = getelementptr [2 x i8], ptr %invariant.gep25.i263, i64 %indvars.iv.i264
  %i.th = load i16, ptr %gep26.i266, align 2, !tbaa !15
  %i.ti = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.th, i32 noundef %i.j, i32 noundef %16) #11
  %i.tj = zext i32 %i.te to i64
  %i.tk = zext i32 %i.tg to i64
  %i.tl = zext i32 %i.ti to i64
  %i.tm = mul nuw nsw i64 %i.tj, 13933
  %i.tn = mul nuw nsw i64 %i.tk, 46871
  %i.to = mul nuw nsw i64 %i.tl, 4732
  %i.tp = add nuw nsw i64 %i.tm, 32768
  %i.tq = add nuw nsw i64 %i.tp, %i.tn
  %i.tr = add nuw nsw i64 %i.tq, %i.to
  %i.ts = lshr i64 %i.tr, 16
  %i.tt = trunc nuw i64 %i.ts to i32
  %i.tu = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.tt, i32 noundef %i.j, i32 noundef %16) #11
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.i264
  store i16 %i.tu, ptr %i.tv, align 2, !tbaa !15
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i264, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i251.pre-phi
  br i1 %exitcond.not.i268, label %UpdateW.exit269, label %UpdateW.exit259, !llvm.loop !24

UpdateW.exit269:                                  ; preds = %UpdateW.exit259
  tail call fastcc void @UpdateChroma(ptr noundef %i.y, ptr noundef %i.bo, ptr noundef %i.ak, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %16)
  %i.tw = load ptr, ptr @SharpYuvUpdateY, align 8, !tbaa !9
  %i.tx = tail call i64 %i.tw(ptr noundef %.1211, ptr noundef nonnull %i.ah, ptr noundef nonnull %.1213, i32 noundef %.pre-phi305, i32 noundef %i.j) #11
  %i.ty = add i64 %i.tx, %.0203                   ; 4 uses
  %i.tz = load ptr, ptr @SharpYuvUpdateRGB, align 8, !tbaa !9
  tail call void %i.tz(ptr noundef %.1, ptr noundef nonnull %i.ak, ptr noundef %.1209, i32 noundef %.pre-phi303) #11
  %i.ua = getelementptr inbounds [2 x i8], ptr %.1213, i64 %.pre-phi307
  %i.ub = getelementptr inbounds [2 x i8], ptr %.1209, i64 %.pre-phi311
  %i.uc = getelementptr inbounds [2 x i8], ptr %.1211, i64 %.pre-phi307
  %i.ud = getelementptr inbounds [2 x i8], ptr %.1, i64 %.pre-phi311
  %i.ue = add nuw nsw i32 %.1216, 2               ; 2 uses
  %i.uf = icmp slt i32 %i.ue, %i.d
  br i1 %i.uf, label %bb.h, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %UpdateW.exit269
  %.not = icmp eq i32 %.0214292, 0
  br i1 %.not, label %.preheader.backedge, label %bb.k

.preheader.backedge:                              ; preds = %bb.j, %bb.k
  %.0214292.be = phi i32 [ %i.ui, %bb.k ], [ 1, %bb.j ]
  br label %.preheader, !llvm.loop !28

bb.k:                                             ; preds = %bb.j
  %i.ug = icmp uge i64 %i.ty, %i.ad
  %i.uh = icmp ule i64 %i.ty, %.0217291
  %or.cond.not297 = and i1 %i.ug, %i.uh
  %i.ui = add nuw nsw i32 %.0214292, 1
  %i.uj = icmp ult i32 %.0214292, 3
  %or.cond294 = select i1 %or.cond.not297, i1 %i.uj, i1 false
  br i1 %or.cond294, label %.preheader.backedge, label %split

split:                                            ; preds = %bb.k
  %notmask.i = shl nsw i32 -1, %12
  %i.uk = xor i32 %notmask.i, -1                  ; 3 uses
  %i.ul = add nsw i32 %i.i, 16
  %i.um = add nsw i32 %i.i, 15
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = shl nuw i64 1, %i.un                    ; 8 uses
  %i.up = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.us = zext nneg i32 %i.ul to i64              ; 8 uses
  %i.ut = icmp slt i32 %12, 9                     ; 2 uses
  %i.uu = sext i32 %7 to i64                      ; 3 uses
  %smax129.i = tail call i32 @llvm.smax.i32(i32 %13, i32 1) ; 2 uses
  %smax132.i = tail call i32 @llvm.smax.i32(i32 %14, i32 1) ; 3 uses
  br i1 %i.ut, label %.split.us.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %split
  %.pre.pre.i = load i32, ptr %15, align 4, !tbaa !13
  %.pre150.pre.i = load i32, ptr %i.up, align 4, !tbaa !13
  %.pre151.pre.i = load i32, ptr %i.uq, align 4, !tbaa !13
  %.pre152.pre.i = load i32, ptr %i.ur, align 4, !tbaa !13
  %wide.trip.count.i270 = zext nneg i32 %smax129.i to i64
  %i.uv = sext i32 %.pre.pre.i to i64
  %i.uw = sext i32 %.pre150.pre.i to i64
  %i.ux = sext i32 %.pre151.pre.i to i64
  %i.uy = sext i32 %.pre152.pre.i to i64
  %i.uz = add i64 %i.uo, %i.uy
  br label %.split.i

.split.us.us.preheader.i:                         ; preds = %split
  %wide.trip.count130.i = zext nneg i32 %smax129.i to i64 ; 4 uses
  %i.va = zext nneg i32 %smax132.i to i64
  %i.vb = add nsw i64 %i.va, -1
  %i.vc = mul nsw i64 %i.vb, %i.uu
  %i.vd = getelementptr i8, ptr %6, i64 %i.vc
  %scevgep = getelementptr i8, ptr %i.vd, i64 %wide.trip.count130.i
  %scevgep348 = getelementptr i8, ptr %15, i64 16
  %min.iters.check350 = icmp slt i32 %13, 2
  %bound0 = icmp ult ptr %6, %scevgep348
  %bound1 = icmp ult ptr %15, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %7, 0
  %i.ve = or i1 %found.conflict, %stride.check
  %n.vec352 = and i64 %wide.trip.count130.i, 2147483646 ; 3 uses
  %broadcast.splatinsert359 = insertelement <2 x i64> poison, i64 %i.uo, i64 0
  %broadcast.splat360 = shufflevector <2 x i64> %broadcast.splatinsert359, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <2 x i64> poison, i64 %i.us, i64 0
  %broadcast.splat362 = shufflevector <2 x i64> %broadcast.splatinsert361, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n374 = icmp eq i64 %n.vec352, %wide.trip.count130.i
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split109.us.us.i, %.split.us.us.preheader.i
  %.096.us.i = phi ptr [ %i.yt, %.split109.us.us.i ], [ %6, %.split.us.us.preheader.i ] ; 3 uses
  %.094.us.i = phi ptr [ %i.ys, %.split109.us.us.i ], [ %i.ai, %.split.us.us.preheader.i ] ; 7 uses
  %.093.us.i = phi ptr [ %i.yn, %.split109.us.us.i ], [ %i.af, %.split.us.us.preheader.i ] ; 3 uses
  %.0.us.i = phi i32 [ %i.yu, %.split109.us.us.i ], [ 0, %.split.us.us.preheader.i ] ; 2 uses
  %brmerge = select i1 %min.iters.check350, i1 true, i1 %i.ve
  br i1 %brmerge, label %scalar.ph349.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.split.us.us.i
  %i.vf = load i32, ptr %15, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.vf, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vg = sext <2 x i32> %broadcast.splat to <2 x i64>
  %i.vh = load i32, ptr %i.up, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert353 = insertelement <2 x i32> poison, i32 %i.vh, i64 0
  %broadcast.splat354 = shufflevector <2 x i32> %broadcast.splatinsert353, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vi = sext <2 x i32> %broadcast.splat354 to <2 x i64>
  %i.vj = load i32, ptr %i.uq, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert355 = insertelement <2 x i32> poison, i32 %i.vj, i64 0
  %broadcast.splat356 = shufflevector <2 x i32> %broadcast.splatinsert355, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vk = sext <2 x i32> %broadcast.splat356 to <2 x i64>
  %i.vl = load i32, ptr %i.ur, align 4, !tbaa !13, !alias.scope !44
  %broadcast.splatinsert357 = insertelement <2 x i32> poison, i32 %i.vl, i64 0
  %broadcast.splat358 = shufflevector <2 x i32> %broadcast.splatinsert357, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.vm = sext <2 x i32> %broadcast.splat358 to <2 x i64>
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph351
  %index364 = phi i64 [ 0, %vector.ph351 ], [ %index.next372, %vector.body363 ] ; 4 uses
  %i.vn = trunc nuw nsw i64 %index364 to i32
  %i.vo = lshr exact i32 %i.vn, 1                 ; 3 uses
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i, i64 %index364
  %wide.load365 = load <2 x i16>, ptr %i.vp, align 2, !tbaa !15
  %i.vq = zext <2 x i16> %wide.load365 to <2 x i32> ; 3 uses
  %i.vr = zext nneg i32 %i.vo to i64
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.vr
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !15
  %broadcast.splatinsert366 = insertelement <2 x i16> poison, i16 %i.vt, i64 0
  %broadcast.splat367 = shufflevector <2 x i16> %broadcast.splatinsert366, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vu = sext <2 x i16> %broadcast.splat367 to <2 x i32>
  %i.vv = add nsw <2 x i32> %i.vu, %i.vq
  %i.vw = add nuw nsw i32 %i.vo, %i.e
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.vx
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !15
  %broadcast.splatinsert368 = insertelement <2 x i16> poison, i16 %i.vz, i64 0
  %broadcast.splat369 = shufflevector <2 x i16> %broadcast.splatinsert368, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.wa = sext <2 x i16> %broadcast.splat369 to <2 x i32>
  %i.wb = add nsw <2 x i32> %i.wa, %i.vq
  %i.wc = add nuw nsw i32 %i.vo, %i.b
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !15
  %broadcast.splatinsert370 = insertelement <2 x i16> poison, i16 %i.wf, i64 0
  %broadcast.splat371 = shufflevector <2 x i16> %broadcast.splatinsert370, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.wg = sext <2 x i16> %broadcast.splat371 to <2 x i32>
  %i.wh = add nsw <2 x i32> %i.wg, %i.vq
  %i.wi = sext <2 x i32> %i.vv to <2 x i64>
  %i.wj = mul nsw <2 x i64> %i.vg, %i.wi
  %i.wk = sext <2 x i32> %i.wb to <2 x i64>
  %i.wl = mul nsw <2 x i64> %i.vi, %i.wk
  %i.wm = sext <2 x i32> %i.wh to <2 x i64>
  %i.wn = mul nsw <2 x i64> %i.vk, %i.wm
  %i.wo = add <2 x i64> %i.wj, %broadcast.splat360
  %i.wp = add <2 x i64> %i.wo, %i.wl
  %i.wq = add <2 x i64> %i.wp, %i.wn
  %i.wr = add <2 x i64> %i.wq, %i.vm
  %i.ws = ashr <2 x i64> %i.wr, %broadcast.splat362
  %i.wt = trunc <2 x i64> %i.ws to <2 x i16>
  %17 = tail call <2 x i16> @llvm.smax.v2i16(<2 x i16> %i.wt, <2 x i16> zeroinitializer)
  %18 = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %17, <2 x i16> splat (i16 255))
  %19 = trunc nuw <2 x i16> %18 to <2 x i8>
  %i.wu = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %index364
  store <2 x i8> %19, ptr %i.wu, align 1, !tbaa !19, !alias.scope !45, !noalias !44
  %index.next372 = add nuw i64 %index364, 2       ; 2 uses
  %i.wv = icmp eq i64 %index.next372, %n.vec352
  br i1 %i.wv, label %middle.block373, label %vector.body363, !llvm.loop !32

middle.block373:                                  ; preds = %vector.body363
  br i1 %cmp.n374, label %.split109.us.us.i, label %scalar.ph349.preheader

scalar.ph349.preheader:                           ; preds = %.split.us.us.i, %middle.block373
  %indvars.iv126.i.ph = phi i64 [ %n.vec352, %middle.block373 ], [ 0, %.split.us.us.i ]
  br label %scalar.ph349

scalar.ph349:                                     ; preds = %scalar.ph349.preheader, %scalar.ph349
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %scalar.ph349 ], [ %indvars.iv126.i.ph, %scalar.ph349.preheader ] ; 4 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv126.i to i32
  %i.wx = lshr i32 %i.ww, 1                       ; 3 uses
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %.093.us.i, i64 %indvars.iv126.i
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !15
  %i.xa = zext i16 %i.wz to i32                   ; 3 uses
  %i.xb = zext nneg i32 %i.wx to i64
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %.094.us.i, i64 %i.xb
  %i.xd = load i16, ptr %i.xc, align 2, !tbaa !15
  %i.xe = sext i16 %i.xd to i32
  %i.xf = add nsw i32 %i.xe, %i.xa
  %i.xg = add nsw i32 %i.wx, %i.e
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.xh
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !15
  %i.xk = sext i16 %i.xj to i32
  %i.xl = add nsw i32 %i.xk, %i.xa
  %i.xm = add nsw i32 %i.wx, %i.b
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.xn
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !15
  %i.xq = sext i16 %i.xp to i32
  %i.xr = add nsw i32 %i.xq, %i.xa
  %i.xs = load i32, ptr %15, align 4, !tbaa !13
  %i.xt = sext i32 %i.xs to i64
  %i.xu = sext i32 %i.xf to i64
  %i.xv = mul nsw i64 %i.xt, %i.xu
  %i.xw = load i32, ptr %i.up, align 4, !tbaa !13
  %i.xx = sext i32 %i.xw to i64
  %i.xy = sext i32 %i.xl to i64
  %i.xz = mul nsw i64 %i.xx, %i.xy
  %i.ya = load i32, ptr %i.uq, align 4, !tbaa !13
  %i.yb = sext i32 %i.ya to i64
  %i.yc = sext i32 %i.xr to i64
  %i.yd = mul nsw i64 %i.yb, %i.yc
  %i.ye = load i32, ptr %i.ur, align 4, !tbaa !13
  %i.yf = sext i32 %i.ye to i64
  %i.yg = add i64 %i.xv, %i.uo
  %i.yh = add i64 %i.yg, %i.xz
  %i.yi = add i64 %i.yh, %i.yd
  %i.yj = add i64 %i.yi, %i.yf
  %i.yk = ashr i64 %i.yj, %i.us
  %i.yl = trunc i64 %i.yk to i16
  %20 = tail call i16 @llvm.smax.i16(i16 %i.yl, i16 0)
  %21 = tail call i16 @llvm.umin.i16(i16 %20, i16 255)
  %22 = trunc nuw i16 %21 to i8
  %i.ym = getelementptr inbounds nuw i8, ptr %.096.us.i, i64 %indvars.iv126.i
  store i8 %22, ptr %i.ym, align 1, !tbaa !19
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %.split109.us.us.i, label %scalar.ph349, !llvm.loop !33

.split109.us.us.i:                                ; preds = %scalar.ph349, %middle.block373
  %i.yn = getelementptr inbounds [2 x i8], ptr %.093.us.i, i64 %i.k
  %i.yo = trunc i32 %.0.us.i to i1
  %i.yp = select i1 %i.yo, i32 3, i32 0
  %i.yq = mul nsw i32 %i.yp, %i.e
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds [2 x i8], ptr %.094.us.i, i64 %i.yr
  %i.yt = getelementptr inbounds i8, ptr %.096.us.i, i64 %i.uu
  %i.yu = add nuw nsw i32 %.0.us.i, 1             ; 2 uses
  %exitcond133.not.i = icmp eq i32 %i.yu, %smax132.i
  br i1 %exitcond133.not.i, label %.preheader.i, label %.split.us.us.i, !llvm.loop !34

.split.i:                                         ; preds = %.split109.i, %.split.preheader.i
  %.096.i = phi ptr [ %i.aao, %.split109.i ], [ %6, %.split.preheader.i ] ; 2 uses
  %.094.i = phi ptr [ %i.aan, %.split109.i ], [ %i.ai, %.split.preheader.i ] ; 4 uses
  %.093.i = phi ptr [ %i.aai, %.split109.i ], [ %i.af, %.split.preheader.i ] ; 2 uses
  %.0.i = phi i32 [ %i.aap, %.split109.i ], [ 0, %.split.preheader.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.split.i
  %indvars.iv.i271 = phi i64 [ %indvars.iv.next.i272, %bb.l ], [ 0, %.split.i ] ; 4 uses
  %i.yv = trunc nuw nsw i64 %indvars.iv.i271 to i32
  %i.yw = lshr i32 %i.yv, 1                       ; 3 uses
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %.093.i, i64 %indvars.iv.i271
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !15
  %i.yz = zext i16 %i.yy to i32                   ; 3 uses
  %i.za = zext nneg i32 %i.yw to i64
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %.094.i, i64 %i.za
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !15
  %i.zd = sext i16 %i.zc to i32
  %i.ze = add nsw i32 %i.zd, %i.yz
  %i.zf = add nsw i32 %i.yw, %i.e
  %i.zg = sext i32 %i.zf to i64
  %i.zh = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !15
  %i.zj = sext i16 %i.zi to i32
  %i.zk = add nsw i32 %i.zj, %i.yz
  %i.zl = add nsw i32 %i.yw, %i.b
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.zm
  %i.zo = load i16, ptr %i.zn, align 2, !tbaa !15
  %i.zp = sext i16 %i.zo to i32
  %i.zq = add nsw i32 %i.zp, %i.yz
  %i.zr = sext i32 %i.ze to i64
  %i.zs = mul nsw i64 %i.zr, %i.uv
  %i.zt = sext i32 %i.zk to i64
  %i.zu = mul nsw i64 %i.zt, %i.uw
  %i.zv = sext i32 %i.zq to i64
  %i.zw = mul nsw i64 %i.zv, %i.ux
  %i.zx = add i64 %i.uz, %i.zs
  %i.zy = add i64 %i.zx, %i.zu
  %i.zz = add i64 %i.zy, %i.zw
  %i.aaa = ashr i64 %i.zz, %i.us                  ; 2 uses
  %i.aab = and i64 %i.aaa, 32768
  %.not.i = icmp eq i64 %i.aab, 0
  %i.aac = trunc i64 %i.aaa to i32
  %i.aad = and i32 %i.aac, 65535
  %i.aae = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.aad)
  %i.aaf = trunc nuw i32 %i.aae to i16
  %i.aag = select i1 %.not.i, i16 %i.aaf, i16 0
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %.096.i, i64 %indvars.iv.i271
  store i16 %i.aag, ptr %i.aah, align 2, !tbaa !15
  %indvars.iv.next.i272 = add nuw nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %exitcond.not.i273 = icmp eq i64 %indvars.iv.next.i272, %wide.trip.count.i270
  br i1 %exitcond.not.i273, label %.split109.i, label %bb.l, !llvm.loop !35

.split109.i:                                      ; preds = %bb.l
  %i.aai = getelementptr inbounds [2 x i8], ptr %.093.i, i64 %i.k
  %i.aaj = trunc i32 %.0.i to i1
  %i.aak = select i1 %i.aaj, i32 3, i32 0
  %i.aal = mul nsw i32 %i.aak, %i.e
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [2 x i8], ptr %.094.i, i64 %i.aam
  %i.aao = getelementptr inbounds i8, ptr %.096.i, i64 %i.uu
  %i.aap = add nuw nsw i32 %.0.i, 1               ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aap, %smax132.i
  br i1 %exitcond125.not.i, label %.preheader.i, label %.split.i, !llvm.loop !34

.preheader.i:                                     ; preds = %.split109.i, %.split109.us.us.i
  %i.aaq = getelementptr i8, ptr %15, i64 16      ; 5 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 3 uses
  %i.aay = sext i32 %9 to i64                     ; 3 uses
  %i.aaz = sext i32 %11 to i64                    ; 3 uses
  %smax145.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1) ; 2 uses
  %smax148.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 3 uses
  br i1 %i.ut, label %.split115.us.us.preheader.i, label %.split115.preheader.i

.split115.preheader.i:                            ; preds = %.preheader.i
  %.pre153.pre.i = load i32, ptr %i.aaq, align 4, !tbaa !13
  %.pre154.pre.i = load i32, ptr %i.aar, align 4, !tbaa !13
  %.pre155.pre.i = load i32, ptr %i.aas, align 4, !tbaa !13
  %.pre156.pre.i = load i32, ptr %i.aat, align 4, !tbaa !13
  %.pre157.pre.i = load i32, ptr %i.aau, align 4, !tbaa !13
  %.pre158.pre.i = load i32, ptr %i.aav, align 4, !tbaa !13
  %.pre159.pre.i = load i32, ptr %i.aaw, align 4, !tbaa !13
  %.pre160.pre.i = load i32, ptr %i.aax, align 4, !tbaa !13
  %wide.trip.count138.i = zext nneg i32 %smax145.i to i64
  %i.aba = sext i32 %.pre153.pre.i to i64
  %i.abb = sext i32 %.pre154.pre.i to i64
  %i.abc = sext i32 %.pre155.pre.i to i64
  %i.abd = sext i32 %.pre156.pre.i to i64
  %i.abe = sext i32 %.pre157.pre.i to i64
  %i.abf = sext i32 %.pre158.pre.i to i64
  %i.abg = sext i32 %.pre159.pre.i to i64
  %i.abh = sext i32 %.pre160.pre.i to i64
  %i.abi = add i64 %i.uo, %i.abd
  %i.abj = add i64 %i.uo, %i.abh
  br label %.split115.i

.split115.us.us.preheader.i:                      ; preds = %.preheader.i
  %wide.trip.count146.i = zext nneg i32 %smax145.i to i64 ; 5 uses
  %23 = zext nneg i32 %smax148.i to i64
  %24 = add nsw i64 %23, -1                       ; 2 uses
  %25 = mul nsw i64 %24, %i.aay
  %26 = getelementptr i8, ptr %8, i64 %25
  %scevgep377 = getelementptr i8, ptr %26, i64 %wide.trip.count146.i ; 2 uses
  %27 = mul nsw i64 %24, %i.aaz
  %28 = getelementptr i8, ptr %10, i64 %27
  %scevgep378 = getelementptr i8, ptr %28, i64 %wide.trip.count146.i ; 2 uses
  %scevgep379 = getelementptr i8, ptr %15, i64 48 ; 2 uses
  %min.iters.check396 = icmp slt i32 %i.e, 16
  %bound0380 = icmp ult ptr %8, %scevgep378
  %bound1381 = icmp ult ptr %10, %scevgep377
  %found.conflict382 = and i1 %bound0380, %bound1381
  %29 = or i32 %11, %9
  %30 = icmp slt i32 %29, 0
  %31 = or i1 %found.conflict382, %30
  %bound0385 = icmp ult ptr %8, %scevgep379
  %bound1386 = icmp ult ptr %i.aaq, %scevgep377
  %found.conflict387 = and i1 %bound0385, %bound1386
  %stride.check388 = icmp slt i32 %9, 0
  %32 = or i1 %found.conflict387, %stride.check388
  %conflict.rdx389 = or i1 %31, %32
  %bound0390 = icmp ult ptr %10, %scevgep379
  %bound1391 = icmp ult ptr %i.aaq, %scevgep378
  %found.conflict392 = and i1 %bound0390, %bound1391
  %stride.check393 = icmp slt i32 %11, 0
  %33 = or i1 %found.conflict392, %stride.check393
  %conflict.rdx394 = or i1 %conflict.rdx389, %33
  %n.vec398 = and i64 %wide.trip.count146.i, 2147483644 ; 3 uses
  %broadcast.splatinsert415 = insertelement <4 x i64> poison, i64 %i.uo, i64 0
  %broadcast.splat416 = shufflevector <4 x i64> %broadcast.splatinsert415, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert417 = insertelement <4 x i64> poison, i64 %i.us, i64 0
  %broadcast.splat418 = shufflevector <4 x i64> %broadcast.splatinsert417, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n426 = icmp eq i64 %n.vec398, %wide.trip.count146.i
  br label %.split115.us.us.i

.split115.us.us.i:                                ; preds = %.split117.us.us.i, %.split115.us.us.preheader.i
  %.098.us.i = phi ptr [ %i.add, %.split117.us.us.i ], [ %10, %.split115.us.us.preheader.i ] ; 3 uses
  %.097.us.i = phi ptr [ %i.adc, %.split117.us.us.i ], [ %8, %.split115.us.us.preheader.i ] ; 3 uses
  %.195.us.i = phi ptr [ %i.adb, %.split117.us.us.i ], [ %i.ai, %.split115.us.us.preheader.i ] ; 5 uses
  %.1.us.i = phi i32 [ %i.ade, %.split117.us.us.i ], [ 0, %.split115.us.us.preheader.i ]
  %invariant.gep169.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.p ; 2 uses
  %invariant.gep171.i = getelementptr [2 x i8], ptr %.195.us.i, i64 %i.k ; 2 uses
  %brmerge442 = select i1 %min.iters.check396, i1 true, i1 %conflict.rdx394
  br i1 %brmerge442, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %.split115.us.us.i
  %34 = load i32, ptr %i.aaq, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert399 = insertelement <4 x i32> poison, i32 %34, i64 0
  %broadcast.splat400 = shufflevector <4 x i32> %broadcast.splatinsert399, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = sext <4 x i32> %broadcast.splat400 to <4 x i64>
  %36 = load i32, ptr %i.aar, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert401 = insertelement <4 x i32> poison, i32 %36, i64 0
  %broadcast.splat402 = shufflevector <4 x i32> %broadcast.splatinsert401, <4 x i32> poison, <4 x i32> zeroinitializer
  %37 = sext <4 x i32> %broadcast.splat402 to <4 x i64>
  %38 = load i32, ptr %i.aas, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert403 = insertelement <4 x i32> poison, i32 %38, i64 0
  %broadcast.splat404 = shufflevector <4 x i32> %broadcast.splatinsert403, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = sext <4 x i32> %broadcast.splat404 to <4 x i64>
  %40 = load i32, ptr %i.aat, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert405 = insertelement <4 x i32> poison, i32 %40, i64 0
  %broadcast.splat406 = shufflevector <4 x i32> %broadcast.splatinsert405, <4 x i32> poison, <4 x i32> zeroinitializer
  %41 = sext <4 x i32> %broadcast.splat406 to <4 x i64>
  %42 = load i32, ptr %i.aau, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert407 = insertelement <4 x i32> poison, i32 %42, i64 0
  %broadcast.splat408 = shufflevector <4 x i32> %broadcast.splatinsert407, <4 x i32> poison, <4 x i32> zeroinitializer
  %43 = sext <4 x i32> %broadcast.splat408 to <4 x i64>
  %44 = load i32, ptr %i.aav, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert409 = insertelement <4 x i32> poison, i32 %44, i64 0
  %broadcast.splat410 = shufflevector <4 x i32> %broadcast.splatinsert409, <4 x i32> poison, <4 x i32> zeroinitializer
  %45 = sext <4 x i32> %broadcast.splat410 to <4 x i64>
  %46 = load i32, ptr %i.aaw, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert411 = insertelement <4 x i32> poison, i32 %46, i64 0
  %broadcast.splat412 = shufflevector <4 x i32> %broadcast.splatinsert411, <4 x i32> poison, <4 x i32> zeroinitializer
  %47 = sext <4 x i32> %broadcast.splat412 to <4 x i64>
  %48 = load i32, ptr %i.aax, align 4, !tbaa !13, !alias.scope !46
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %48, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer
  %49 = sext <4 x i32> %broadcast.splat414 to <4 x i64>
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph397
  %index420 = phi i64 [ 0, %vector.ph397 ], [ %index.next424, %vector.body419 ] ; 6 uses
  %50 = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %index420
  %wide.load421 = load <4 x i16>, ptr %50, align 2, !tbaa !15
  %51 = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %index420
  %wide.load422 = load <4 x i16>, ptr %51, align 2, !tbaa !15
  %52 = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %index420
  %wide.load423 = load <4 x i16>, ptr %52, align 2, !tbaa !15
  %53 = sext <4 x i16> %wide.load421 to <4 x i64> ; 2 uses
  %54 = mul nsw <4 x i64> %35, %53
  %55 = sext <4 x i16> %wide.load422 to <4 x i64> ; 2 uses
  %56 = mul nsw <4 x i64> %37, %55
  %57 = sext <4 x i16> %wide.load423 to <4 x i64> ; 2 uses
  %58 = mul nsw <4 x i64> %39, %57
  %59 = add <4 x i64> %54, %broadcast.splat416
  %60 = add <4 x i64> %59, %56
  %61 = add <4 x i64> %60, %58
  %62 = add <4 x i64> %61, %41
  %63 = ashr <4 x i64> %62, %broadcast.splat418
  %64 = mul nsw <4 x i64> %43, %53
  %65 = mul nsw <4 x i64> %45, %55
  %66 = mul nsw <4 x i64> %47, %57
  %67 = add <4 x i64> %64, %broadcast.splat416
  %68 = add <4 x i64> %67, %65
  %69 = add <4 x i64> %68, %66
  %70 = add <4 x i64> %69, %49
  %71 = ashr <4 x i64> %70, %broadcast.splat418
  %72 = trunc <4 x i64> %63 to <4 x i16>
  %73 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %72, <4 x i16> zeroinitializer)
  %74 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %73, <4 x i16> splat (i16 255))
  %75 = trunc nuw <4 x i16> %74 to <4 x i8>
  %76 = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %index420
  store <4 x i8> %75, ptr %76, align 1, !tbaa !19, !alias.scope !47, !noalias !48
  %77 = trunc <4 x i64> %71 to <4 x i16>
  %78 = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %77, <4 x i16> zeroinitializer)
  %79 = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %78, <4 x i16> splat (i16 255))
  %80 = trunc nuw <4 x i16> %79 to <4 x i8>
  %81 = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %index420
  store <4 x i8> %80, ptr %81, align 1, !tbaa !19, !alias.scope !49, !noalias !46
  %index.next424 = add nuw i64 %index420, 4       ; 2 uses
  %82 = icmp eq i64 %index.next424, %n.vec398
  br i1 %82, label %middle.block425, label %vector.body419, !llvm.loop !40

middle.block425:                                  ; preds = %vector.body419
  br i1 %cmp.n426, label %.split117.us.us.i, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.split115.us.us.i, %middle.block425
  %indvars.iv142.i.ph = phi i64 [ %n.vec398, %middle.block425 ], [ 0, %.split115.us.us.i ]
  br label %bb.m

bb.m:                                             ; preds = %scalar.ph395.preheader, %bb.m
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %bb.m ], [ %indvars.iv142.i.ph, %scalar.ph395.preheader ] ; 6 uses
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i, i64 %indvars.iv142.i
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !15
  %gep170.i = getelementptr [2 x i8], ptr %invariant.gep169.i, i64 %indvars.iv142.i
  %i.abm = load i16, ptr %gep170.i, align 2, !tbaa !15
  %gep172.i = getelementptr [2 x i8], ptr %invariant.gep171.i, i64 %indvars.iv142.i
  %i.abn = load i16, ptr %gep172.i, align 2, !tbaa !15
  %i.abo = load i32, ptr %i.aaq, align 4, !tbaa !13
  %i.abp = sext i32 %i.abo to i64
  %i.abq = sext i16 %i.abl to i64                 ; 2 uses
  %i.abr = mul nsw i64 %i.abp, %i.abq
  %i.abs = load i32, ptr %i.aar, align 4, !tbaa !13
  %i.abt = sext i32 %i.abs to i64
  %i.abu = sext i16 %i.abm to i64                 ; 2 uses
  %i.abv = mul nsw i64 %i.abt, %i.abu
  %i.abw = load i32, ptr %i.aas, align 4, !tbaa !13
  %i.abx = sext i32 %i.abw to i64
  %i.aby = sext i16 %i.abn to i64                 ; 2 uses
  %i.abz = mul nsw i64 %i.abx, %i.aby
  %i.aca = load i32, ptr %i.aat, align 4, !tbaa !13
  %i.acb = sext i32 %i.aca to i64
  %i.acc = add i64 %i.abr, %i.uo
  %i.acd = add i64 %i.acc, %i.abv
  %i.ace = add i64 %i.acd, %i.abz
  %i.acf = add i64 %i.ace, %i.acb
  %i.acg = ashr i64 %i.acf, %i.us
  %i.ach = load i32, ptr %i.aau, align 4, !tbaa !13
  %i.aci = sext i32 %i.ach to i64
  %i.acj = mul nsw i64 %i.aci, %i.abq
  %i.ack = load i32, ptr %i.aav, align 4, !tbaa !13
  %i.acl = sext i32 %i.ack to i64
  %i.acm = mul nsw i64 %i.acl, %i.abu
  %i.acn = load i32, ptr %i.aaw, align 4, !tbaa !13
  %i.aco = sext i32 %i.acn to i64
  %i.acp = mul nsw i64 %i.aco, %i.aby
  %i.acq = load i32, ptr %i.aax, align 4, !tbaa !13
  %i.acr = sext i32 %i.acq to i64
  %i.acs = add i64 %i.acj, %i.uo
  %i.act = add i64 %i.acs, %i.acm
  %i.acu = add i64 %i.act, %i.acp
  %i.acv = add i64 %i.acu, %i.acr
  %i.acw = ashr i64 %i.acv, %i.us
  %i.acx = trunc i64 %i.acg to i16
  %83 = tail call i16 @llvm.smax.i16(i16 %i.acx, i16 0)
  %84 = tail call i16 @llvm.umin.i16(i16 %83, i16 255)
  %85 = trunc nuw i16 %84 to i8
  %i.acy = getelementptr inbounds nuw i8, ptr %.097.us.i, i64 %indvars.iv142.i
  store i8 %85, ptr %i.acy, align 1, !tbaa !19
  %i.acz = trunc i64 %i.acw to i16
  %86 = tail call i16 @llvm.smax.i16(i16 %i.acz, i16 0)
  %87 = tail call i16 @llvm.umin.i16(i16 %86, i16 255)
  %88 = trunc nuw i16 %87 to i8
  %i.ada = getelementptr inbounds nuw i8, ptr %.098.us.i, i64 %indvars.iv142.i
  store i8 %88, ptr %i.ada, align 1, !tbaa !19
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next143.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %.split117.us.us.i, label %bb.m, !llvm.loop !41

.split117.us.us.i:                                ; preds = %bb.m, %middle.block425
  %i.adb = getelementptr inbounds [2 x i8], ptr %.195.us.i, i64 %.pre-phi311
  %i.adc = getelementptr inbounds i8, ptr %.097.us.i, i64 %i.aay
  %i.add = getelementptr inbounds i8, ptr %.098.us.i, i64 %i.aaz
  %i.ade = add nuw nsw i32 %.1.us.i, 1            ; 2 uses
  %exitcond149.not.i = icmp eq i32 %i.ade, %smax148.i
  br i1 %exitcond149.not.i, label %ConvertWRGBToYUV.exit, label %.split115.us.us.i, !llvm.loop !42

.split115.i:                                      ; preds = %.split117.i, %.split115.preheader.i
  %.098.i = phi ptr [ %i.aeq, %.split117.i ], [ %10, %.split115.preheader.i ] ; 2 uses
  %.097.i = phi ptr [ %i.aep, %.split117.i ], [ %8, %.split115.preheader.i ] ; 2 uses
  %.195.i = phi ptr [ %i.aeo, %.split117.i ], [ %i.ai, %.split115.preheader.i ] ; 4 uses
  %.1.i = phi i32 [ %i.aer, %.split117.i ], [ 0, %.split115.preheader.i ]
  %invariant.gep.i274 = getelementptr [2 x i8], ptr %.195.i, i64 %i.p
  %invariant.gep167.i = getelementptr [2 x i8], ptr %.195.i, i64 %i.k
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.split115.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %bb.n ], [ 0, %.split115.i ] ; 6 uses
  %i.adf = getelementptr inbounds nuw [2 x i8], ptr %.195.i, i64 %indvars.iv134.i
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !15
  %gep.i275 = getelementptr [2 x i8], ptr %invariant.gep.i274, i64 %indvars.iv134.i
  %i.adh = load i16, ptr %gep.i275, align 2, !tbaa !15
  %gep168.i = getelementptr [2 x i8], ptr %invariant.gep167.i, i64 %indvars.iv134.i
  %i.adi = load i16, ptr %gep168.i, align 2, !tbaa !15
  %i.adj = sext i16 %i.adg to i64                 ; 2 uses
  %i.adk = mul nsw i64 %i.adj, %i.aba
  %i.adl = sext i16 %i.adh to i64                 ; 2 uses
  %i.adm = mul nsw i64 %i.adl, %i.abb
  %i.adn = sext i16 %i.adi to i64                 ; 2 uses
  %i.ado = mul nsw i64 %i.adn, %i.abc
  %i.adp = add i64 %i.abi, %i.adk
  %i.adq = add i64 %i.adp, %i.adm
  %i.adr = add i64 %i.adq, %i.ado
  %i.ads = ashr i64 %i.adr, %i.us                 ; 2 uses
  %i.adt = mul nsw i64 %i.adj, %i.abe
  %i.adu = mul nsw i64 %i.adl, %i.abf
  %i.adv = mul nsw i64 %i.adn, %i.abg
  %i.adw = add i64 %i.abj, %i.adt
  %i.adx = add i64 %i.adw, %i.adu
  %i.ady = add i64 %i.adx, %i.adv
  %i.adz = ashr i64 %i.ady, %i.us                 ; 2 uses
  %i.aea = and i64 %i.ads, 32768
  %.not104.i = icmp eq i64 %i.aea, 0
  %i.aeb = trunc i64 %i.ads to i32
  %i.aec = and i32 %i.aeb, 65535
  %i.aed = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.aec)
  %i.aee = trunc nuw i32 %i.aed to i16
  %i.aef = select i1 %.not104.i, i16 %i.aee, i16 0
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %.097.i, i64 %indvars.iv134.i
  store i16 %i.aef, ptr %i.aeg, align 2, !tbaa !15
  %i.aeh = and i64 %i.adz, 32768
  %.not105.i = icmp eq i64 %i.aeh, 0
  %i.aei = trunc i64 %i.adz to i32
  %i.aej = and i32 %i.aei, 65535
  %i.aek = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.uk, i32 %i.aej)
  %i.ael = trunc nuw i32 %i.aek to i16
  %i.aem = select i1 %.not105.i, i16 %i.ael, i16 0
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %.098.i, i64 %indvars.iv134.i
  store i16 %i.aem, ptr %i.aen, align 2, !tbaa !15
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next135.i, %wide.trip.count138.i
  br i1 %exitcond139.not.i, label %.split117.i, label %bb.n, !llvm.loop !43

.split117.i:                                      ; preds = %bb.n
  %i.aeo = getelementptr inbounds [2 x i8], ptr %.195.i, i64 %.pre-phi311
  %i.aep = getelementptr inbounds i8, ptr %.097.i, i64 %i.aay
  %i.aeq = getelementptr inbounds i8, ptr %.098.i, i64 %i.aaz
  %i.aer = add nuw nsw i32 %.1.i, 1               ; 2 uses
  %exitcond141.not.i = icmp eq i32 %i.aer, %smax148.i
  br i1 %exitcond141.not.i, label %ConvertWRGBToYUV.exit, label %.split115.i, !llvm.loop !42

ConvertWRGBToYUV.exit:                            ; preds = %.split117.i, %.split117.us.us.i, %bb.a
  %.0206 = phi i32 [ 0, %bb.a ], [ 1, %.split117.us.us.i ], [ 1, %.split117.i ]
  tail call void @free(ptr noundef %i.y) #11
  ret i32 %.0206
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 9 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 9 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 9 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 21 uses
  %i.e = icmp sgt i32 %4, 8
  %i.f = sdiv i32 %3, 2                           ; 2 uses
  %i.g = select i1 %i.e, i32 %i.f, i32 %3         ; 2 uses
  %i.h = add i32 %5, 1                            ; 2 uses
  %i.i = and i32 %i.h, -2                         ; 7 uses
  %i.j = icmp slt i32 %4, 13
  %.neg = add nsw i32 %4, -14                     ; 4 uses
  %i.k = sub nsw i32 14, %4
  %i.l = select i1 %i.j, i32 2, i32 %i.k          ; 6 uses
  %notmask = shl nsw i32 -1, %4
  %i.m = xor i32 %notmask, -1                     ; 8 uses
  %i.n = icmp eq i32 %4, 8
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.o = shl nsw i32 %i.i, 1
  %i.p = sext i32 %3 to i64
  %i.q = sext i32 %i.i to i64                     ; 2 uses
  %i.r = sext i32 %i.o to i64                     ; 2 uses
  %smax132 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count133 = zext nneg i32 %smax132 to i64 ; 9 uses
  %invariant.gep149 = getelementptr [2 x i8], ptr %6, i64 %i.q ; 7 uses
  %invariant.gep151 = getelementptr [2 x i8], ptr %6, i64 %i.r ; 7 uses
  %min.iters.check318 = icmp sgt i32 %5, 55
  %ident.check266.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check318, %ident.check266.not
  br i1 %or.cond, label %vector.memcheck319, label %scalar.ph317.preheader

vector.memcheck319:                               ; preds = %.preheader
  %i.s = shl nuw nsw i64 %wide.trip.count133, 1
  %i.t = getelementptr i8, ptr %6, i64 %i.s       ; 5 uses
  %i.u = add nsw i64 %i.q, %wide.trip.count133
  %i.v = shl nsw i64 %i.u, 1
  %i.w = getelementptr i8, ptr %6, i64 %i.v       ; 5 uses
  %i.x = add nsw i64 %i.r, %wide.trip.count133
  %i.y = shl nsw i64 %i.x, 1
  %i.z = getelementptr i8, ptr %6, i64 %i.y       ; 5 uses
  %i.aa = getelementptr i8, ptr %0, i64 %wide.trip.count133 ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 %wide.trip.count133 ; 3 uses
  %i.ac = getelementptr i8, ptr %2, i64 %wide.trip.count133 ; 3 uses
  %bound0 = icmp ult ptr %6, %i.w
  %bound1 = icmp ult ptr %invariant.gep149, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound0320 = icmp ult ptr %6, %i.z
  %bound1321 = icmp ult ptr %invariant.gep151, %i.t
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %found.conflict, %found.conflict322
  %bound0324 = icmp ult ptr %6, %i.aa
  %bound1325 = icmp ult ptr %0, %i.t
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %6, %i.ab
  %bound1329 = icmp ult ptr %1, %i.t
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %6, %i.ac
  %bound1333 = icmp ult ptr %2, %i.t
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  %bound0336 = icmp ult ptr %invariant.gep149, %i.z
  %bound1337 = icmp ult ptr %invariant.gep151, %i.w
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335, %found.conflict338
  %bound0340 = icmp ult ptr %invariant.gep149, %i.aa
  %bound1341 = icmp ult ptr %0, %i.w
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %invariant.gep149, %i.ab
  %bound1345 = icmp ult ptr %1, %i.w
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  %bound0348 = icmp ult ptr %invariant.gep149, %i.ac
  %bound1349 = icmp ult ptr %2, %i.w
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %invariant.gep151, %i.aa
  %bound1353 = icmp ult ptr %0, %i.z
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %bound0356 = icmp ult ptr %invariant.gep151, %i.ab
  %bound1357 = icmp ult ptr %1, %i.z
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %conflict.rdx355, %found.conflict358
  %bound0360 = icmp ult ptr %invariant.gep151, %i.ac
  %bound1361 = icmp ult ptr %2, %i.z
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %conflict.rdx359, %found.conflict362
  br i1 %conflict.rdx363, label %scalar.ph317.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck319
  %n.vec365 = and i64 %wide.trip.count133, 2147483640 ; 3 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph364
  %index367 = phi i64 [ 0, %vector.ph364 ], [ %index.next371, %vector.body366 ] ; 7 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %index367
  %wide.load368 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !19, !alias.scope !65
  %i.ae = zext <8 x i8> %wide.load368 to <8 x i16>
  %i.af = shl nuw nsw <8 x i16> %i.ae, splat (i16 2)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index367
  store <8 x i16> %i.af, ptr %i.ag, align 2, !tbaa !15, !alias.scope !66, !noalias !67
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %index367
  %wide.load369 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !19, !alias.scope !68
  %i.ai = zext <8 x i8> %wide.load369 to <8 x i16>
  %i.aj = shl nuw nsw <8 x i16> %i.ai, splat (i16 2)
  %i.ak = getelementptr [2 x i8], ptr %invariant.gep149, i64 %index367
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !15, !alias.scope !69, !noalias !70
  %i.al = getelementptr inbounds i8, ptr %2, i64 %index367
  %wide.load370 = load <8 x i8>, ptr %i.al, align 1, !tbaa !19, !alias.scope !71
  %i.am = zext <8 x i8> %wide.load370 to <8 x i16>
  %i.an = shl nuw nsw <8 x i16> %i.am, splat (i16 2)
  %i.ao = getelementptr [2 x i8], ptr %invariant.gep151, i64 %index367
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !15, !alias.scope !72, !noalias !73
  %index.next371 = add nuw i64 %index367, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next371, %n.vec365
  br i1 %i.ap, label %middle.block372, label %vector.body366, !llvm.loop !57

middle.block372:                                  ; preds = %vector.body366
  %cmp.n373 = icmp eq i64 %n.vec365, %wide.trip.count133
  br i1 %cmp.n373, label %.loopexit, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck319, %.preheader, %middle.block372
  %indvars.iv129.ph = phi i64 [ 0, %vector.memcheck319 ], [ 0, %.preheader ], [ %n.vec365, %middle.block372 ]
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph317 ], [ %indvars.iv129.ph, %scalar.ph317.preheader ] ; 5 uses
  %i.aq = mul nsw i64 %indvars.iv129, %i.p        ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = zext i8 %i.as to i16
  %i.au = shl nuw nsw i16 %i.at, 2
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv129
  store i16 %i.au, ptr %i.av, align 2, !tbaa !15
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw nsw i16 %i.ay, 2
  %gep150 = getelementptr [2 x i8], ptr %invariant.gep149, i64 %indvars.iv129
  store i16 %i.az, ptr %gep150, align 2, !tbaa !15
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.aq
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = zext i8 %i.bb to i16
  %i.bd = shl nuw nsw i16 %i.bc, 2
  %gep152 = getelementptr [2 x i8], ptr %invariant.gep151, i64 %indvars.iv129
  store i16 %i.bd, ptr %gep152, align 2, !tbaa !15
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count133
  br i1 %exitcond134.not, label %.loopexit, label %scalar.ph317, !llvm.loop !58

bb.b:                                             ; preds = %bb.a
  %i.be = icmp slt i32 %4, 16
  br i1 %i.be, label %.preheader108, label %.preheader110

.preheader110:                                    ; preds = %bb.b
  %i.bf = shl i32 %i.i, 1
  %i.bg = sext i32 %i.f to i64
  %i.bh = sext i32 %i.i to i64                    ; 2 uses
  %i.bi = sext i32 %i.bf to i64                   ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %6, i64 %i.bh ; 2 uses
  %invariant.gep139 = getelementptr [2 x i8], ptr %6, i64 %i.bi ; 2 uses
  %min.iters.check = icmp sgt i32 %5, 47
  %i.bj = and i32 %3, -2
  %ident.check.not = icmp eq i32 %i.bj, 2
  %or.cond375 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond375, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader110
  %i.bk = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bl = add nsw i64 %i.bk, -1
  %diff.check = icmp ult i64 %i.bl, 15
  %i.bm = shl nsw i64 %i.bi, 1                    ; 4 uses
  %i.bn = add nsw i64 %i.bm, -1
  %diff.check156 = icmp ult i64 %i.bn, 15
  %conflict.rdx = or i1 %diff.check, %diff.check156
  %i.bo = sub i64 %i.c, %i.d
  %diff.check157 = icmp ugt i64 %i.bo, -16
  %conflict.rdx158 = or i1 %conflict.rdx, %diff.check157
  %i.bp = sub i64 %i.b, %i.d
  %diff.check159 = icmp ugt i64 %i.bp, -16
  %conflict.rdx160 = or i1 %conflict.rdx158, %diff.check159
  %i.bq = sub i64 %i.a, %i.d
  %diff.check161 = icmp ugt i64 %i.bq, -16
  %conflict.rdx162 = or i1 %conflict.rdx160, %diff.check161
  %i.br = sub nsw i64 %i.bk, %i.bm
  %diff.check163 = icmp ugt i64 %i.br, -16
  %conflict.rdx164 = or i1 %conflict.rdx162, %diff.check163
  %i.bs = add i64 %i.bk, %i.d                     ; 2 uses
  %i.bt = sub i64 %i.c, %i.bs
  %diff.check165 = icmp ugt i64 %i.bt, -16
  %conflict.rdx166 = or i1 %conflict.rdx164, %diff.check165
  %i.bu = sub i64 %i.b, %i.bs
  %diff.check167 = icmp ugt i64 %i.bu, -16
  %conflict.rdx168 = or i1 %conflict.rdx166, %diff.check167
  %i.bv = add i64 %i.bk, %i.d
  %i.bw = sub i64 %i.a, %i.bv
  %diff.check169 = icmp ugt i64 %i.bw, -16
  %conflict.rdx170 = or i1 %conflict.rdx168, %diff.check169
  %i.bx = add i64 %i.bm, %i.d                     ; 2 uses
  %i.by = sub i64 %i.c, %i.bx
  %diff.check171 = icmp ugt i64 %i.by, -16
  %conflict.rdx172 = or i1 %conflict.rdx170, %diff.check171
  %i.bz = sub i64 %i.b, %i.bx
  %diff.check173 = icmp ugt i64 %i.bz, -16
  %conflict.rdx174 = or i1 %conflict.rdx172, %diff.check173
  %i.ca = add i64 %i.bm, %i.d
  %i.cb = sub i64 %i.a, %i.ca
  %diff.check175 = icmp ugt i64 %i.cb, -16
  %conflict.rdx176 = or i1 %conflict.rdx174, %diff.check175
  br i1 %conflict.rdx176, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cc, align 2, !tbaa !15
  %i.cd = zext <8 x i16> %wide.load to <8 x i32>
  %i.ce = getelementptr inbounds [2 x i8], ptr %1, i64 %index
  %wide.load177 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !15
  %i.cf = zext <8 x i16> %wide.load177 to <8 x i32>
  %i.cg = getelementptr inbounds [2 x i8], ptr %2, i64 %index
  %wide.load178 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !15
  %i.ch = zext <8 x i16> %wide.load178 to <8 x i32>
  %i.ci = lshr <8 x i32> %i.cd, %broadcast.splat
  %i.cj = trunc nuw nsw <8 x i32> %i.ci to <8 x i16>
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index
  store <8 x i16> %i.cj, ptr %i.ck, align 2, !tbaa !15
  %i.cl = lshr <8 x i32> %i.cf, %broadcast.splat
  %i.cm = trunc nuw nsw <8 x i32> %i.cl to <8 x i16>
  %i.cn = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.cm, ptr %i.cn, align 2, !tbaa !15
  %i.co = lshr <8 x i32> %i.ch, %broadcast.splat
  %i.cp = trunc nuw nsw <8 x i32> %i.co to <8 x i16>
  %i.cq = getelementptr [2 x i8], ptr %invariant.gep139, i64 %index
  store <8 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader110, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader110 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader108:                                    ; preds = %bb.b
  %i.cs = sub nsw i32 0, %i.l                     ; 4 uses
  %i.ct = icmp slt i32 %i.l, 0
  %i.cu = shl i32 %i.i, 1
  %i.cv = sext i32 %i.g to i64                    ; 2 uses
  %i.cw = sext i32 %i.i to i64                    ; 3 uses
  %i.cx = sext i32 %i.cu to i64                   ; 3 uses
  %smax126 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count127 = zext nneg i32 %smax126 to i64 ; 6 uses
  %invariant.gep145 = getelementptr [2 x i8], ptr %6, i64 %i.cw ; 4 uses
  %invariant.gep147 = getelementptr [2 x i8], ptr %6, i64 %i.cx ; 4 uses
  %min.iters.check249 = icmp sgt i32 %5, 39
  %ident.check223.not = icmp eq i32 %i.g, 1
  %or.cond378 = and i1 %min.iters.check249, %ident.check223.not ; 2 uses
  br i1 %i.ct, label %.preheader108.split.us.preheader, label %.preheader108.split.preheader

.preheader108.split.preheader:                    ; preds = %.preheader108
  br i1 %or.cond378, label %vector.memcheck181, label %.preheader108.split.preheader381

vector.memcheck181:                               ; preds = %.preheader108.split.preheader
  %i.cy = shl nsw i64 %i.cw, 1                    ; 4 uses
  %i.cz = add nsw i64 %i.cy, -1
  %diff.check182 = icmp ult i64 %i.cz, 15
  %i.da = shl nsw i64 %i.cx, 1                    ; 4 uses
  %i.db = add nsw i64 %i.da, -1
  %diff.check183 = icmp ult i64 %i.db, 15
  %conflict.rdx184 = or i1 %diff.check182, %diff.check183
  %i.dc = sub i64 %i.c, %i.d
  %diff.check185 = icmp ugt i64 %i.dc, -16
  %conflict.rdx186 = or i1 %conflict.rdx184, %diff.check185
  %i.dd = sub i64 %i.b, %i.d
  %diff.check187 = icmp ugt i64 %i.dd, -16
  %conflict.rdx188 = or i1 %conflict.rdx186, %diff.check187
  %i.de = sub i64 %i.a, %i.d
  %diff.check189 = icmp ugt i64 %i.de, -16
  %conflict.rdx190 = or i1 %conflict.rdx188, %diff.check189
  %i.df = sub nsw i64 %i.cy, %i.da
  %diff.check191 = icmp ugt i64 %i.df, -16
  %conflict.rdx192 = or i1 %conflict.rdx190, %diff.check191
  %i.dg = add i64 %i.cy, %i.d                     ; 2 uses
  %i.dh = sub i64 %i.c, %i.dg
  %diff.check193 = icmp ugt i64 %i.dh, -16
  %conflict.rdx194 = or i1 %conflict.rdx192, %diff.check193
  %i.di = sub i64 %i.b, %i.dg
  %diff.check195 = icmp ugt i64 %i.di, -16
  %conflict.rdx196 = or i1 %conflict.rdx194, %diff.check195
  %i.dj = add i64 %i.cy, %i.d
  %i.dk = sub i64 %i.a, %i.dj
  %diff.check197 = icmp ugt i64 %i.dk, -16
  %conflict.rdx198 = or i1 %conflict.rdx196, %diff.check197
  %i.dl = add i64 %i.da, %i.d                     ; 2 uses
  %i.dm = sub i64 %i.c, %i.dl
  %diff.check199 = icmp ugt i64 %i.dm, -16
  %conflict.rdx200 = or i1 %conflict.rdx198, %diff.check199
  %i.dn = sub i64 %i.b, %i.dl
  %diff.check201 = icmp ugt i64 %i.dn, -16
  %conflict.rdx202 = or i1 %conflict.rdx200, %diff.check201
  %i.do = add i64 %i.da, %i.d
  %i.dp = sub i64 %i.a, %i.do
  %diff.check203 = icmp ugt i64 %i.dp, -16
  %conflict.rdx204 = or i1 %conflict.rdx202, %diff.check203
  br i1 %conflict.rdx204, label %.preheader108.split.preheader381, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck181
  %n.vec208 = and i64 %wide.trip.count127, 2147483640 ; 3 uses
  %broadcast.splatinsert209 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat210 = shufflevector <8 x i32> %broadcast.splatinsert209, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert211 = insertelement <8 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat212 = shufflevector <8 x i32> %broadcast.splatinsert211, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph207
  %index214 = phi i64 [ 0, %vector.ph207 ], [ %index.next218, %vector.body213 ] ; 7 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %0, i64 %index214
  %wide.load215 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !15
  %i.dr = zext <8 x i16> %wide.load215 to <8 x i32>
  %i.ds = getelementptr inbounds [2 x i8], ptr %1, i64 %index214
  %wide.load216 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !15
  %i.dt = zext <8 x i16> %wide.load216 to <8 x i32>
  %i.du = getelementptr inbounds [2 x i8], ptr %2, i64 %index214
  %wide.load217 = load <8 x i16>, ptr %i.du, align 2, !tbaa !15
  %i.dv = zext <8 x i16> %wide.load217 to <8 x i32>
  %i.dw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dr, <8 x i32> %broadcast.splat210)
  %i.dx = shl <8 x i32> %i.dw, %broadcast.splat212
  %i.dy = trunc <8 x i32> %i.dx to <8 x i16>
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index214
  store <8 x i16> %i.dy, ptr %i.dz, align 2, !tbaa !15
  %i.ea = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dt, <8 x i32> %broadcast.splat210)
  %i.eb = shl <8 x i32> %i.ea, %broadcast.splat212
  %i.ec = trunc <8 x i32> %i.eb to <8 x i16>
  %i.ed = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index214
  store <8 x i16> %i.ec, ptr %i.ed, align 2, !tbaa !15
  %i.ee = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dv, <8 x i32> %broadcast.splat210)
  %i.ef = shl <8 x i32> %i.ee, %broadcast.splat212
  %i.eg = trunc <8 x i32> %i.ef to <8 x i16>
  %i.eh = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index214
  store <8 x i16> %i.eg, ptr %i.eh, align 2, !tbaa !15
  %index.next218 = add nuw i64 %index214, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next218, %n.vec208
  br i1 %i.ei, label %middle.block219, label %vector.body213, !llvm.loop !60

middle.block219:                                  ; preds = %vector.body213
  %cmp.n220 = icmp eq i64 %n.vec208, %wide.trip.count127
  br i1 %cmp.n220, label %.loopexit, label %.preheader108.split.preheader381

.preheader108.split.preheader381:                 ; preds = %vector.memcheck181, %.preheader108.split.preheader, %middle.block219
  %indvars.iv117.ph = phi i64 [ 0, %vector.memcheck181 ], [ 0, %.preheader108.split.preheader ], [ %n.vec208, %middle.block219 ]
  br label %.preheader108.split

.preheader108.split.us.preheader:                 ; preds = %.preheader108
  br i1 %or.cond378, label %vector.memcheck224, label %.preheader108.split.us.preheader379

vector.memcheck224:                               ; preds = %.preheader108.split.us.preheader
  %i.ej = shl nsw i64 %i.cw, 1                    ; 4 uses
  %i.ek = add nsw i64 %i.ej, -1
  %diff.check225 = icmp ult i64 %i.ek, 15
  %i.el = shl nsw i64 %i.cx, 1                    ; 4 uses
  %i.em = add nsw i64 %i.el, -1
  %diff.check226 = icmp ult i64 %i.em, 15
  %conflict.rdx227 = or i1 %diff.check225, %diff.check226
  %i.en = sub i64 %i.c, %i.d
  %diff.check228 = icmp ugt i64 %i.en, -16
  %conflict.rdx229 = or i1 %conflict.rdx227, %diff.check228
  %i.eo = sub i64 %i.b, %i.d
  %diff.check230 = icmp ugt i64 %i.eo, -16
  %conflict.rdx231 = or i1 %conflict.rdx229, %diff.check230
  %i.ep = sub i64 %i.a, %i.d
  %diff.check232 = icmp ugt i64 %i.ep, -16
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  %i.eq = sub nsw i64 %i.ej, %i.el
  %diff.check234 = icmp ugt i64 %i.eq, -16
  %conflict.rdx235 = or i1 %conflict.rdx233, %diff.check234
  %i.er = add i64 %i.ej, %i.d                     ; 2 uses
  %i.es = sub i64 %i.c, %i.er
  %diff.check236 = icmp ugt i64 %i.es, -16
  %conflict.rdx237 = or i1 %conflict.rdx235, %diff.check236
  %i.et = sub i64 %i.b, %i.er
  %diff.check238 = icmp ugt i64 %i.et, -16
  %conflict.rdx239 = or i1 %conflict.rdx237, %diff.check238
  %i.eu = add i64 %i.ej, %i.d
  %i.ev = sub i64 %i.a, %i.eu
  %diff.check240 = icmp ugt i64 %i.ev, -16
  %conflict.rdx241 = or i1 %conflict.rdx239, %diff.check240
  %i.ew = add i64 %i.el, %i.d                     ; 2 uses
  %i.ex = sub i64 %i.c, %i.ew
  %diff.check242 = icmp ugt i64 %i.ex, -16
  %conflict.rdx243 = or i1 %conflict.rdx241, %diff.check242
  %i.ey = sub i64 %i.b, %i.ew
  %diff.check244 = icmp ugt i64 %i.ey, -16
  %conflict.rdx245 = or i1 %conflict.rdx243, %diff.check244
  %i.ez = add i64 %i.el, %i.d
  %i.fa = sub i64 %i.a, %i.ez
  %diff.check246 = icmp ugt i64 %i.fa, -16
  %conflict.rdx247 = or i1 %conflict.rdx245, %diff.check246
  br i1 %conflict.rdx247, label %.preheader108.split.us.preheader379, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck224
  %n.vec251 = and i64 %wide.trip.count127, 2147483640 ; 3 uses
  %broadcast.splatinsert252 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat253 = shufflevector <8 x i32> %broadcast.splatinsert252, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert254 = insertelement <8 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat255 = shufflevector <8 x i32> %broadcast.splatinsert254, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph250
  %index257 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body256 ] ; 7 uses
  %i.fb = getelementptr inbounds [2 x i8], ptr %0, i64 %index257
  %wide.load258 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !15
  %i.fc = zext <8 x i16> %wide.load258 to <8 x i32>
  %i.fd = getelementptr inbounds [2 x i8], ptr %1, i64 %index257
  %wide.load259 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !15
  %i.fe = zext <8 x i16> %wide.load259 to <8 x i32>
  %i.ff = getelementptr inbounds [2 x i8], ptr %2, i64 %index257
  %wide.load260 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !15
  %i.fg = zext <8 x i16> %wide.load260 to <8 x i32>
  %i.fh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fc, <8 x i32> %broadcast.splat253)
  %i.fi = lshr <8 x i32> %i.fh, %broadcast.splat255
  %i.fj = trunc nuw <8 x i32> %i.fi to <8 x i16>
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index257
  store <8 x i16> %i.fj, ptr %i.fk, align 2, !tbaa !15
  %i.fl = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fe, <8 x i32> %broadcast.splat253)
  %i.fm = lshr <8 x i32> %i.fl, %broadcast.splat255
  %i.fn = trunc nuw <8 x i32> %i.fm to <8 x i16>
  %i.fo = getelementptr [2 x i8], ptr %invariant.gep145, i64 %index257
  store <8 x i16> %i.fn, ptr %i.fo, align 2, !tbaa !15
  %i.fp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fg, <8 x i32> %broadcast.splat253)
  %i.fq = lshr <8 x i32> %i.fp, %broadcast.splat255
  %i.fr = trunc nuw <8 x i32> %i.fq to <8 x i16>
  %i.fs = getelementptr [2 x i8], ptr %invariant.gep147, i64 %index257
  store <8 x i16> %i.fr, ptr %i.fs, align 2, !tbaa !15
  %index.next261 = add nuw i64 %index257, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next261, %n.vec251
  br i1 %i.ft, label %middle.block262, label %vector.body256, !llvm.loop !61

middle.block262:                                  ; preds = %vector.body256
  %cmp.n263 = icmp eq i64 %n.vec251, %wide.trip.count127
  br i1 %cmp.n263, label %.loopexit, label %.preheader108.split.us.preheader379

.preheader108.split.us.preheader379:              ; preds = %vector.memcheck224, %.preheader108.split.us.preheader, %middle.block262
  %indvars.iv123.ph = phi i64 [ 0, %vector.memcheck224 ], [ 0, %.preheader108.split.us.preheader ], [ %n.vec251, %middle.block262 ]
  br label %.preheader108.split.us

.preheader108.split.us:                           ; preds = %.preheader108.split.us.preheader379, %.preheader108.split.us
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.preheader108.split.us ], [ %indvars.iv123.ph, %.preheader108.split.us.preheader379 ] ; 5 uses
  %i.fu = mul nsw i64 %indvars.iv123, %i.cv       ; 3 uses
  %i.fv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !15
  %i.fx = zext i16 %i.fw to i32
  %i.fy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.fu
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !15
  %i.ga = zext i16 %i.fz to i32
  %i.gb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.fu
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !15
  %i.gd = zext i16 %i.gc to i32
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.fx, i32 %i.m)
  %i.gf = lshr i32 %i.ge, %i.cs
  %i.gg = trunc nuw i32 %i.gf to i16
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv123
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !15
  %i.gi = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.m)
  %i.gj = lshr i32 %i.gi, %i.cs
  %i.gk = trunc nuw i32 %i.gj to i16
  %gep146 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv123
  store i16 %i.gk, ptr %gep146, align 2, !tbaa !15
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 %i.m)
  %i.gm = lshr i32 %i.gl, %i.cs
  %i.gn = trunc nuw i32 %i.gm to i16
  %gep148 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv123
  store i16 %i.gn, ptr %gep148, align 2, !tbaa !15
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count127
  br i1 %exitcond128.not, label %.loopexit, label %.preheader108.split.us, !llvm.loop !62

.preheader108.split:                              ; preds = %.preheader108.split.preheader381, %.preheader108.split
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.preheader108.split ], [ %indvars.iv117.ph, %.preheader108.split.preheader381 ] ; 5 uses
  %i.go = mul nsw i64 %indvars.iv117, %i.cv       ; 3 uses
  %i.gp = getelementptr inbounds [2 x i8], ptr %0, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !15
  %i.gr = zext i16 %i.gq to i32
  %i.gs = getelementptr inbounds [2 x i8], ptr %1, i64 %i.go
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !15
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.go
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !15
  %i.gx = zext i16 %i.gw to i32
  %i.gy = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 %i.m)
  %i.gz = shl i32 %i.gy, %i.l
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv117
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !15
  %i.hc = tail call i32 @llvm.umin.i32(i32 %i.gu, i32 %i.m)
  %i.hd = shl i32 %i.hc, %i.l
  %i.he = trunc i32 %i.hd to i16
  %gep142 = getelementptr [2 x i8], ptr %invariant.gep145, i64 %indvars.iv117
  store i16 %i.he, ptr %gep142, align 2, !tbaa !15
  %i.hf = tail call i32 @llvm.umin.i32(i32 %i.gx, i32 %i.m)
  %i.hg = shl i32 %i.hf, %i.l
  %i.hh = trunc i32 %i.hg to i16
  %gep144 = getelementptr [2 x i8], ptr %invariant.gep147, i64 %indvars.iv117
  store i16 %i.hh, ptr %gep144, align 2, !tbaa !15
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count127
  br i1 %exitcond122.not, label %.loopexit, label %.preheader108.split, !llvm.loop !63

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.hi = mul nsw i64 %indvars.iv, %i.bg          ; 3 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !15
  %i.hl = zext i16 %i.hk to i32
  %i.hm = getelementptr inbounds [2 x i8], ptr %1, i64 %i.hi
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !15
  %i.ho = zext i16 %i.hn to i32
  %i.hp = getelementptr inbounds [2 x i8], ptr %2, i64 %i.hi
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !15
  %i.hr = zext i16 %i.hq to i32
  %i.hs = lshr i32 %i.hl, %.neg
  %i.ht = trunc nuw nsw i32 %i.hs to i16
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !15
  %i.hv = lshr i32 %i.ho, %.neg
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.hw, ptr %gep, align 2, !tbaa !15
  %i.hx = lshr i32 %i.hr, %.neg
  %i.hy = trunc nuw nsw i32 %i.hx to i16
  %gep140 = getelementptr [2 x i8], ptr %invariant.gep139, i64 %indvars.iv
  store i16 %i.hy, ptr %gep140, align 2, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph, %.preheader108.split, %.preheader108.split.us, %scalar.ph317, %middle.block, %middle.block219, %middle.block262, %middle.block372
  %i.hz = and i32 %5, 1
  %.not = icmp eq i32 %i.hz, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ia = sext i32 %5 to i64
  %i.ib = getelementptr [2 x i8], ptr %6, i64 %i.ia ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 -2
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !15
  store i16 %i.id, ptr %i.ib, align 2, !tbaa !15
  %i.ie = add nsw i32 %i.i, %5
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [2 x i8], ptr %6, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 -2
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !15
  store i16 %i.ii, ptr %i.ig, align 2, !tbaa !15
  %i.ij = shl nsw i32 %i.h, 1
  %i.ik = add nsw i32 %i.ij, %5
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [2 x i8], ptr %6, i64 %i.il ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !15
  store i16 %i.io, ptr %i.im, align 2, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateChroma(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = or disjoint i32 %i.a, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nsw i32 %3, 2                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = or disjoint i32 %i.e, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %i.cc, %bb.b ]
  %.050 = phi ptr [ %2, %bb.a ], [ %i.bz, %bb.b ] ; 4 uses
  %.049 = phi ptr [ %1, %bb.a ], [ %i.cb, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ca, %bb.b ]   ; 7 uses
  %i.j = load i16, ptr %.0, align 2, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = load i16, ptr %.049, align 2, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !15
  %i.p = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.j, i32 noundef %4, i32 noundef %5) #11
  %i.q = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.l, i32 noundef %4, i32 noundef %5) #11
  %i.r = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.m, i32 noundef %4, i32 noundef %5) #11
  %i.s = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.o, i32 noundef %4, i32 noundef %5) #11
  %i.t = add i32 %i.p, 2
  %i.u = add i32 %i.t, %i.q
  %i.v = add i32 %i.u, %i.r
  %i.w = add i32 %i.v, %i.s
  %i.x = lshr i32 %i.w, 2
  %i.y = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.x, i32 noundef %4, i32 noundef %5) #11 ; 2 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.b
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !15
  %i.ab = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.d
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !15
  %i.ad = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.b
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !15
  %i.af = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.d
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !15
  %i.ah = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.aa, i32 noundef %4, i32 noundef %5) #11
  %i.ai = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ac, i32 noundef %4, i32 noundef %5) #11
  %i.aj = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ae, i32 noundef %4, i32 noundef %5) #11
  %i.ak = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ag, i32 noundef %4, i32 noundef %5) #11
  %i.al = add i32 %i.ah, 2
  %i.am = add i32 %i.al, %i.ai
  %i.an = add i32 %i.am, %i.aj
  %i.ao = add i32 %i.an, %i.ak
  %i.ap = lshr i32 %i.ao, 2
  %i.aq = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.ap, i32 noundef %4, i32 noundef %5) #11 ; 2 uses
  %i.ar = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.f
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !15
  %i.at = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.h
  %i.au = load i16, ptr %i.at, align 2, !tbaa !15
  %i.av = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.f
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !15
  %i.ax = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.h
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !15
  %i.az = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.as, i32 noundef %4, i32 noundef %5) #11
  %i.ba = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.au, i32 noundef %4, i32 noundef %5) #11
  %i.bb = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.aw, i32 noundef %4, i32 noundef %5) #11
  %i.bc = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ay, i32 noundef %4, i32 noundef %5) #11
  %i.bd = add i32 %i.az, 2
  %i.be = add i32 %i.bd, %i.ba
  %i.bf = add i32 %i.be, %i.bb
  %i.bg = add i32 %i.bf, %i.bc
  %i.bh = lshr i32 %i.bg, 2
  %i.bi = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.bh, i32 noundef %4, i32 noundef %5) #11 ; 2 uses
  %i.bj = zext i16 %i.y to i32
  %i.bk = zext i16 %i.aq to i32
  %i.bl = zext i16 %i.bi to i32
  %i.bm = mul nuw nsw i32 %i.bj, 13933
  %i.bn = mul nuw i32 %i.bk, 46871
  %i.bo = mul nuw nsw i32 %i.bl, 4732
  %i.bp = add nuw nsw i32 %i.bm, 32768
  %i.bq = add nuw i32 %i.bp, %i.bn
  %i.br = add nuw i32 %i.bq, %i.bo
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc nuw i32 %i.bs to i16              ; 3 uses
  %i.bu = sub i16 %i.y, %i.bt
  store i16 %i.bu, ptr %.050, align 2, !tbaa !15
  %i.bv = sub i16 %i.aq, %i.bt
  %i.bw = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.i
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !15
  %i.bx = sub i16 %i.bi, %i.bt
  %i.by = getelementptr inbounds [2 x i8], ptr %.050, i64 %i.b
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %.050, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.cc = add nuw nsw i32 %.051, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %smax
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !74

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

declare i32 @SharpYuvGammaToLinear(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i16 @SharpYuvLinearToGamma(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umin.v2i16(<2 x i16>, <2 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"SharpYuvOptions", !8, i64 0, !5, i64 8}
!11 = !{!10, !8, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!4, !4, i64 0}
!20 = distinct !{!20, !16, !17, !18}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17, !18}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{null}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !16, !17, !18}
!33 = distinct !{!33, !16, !17}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !16, !17, !18}
!41 = distinct !{!41, !16, !17}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = !{!30}
!45 = !{!31}
!46 = !{!37}
!47 = !{!38}
!48 = !{!39, !37}
!49 = !{!39}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = distinct !{!57, !16, !17, !18}
!58 = distinct !{!58, !16, !17}
!59 = distinct !{!59, !16, !17, !18}
!60 = distinct !{!60, !16, !17, !18}
!61 = distinct !{!61, !16, !17, !18}
!62 = distinct !{!62, !16, !17}
!63 = distinct !{!63, !16, !17}
!64 = distinct !{!64, !16, !17}
!65 = !{!51}
!66 = !{!52}
!67 = !{!56, !55, !51, !54, !53}
!68 = !{!54}
!69 = !{!56}
!70 = !{!55, !51, !54, !53}
!71 = !{!53}
!72 = !{!55}
!73 = !{!51, !54, !53}
!74 = distinct !{!74, !16}
end_hunk_1
