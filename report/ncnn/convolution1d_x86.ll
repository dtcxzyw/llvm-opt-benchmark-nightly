inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn13Convolution1D10load_paramERKNS_9ParamDictE
declare noundef i32 @_ZN4ncnn13Convolution1D10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn13Convolution1D10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !39, !range !41, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44   ; 51 uses
  %i.k = sdiv i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 23 uses
  %i.n = sdiv i32 %i.k, %i.m                      ; 61 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.q = icmp sgt i32 %i.m, 3
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, 3                     ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i32 %i.j, 4
  %i.t = lshr i32 %i.n, 2
  %i.u = lshr i32 %i.n, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.n, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.m, 2
  %i.aa = lshr i32 %i.m, 1
  %i.ab = and i32 %i.aa, 1
  %i.ac = and i32 %i.m, 1
  %i.ad = add nuw nsw i32 %i.ac, %i.z
  %i.ae = add nuw nsw i32 %i.ad, %i.ab
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.s, i32 noundef %i.y, i32 noundef %i.ae, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.af = icmp sgt i32 %i.n, 1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.j, 3
  %i.ah = and i32 %i.n, 1
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = lshr i32 %i.m, 2
  %i.ak = lshr i32 %i.m, 1
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.m, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = add nuw nsw i32 %i.an, %i.al
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ao, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %i.ap = shl nsw i32 %i.j, 2
  %i.aq = lshr i32 %i.m, 2
  %i.ar = lshr i32 %i.m, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %i.m, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ap, i32 noundef %i.n, i32 noundef %i.av, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.j:                                             ; preds = %bb.d
  %i.aw = icmp sgt i32 %i.m, 1
  %i.ax = icmp sgt i32 %i.n, 3                    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = shl nsw i32 %i.j, 3
  %i.az = lshr i32 %i.n, 2
  %i.ba = lshr i32 %i.n, 1
  %i.bb = and i32 %i.ba, 1
  %i.bc = and i32 %i.n, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = and i32 %i.m, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ay, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.n, 1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = shl nsw i32 %i.j, 2
  %i.bj = and i32 %i.n, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = and i32 %i.m, 1
  %i.bm = add nuw nsw i32 %i.bl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.bn = shl nsw i32 %i.j, 1
  %i.bo = and i32 %i.m, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bn, i32 noundef %i.n, i32 noundef %i.bp, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.p:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = shl nsw i32 %i.j, 2
  %i.br = lshr i32 %i.n, 2
  %i.bs = lshr i32 %i.n, 1
  %i.bt = and i32 %i.bs, 1
  %i.bu = and i32 %i.n, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.br
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bq, i32 noundef %i.bw, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.r:                                             ; preds = %bb.p
  %i.bx = icmp sgt i32 %i.n, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = shl nsw i32 %i.j, 1
  %i.bz = and i32 %i.n, 1
  %i.ca = add nuw nsw i32 %i.bz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !18  ; 4 uses
  %i.cc = mul i32 %i.n, %i.j                      ; 4 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !46
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !20, !noalias !46
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !49, !noalias !46
  %factor.op.mul.i = mul i64 %i.ch, %i.cf
  %i.ci = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.cj = sext i32 %i.j to i64                    ; 21 uses
  %i.ck = shl i32 %i.j, 2
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = shl i32 %i.j, 1                         ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 5 uses
  %i.co = icmp slt i32 %i.j, 1
  %i.cp = and i32 %i.n, -4
  %i.cq = zext nneg i32 %i.m to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 12 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.cs = shl nuw nsw i64 %wide.trip.count.i, 2   ; 9 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.cu = shl nuw nsw i64 %i.cj, 2                ; 5 uses
  %i.cv = add nuw nsw i64 %i.cu, %i.cs            ; 4 uses
  %i.cw = shl nsw i64 %i.cn, 2
  %i.cx = add i32 %i.n, -2
  %min.iters.check208 = icmp ult i32 %i.j, 20
  %stride.check175 = icmp slt i32 %i.cm, 0
  %n.vec210 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec210, 5
  %cmp.n225 = icmp eq i64 %n.vec210, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cz = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.da = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.db = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  %.0.lcssa.i = phi i32 [ %i.db, %.preheader483.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ] ; 5 uses
  %i.dc = or disjoint i32 %.0.lcssa.i, 1          ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.m
  br i1 %i.dd, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !18  ; 18 uses
  %i.df = mul i32 %i.n, %i.j                      ; 2 uses
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !50
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20, !noalias !50
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !49, !noalias !50
  %factor.op.mul594.i = mul i64 %i.dk, %i.di
  %i.dl = icmp sgt i32 %i.n, 3
  %i.dm = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.dn = sext i32 %i.j to i64                    ; 14 uses
  %i.do = shl i32 %i.j, 1                         ; 2 uses
  %i.dp = sext i32 %i.do to i64                   ; 8 uses
  %i.dq = mul i32 %i.j, 3
  %i.dr = sext i32 %i.dq to i64                   ; 5 uses
  %i.ds = shl i32 %i.j, 2                         ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = icmp slt i32 %i.j, 1
  %i.dv = and i32 %i.n, -4
  %i.dw = zext nneg i32 %.0.lcssa.i to i64
  %2 = add i32 %.0.lcssa.i, 1
  %i.dx = sext i32 %i.m to i64
  %wide.trip.count747.i = zext i32 %i.j to i64    ; 18 uses
  %invariant.op.i = add nsw i64 %i.dx, -1
  %i.dy = shl nuw nsw i64 %wide.trip.count747.i, 3
  %i.dz = shl nuw nsw i64 %wide.trip.count747.i, 2 ; 5 uses
  %i.ea = shl nuw nsw i64 %wide.trip.count747.i, 4
  %i.eb = shl nuw nsw i64 %i.dn, 2                ; 3 uses
  %i.ec = add nuw nsw i64 %i.eb, %i.dz            ; 2 uses
  %i.ed = shl nsw i64 %i.dp, 2
  %i.ee = add i32 %i.n, -2
  %i.ef = shl nuw nsw i64 %wide.trip.count747.i, 5
  %i.eg = shl nuw nsw i64 %i.dr, 2                ; 3 uses
  %scevgep308.a = getelementptr i8, ptr %i.de, i64 %i.eg
  %i.eh = mul i32 %i.j, %i.n
  %i.ei = mul i32 %i.eh, %i.dc
  %i.ej = mul i32 %i.j, %i.n
  %i.ek = shl i32 %i.ej, 1
  %i.el = add i32 %i.n, -4
  %i.em = lshr i32 %i.el, 2
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = mul nsw i64 %i.en, %i.dt
  %i.ep = shl i64 %i.eo, 2                        ; 4 uses
  %i.eq = add i64 %i.ep, %i.eg
  %i.er = shl nuw nsw i64 %wide.trip.count747.i, 2 ; 4 uses
  %i.es = add i64 %i.eq, %i.er                    ; 2 uses
  %scevgep310.a = getelementptr i8, ptr %i.de, i64 %i.es
  %i.et = shl nuw nsw i64 %i.dp, 2                ; 3 uses
  %scevgep312.a = getelementptr i8, ptr %i.de, i64 %i.et
  %i.eu = add i64 %i.ep, %i.et
  %i.ev = add i64 %i.eu, %i.er                    ; 2 uses
  %scevgep314.a = getelementptr i8, ptr %i.de, i64 %i.ev
  %i.ew = shl nuw nsw i64 %i.dn, 2                ; 3 uses
  %scevgep316.a = getelementptr i8, ptr %i.de, i64 %i.ew
  %i.ex = add i64 %i.ep, %i.ew
  %i.ey = add i64 %i.ex, %i.er                    ; 2 uses
  %scevgep318.a = getelementptr i8, ptr %i.de, i64 %i.ey
  %i.ez = add i64 %i.ep, %i.er                    ; 2 uses
  %scevgep321.a = getelementptr i8, ptr %i.de, i64 %i.ez
  %scevgep323.a = getelementptr i8, ptr %i.de, i64 %i.eg
  %i.fa = mul i32 %.0.lcssa.i, %i.j
  %i.fb = mul i32 %i.fa, %i.n
  %scevgep325.a = getelementptr i8, ptr %i.de, i64 %i.es
  %scevgep327.a = getelementptr i8, ptr %i.de, i64 %i.et
  %scevgep329.a = getelementptr i8, ptr %i.de, i64 %i.ev
  %scevgep331.a = getelementptr i8, ptr %i.de, i64 %i.ew
  %scevgep333.a = getelementptr i8, ptr %i.de, i64 %i.ey
  %scevgep336.a = getelementptr i8, ptr %i.de, i64 %i.ez
  %min.iters.check378 = icmp ult i32 %i.j, 20
  %stride.check345 = icmp slt i32 %i.ds, 0
  %n.vec380 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fc = shl nuw nsw i64 %n.vec380, 5
  %cmp.n395 = icmp eq i64 %n.vec380, %wide.trip.count747.i
  %min.iters.check290 = icmp ult i32 %i.j, 12
  %stride.check277 = icmp slt i32 %i.do, 0
  %n.vec292 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fd = shl nuw nsw i64 %n.vec292, 4
  %cmp.n303 = icmp eq i64 %n.vec292, %wide.trip.count747.i
  %xtraiter596 = and i64 %wide.trip.count747.i, 1
  %lcmp.mod597.not = icmp eq i64 %xtraiter596, 0
  %i.fe = add nsw i64 %wide.trip.count747.i, -1
  %min.iters.check240 = icmp ult i32 %i.j, 6
  %n.vec242 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.ff = shl nuw nsw i64 %n.vec242, 3
  %cmp.n255 = icmp eq i64 %n.vec242, %wide.trip.count747.i
  %xtraiter598 = and i64 %wide.trip.count747.i, 3 ; 2 uses
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.fg = trunc i64 %indvars.iv733.i to i32       ; 4 uses
  %i.fh = mul i32 %i.cc, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fi ; 3 uses
  %i.fk = or disjoint i32 %i.fg, 1
  %i.fl = mul i32 %i.fk, %i.cc
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fm ; 3 uses
  %i.fo = or disjoint i32 %i.fg, 2
  %i.fp = mul i32 %i.fo, %i.cc
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fq ; 3 uses
  %i.fs = or disjoint i32 %i.fg, 3
  %i.ft = mul i32 %i.fs, %i.cc
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fu ; 3 uses
  %i.fw = lshr exact i64 %indvars.iv733.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.fw
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.reass.i ; 2 uses
  %i.fy = insertelement <4 x ptr> poison, ptr %i.fv, i64 0
  %i.fz = insertelement <4 x ptr> %i.fy, ptr %i.fr, i64 1
  %i.ga = insertelement <4 x ptr> %i.fz, ptr %i.fn, i64 2
  %i.gb = insertelement <4 x ptr> %i.ga, ptr %i.fj, i64 3
  br i1 %i.r, label %.preheader486.lr.ph.i, label %.preheader488.i

.preheader486.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit420.i
  br i1 %i.ci, label %.preheader486.us.i, label %._crit_edge546.split.i

.preheader486.us.i:                               ; preds = %.preheader486.lr.ph.i, %._crit_edge.us.i
  %.0349502.us.i = phi ptr [ %i.hy, %._crit_edge.us.i ], [ %i.fj, %.preheader486.lr.ph.i ] ; 2 uses
  %.0351501.us.i = phi ptr [ %i.hz, %._crit_edge.us.i ], [ %i.fn, %.preheader486.lr.ph.i ] ; 2 uses
  %.0358500.us.i = phi ptr [ %i.ia, %._crit_edge.us.i ], [ %i.fr, %.preheader486.lr.ph.i ] ; 2 uses
  %.0360499.us.i = phi ptr [ %i.ib, %._crit_edge.us.i ], [ %i.fv, %.preheader486.lr.ph.i ] ; 2 uses
  %.0377498.us.i = phi ptr [ %i.hx, %._crit_edge.us.i ], [ %i.fx, %.preheader486.lr.ph.i ]
  %.0385497.us.i = phi i32 [ %i.ic, %._crit_edge.us.i ], [ 0, %.preheader486.lr.ph.i ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader486.us.i
  %indvars.iv715.i = phi i64 [ 0, %.preheader486.us.i ], [ %indvars.iv.next716.i, %bb.u ] ; 5 uses
  %.1378496.us.i = phi ptr [ %.0377498.us.i, %.preheader486.us.i ], [ %i.hx, %bb.u ] ; 17 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !53
  store float %i.gg, ptr %.1378496.us.i, align 4, !tbaa !53
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !53
  %i.gi = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 4
  store float %i.gh, ptr %i.gi, align 4, !tbaa !53
  %i.gj = load float, ptr %i.ge, align 4, !tbaa !53
  %i.gk = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 8
  store float %i.gj, ptr %i.gk, align 4, !tbaa !53
  %i.gl = load float, ptr %i.gf, align 4, !tbaa !53
  %i.gm = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 12
  store float %i.gl, ptr %i.gm, align 4, !tbaa !53
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.cj ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.cj ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.cj ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.cj ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 16
  %i.gs = load float, ptr %i.gn, align 4, !tbaa !53
  store float %i.gs, ptr %i.gr, align 4, !tbaa !53
  %i.gt = load float, ptr %i.go, align 4, !tbaa !53
  %i.gu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 20
  store float %i.gt, ptr %i.gu, align 4, !tbaa !53
  %i.gv = load float, ptr %i.gp, align 4, !tbaa !53
  %i.gw = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 24
  store float %i.gv, ptr %i.gw, align 4, !tbaa !53
  %i.gx = load float, ptr %i.gq, align 4, !tbaa !53
  %i.gy = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 28
  store float %i.gx, ptr %i.gy, align 4, !tbaa !53
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.cj ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.cj ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.cj ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.cj ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 32
  %i.he = load float, ptr %i.gz, align 4, !tbaa !53
  store float %i.he, ptr %i.hd, align 4, !tbaa !53
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !53
  %i.hg = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 36
  store float %i.hf, ptr %i.hg, align 4, !tbaa !53
  %i.hh = load float, ptr %i.hb, align 4, !tbaa !53
  %i.hi = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 40
  store float %i.hh, ptr %i.hi, align 4, !tbaa !53
  %i.hj = load float, ptr %i.hc, align 4, !tbaa !53
  %i.hk = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 44
  store float %i.hj, ptr %i.hk, align 4, !tbaa !53
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.cj
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.cj
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.cj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.cj
  %i.hp = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 48
  %i.hq = load float, ptr %i.hl, align 4, !tbaa !53
  store float %i.hq, ptr %i.hp, align 4, !tbaa !53
  %i.hr = load float, ptr %i.hm, align 4, !tbaa !53
  %i.hs = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 52
  store float %i.hr, ptr %i.hs, align 4, !tbaa !53
  %i.ht = load float, ptr %i.hn, align 4, !tbaa !53
  %i.hu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 56
  store float %i.ht, ptr %i.hu, align 4, !tbaa !53
  %i.hv = load float, ptr %i.ho, align 4, !tbaa !53
  %i.hw = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 60
  store float %i.hv, ptr %i.hw, align 4, !tbaa !53
  %i.hx = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 64 ; 3 uses
  %indvars.iv.next716.i = add nuw nsw i64 %indvars.iv715.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next716.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.u, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.u
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %i.cl ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %i.cl ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %i.cl ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %i.cl ; 3 uses
  %i.ic = add nuw nsw i32 %.0385497.us.i, 4       ; 2 uses
  %i.id = or disjoint i32 %i.ic, 3
  %i.ie = icmp slt i32 %i.id, %i.n
  br i1 %i.ie, label %.preheader486.us.i, label %.preheader488.i.loopexit, !llvm.loop !56

.preheader488.i.loopexit:                         ; preds = %._crit_edge.us.i
  %i.if = insertelement <4 x ptr> poison, ptr %i.ib, i64 0
  %i.ig = insertelement <4 x ptr> %i.if, ptr %i.ia, i64 1
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %i.hz, i64 2
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %i.hy, i64 3
  br label %.preheader488.i

.preheader488.i:                                  ; preds = %.preheader488.i.loopexit, %_ZN4ncnn3MatD2Ev.exit420.i
  %.0385.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.cp, %.preheader488.i.loopexit ] ; 4 uses
  %.0377.lcssa.i = phi ptr [ %i.fx, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hx, %.preheader488.i.loopexit ] ; 2 uses
  %.0360.lcssa.i = phi ptr [ %i.fv, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ib, %.preheader488.i.loopexit ] ; 5 uses
  %.0358.lcssa.i = phi ptr [ %i.fr, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ia, %.preheader488.i.loopexit ] ; 5 uses
  %.0351.lcssa.i = phi ptr [ %i.fn, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hz, %.preheader488.i.loopexit ] ; 5 uses
  %.0349.lcssa.i = phi ptr [ %i.fj, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hy, %.preheader488.i.loopexit ] ; 5 uses
  %i.ij = phi <4 x ptr> [ %i.gb, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ii, %.preheader488.i.loopexit ]
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.ut = load float, ptr %i.us, align 4, !tbaa !53
  store float %i.ut, ptr %i.uq, align 4, !tbaa !53
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %i.oi
  %i.uv = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.uw = load float, ptr %i.uu, align 4, !tbaa !53
  store float %i.uw, ptr %i.uv, align 4, !tbaa !53
  %i.ux = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 12 ; 2 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !53
  store float %i.va, ptr %i.ux, align 4, !tbaa !53
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %i.oi
  %i.vc = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.vd = load float, ptr %i.vb, align 4, !tbaa !53
  store float %i.vd, ptr %i.vc, align 4, !tbaa !53
  %i.ve = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph488, !llvm.loop !127

._crit_edge617.us.i.us:                           ; preds = %scalar.ph488.prol.loopexit, %scalar.ph488, %middle.block503
  %.lcssa102 = phi ptr [ %i.to, %middle.block503 ], [ %.lcssa567.unr, %scalar.ph488.prol.loopexit ], [ %i.ve, %scalar.ph488 ] ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.om ; 2 uses
  %i.vg = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vh = or disjoint i32 %i.vg, 1
  %i.vi = icmp slt i32 %i.vh, %i.n
  br i1 %i.vi, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !128

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.tk, %.preheader476.i.loopexit.us ], [ %i.vf, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.oo, %.preheader476.i.loopexit.us ], [ %i.vg, %._crit_edge617.us.i.us ] ; 2 uses
  %i.vj = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.on, %i.vj
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader475.i.us
  %.1348.lcssa.i.us455 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.xb, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader.i.us.preheader ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader.i.us.preheader ] ; 4 uses
  %.6632.i.us456 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vk = sub i64 %.1348.lcssa.i.us455, %.6632.i.us456
  %diff.check457 = icmp ugt i64 %i.vk, -32
  %or.cond = select i1 %min.iters.check459, i1 true, i1 %diff.check457
  br i1 %or.cond, label %scalar.ph458.preheader, label %vector.ph460

vector.ph460:                                     ; preds = %.preheader.i.us
  %i.vl = getelementptr i8, ptr %.6632.i.us, i64 %i.qd ; 2 uses
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next467, %vector.body462 ] ; 3 uses
  %i.vm = shl i64 %index463, 2
  %next.gep464 = getelementptr i8, ptr %.6632.i.us, i64 %i.vm ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index463 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %wide.load465 = load <4 x float>, ptr %i.vn, align 4, !tbaa !53
  %wide.load466 = load <4 x float>, ptr %i.vo, align 4, !tbaa !53
  %i.vp = getelementptr i8, ptr %next.gep464, i64 16
  store <4 x float> %wide.load465, ptr %next.gep464, align 4, !tbaa !53
  store <4 x float> %wide.load466, ptr %i.vp, align 4, !tbaa !53
  %index.next467 = add nuw i64 %index463, 8       ; 2 uses
  %i.vq = icmp eq i64 %index.next467, %n.vec461
  br i1 %i.vq, label %middle.block468, label %vector.body462, !llvm.loop !129

middle.block468:                                  ; preds = %vector.body462
  br i1 %cmp.n469, label %._crit_edge630.i.us, label %scalar.ph458.preheader

scalar.ph458.preheader:                           ; preds = %.preheader.i.us, %middle.block468
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec461, %middle.block468 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vl, %middle.block468 ] ; 2 uses
  br i1 %lcmp.mod613.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol

scalar.ph458.prol:                                ; preds = %scalar.ph458.preheader, %scalar.ph458.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph458.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph458.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vt, %scalar.ph458.prol ], [ %.7628.i.us.ph, %scalar.ph458.preheader ] ; 2 uses
  %prol.iter614 = phi i64 [ %prol.iter614.next, %scalar.ph458.prol ], [ 0, %scalar.ph458.preheader ]
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !53
  store float %i.vs, ptr %.7628.i.us.prol, align 4, !tbaa !53
  %i.vt = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter614.next = add i64 %prol.iter614, 1   ; 2 uses
  %prol.iter614.cmp.not = icmp eq i64 %prol.iter614.next, %xtraiter612
  br i1 %prol.iter614.cmp.not, label %scalar.ph458.prol.loopexit, label %scalar.ph458.prol, !llvm.loop !130

scalar.ph458.prol.loopexit:                       ; preds = %scalar.ph458.prol, %scalar.ph458.preheader
  %.lcssa570.unr = phi ptr [ poison, %scalar.ph458.preheader ], [ %i.vt, %scalar.ph458.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph458.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph458.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph458.preheader ], [ %i.vt, %scalar.ph458.prol ]
  %i.vu = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.vv = icmp ugt i64 %i.vu, -8
  br i1 %i.vv, label %._crit_edge630.i.us, label %scalar.ph458

scalar.ph458:                                     ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph458 ], [ %indvars.iv785.i.us.unr, %scalar.ph458.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.xa, %scalar.ph458 ], [ %.7628.i.us.unr, %scalar.ph458.prol.loopexit ] ; 9 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !53
  store float %i.vx, ptr %.7628.i.us, align 4, !tbaa !53
  %i.vy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !53
  store float %i.wb, ptr %i.vy, align 4, !tbaa !53
  %i.wc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load float, ptr %i.we, align 4, !tbaa !53
  store float %i.wf, ptr %i.wc, align 4, !tbaa !53
  %i.wg = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !53
  store float %i.wj, ptr %i.wg, align 4, !tbaa !53
  %i.wk = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 16
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !53
  store float %i.wn, ptr %i.wk, align 4, !tbaa !53
  %i.wo = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 20
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 20
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !53
  store float %i.wr, ptr %i.wo, align 4, !tbaa !53
  %i.ws = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 24
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !53
  store float %i.wv, ptr %i.ws, align 4, !tbaa !53
  %i.ww = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 28
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 28
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !53
  store float %i.wz, ptr %i.ww, align 4, !tbaa !53
  %i.xa = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 32 ; 2 uses
  %indvars.iv.next786.i.us.7 = add nuw nsw i64 %indvars.iv785.i.us, 8 ; 2 uses
  %exitcond789.not.i.us.7 = icmp eq i64 %indvars.iv.next786.i.us.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us.7, label %._crit_edge630.i.us, label %scalar.ph458, !llvm.loop !131

._crit_edge630.i.us:                              ; preds = %scalar.ph458.prol.loopexit, %scalar.ph458, %middle.block468
  %.lcssa105 = phi ptr [ %i.vl, %middle.block468 ], [ %.lcssa570.unr, %scalar.ph458.prol.loopexit ], [ %i.xa, %scalar.ph458 ]
  %i.xb = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.xb, %i.n
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !132

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  %indvar.next475 = add i32 %indvar474, 1
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !133

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.or, label %.preheader473.us.i.us.preheader, label %.preheader475.i.us

.preheader473.us.i.us.preheader:                  ; preds = %.preheader476.i.loopexit.us
  %i.xc = mul i64 %i.oy, %indvar476               ; 3 uses
  %gep649 = getelementptr i8, ptr %invariant.gep648, i64 %i.xc
  %scevgep478 = getelementptr i8, ptr %gep649, i64 %i.ql
  %gep655 = getelementptr i8, ptr %invariant.gep654, i64 %i.xc
  %scevgep479 = getelementptr i8, ptr %gep655, i64 %i.ql
  %gep = getelementptr i8, ptr %invariant.gep659, i64 %i.xc
  %scevgep480 = getelementptr i8, ptr %gep, i64 %i.ql
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.xd = icmp sgt i32 %i.n, 1
  %i.xe = and i32 %i.n, -2
  %i.xf = mul i64 %i.of, %i.od
  %i.xg = shl nuw nsw i64 %wide.trip.count777.i, 3
  %scevgep419.a = getelementptr i8, ptr %i.ob, i64 %i.xg
  %i.xh = shl nuw nsw i64 %i.oi, 2                ; 2 uses
  %scevgep421.a = getelementptr i8, ptr %i.nz, i64 %i.xh
  %i.xi = mul i32 %.1.lcssa.i, %i.j
  %i.xj = mul i32 %i.xi, %i.n
  %i.xk = mul i32 %i.j, %i.n
  %i.xl = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.xm = getelementptr i8, ptr %i.nz, i64 %i.xh
  %scevgep423.a = getelementptr i8, ptr %i.xm, i64 %i.xl
  %scevgep426.a = getelementptr i8, ptr %i.nz, i64 %i.xl
  %min.iters.check436 = icmp ult i32 %i.j, 6
  %n.vec438 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xn = shl nuw nsw i64 %n.vec438, 3
  %cmp.n451 = icmp eq i64 %n.vec438, %wide.trip.count777.i
  %xtraiter600 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  %min.iters.check402 = icmp ult i32 %i.j, 8
  %n.vec404 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xo = shl nuw nsw i64 %n.vec404, 2
  %cmp.n412 = icmp eq i64 %n.vec404, %wide.trip.count777.i
  %xtraiter603 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.dw, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %2, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xp = mul i32 %i.ek, %indvar                  ; 2 uses
  %i.xq = add i32 %i.ei, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = shl nsw i64 %i.xr, 2                    ; 8 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308.a, i64 %i.xs
  %scevgep311 = getelementptr i8, ptr %scevgep310.a, i64 %i.xs
  %scevgep313 = getelementptr i8, ptr %scevgep312.a, i64 %i.xs
  %scevgep315 = getelementptr i8, ptr %scevgep314.a, i64 %i.xs
  %scevgep317 = getelementptr i8, ptr %scevgep316.a, i64 %i.xs
  %scevgep319 = getelementptr i8, ptr %scevgep318.a, i64 %i.xs
  %scevgep320 = getelementptr i8, ptr %i.de, i64 %i.xs
  %scevgep322 = getelementptr i8, ptr %scevgep321.a, i64 %i.xs
  %i.xt = add i32 %i.fb, %i.xp
  %i.xu = sext i32 %i.xt to i64
  %i.xv = shl nsw i64 %i.xu, 2                    ; 8 uses
  %scevgep324 = getelementptr i8, ptr %scevgep323.a, i64 %i.xv
  %scevgep326 = getelementptr i8, ptr %scevgep325.a, i64 %i.xv
  %scevgep328 = getelementptr i8, ptr %scevgep327.a, i64 %i.xv
  %scevgep330 = getelementptr i8, ptr %scevgep329.a, i64 %i.xv
  %scevgep332 = getelementptr i8, ptr %scevgep331.a, i64 %i.xv
  %scevgep334 = getelementptr i8, ptr %scevgep333.a, i64 %i.xv
  %scevgep335 = getelementptr i8, ptr %i.de, i64 %i.xv
  %scevgep337 = getelementptr i8, ptr %scevgep336.a, i64 %i.xv
  %i.xw = trunc nuw i64 %indvars.iv764.i to i32   ; 3 uses
  %i.xx = mul i32 %i.df, %i.xw
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.xy ; 2 uses
  %i.ya = mul i32 %indvars.iv762.i, %i.df
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.yb ; 2 uses
  %i.yd = lshr i32 %i.xw, 2
  %i.ye = lshr i32 %i.xw, 1
  %i.yf = and i32 %i.ye, 1
  %i.yg = add nuw nsw i32 %i.yf, %i.yd
  %i.yh = zext nneg i32 %i.yg to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yh
  %i.yi = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yj = insertelement <8 x ptr> poison, ptr %scevgep315, i64 0
  %i.yk = insertelement <8 x ptr> %i.yj, ptr %scevgep311, i64 1
  %i.yl = insertelement <8 x ptr> %i.yk, ptr %scevgep319, i64 2
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep322, i64 3
  %i.yn = insertelement <8 x ptr> %i.ym, ptr %scevgep326, i64 4
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep330, i64 5
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep334, i64 6
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %scevgep337, i64 7
  %i.yr = insertelement <8 x ptr> poison, ptr %scevgep313, i64 0
  %i.ys = insertelement <8 x ptr> %i.yr, ptr %scevgep309, i64 1
  %i.yt = insertelement <8 x ptr> %i.ys, ptr %scevgep317, i64 2
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %scevgep320, i64 3
  %i.yv = insertelement <8 x ptr> %i.yu, ptr %scevgep324, i64 4
  %i.yw = insertelement <8 x ptr> %i.yv, ptr %scevgep328, i64 5
  %i.yx = insertelement <8 x ptr> %i.yw, ptr %scevgep332, i64 6
  %i.yy = insertelement <8 x ptr> %i.yx, ptr %scevgep335, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.aaz, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108.a, %._crit_edge551.us.i ], [ %i.yi, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aay, %._crit_edge551.us.i ], [ %i.yc, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aax, %._crit_edge551.us.i ], [ %i.xz, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.preheader480.us.i
  %scevgep307 = getelementptr i8, ptr %.0366555.us.i, i64 %i.ef
  %i.yz = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.za = shufflevector <8 x ptr> %i.yz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zb = icmp ult <8 x ptr> %i.za, %i.yq
  %i.zc = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.zd = shufflevector <8 x ptr> %i.zc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ze = icmp ult <8 x ptr> %i.yy, %i.zd
  %i.zf = and <8 x i1> %i.zb, %i.ze
  %i.zg = bitcast <8 x i1> %i.zf to i8
  %i.zh = icmp ne i8 %i.zg, 0
  %op.rdx562.a = or i1 %i.zh, %stride.check345
  br i1 %op.rdx562.a, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck306
  %i.zi = getelementptr i8, ptr %.0366555.us.i, i64 %i.fc ; 2 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next393, %vector.body381 ] ; 4 uses
  %i.zj = shl i64 %index382, 5
  %next.gep383 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zj
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index382 ; 4 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index382 ; 4 uses
  %wide.load384 = load <4 x float>, ptr %i.zk, align 4, !tbaa !53, !alias.scope !134
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %i.dn
  %wide.load385 = load <4 x float>, ptr %i.zm, align 4, !tbaa !53, !alias.scope !137
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %i.dp
  %wide.load386 = load <4 x float>, ptr %i.zn, align 4, !tbaa !53, !alias.scope !139
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %i.dr
  %wide.load387 = load <4 x float>, ptr %i.zo, align 4, !tbaa !53, !alias.scope !141
  %wide.load388 = load <4 x float>, ptr %i.zl, align 4, !tbaa !53, !alias.scope !143
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dn
  %wide.load389 = load <4 x float>, ptr %i.zp, align 4, !tbaa !53, !alias.scope !145
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dp
  %wide.load390 = load <4 x float>, ptr %i.zq, align 4, !tbaa !53, !alias.scope !147
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dr
  %wide.load391 = load <4 x float>, ptr %i.zr, align 4, !tbaa !53, !alias.scope !149
  %i.zs = shufflevector <4 x float> %wide.load384, <4 x float> %wide.load385, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zt = shufflevector <4 x float> %wide.load386, <4 x float> %wide.load387, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zu = shufflevector <4 x float> %wide.load388, <4 x float> %wide.load389, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load390, <4 x float> %wide.load391, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zw = shufflevector <8 x float> %i.zs, <8 x float> %i.zt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zx = shufflevector <8 x float> %i.zu, <8 x float> %i.zv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec392 = shufflevector <16 x float> %i.zw, <16 x float> %i.zx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec392, ptr %next.gep383, align 4, !tbaa !53, !alias.scope !151, !noalias !153
  %index.next393 = add nuw i64 %index382, 4       ; 2 uses
  %i.zy = icmp eq i64 %index.next393, %n.vec380
  br i1 %i.zy, label %middle.block394, label %vector.body381, !llvm.loop !154

middle.block394:                                  ; preds = %vector.body381
  br i1 %cmp.n395, label %._crit_edge551.us.i, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck306, %.preheader480.us.i, %middle.block394
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.preheader480.us.i ], [ %n.vec380, %middle.block394 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck306 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.zi, %middle.block394 ]
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.preheader, %scalar.ph377
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph377 ], [ %indvars.iv744.i.ph, %scalar.ph377.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aaw, %scalar.ph377 ], [ %.1367549.us.i.ph, %scalar.ph377.preheader ] ; 9 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aab = load float, ptr %i.zz, align 4, !tbaa !53
  store float %i.aab, ptr %.1367549.us.i, align 4, !tbaa !53
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.dn
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !53
  %i.aae = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store float %i.aad, ptr %i.aae, align 4, !tbaa !53
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.dp
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !53
  %i.aah = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store float %i.aag, ptr %i.aah, align 4, !tbaa !53
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.dr
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !53
  %i.aak = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store float %i.aaj, ptr %i.aak, align 4, !tbaa !53
  %i.aal = load float, ptr %i.aaa, align 4, !tbaa !53
  %i.aam = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16
  store float %i.aal, ptr %i.aam, align 4, !tbaa !53
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dn
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !53
  %i.aap = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 20
  store float %i.aao, ptr %i.aap, align 4, !tbaa !53
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dp
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !53
  %i.aas = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 24
  store float %i.aar, ptr %i.aas, align 4, !tbaa !53
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dr
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !53
  %i.aav = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 28
  store float %i.aau, ptr %i.aav, align 4, !tbaa !53
  %i.aaw = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 32 ; 2 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph377, !llvm.loop !155

._crit_edge551.us.i:                              ; preds = %scalar.ph377, %middle.block394
  %.lcssa108.a = phi ptr [ %i.zi, %middle.block394 ], [ %i.aaw, %scalar.ph377 ] ; 2 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dt ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dt ; 2 uses
  %i.aaz = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.aba = or disjoint i32 %i.aaz, 3
  %i.abb = icmp slt i32 %i.aba, %i.n
  br i1 %i.abb, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !156

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.xz, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aax, %._crit_edge551.us.i ] ; 6 uses
  %.0373.lcssa.i = phi ptr [ %i.yc, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aay, %._crit_edge551.us.i ] ; 6 uses
  %.0366.lcssa.i = phi ptr [ %i.yi, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %.lcssa108.a, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.dv, %._crit_edge551.us.i ] ; 4 uses
  %i.abc = or disjoint i32 %.0363.lcssa.i, 1
  %i.abd = icmp slt i32 %i.abc, %i.n
  br i1 %i.abd, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
  br i1 %i.dm, label %.preheader479.us.i.preheader, label %._crit_edge591.split.i

.preheader479.us.i.preheader:                     ; preds = %.preheader479.lr.ph.i
  %scevgep260.a = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.eb
  %scevgep261 = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.ec
  %i.abe = sub i32 %i.ee, %.0363.lcssa.i
  %i.abf = lshr i32 %i.abe, 1
  %i.abg = zext nneg i32 %i.abf to i64
  %i.abh = mul i64 %i.ed, %i.abg                  ; 4 uses
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.abh
  %scevgep263 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.eb
  %scevgep264 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.ec
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.abh
  %scevgep266 = getelementptr i8, ptr %.0373.lcssa.i, i64 %i.dz
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.abh
  %scevgep268 = getelementptr i8, ptr %.0375.lcssa.i, i64 %i.dz
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.abh
  %i.abi = insertelement <4 x ptr> poison, ptr %scevgep265, i64 0
  %i.abj = insertelement <4 x ptr> %i.abi, ptr %scevgep262, i64 1
  %i.abk = insertelement <4 x ptr> %i.abj, ptr %scevgep267, i64 2
  %i.abl = insertelement <4 x ptr> %i.abk, ptr %scevgep269, i64 3
  %i.abm = insertelement <4 x ptr> poison, ptr %scevgep263, i64 0
  %i.abn = insertelement <4 x ptr> %i.abm, ptr %scevgep260.a, i64 1
  %i.abo = insertelement <4 x ptr> %i.abn, ptr %.0373.lcssa.i, i64 2
  %i.abp = insertelement <4 x ptr> %i.abo, ptr %.0375.lcssa.i, i64 3
  br label %.preheader479.us.i

.preheader479.us.i:                               ; preds = %.preheader479.us.i.preheader, %._crit_edge571.us.i
  %.1364576.us.i = phi i32 [ %i.adv, %._crit_edge571.us.i ], [ %.0363.lcssa.i, %.preheader479.us.i.preheader ]
  %.2368575.us.i = phi ptr [ %.lcssa111, %._crit_edge571.us.i ], [ %.0366.lcssa.i, %.preheader479.us.i.preheader ] ; 6 uses
  %.1374574.us.i = phi ptr [ %i.adu, %._crit_edge571.us.i ], [ %.0373.lcssa.i, %.preheader479.us.i.preheader ] ; 5 uses
  %.1376573.us.i = phi ptr [ %i.adt, %._crit_edge571.us.i ], [ %.0375.lcssa.i, %.preheader479.us.i.preheader ] ; 5 uses
  br i1 %min.iters.check290, label %scalar.ph289.preheader, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.preheader479.us.i
  %scevgep259 = getelementptr i8, ptr %.2368575.us.i, i64 %i.ea
  %i.abq = insertelement <4 x ptr> poison, ptr %.2368575.us.i, i64 0
  %i.abr = shufflevector <4 x ptr> %i.abq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abs = icmp ult <4 x ptr> %i.abr, %i.abl
  %i.abt = insertelement <4 x ptr> poison, ptr %scevgep259, i64 0
  %i.abu = shufflevector <4 x ptr> %i.abt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abv = icmp ult <4 x ptr> %i.abp, %i.abu
  %i.abw = and <4 x i1> %i.abs, %i.abv
  %i.abx = bitcast <4 x i1> %i.abw to i4
  %i.aby = icmp ne i4 %i.abx, 0
  %op.rdx561 = or i1 %i.aby, %stride.check277
  br i1 %op.rdx561, label %scalar.ph289.preheader, label %vector.ph291

end_hunk_1
begin_hunk_2_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  store float %i.acr, ptr %i.acs, align 4, !tbaa !53
  %i.act = getelementptr inbounds nuw i8, ptr %.3369569.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next752.i.prol = or disjoint i64 %indvars.iv751.i.ph, 1
  br label %scalar.ph289.prol.loopexit

scalar.ph289.prol.loopexit:                       ; preds = %scalar.ph289.prol, %scalar.ph289.preheader
  %.lcssa578.unr = phi ptr [ poison, %scalar.ph289.preheader ], [ %i.act, %scalar.ph289.prol ]
  %indvars.iv751.i.unr = phi i64 [ %indvars.iv751.i.ph, %scalar.ph289.preheader ], [ %indvars.iv.next752.i.prol, %scalar.ph289.prol ]
  %.3369569.us.i.unr = phi ptr [ %.3369569.us.i.ph, %scalar.ph289.preheader ], [ %i.act, %scalar.ph289.prol ]
  %i.acu = icmp eq i64 %indvars.iv751.i.ph, %i.fe
  br i1 %i.acu, label %._crit_edge571.us.i, label %scalar.ph289

scalar.ph289:                                     ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %scalar.ph289 ], [ %indvars.iv751.i.unr, %scalar.ph289.prol.loopexit ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.ads, %scalar.ph289 ], [ %.3369569.us.i.unr, %scalar.ph289.prol.loopexit ] ; 9 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.acx = load float, ptr %i.acv, align 4, !tbaa !53
  store float %i.acx, ptr %.3369569.us.i, align 4, !tbaa !53
  %i.acy = load float, ptr %i.acw, align 4, !tbaa !53
  %i.acz = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  store float %i.acy, ptr %i.acz, align 4, !tbaa !53
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.dn
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.dn
  %i.adc = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %i.add = load float, ptr %i.ada, align 4, !tbaa !53
  store float %i.add, ptr %i.adc, align 4, !tbaa !53
  %i.ade = load float, ptr %i.adb, align 4, !tbaa !53
  %i.adf = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  store float %i.ade, ptr %i.adf, align 4, !tbaa !53
  %i.adg = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16
  %indvars.iv.next752.i = add nuw nsw i64 %indvars.iv751.i, 1 ; 2 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adj = load float, ptr %i.adh, align 4, !tbaa !53
  store float %i.adj, ptr %i.adg, align 4, !tbaa !53
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !53
  %i.adl = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 20
  store float %i.adk, ptr %i.adl, align 4, !tbaa !53
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.dn
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.dn
  %i.ado = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 24
  %i.adp = load float, ptr %i.adm, align 4, !tbaa !53
  store float %i.adp, ptr %i.ado, align 4, !tbaa !53
  %i.adq = load float, ptr %i.adn, align 4, !tbaa !53
  %i.adr = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 28
  store float %i.adq, ptr %i.adr, align 4, !tbaa !53
  %i.ads = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 32 ; 2 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %exitcond755.not.i.1 = icmp eq i64 %indvars.iv.next752.i.1, %wide.trip.count747.i
  br i1 %exitcond755.not.i.1, label %._crit_edge571.us.i, label %scalar.ph289, !llvm.loop !170

._crit_edge571.us.i:                              ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block302
  %.lcssa111 = phi ptr [ %i.abz, %middle.block302 ], [ %.lcssa578.unr, %scalar.ph289.prol.loopexit ], [ %i.ads, %scalar.ph289 ] ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.dp ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.dp ; 2 uses
  %i.adv = add nuw nsw i32 %.1364576.us.i, 2      ; 3 uses
  %i.adw = or disjoint i32 %i.adv, 1
  %i.adx = icmp slt i32 %i.adw, %i.n
  br i1 %i.adx, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !171

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.adt, %._crit_edge571.us.i ] ; 8 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.adu, %._crit_edge571.us.i ] ; 8 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa111, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.adv, %._crit_edge571.us.i ] ; 2 uses
  %i.ady = icmp sge i32 %.1364.lcssa.i, %i.n
  %brmerge642.i = or i1 %i.du, %i.ady
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i.preheader

.preheader478.i.preheader:                        ; preds = %.preheader481.i
  %scevgep230.a = getelementptr i8, ptr %.1374.lcssa.i, i64 %i.dz
  %scevgep231 = getelementptr i8, ptr %.1376.lcssa.i, i64 %i.dz
  br label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader478.i.preheader, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.aep, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader478.i.preheader ]
  %.5371589.i = phi ptr [ %.lcssa115, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader478.i.preheader ] ; 8 uses
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.preheader478.i
  %scevgep229 = getelementptr i8, ptr %.5371589.i, i64 %i.dy ; 2 uses
  %bound0232 = icmp ult ptr %.5371589.i, %scevgep230.a
  %bound1233 = icmp ult ptr %.1374.lcssa.i, %scevgep229
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0235 = icmp ult ptr %.5371589.i, %scevgep231
  %bound1236 = icmp ult ptr %.1376.lcssa.i, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %found.conflict234, %found.conflict237
  br i1 %conflict.rdx238, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck228
  %i.adz = getelementptr i8, ptr %.5371589.i, i64 %i.ff ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body243 ] ; 4 uses
  %i.aea = shl i64 %index244, 3                   ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.5371589.i, i64 %i.aea
  %i.aeb = getelementptr i8, ptr %.5371589.i, i64 %i.aea
  %next.gep246 = getelementptr i8, ptr %i.aeb, i64 16
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index244 ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index244 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %wide.load247 = load <2 x float>, ptr %i.aec, align 4, !tbaa !53, !alias.scope !172
  %wide.load248 = load <2 x float>, ptr %i.aee, align 4, !tbaa !53, !alias.scope !172
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %wide.load249 = load <2 x float>, ptr %i.aed, align 4, !tbaa !53, !alias.scope !175
  %wide.load250 = load <2 x float>, ptr %i.aef, align 4, !tbaa !53, !alias.scope !175
  %interleaved.vec251 = shufflevector <2 x float> %wide.load247, <2 x float> %wide.load249, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec251, ptr %next.gep245, align 4, !tbaa !53, !alias.scope !177, !noalias !179
  %interleaved.vec252 = shufflevector <2 x float> %wide.load248, <2 x float> %wide.load250, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec252, ptr %next.gep246, align 4, !tbaa !53, !alias.scope !177, !noalias !179
  %index.next253 = add nuw i64 %index244, 4       ; 2 uses
  %i.aeg = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.aeg, label %middle.block254, label %vector.body243, !llvm.loop !180

middle.block254:                                  ; preds = %vector.body243
  br i1 %cmp.n255, label %._crit_edge587.i, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %vector.memcheck228, %.preheader478.i, %middle.block254
  %indvars.iv756.i.ph = phi i64 [ 0, %vector.memcheck228 ], [ 0, %.preheader478.i ], [ %n.vec242, %middle.block254 ] ; 3 uses
  %.6372585.i.ph = phi ptr [ %.5371589.i, %vector.memcheck228 ], [ %.5371589.i, %.preheader478.i ], [ %i.adz, %middle.block254 ] ; 2 uses
  br i1 %lcmp.mod599.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv756.i.prol = phi i64 [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ], [ %indvars.iv756.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %.6372585.i.prol = phi ptr [ %i.aem, %scalar.ph239.prol ], [ %.6372585.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aej = load float, ptr %i.aeh, align 4, !tbaa !53
  store float %i.aej, ptr %.6372585.i.prol, align 4, !tbaa !53
  %i.aek = load float, ptr %i.aei, align 4, !tbaa !53
  %i.ael = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 4
  store float %i.aek, ptr %i.ael, align 4, !tbaa !53
  %i.aem = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 8 ; 3 uses
  %indvars.iv.next757.i.prol = add nuw nsw i64 %indvars.iv756.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter598
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !181

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa582.unr = phi ptr [ poison, %scalar.ph239.preheader ], [ %i.aem, %scalar.ph239.prol ]
  %indvars.iv756.i.unr = phi i64 [ %indvars.iv756.i.ph, %scalar.ph239.preheader ], [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ]
  %.6372585.i.unr = phi ptr [ %.6372585.i.ph, %scalar.ph239.preheader ], [ %i.aem, %scalar.ph239.prol ]
  %i.aen = sub nsw i64 %indvars.iv756.i.ph, %wide.trip.count747.i
  %i.aeo = icmp ugt i64 %i.aen, -4
  br i1 %i.aeo, label %._crit_edge587.i, label %scalar.ph239

._crit_edge587.i:                                 ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block254
  %.lcssa115 = phi ptr [ %i.adz, %middle.block254 ], [ %.lcssa582.unr, %scalar.ph239.prol.loopexit ], [ %i.afn, %scalar.ph239 ]
  %i.aep = add nuw nsw i32 %.2365590.i, 1         ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.aep, %i.n
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !182

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i.3, %scalar.ph239 ], [ %indvars.iv756.i.unr, %scalar.ph239.prol.loopexit ] ; 6 uses
  %.6372585.i = phi ptr [ %i.afn, %scalar.ph239 ], [ %.6372585.i.unr, %scalar.ph239.prol.loopexit ] ; 9 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.aes = load float, ptr %i.aeq, align 4, !tbaa !53
  store float %i.aes, ptr %.6372585.i, align 4, !tbaa !53
  %i.aet = load float, ptr %i.aer, align 4, !tbaa !53
  %i.aeu = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4
  store float %i.aet, ptr %i.aeu, align 4, !tbaa !53
  %i.aev = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 8
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i
  %i.aey = load float, ptr %i.aew, align 4, !tbaa !53
  store float %i.aey, ptr %i.aev, align 4, !tbaa !53
  %i.aez = load float, ptr %i.aex, align 4, !tbaa !53
  %i.afa = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 12
  store float %i.aez, ptr %i.afa, align 4, !tbaa !53
  %i.afb = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 16
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afe = load float, ptr %i.afc, align 4, !tbaa !53
  store float %i.afe, ptr %i.afb, align 4, !tbaa !53
  %i.aff = load float, ptr %i.afd, align 4, !tbaa !53
  %i.afg = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 20
  store float %i.aff, ptr %i.afg, align 4, !tbaa !53
  %i.afh = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 24
  %indvars.iv.next757.i.2 = add nuw nsw i64 %indvars.iv756.i, 3 ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afk = load float, ptr %i.afi, align 4, !tbaa !53
  store float %i.afk, ptr %i.afh, align 4, !tbaa !53
  %i.afl = load float, ptr %i.afj, align 4, !tbaa !53
  %i.afm = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 28
  store float %i.afl, ptr %i.afm, align 4, !tbaa !53
  %i.afn = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 32 ; 2 uses
  %indvars.iv.next757.i.3 = add nuw nsw i64 %indvars.iv756.i, 4 ; 2 uses
  %exitcond760.not.i.3 = icmp eq i64 %indvars.iv.next757.i.3, %wide.trip.count747.i
  br i1 %exitcond760.not.i.3, label %._crit_edge587.i, label %scalar.ph239, !llvm.loop !183

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.afo = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.afo, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !184

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvar416 = phi i32 [ %indvar.next417, %._crit_edge634.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 4 uses
  %indvars.iv791.i = phi i64 [ %indvars.iv.next792.i, %._crit_edge634.split.i ], [ %i.op, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 2 uses
  %i.afp = add i32 %.1.lcssa.i, %indvar416        ; 2 uses
  %i.afq = lshr i32 %i.afp, 2
  %i.afr = sub i32 %.1.lcssa.i, %indvar416
  %i.afs = and i32 %i.afr, 1
  %i.aft = add nuw nsw i32 %i.afq, %i.afs
  %i.afu = lshr i32 %i.afp, 1
  %.lobit = and i32 %i.afu, 1
  %i.afv = add nuw i32 %i.aft, %.lobit
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = mul i64 %i.xf, %i.afw                  ; 2 uses
  %scevgep418 = getelementptr i8, ptr %i.ob, i64 %i.afx ; 2 uses
  %scevgep420 = getelementptr i8, ptr %scevgep419.a, i64 %i.afx ; 2 uses
  %i.afy = mul i32 %i.xk, %indvar416
  %i.afz = add i32 %i.xj, %i.afy
  %i.aga = sext i32 %i.afz to i64
  %i.agb = shl nsw i64 %i.aga, 2                  ; 4 uses
  %scevgep422 = getelementptr i8, ptr %scevgep421.a, i64 %i.agb
  %scevgep424 = getelementptr i8, ptr %scevgep423.a, i64 %i.agb
  %scevgep425 = getelementptr i8, ptr %i.nz, i64 %i.agb
  %scevgep427 = getelementptr i8, ptr %scevgep426.a, i64 %i.agb
  %i.agc = trunc nuw nsw i64 %indvars.iv791.i to i32 ; 4 uses
  %i.agd = mul i32 %i.oa, %i.agc
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.age ; 8 uses
  %i.agg = lshr i32 %i.agc, 2
  %i.agh = lshr i32 %i.agc, 1
  %i.agi = and i32 %i.agh, 1
  %i.agj = and i32 %i.agc, 1
  %i.agk = add nuw nsw i32 %i.agj, %i.agg
  %i.agl = add nuw nsw i32 %i.agk, %i.agi
  %i.agm = zext nneg i32 %i.agl to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.agm
  %i.agn = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.reass638.i ; 6 uses
  br i1 %i.xd, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.oh, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check436, label %.preheader473.us.i.preheader571, label %vector.memcheck415

vector.memcheck415:                               ; preds = %.preheader473.us.i.preheader
  %bound0428 = icmp ult ptr %scevgep418, %scevgep424
  %bound1429 = icmp ult ptr %scevgep422, %scevgep420
  %found.conflict430 = and i1 %bound0428, %bound1429
  %bound0431 = icmp ult ptr %scevgep418, %scevgep427
  %bound1432 = icmp ult ptr %scevgep425, %scevgep420
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %found.conflict430, %found.conflict433
  br i1 %conflict.rdx434, label %.preheader473.us.i.preheader571, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck415
  %i.ago = getelementptr i8, ptr %i.agn, i64 %i.xn ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next449, %vector.body439 ] ; 3 uses
  %i.agp = shl i64 %index440, 3                   ; 2 uses
  %next.gep441 = getelementptr i8, ptr %i.agn, i64 %i.agp
  %i.agq = getelementptr i8, ptr %i.agn, i64 %i.agp
  %next.gep442 = getelementptr i8, ptr %i.agq, i64 16
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %index440 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %wide.load443 = load <2 x float>, ptr %i.agr, align 4, !tbaa !53, !alias.scope !185
  %wide.load444 = load <2 x float>, ptr %i.ags, align 4, !tbaa !53, !alias.scope !185
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.oi ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  %wide.load445 = load <2 x float>, ptr %i.agt, align 4, !tbaa !53, !alias.scope !188
  %wide.load446 = load <2 x float>, ptr %i.agu, align 4, !tbaa !53, !alias.scope !188
  %interleaved.vec447 = shufflevector <2 x float> %wide.load443, <2 x float> %wide.load445, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec447, ptr %next.gep441, align 4, !tbaa !53, !alias.scope !190, !noalias !192
  %interleaved.vec448 = shufflevector <2 x float> %wide.load444, <2 x float> %wide.load446, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec448, ptr %next.gep442, align 4, !tbaa !53, !alias.scope !190, !noalias !192
  %index.next449 = add nuw i64 %index440, 4       ; 2 uses
  %i.agv = icmp eq i64 %index.next449, %n.vec438
  br i1 %i.agv, label %middle.block450, label %vector.body439, !llvm.loop !193

middle.block450:                                  ; preds = %vector.body439
  br i1 %cmp.n451, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader571

.preheader473.us.i.preheader571:                  ; preds = %vector.memcheck415, %.preheader473.us.i.preheader, %middle.block450
  %indvars.iv780.i.ph = phi i64 [ 0, %vector.memcheck415 ], [ 0, %.preheader473.us.i.preheader ], [ %n.vec438, %middle.block450 ] ; 3 uses
  %.4615.us.i.ph = phi ptr [ %i.agn, %vector.memcheck415 ], [ %i.agn, %.preheader473.us.i.preheader ], [ %i.ago, %middle.block450 ] ; 2 uses
  br i1 %lcmp.mod601.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol

.preheader473.us.i.prol:                          ; preds = %.preheader473.us.i.preheader571, %.preheader473.us.i.prol
  %indvars.iv780.i.prol = phi i64 [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader571 ] ; 2 uses
  %.4615.us.i.prol = phi ptr [ %i.ahb, %.preheader473.us.i.prol ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader571 ] ; 3 uses
  %prol.iter602 = phi i64 [ %prol.iter602.next, %.preheader473.us.i.prol ], [ 0, %.preheader473.us.i.preheader571 ]
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv780.i.prol ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !53
  store float %i.agx, ptr %.4615.us.i.prol, align 4, !tbaa !53
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %i.oi
  %i.agz = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 4
  %i.aha = load float, ptr %i.agy, align 4, !tbaa !53
  store float %i.aha, ptr %i.agz, align 4, !tbaa !53
  %i.ahb = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next781.i.prol = add nuw nsw i64 %indvars.iv780.i.prol, 1 ; 2 uses
  %prol.iter602.next = add i64 %prol.iter602, 1   ; 2 uses
  %prol.iter602.cmp.not = icmp eq i64 %prol.iter602.next, %xtraiter600
  br i1 %prol.iter602.cmp.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol, !llvm.loop !194

.preheader473.us.i.prol.loopexit:                 ; preds = %.preheader473.us.i.prol, %.preheader473.us.i.preheader571
  %.lcssa573.unr = phi ptr [ poison, %.preheader473.us.i.preheader571 ], [ %i.ahb, %.preheader473.us.i.prol ]
  %indvars.iv780.i.unr = phi i64 [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader571 ], [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ]
  %.4615.us.i.unr = phi ptr [ %.4615.us.i.ph, %.preheader473.us.i.preheader571 ], [ %i.ahb, %.preheader473.us.i.prol ]
  %i.ahc = sub nsw i64 %indvars.iv780.i.ph, %wide.trip.count777.i
  %i.ahd = icmp ugt i64 %i.ahc, -4
  br i1 %i.ahd, label %.preheader475.i.loopexit, label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i.3, %.preheader473.us.i ], [ %indvars.iv780.i.unr, %.preheader473.us.i.prol.loopexit ] ; 5 uses
  %.4615.us.i = phi ptr [ %i.aie, %.preheader473.us.i ], [ %.4615.us.i.unr, %.preheader473.us.i.prol.loopexit ] ; 9 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv780.i ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !53
  store float %i.ahf, ptr %.4615.us.i, align 4, !tbaa !53
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.oi
  %i.ahh = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4
  %i.ahi = load float, ptr %i.ahg, align 4, !tbaa !53
  store float %i.ahi, ptr %i.ahh, align 4, !tbaa !53
  %i.ahj = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 8
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv780.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 4 ; 2 uses
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !53
  store float %i.ahm, ptr %i.ahj, align 4, !tbaa !53
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.oi
  %i.aho = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 12
  %i.ahp = load float, ptr %i.ahn, align 4, !tbaa !53
  store float %i.ahp, ptr %i.aho, align 4, !tbaa !53
  %i.ahq = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 16
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv780.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !53
  store float %i.aht, ptr %i.ahq, align 4, !tbaa !53
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.oi
  %i.ahv = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 20
  %i.ahw = load float, ptr %i.ahu, align 4, !tbaa !53
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !53
  %i.ahx = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 24
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv780.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 12 ; 2 uses
  %i.aia = load float, ptr %i.ahz, align 4, !tbaa !53
  store float %i.aia, ptr %i.ahx, align 4, !tbaa !53
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.oi
  %i.aic = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 28
  %i.aid = load float, ptr %i.aib, align 4, !tbaa !53
  store float %i.aid, ptr %i.aic, align 4, !tbaa !53
  %i.aie = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 32 ; 2 uses
  %indvars.iv.next781.i.3 = add nuw nsw i64 %indvars.iv780.i, 4 ; 2 uses
  %exitcond784.not.i.3 = icmp eq i64 %indvars.iv.next781.i.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.3, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !195

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i, %middle.block450
  %.lcssa106 = phi ptr [ %i.ago, %middle.block450 ], [ %.lcssa573.unr, %.preheader473.us.i.prol.loopexit ], [ %i.aie, %.preheader473.us.i ]
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.om
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.agf, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.aif, %.preheader475.i.loopexit ] ; 11 uses
  %.3.lcssa.i = phi ptr [ %i.agn, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa106, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.xe, %.preheader475.i.loopexit ] ; 2 uses
  %i.aig = icmp sge i32 %.1342.lcssa.i, %i.n
  %brmerge645.i = or i1 %i.on, %i.aig
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader475.i
  %.1348.lcssa.i399 = ptrtoaddr ptr %.1348.lcssa.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.ait, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader.i.preheader ]
  %.6632.i = phi ptr [ %.lcssa107, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader.i.preheader ] ; 4 uses
  %.6632.i400 = ptrtoaddr ptr %.6632.i to i64
  %i.aih = sub i64 %.1348.lcssa.i399, %.6632.i400
  %diff.check = icmp ugt i64 %i.aih, -32
  %or.cond560 = select i1 %min.iters.check402, i1 true, i1 %diff.check
  br i1 %or.cond560, label %scalar.ph401.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %.preheader.i
  %i.aii = getelementptr i8, ptr %.6632.i, i64 %i.xo ; 2 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next410, %vector.body405 ] ; 3 uses
  %i.aij = shl i64 %index406, 2
  %next.gep407 = getelementptr i8, ptr %.6632.i, i64 %i.aij ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index406 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 16
  %wide.load408 = load <4 x float>, ptr %i.aik, align 4, !tbaa !53
  %wide.load409 = load <4 x float>, ptr %i.ail, align 4, !tbaa !53
  %i.aim = getelementptr i8, ptr %next.gep407, i64 16
  store <4 x float> %wide.load408, ptr %next.gep407, align 4, !tbaa !53
  store <4 x float> %wide.load409, ptr %i.aim, align 4, !tbaa !53
  %index.next410 = add nuw i64 %index406, 8       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn13Convolution1DD2Ev:bb.a
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit1, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.as, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 43 uses
  %i.e = sdiv i32 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45   ; 23 uses
  %i.h = sdiv i32 %i.e, %i.g                      ; 47 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %i.h, 3                     ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = shl nsw i32 %i.d, 4
  %i.n = lshr i32 %i.h, 2
  %i.o = lshr i32 %i.h, 1
  %i.p = and i32 %i.o, 1
  %i.q = and i32 %i.h, 1
  %i.r = add nuw nsw i32 %i.q, %i.n
  %i.s = add nuw nsw i32 %i.r, %i.p
  %i.t = lshr i32 %i.g, 2
  %i.u = lshr i32 %i.g, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.g, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.m, i32 noundef %i.s, i32 noundef %i.y, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.z = icmp sgt i32 %i.h, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = shl nsw i32 %i.d, 3
  %i.ab = and i32 %i.h, 1
  %i.ac = add nuw nsw i32 %i.ab, 1
  %i.ad = lshr i32 %i.g, 2
  %i.ae = lshr i32 %i.g, 1
  %i.af = and i32 %i.ae, 1
  %i.ag = and i32 %i.g, 1
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ai, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.aj = shl nsw i32 %i.d, 2
  %i.ak = lshr i32 %i.g, 2
  %i.al = lshr i32 %i.g, 1
  %i.am = and i32 %i.al, 1
  %i.an = and i32 %i.g, 1
  %i.ao = add nuw nsw i32 %i.an, %i.ak
  %i.ap = add nuw nsw i32 %i.ao, %i.am
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.aj, i32 noundef %i.h, i32 noundef %i.ap, i64 noundef 2, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp sgt i32 %i.g, 1
  %i.ar = icmp sgt i32 %i.h, 3                    ; 2 uses
  br i1 %i.aq, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i32 %i.d, 3
  %i.at = lshr i32 %i.h, 2
  %i.au = lshr i32 %i.h, 1
  %i.av = and i32 %i.au, 1
  %i.aw = and i32 %i.h, 1
  %i.ax = add nuw nsw i32 %i.aw, %i.at
  %i.ay = add nuw nsw i32 %i.ax, %i.av
  %i.az = and i32 %i.g, 1
  %i.ba = add nuw nsw i32 %i.az, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.as, i32 noundef %i.ay, i32 noundef %i.ba, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.j:                                             ; preds = %bb.h
  %i.bb = icmp sgt i32 %i.h, 1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = shl nsw i32 %i.d, 2
  %i.bd = and i32 %i.h, 1
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = and i32 %i.g, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.l:                                             ; preds = %bb.j
  %i.bh = shl nsw i32 %i.d, 1
  %i.bi = and i32 %i.g, 1
  %i.bj = add nuw nsw i32 %i.bi, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bh, i32 noundef %i.h, i32 noundef %i.bj, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = shl nsw i32 %i.d, 2
  %i.bl = lshr i32 %i.h, 2
  %i.bm = lshr i32 %i.h, 1
  %i.bn = and i32 %i.bm, 1
  %i.bo = and i32 %i.h, 1
  %i.bp = add nuw nsw i32 %i.bo, %i.bl
  %i.bq = add nuw nsw i32 %i.bp, %i.bn
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bk, i32 noundef %i.bq, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.br = icmp sgt i32 %i.h, 1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = shl nsw i32 %i.d, 1
  %i.bt = and i32 %i.h, 1
  %i.bu = add nuw nsw i32 %i.bt, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.bs, i32 noundef %i.bu, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.f, %bb.e, %bb.c
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !18  ; 4 uses
  %i.bw = mul i32 %i.h, %i.d                      ; 4 uses
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !250
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20, !noalias !250
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49, !noalias !250
  %factor.op.mul.i = mul i64 %i.cb, %i.bz
  %i.cc = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cd = sext i32 %i.d to i64                    ; 16 uses
  %i.ce = shl i32 %i.d, 2
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  %i.cg = shl i32 %i.d, 1
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %i.ci = icmp slt i32 %i.d, 1
  %i.cj = and i32 %i.h, -4
  %i.ck = zext nneg i32 %i.g to i64
  %wide.trip.count.i = zext i32 %i.d to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.d to i1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.cm = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  %.0.lcssa.i = phi i32 [ %i.cm, %.preheader483.loopexit.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.n ] ; 4 uses
  %i.cn = or disjoint i32 %.0.lcssa.i, 1
  %i.co = icmp slt i32 %i.cn, %i.g
  br i1 %i.co, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !18  ; 2 uses
  %i.cq = mul i32 %i.h, %i.d                      ; 2 uses
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !253
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !20, !noalias !253
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !49, !noalias !253
  %factor.op.mul594.i = mul i64 %i.cv, %i.ct
  %i.cw = icmp sgt i32 %i.h, 3
  %i.cx = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.cy = sext i32 %i.d to i64                    ; 8 uses
  %i.cz = shl i32 %i.d, 1
  %i.da = sext i32 %i.cz to i64                   ; 4 uses
  %i.db = mul nsw i32 %i.d, 3
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = shl i32 %i.d, 2
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp slt i32 %i.d, 1
  %i.dg = and i32 %i.h, -4
  %i.dh = zext nneg i32 %.0.lcssa.i to i64
  %2 = add i32 %.0.lcssa.i, 1
  %i.di = sext i32 %i.g to i64
  %wide.trip.count747.i = zext i32 %i.d to i64    ; 6 uses
  %invariant.op.i = add nsw i64 %i.di, -1
  %xtraiter217 = and i64 %wide.trip.count747.i, 1
  %i.dj = icmp eq i32 %i.d, 1
  %unroll_iter221 = and i64 %wide.trip.count747.i, 2147483646
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  %lcmp.mod220 = trunc i32 %i.d to i1
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.dk = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count747.i
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.dl = trunc i64 %indvars.iv733.i to i32       ; 4 uses
  %i.dm = mul i32 %i.bw, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dn ; 2 uses
  %i.dp = or disjoint i32 %i.dl, 1
  %i.dq = mul i32 %i.dp, %i.bw
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dr ; 2 uses
  %i.dt = or disjoint i32 %i.dl, 2
  %i.du = mul i32 %i.dt, %i.bw
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dv ; 2 uses
  %i.dx = or disjoint i32 %i.dl, 3
  %i.dy = mul i32 %i.dx, %i.bw
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.dz ; 2 uses
  %i.eb = lshr exact i64 %indvars.iv733.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.reass.i ; 2 uses
  br i1 %i.l, label %.preheader486.lr.ph.i, label %.preheader488.i

.preheader486.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit420.i
  br i1 %i.cc, label %.preheader486.us.i, label %._crit_edge546.split.i

.preheader486.us.i:                               ; preds = %.preheader486.lr.ph.i, %._crit_edge.us.i
  %.0349502.us.i = phi ptr [ %i.hf, %._crit_edge.us.i ], [ %i.do, %.preheader486.lr.ph.i ] ; 2 uses
  %.0351501.us.i = phi ptr [ %i.hg, %._crit_edge.us.i ], [ %i.ds, %.preheader486.lr.ph.i ] ; 2 uses
  %.0358500.us.i = phi ptr [ %i.hh, %._crit_edge.us.i ], [ %i.dw, %.preheader486.lr.ph.i ] ; 2 uses
  %.0360499.us.i = phi ptr [ %i.hi, %._crit_edge.us.i ], [ %i.ea, %.preheader486.lr.ph.i ] ; 2 uses
  %.0377498.us.i = phi ptr [ %i.he, %._crit_edge.us.i ], [ %i.ec, %.preheader486.lr.ph.i ]
  %.0385497.us.i = phi i32 [ %i.hj, %._crit_edge.us.i ], [ 0, %.preheader486.lr.ph.i ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader486.us.i
  %indvars.iv715.i = phi i64 [ 0, %.preheader486.us.i ], [ %indvars.iv.next716.i, %bb.r ] ; 5 uses
  %.1378496.us.i = phi ptr [ %.0377498.us.i, %.preheader486.us.i ], [ %i.he, %bb.r ] ; 17 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !53
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc nuw i32 %i.ei to i16
  store i16 %i.ej, ptr %.1378496.us.i, align 2, !tbaa !256
  %i.ek = load i32, ptr %i.ee, align 4, !tbaa !53
  %i.el = lshr i32 %i.ek, 16
  %i.em = trunc nuw i32 %i.el to i16
  %i.en = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 2
  store i16 %i.em, ptr %i.en, align 2, !tbaa !256
  %i.eo = load i32, ptr %i.ef, align 4, !tbaa !53
  %i.ep = lshr i32 %i.eo, 16
  %i.eq = trunc nuw i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 4
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !256
  %i.es = load i32, ptr %i.eg, align 4, !tbaa !53
  %i.et = lshr i32 %i.es, 16
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 6
  store i16 %i.eu, ptr %i.ev, align 2, !tbaa !256
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cd ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cd ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.cd ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.cd ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 8
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !53
  %i.fc = lshr i32 %i.fb, 16
  %i.fd = trunc nuw i32 %i.fc to i16
  store i16 %i.fd, ptr %i.fa, align 2, !tbaa !256
  %i.fe = load i32, ptr %i.ex, align 4, !tbaa !53
  %i.ff = lshr i32 %i.fe, 16
  %i.fg = trunc nuw i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 10
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !256
  %i.fi = load i32, ptr %i.ey, align 4, !tbaa !53
  %i.fj = lshr i32 %i.fi, 16
  %i.fk = trunc nuw i32 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 12
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !256
  %i.fm = load i32, ptr %i.ez, align 4, !tbaa !53
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = trunc nuw i32 %i.fn to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 14
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !256
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.cd ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.cd ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.cd ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.cd ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 16
  %i.fv = load i32, ptr %i.fq, align 4, !tbaa !53
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %i.fu, align 2, !tbaa !256
  %i.fy = load i32, ptr %i.fr, align 4, !tbaa !53
  %i.fz = lshr i32 %i.fy, 16
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 18
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !256
  %i.gc = load i32, ptr %i.fs, align 4, !tbaa !53
  %i.gd = lshr i32 %i.gc, 16
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 20
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !256
  %i.gg = load i32, ptr %i.ft, align 4, !tbaa !53
  %i.gh = lshr i32 %i.gg, 16
  %i.gi = trunc nuw i32 %i.gh to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 22
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !256
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.cd
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.cd
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.cd
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.cd
  %i.go = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 24
  %i.gp = load i32, ptr %i.gk, align 4, !tbaa !53
  %i.gq = lshr i32 %i.gp, 16
  %i.gr = trunc nuw i32 %i.gq to i16
  store i16 %i.gr, ptr %i.go, align 2, !tbaa !256
  %i.gs = load i32, ptr %i.gl, align 4, !tbaa !53
  %i.gt = lshr i32 %i.gs, 16
  %i.gu = trunc nuw i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 26
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !256
  %i.gw = load i32, ptr %i.gm, align 4, !tbaa !53
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 28
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !256
  %i.ha = load i32, ptr %i.gn, align 4, !tbaa !53
  %i.hb = lshr i32 %i.ha, 16
  %i.hc = trunc nuw i32 %i.hb to i16
  %i.hd = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 30
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !256
  %i.he = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 32 ; 3 uses
  %indvars.iv.next716.i = add nuw nsw i64 %indvars.iv715.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next716.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.r, !llvm.loop !258

._crit_edge.us.i:                                 ; preds = %bb.r
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %i.cf ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %i.cf ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %i.cf ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %i.cf ; 2 uses
  %i.hj = add nuw nsw i32 %.0385497.us.i, 4       ; 2 uses
  %i.hk = or disjoint i32 %i.hj, 3
  %i.hl = icmp slt i32 %i.hk, %i.h
  br i1 %i.hl, label %.preheader486.us.i, label %.preheader488.i, !llvm.loop !259

.preheader488.i:                                  ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit420.i
  %.0385.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.cj, %._crit_edge.us.i ] ; 3 uses
  %.0377.lcssa.i = phi ptr [ %i.ec, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.he, %._crit_edge.us.i ] ; 2 uses
  %.0360.lcssa.i = phi ptr [ %i.ea, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hi, %._crit_edge.us.i ] ; 2 uses
  %.0358.lcssa.i = phi ptr [ %i.dw, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hh, %._crit_edge.us.i ] ; 2 uses
  %.0351.lcssa.i = phi ptr [ %i.ds, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hg, %._crit_edge.us.i ] ; 2 uses
  %.0349.lcssa.i = phi ptr [ %i.do, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hf, %._crit_edge.us.i ] ; 2 uses
  %i.hm = or disjoint i32 %.0385.lcssa.i, 1
  %i.hn = icmp slt i32 %i.hm, %i.h
  br i1 %i.hn, label %.preheader485.lr.ph.i, label %.preheader487.i

.preheader485.lr.ph.i:                            ; preds = %.preheader488.i
  br i1 %i.cc, label %.preheader485.us.i, label %._crit_edge546.split.i

.preheader485.us.i:                               ; preds = %.preheader485.lr.ph.i, %._crit_edge.us534.i
  %.1350527.us.i = phi ptr [ %i.jc, %._crit_edge.us534.i ], [ %.0349.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1352526.us.i = phi ptr [ %i.jd, %._crit_edge.us534.i ], [ %.0351.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1359525.us.i = phi ptr [ %i.je, %._crit_edge.us534.i ], [ %.0358.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.1361524.us.i = phi ptr [ %i.jf, %._crit_edge.us534.i ], [ %.0360.lcssa.i, %.preheader485.lr.ph.i ] ; 2 uses
  %.3380523.us.i = phi ptr [ %i.jb, %._crit_edge.us534.i ], [ %.0377.lcssa.i, %.preheader485.lr.ph.i ]
  %.1386522.us.i = phi i32 [ %i.jg, %._crit_edge.us534.i ], [ %.0385.lcssa.i, %.preheader485.lr.ph.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader485.us.i
  %indvars.iv722.i = phi i64 [ 0, %.preheader485.us.i ], [ %indvars.iv.next723.i, %bb.s ] ; 5 uses
  %.4381521.us.i = phi ptr [ %.3380523.us.i, %.preheader485.us.i ], [ %i.jb, %bb.s ] ; 9 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1350527.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.1352526.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.1359525.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.1361524.us.i, i64 %indvars.iv722.i ; 2 uses
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !53
  %i.ht = lshr i32 %i.hs, 16
  %i.hu = trunc nuw i32 %i.ht to i16
  store i16 %i.hu, ptr %.4381521.us.i, align 2, !tbaa !256
  %i.hv = load i32, ptr %i.hp, align 4, !tbaa !53
  %i.hw = lshr i32 %i.hv, 16
  %i.hx = trunc nuw i32 %i.hw to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 2
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !256
  %i.hz = load i32, ptr %i.hq, align 4, !tbaa !53
  %i.ia = lshr i32 %i.hz, 16
end_hunk_3
begin_hunk_4_@_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.mg
  %i.op = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 14
  %i.oq = load i32, ptr %i.oo, align 4, !tbaa !53
  %i.or = lshr i32 %i.oq, 16
  %i.os = trunc nuw i32 %i.or to i16
  store i16 %i.os, ptr %i.op, align 2, !tbaa !256
  %i.ot = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 16 ; 3 uses
  %indvars.iv.next775.i.us.1 = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge601.us.i.us.unr-lcssa, label %.preheader474.us.i.us.new, !llvm.loop !268

._crit_edge601.us.i.us.unr-lcssa:                 ; preds = %.preheader474.us.i.us.new
  br i1 %lcmp.mod225.not, label %._crit_edge601.us.i.us, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.preheader474.us.i.us
  %indvars.iv774.i.us.epil.init = phi i64 [ 0, %.preheader474.us.i.us ], [ %indvars.iv.next775.i.us.1, %._crit_edge601.us.i.us.unr-lcssa ]
  %.1345599.us.i.us.epil.init = phi ptr [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.ot, %._crit_edge601.us.i.us.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.epil.init ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !53
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = trunc nuw i32 %i.ow to i16
  store i16 %i.ox, ptr %.1345599.us.i.us.epil.init, align 2, !tbaa !256
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.mg ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 2
  %i.pa = load i32, ptr %i.oy, align 4, !tbaa !53
  %i.pb = lshr i32 %i.pa, 16
  %i.pc = trunc nuw i32 %i.pb to i16
  store i16 %i.pc, ptr %i.oz, align 2, !tbaa !256
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.mg ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 4
  %i.pf = load i32, ptr %i.pd, align 4, !tbaa !53
  %i.pg = lshr i32 %i.pf, 16
  %i.ph = trunc nuw i32 %i.pg to i16
  store i16 %i.ph, ptr %i.pe, align 2, !tbaa !256
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.mg
  %i.pj = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 6
  %i.pk = load i32, ptr %i.pi, align 4, !tbaa !53
  %i.pl = lshr i32 %i.pk, 16
  %i.pm = trunc nuw i32 %i.pl to i16
  store i16 %i.pm, ptr %i.pj, align 2, !tbaa !256
  %i.pn = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 8
  br label %._crit_edge601.us.i.us

._crit_edge601.us.i.us:                           ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.epil.preheader223
  %.lcssa = phi ptr [ %i.ot, %._crit_edge601.us.i.us.unr-lcssa ], [ %i.pn, %.epil.preheader223 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %i.mi ; 3 uses
  %i.pp = add nuw nsw i32 %.0341605.us.i.us, 4    ; 2 uses
  %i.pq = or disjoint i32 %i.pp, 3
  %i.pr = icmp slt i32 %i.pq, %i.h
  br i1 %i.pr, label %.preheader474.us.i.us, label %.preheader476.i.loopexit.us, !llvm.loop !269

.preheader473.us.i.us:                            ; preds = %.preheader476.i.loopexit.us, %._crit_edge617.us.i.us
  %.1342621.us.i.us = phi i32 [ %i.qk, %._crit_edge617.us.i.us ], [ %i.mm, %.preheader476.i.loopexit.us ]
  %.3620.us.i.us = phi ptr [ %.lcssa99, %._crit_edge617.us.i.us ], [ %.lcssa, %.preheader476.i.loopexit.us ] ; 3 uses
  %.1348619.us.i.us = phi ptr [ %i.qj, %._crit_edge617.us.i.us ], [ %i.po, %.preheader476.i.loopexit.us ] ; 3 uses
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.preheader473.us.i.us
  %i.ps = getelementptr i8, ptr %.3620.us.i.us, i64 %i.mr ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 3 uses
  %i.pt = shl i64 %index175, 2
  %next.gep176 = getelementptr i8, ptr %.3620.us.i.us, i64 %i.pt
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %index175 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !53
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.mg
  %wide.load178 = load <4 x i32>, ptr %i.pv, align 4, !tbaa !53
  %i.pw = shufflevector <4 x i32> %wide.load177, <4 x i32> %wide.load178, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.px = lshr <8 x i32> %i.pw, splat (i32 16)
  %interleaved.vec179 = trunc nuw <8 x i32> %i.px to <8 x i16>
  store <8 x i16> %interleaved.vec179, ptr %next.gep176, align 2, !tbaa !256
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.py = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.py, label %middle.block181, label %vector.body174, !llvm.loop !270

middle.block181:                                  ; preds = %vector.body174
  br i1 %cmp.n182, label %._crit_edge617.us.i.us, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.preheader473.us.i.us, %middle.block181
  %indvars.iv780.i.us.ph = phi i64 [ 0, %.preheader473.us.i.us ], [ %n.vec173, %middle.block181 ]
  %.4615.us.i.us.ph = phi ptr [ %.3620.us.i.us, %.preheader473.us.i.us ], [ %i.ps, %middle.block181 ]
  br label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us, %scalar.ph170 ], [ %indvars.iv780.i.us.ph, %scalar.ph170.preheader ] ; 2 uses
  %.4615.us.i.us = phi ptr [ %i.qi, %scalar.ph170 ], [ %.4615.us.i.us.ph, %scalar.ph170.preheader ] ; 3 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !53
  %i.qb = lshr i32 %i.qa, 16
  %i.qc = trunc nuw i32 %i.qb to i16
  store i16 %i.qc, ptr %.4615.us.i.us, align 2, !tbaa !256
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.mg
  %i.qe = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 2
  %i.qf = load i32, ptr %i.qd, align 4, !tbaa !53
  %i.qg = lshr i32 %i.qf, 16
  %i.qh = trunc nuw i32 %i.qg to i16
  store i16 %i.qh, ptr %i.qe, align 2, !tbaa !256
  %i.qi = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4 ; 2 uses
  %indvars.iv.next781.i.us = add nuw nsw i64 %indvars.iv780.i.us, 1 ; 2 uses
  %exitcond784.not.i.us = icmp eq i64 %indvars.iv.next781.i.us, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us, label %._crit_edge617.us.i.us, label %scalar.ph170, !llvm.loop !271

._crit_edge617.us.i.us:                           ; preds = %scalar.ph170, %middle.block181
  %.lcssa99 = phi ptr [ %i.ps, %middle.block181 ], [ %i.qi, %scalar.ph170 ] ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.mk ; 2 uses
  %i.qk = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.ql = or disjoint i32 %i.qk, 1
  %i.qm = icmp slt i32 %i.ql, %i.h
  br i1 %i.qm, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !272

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.po, %.preheader476.i.loopexit.us ], [ %i.qj, %._crit_edge617.us.i.us ] ; 2 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa99, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.mm, %.preheader476.i.loopexit.us ], [ %i.qk, %._crit_edge617.us.i.us ] ; 2 uses
  %i.qn = icmp sge i32 %.1342.lcssa.i.us, %i.h
  %brmerge645.i.us = or i1 %i.ml, %i.qn
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader475.i.us, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.rd, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader475.i.us ]
  %.6632.i.us = phi ptr [ %.lcssa102, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader475.i.us ] ; 3 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader.i.us
  %i.qo = getelementptr i8, ptr %.6632.i.us, i64 %i.ms ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.qp = shl i64 %index161, 1
  %next.gep162 = getelementptr i8, ptr %.6632.i.us, i64 %i.qp ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index161 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !53
  %wide.load164 = load <4 x i32>, ptr %i.qr, align 4, !tbaa !53
  %i.qs = lshr <4 x i32> %wide.load163, splat (i32 16)
  %i.qt = lshr <4 x i32> %wide.load164, splat (i32 16)
  %i.qu = trunc nuw <4 x i32> %i.qs to <4 x i16>
  %i.qv = trunc nuw <4 x i32> %i.qt to <4 x i16>
  %i.qw = getelementptr i8, ptr %next.gep162, i64 8
  store <4 x i16> %i.qu, ptr %next.gep162, align 2, !tbaa !256
  store <4 x i16> %i.qv, ptr %i.qw, align 2, !tbaa !256
  %index.next165 = add nuw i64 %index161, 8       ; 2 uses
  %i.qx = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.qx, label %middle.block166, label %vector.body160, !llvm.loop !273

middle.block166:                                  ; preds = %vector.body160
  br i1 %cmp.n167, label %._crit_edge630.i.us, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader.i.us, %middle.block166
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec159, %middle.block166 ]
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.qo, %middle.block166 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us, %scalar.ph156 ], [ %indvars.iv785.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %.7628.i.us = phi ptr [ %i.rc, %scalar.ph156 ], [ %.7628.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !53
  %i.ra = lshr i32 %i.qz, 16
  %i.rb = trunc nuw i32 %i.ra to i16
  store i16 %i.rb, ptr %.7628.i.us, align 2, !tbaa !256
  %i.rc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 2 ; 2 uses
  %indvars.iv.next786.i.us = add nuw nsw i64 %indvars.iv785.i.us, 1 ; 2 uses
  %exitcond789.not.i.us = icmp eq i64 %indvars.iv.next786.i.us, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us, label %._crit_edge630.i.us, label %scalar.ph156, !llvm.loop !274

._crit_edge630.i.us:                              ; preds = %scalar.ph156, %middle.block166
  %.lcssa102 = phi ptr [ %i.qo, %middle.block166 ], [ %i.rc, %scalar.ph156 ]
  %i.rd = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.rd, %i.h
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !275

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !276

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.mp, label %.preheader473.us.i.us, label %.preheader475.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.re = icmp sgt i32 %i.h, 1
  %i.rf = and i32 %i.h, -2
  %min.iters.check142 = icmp ult i32 %i.d, 4
  %n.vec144 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.rg = shl nuw nsw i64 %n.vec144, 2
  %cmp.n153 = icmp eq i64 %n.vec144, %wide.trip.count777.i
  %min.iters.check128 = icmp ult i32 %i.d, 8
  %n.vec130 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.rh = shl nuw nsw i64 %n.vec130, 1
  %cmp.n138 = icmp eq i64 %n.vec130, %wide.trip.count777.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvars.iv764.i = phi i64 [ %i.dh, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next765.i, %._crit_edge591.split.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %2, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ], [ %indvars.iv.next763.i, %._crit_edge591.split.i ] ; 2 uses
  %i.ri = trunc nuw i64 %indvars.iv764.i to i32   ; 3 uses
  %i.rj = mul i32 %i.cq, %i.ri
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.rk ; 2 uses
  %i.rm = mul i32 %indvars.iv762.i, %i.cq
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.rn ; 2 uses
  %i.rp = lshr i32 %i.ri, 2
  %i.rq = lshr i32 %i.ri, 1
  %i.rr = and i32 %i.rq, 1
  %i.rs = add nuw nsw i32 %i.rr, %i.rp
  %i.rt = zext nneg i32 %i.rs to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.rt
  %i.ru = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.reass595.i ; 2 uses
  br i1 %i.cw, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.cx, label %.preheader480.us.i, label %._crit_edge591.split.i

.preheader480.us.i:                               ; preds = %.preheader480.lr.ph.i, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.tl, %._crit_edge551.us.i ], [ 0, %.preheader480.lr.ph.i ]
  %.0366555.us.i = phi ptr [ %i.ti, %._crit_edge551.us.i ], [ %i.ru, %.preheader480.lr.ph.i ]
  %.0373554.us.i = phi ptr [ %i.tk, %._crit_edge551.us.i ], [ %i.ro, %.preheader480.lr.ph.i ] ; 2 uses
  %.0375553.us.i = phi ptr [ %i.tj, %._crit_edge551.us.i ], [ %i.rl, %.preheader480.lr.ph.i ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader480.us.i
  %indvars.iv744.i = phi i64 [ 0, %.preheader480.us.i ], [ %indvars.iv.next745.i, %bb.t ] ; 3 uses
  %.1367549.us.i = phi ptr [ %.0366555.us.i, %.preheader480.us.i ], [ %i.ti, %bb.t ] ; 9 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.rx = load i32, ptr %i.rv, align 4, !tbaa !53
  %i.ry = lshr i32 %i.rx, 16
  %i.rz = trunc nuw i32 %i.ry to i16
  store i16 %i.rz, ptr %.1367549.us.i, align 2, !tbaa !256
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.cy
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !53
  %i.sc = lshr i32 %i.sb, 16
  %i.sd = trunc nuw i32 %i.sc to i16
  %i.se = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 2
  store i16 %i.sd, ptr %i.se, align 2, !tbaa !256
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.da
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !53
  %i.sh = lshr i32 %i.sg, 16
  %i.si = trunc nuw i32 %i.sh to i16
  %i.sj = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store i16 %i.si, ptr %i.sj, align 2, !tbaa !256
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.dc
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !53
  %i.sm = lshr i32 %i.sl, 16
  %i.sn = trunc nuw i32 %i.sm to i16
  %i.so = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 6
  store i16 %i.sn, ptr %i.so, align 2, !tbaa !256
  %i.sp = load i32, ptr %i.rw, align 4, !tbaa !53
  %i.sq = lshr i32 %i.sp, 16
  %i.sr = trunc nuw i32 %i.sq to i16
  %i.ss = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store i16 %i.sr, ptr %i.ss, align 2, !tbaa !256
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.cy
  %i.su = load i32, ptr %i.st, align 4, !tbaa !53
  %i.sv = lshr i32 %i.su, 16
  %i.sw = trunc nuw i32 %i.sv to i16
  %i.sx = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 10
  store i16 %i.sw, ptr %i.sx, align 2, !tbaa !256
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.da
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !53
  %i.ta = lshr i32 %i.sz, 16
  %i.tb = trunc nuw i32 %i.ta to i16
  %i.tc = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store i16 %i.tb, ptr %i.tc, align 2, !tbaa !256
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.dc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !53
  %i.tf = lshr i32 %i.te, 16
  %i.tg = trunc nuw i32 %i.tf to i16
  %i.th = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 14
  store i16 %i.tg, ptr %i.th, align 2, !tbaa !256
  %i.ti = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16 ; 3 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %bb.t, !llvm.loop !277

._crit_edge551.us.i:                              ; preds = %bb.t
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.de ; 2 uses
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.de ; 2 uses
  %i.tl = add nuw nsw i32 %.0363556.us.i, 4       ; 2 uses
  %i.tm = or disjoint i32 %i.tl, 3
  %i.tn = icmp slt i32 %i.tm, %i.h
  br i1 %i.tn, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !278

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.rl, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tj, %._crit_edge551.us.i ] ; 2 uses
  %.0373.lcssa.i = phi ptr [ %i.ro, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.tk, %._crit_edge551.us.i ] ; 2 uses
  %.0366.lcssa.i = phi ptr [ %i.ru, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.ti, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.dg, %._crit_edge551.us.i ] ; 3 uses
  %i.to = or disjoint i32 %.0363.lcssa.i, 1
  %i.tp = icmp slt i32 %i.to, %i.h
  br i1 %i.tp, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
  br i1 %i.cx, label %.preheader479.us.i, label %._crit_edge591.split.i

.preheader479.us.i:                               ; preds = %.preheader479.lr.ph.i, %._crit_edge571.us.i
  %.1364576.us.i = phi i32 [ %i.wa, %._crit_edge571.us.i ], [ %.0363.lcssa.i, %.preheader479.lr.ph.i ]
  %.2368575.us.i = phi ptr [ %.lcssa197, %._crit_edge571.us.i ], [ %.0366.lcssa.i, %.preheader479.lr.ph.i ] ; 2 uses
  %.1374574.us.i = phi ptr [ %i.vz, %._crit_edge571.us.i ], [ %.0373.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  %.1376573.us.i = phi ptr [ %i.vy, %._crit_edge571.us.i ], [ %.0375.lcssa.i, %.preheader479.lr.ph.i ] ; 4 uses
  br i1 %i.dj, label %.epil.preheader216, label %.preheader479.us.i.new

.preheader479.us.i.new:                           ; preds = %.preheader479.us.i, %.preheader479.us.i.new
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.vd, %.preheader479.us.i.new ], [ %.2368575.us.i, %.preheader479.us.i ] ; 9 uses
  %niter222 = phi i64 [ %niter222.next.1, %.preheader479.us.i.new ], [ 0, %.preheader479.us.i ]
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.ts = load i32, ptr %i.tq, align 4, !tbaa !53
  %i.tt = lshr i32 %i.ts, 16
  %i.tu = trunc nuw i32 %i.tt to i16
  store i16 %i.tu, ptr %.3369569.us.i, align 2, !tbaa !256
  %i.tv = load i32, ptr %i.tr, align 4, !tbaa !53
  %i.tw = lshr i32 %i.tv, 16
  %i.tx = trunc nuw i32 %i.tw to i16
  %i.ty = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 2
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !256
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.cy
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.cy
  %i.ub = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  %i.uc = load i32, ptr %i.tz, align 4, !tbaa !53
  %i.ud = lshr i32 %i.uc, 16
  %i.ue = trunc nuw i32 %i.ud to i16
  store i16 %i.ue, ptr %i.ub, align 2, !tbaa !256
  %i.uf = load i32, ptr %i.ua, align 4, !tbaa !53
  %i.ug = lshr i32 %i.uf, 16
  %i.uh = trunc nuw i32 %i.ug to i16
  %i.ui = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 6
  store i16 %i.uh, ptr %i.ui, align 2, !tbaa !256
  %i.uj = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %indvars.iv.next752.i = or disjoint i64 %indvars.iv751.i, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.um = load i32, ptr %i.uk, align 4, !tbaa !53
  %i.un = lshr i32 %i.um, 16
  %i.uo = trunc nuw i32 %i.un to i16
  store i16 %i.uo, ptr %i.uj, align 2, !tbaa !256
  %i.up = load i32, ptr %i.ul, align 4, !tbaa !53
  %i.uq = lshr i32 %i.up, 16
  %i.ur = trunc nuw i32 %i.uq to i16
  %i.us = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 10
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !256
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.cy
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.cy
  %i.uv = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  %i.uw = load i32, ptr %i.ut, align 4, !tbaa !53
  %i.ux = lshr i32 %i.uw, 16
  %i.uy = trunc nuw i32 %i.ux to i16
  store i16 %i.uy, ptr %i.uv, align 2, !tbaa !256
  %i.uz = load i32, ptr %i.uu, align 4, !tbaa !53
  %i.va = lshr i32 %i.uz, 16
  %i.vb = trunc nuw i32 %i.va to i16
  %i.vc = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 14
  store i16 %i.vb, ptr %i.vc, align 2, !tbaa !256
  %i.vd = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16 ; 3 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %._crit_edge571.us.i.unr-lcssa, label %.preheader479.us.i.new, !llvm.loop !279

._crit_edge571.us.i.unr-lcssa:                    ; preds = %.preheader479.us.i.new
  br i1 %lcmp.mod218.not, label %._crit_edge571.us.i, label %.epil.preheader216

.epil.preheader216:                               ; preds = %._crit_edge571.us.i.unr-lcssa, %.preheader479.us.i
  %indvars.iv751.i.epil.init = phi i64 [ 0, %.preheader479.us.i ], [ %indvars.iv.next752.i.1, %._crit_edge571.us.i.unr-lcssa ] ; 2 uses
  %.3369569.us.i.epil.init = phi ptr [ %.2368575.us.i, %.preheader479.us.i ], [ %i.vd, %._crit_edge571.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i.epil.init ; 2 uses
  %i.vg = load i32, ptr %i.ve, align 4, !tbaa !53
  %i.vh = lshr i32 %i.vg, 16
  %i.vi = trunc nuw i32 %i.vh to i16
  store i16 %i.vi, ptr %.3369569.us.i.epil.init, align 2, !tbaa !256
  %i.vj = load i32, ptr %i.vf, align 4, !tbaa !53
  %i.vk = lshr i32 %i.vj, 16
  %i.vl = trunc nuw i32 %i.vk to i16
  %i.vm = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 2
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !256
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.cy
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.cy
  %i.vp = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 4
  %i.vq = load i32, ptr %i.vn, align 4, !tbaa !53
  %i.vr = lshr i32 %i.vq, 16
  %i.vs = trunc nuw i32 %i.vr to i16
  store i16 %i.vs, ptr %i.vp, align 2, !tbaa !256
  %i.vt = load i32, ptr %i.vo, align 4, !tbaa !53
  %i.vu = lshr i32 %i.vt, 16
  %i.vv = trunc nuw i32 %i.vu to i16
  %i.vw = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 6
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !256
  %i.vx = getelementptr inbounds nuw i8, ptr %.3369569.us.i.epil.init, i64 8
  br label %._crit_edge571.us.i

._crit_edge571.us.i:                              ; preds = %._crit_edge571.us.i.unr-lcssa, %.epil.preheader216
  %.lcssa197 = phi ptr [ %i.vd, %._crit_edge571.us.i.unr-lcssa ], [ %i.vx, %.epil.preheader216 ] ; 2 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.da ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.da ; 2 uses
  %i.wa = add nuw nsw i32 %.1364576.us.i, 2       ; 3 uses
  %i.wb = or disjoint i32 %i.wa, 1
  %i.wc = icmp slt i32 %i.wb, %i.h
  br i1 %i.wc, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !280

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.vy, %._crit_edge571.us.i ] ; 2 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.vz, %._crit_edge571.us.i ] ; 2 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa197, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.wa, %._crit_edge571.us.i ] ; 2 uses
  %i.wd = icmp sge i32 %.1364.lcssa.i, %i.h
  %brmerge642.i = or i1 %i.df, %i.wd
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader481.i, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.wl, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader481.i ]
  %.5371589.i = phi ptr [ %.lcssa112, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader481.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader478.i
  %i.we = getelementptr i8, ptr %.5371589.i, i64 %i.dk ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.wf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.5371589.i, i64 %i.wf
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.wg, align 4, !tbaa !53
  %wide.load125 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !53
  %i.wi = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load125, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wj = lshr <8 x i32> %i.wi, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.wj to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.wk = icmp eq i64 %index.next, %n.vec
  br i1 %i.wk, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge587.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader478.i, %middle.block
  %indvars.iv756.i.ph = phi i64 [ 0, %.preheader478.i ], [ %n.vec, %middle.block ]
  %.6372585.i.ph = phi ptr [ %.5371589.i, %.preheader478.i ], [ %i.we, %middle.block ]
  br label %scalar.ph

._crit_edge587.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa112 = phi ptr [ %i.we, %middle.block ], [ %i.wv, %scalar.ph ]
  %i.wl = add nuw nsw i32 %.2365590.i, 1          ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.wl, %i.h
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !282

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i, %scalar.ph ], [ %indvars.iv756.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.6372585.i = phi ptr [ %i.wv, %scalar.ph ], [ %.6372585.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.wo = load i32, ptr %i.wm, align 4, !tbaa !53
  %i.wp = lshr i32 %i.wo, 16
  %i.wq = trunc nuw i32 %i.wp to i16
  store i16 %i.wq, ptr %.6372585.i, align 2, !tbaa !256
  %i.wr = load i32, ptr %i.wn, align 4, !tbaa !53
  %i.ws = lshr i32 %i.wr, 16
  %i.wt = trunc nuw i32 %i.ws to i16
  %i.wu = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 2
  store i16 %i.wt, ptr %i.wu, align 2, !tbaa !256
  %i.wv = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4 ; 2 uses
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %exitcond760.not.i = icmp eq i64 %indvars.iv.next757.i, %wide.trip.count747.i
  br i1 %exitcond760.not.i, label %._crit_edge587.i, label %scalar.ph, !llvm.loop !283

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.ww = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  br i1 %i.ww, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !284

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvars.iv791.i = phi i64 [ %i.mn, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ], [ %indvars.iv.next792.i, %._crit_edge634.split.i ] ; 2 uses
  %i.wx = trunc nuw nsw i64 %indvars.iv791.i to i32 ; 4 uses
  %i.wy = mul i32 %i.ly, %i.wx
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %i.wz ; 4 uses
  %i.xb = lshr i32 %i.wx, 2
  %i.xc = lshr i32 %i.wx, 1
  %i.xd = and i32 %i.xc, 1
  %i.xe = and i32 %i.wx, 1
  %i.xf = add nuw nsw i32 %i.xe, %i.xb
  %i.xg = add nuw nsw i32 %i.xf, %i.xd
  %i.xh = zext nneg i32 %i.xg to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.xh
  %i.xi = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.reass638.i ; 4 uses
  br i1 %i.re, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.mf, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check142, label %.preheader473.us.i.preheader190, label %vector.ph143

vector.ph143:                                     ; preds = %.preheader473.us.i.preheader
  %i.xj = getelementptr i8, ptr %i.xi, i64 %i.rg  ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 3 uses
  %i.xk = shl i64 %index146, 2
  %next.gep147 = getelementptr i8, ptr %i.xi, i64 %i.xk
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %index146 ; 2 uses
  %wide.load148 = load <4 x i32>, ptr %i.xl, align 4, !tbaa !53
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.mg
  %wide.load149 = load <4 x i32>, ptr %i.xm, align 4, !tbaa !53
  %i.xn = shufflevector <4 x i32> %wide.load148, <4 x i32> %wide.load149, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.xo = lshr <8 x i32> %i.xn, splat (i32 16)
  %interleaved.vec150 = trunc nuw <8 x i32> %i.xo to <8 x i16>
  store <8 x i16> %interleaved.vec150, ptr %next.gep147, align 2, !tbaa !256
  %index.next151 = add nuw i64 %index146, 4       ; 2 uses
  %i.xp = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.xp, label %middle.block152, label %vector.body145, !llvm.loop !285

middle.block152:                                  ; preds = %vector.body145
  br i1 %cmp.n153, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader190

.preheader473.us.i.preheader190:                  ; preds = %.preheader473.us.i.preheader, %middle.block152
  %indvars.iv780.i.ph = phi i64 [ 0, %.preheader473.us.i.preheader ], [ %n.vec144, %middle.block152 ]
  %.4615.us.i.ph = phi ptr [ %i.xi, %.preheader473.us.i.preheader ], [ %i.xj, %middle.block152 ]
  br label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.preheader190, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i, %.preheader473.us.i ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader190 ] ; 2 uses
  %.4615.us.i = phi ptr [ %i.xz, %.preheader473.us.i ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader190 ] ; 3 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv780.i ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !53
  %i.xs = lshr i32 %i.xr, 16
  %i.xt = trunc nuw i32 %i.xs to i16
  store i16 %i.xt, ptr %.4615.us.i, align 2, !tbaa !256
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.mg
  %i.xv = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 2
  %i.xw = load i32, ptr %i.xu, align 4, !tbaa !53
  %i.xx = lshr i32 %i.xw, 16
  %i.xy = trunc nuw i32 %i.xx to i16
  store i16 %i.xy, ptr %i.xv, align 2, !tbaa !256
  %i.xz = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4 ; 2 uses
  %indvars.iv.next781.i = add nuw nsw i64 %indvars.iv780.i, 1 ; 2 uses
  %exitcond784.not.i = icmp eq i64 %indvars.iv.next781.i, %wide.trip.count777.i
  br i1 %exitcond784.not.i, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !286

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i, %middle.block152
  %.lcssa103 = phi ptr [ %i.xj, %middle.block152 ], [ %i.xz, %.preheader473.us.i ]
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.mk
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.xa, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ya, %.preheader475.i.loopexit ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.xi, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa103, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.rf, %.preheader475.i.loopexit ] ; 2 uses
  %i.yb = icmp sge i32 %.1342.lcssa.i, %i.h
  %brmerge645.i = or i1 %i.ml, %i.yb
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader475.i, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.ym, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader475.i ]
  %.6632.i = phi ptr [ %.lcssa104, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader475.i ] ; 3 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.preheader.i
  %i.yc = getelementptr i8, ptr %.6632.i, i64 %i.rh ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body131 ] ; 3 uses
  %i.yd = shl i64 %index132, 1
  %next.gep133 = getelementptr i8, ptr %.6632.i, i64 %i.yd ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index132 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %wide.load134 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !53
  %wide.load135 = load <4 x i32>, ptr %i.yf, align 4, !tbaa !53
  %i.yg = lshr <4 x i32> %wide.load134, splat (i32 16)
  %i.yh = lshr <4 x i32> %wide.load135, splat (i32 16)
  %i.yi = trunc nuw <4 x i32> %i.yg to <4 x i16>
  %i.yj = trunc nuw <4 x i32> %i.yh to <4 x i16>
  %i.yk = getelementptr i8, ptr %next.gep133, i64 8
  store <4 x i16> %i.yi, ptr %next.gep133, align 2, !tbaa !256
  store <4 x i16> %i.yj, ptr %i.yk, align 2, !tbaa !256
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.yl = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.yl, label %middle.block137, label %vector.body131, !llvm.loop !287

middle.block137:                                  ; preds = %vector.body131
  br i1 %cmp.n138, label %._crit_edge630.i, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %.preheader.i, %middle.block137
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec130, %middle.block137 ]
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.yc, %middle.block137 ]
  br label %scalar.ph127

._crit_edge630.i:                                 ; preds = %scalar.ph127, %middle.block137
  %.lcssa104 = phi ptr [ %i.yc, %middle.block137 ], [ %i.yr, %scalar.ph127 ]
  %i.ym = add nuw nsw i32 %.2343633.i, 1          ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.ym, %i.h
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !275

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i, %scalar.ph127 ], [ %indvars.iv785.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %.7628.i = phi ptr [ %i.yr, %scalar.ph127 ], [ %.7628.i.ph, %scalar.ph127.preheader ] ; 2 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !53
  %i.yp = lshr i32 %i.yo, 16
  %i.yq = trunc nuw i32 %i.yp to i16
  store i16 %i.yq, ptr %.7628.i, align 2, !tbaa !256
  %i.yr = getelementptr inbounds nuw i8, ptr %.7628.i, i64 2 ; 2 uses
  %indvars.iv.next786.i = add nuw nsw i64 %indvars.iv785.i, 1 ; 2 uses
  %exitcond789.not.i = icmp eq i64 %indvars.iv.next786.i, %wide.trip.count777.i
  br i1 %exitcond789.not.i, label %._crit_edge630.i, label %scalar.ph127, !llvm.loop !288

._crit_edge634.split.i:                           ; preds = %._crit_edge630.i, %.preheader475.i, %.preheader473.lr.ph.i
  %indvars.iv.next792.i = add nuw nsw i64 %indvars.iv791.i, 1 ; 2 uses
  %exitcond795.not.i = icmp eq i64 %indvars.iv.next792.i, %wide.trip.count794.i
  br i1 %exitcond795.not.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !276

_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge634.split.i, %._crit_edge634.split.i.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, %.preheader477.i
  %i.ys = load i8, ptr %1, align 8, !tbaa !199, !range !41, !noundef !42
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.yv, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yw = atomicrmw add ptr %i.yv, i32 -1 acq_rel, align 4
  %i.yx = icmp eq i32 %i.yw, 1
  br i1 %i.yx, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit

bb.w:                                             ; preds = %bb.v
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.yz, null
  %i.za = load ptr, ptr %i.i, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.zb = load ptr, ptr %i.yz, align 8, !tbaa !9
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  %i.zd = load ptr, ptr %i.zc, align 8
  tail call void %i.zd(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef %i.za), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.y:                                             ; preds = %bb.w
  %.not.i2 = icmp eq ptr %i.za, null
  br i1 %.not.i2, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.za) #11
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.z, %bb.y, %bb.u, %bb.v, %bb.x
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 0, ptr %i.zf, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ze, i8 0, i64 20, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9
end_hunk_4
