inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 59 uses
  %i.b = icmp sgt i32 %3, 7
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 7                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %2, 3
  %i.e = lshr i32 %2, 1
  %i.f = and i32 %i.e, 3
  %i.g = and i32 %2, 1
  %i.h = add nuw nsw i32 %i.g, %i.d
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = lshr <4 x i32> %i.k, <i32 0, i32 2, i32 1, i32 3>
  %i.m = and <4 x i32> %i.l, <i32 1, i32 1, i32 1, i32 -1>
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.m)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.i, i32 noundef %i.n, i64 noundef 64, i32 noundef 64, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i32 %2, 1
  %i.q = sub nsw i32 %2, %i.p
  %i.r = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.t = lshr <4 x i32> %i.s, <i32 0, i32 2, i32 1, i32 3>
  %i.u = and <4 x i32> %i.t, <i32 1, i32 1, i32 1, i32 -1>
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.q, i32 noundef %i.v, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.w = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = lshr <4 x i32> %i.x, <i32 0, i32 2, i32 1, i32 3>
  %i.z = and <4 x i32> %i.y, <i32 1, i32 1, i32 1, i32 -1>
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.z)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.aa, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp sgt i32 %3, 3
  br i1 %i.ab, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp sgt i32 %2, 7
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %2, 3
  %i.ae = lshr i32 %2, 1
  %i.af = and i32 %i.ae, 3
  %i.ag = and i32 %2, 1
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = lshr i32 %3, 1
  %i.ak = and i32 %i.aj, 1
  %i.al = and i32 %3, 1
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = add nuw nsw i32 %i.am, %i.ak
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.ai, i32 noundef %i.an, i64 noundef 32, i32 noundef 32, ptr noundef null)
  br label %.preheader747.i

bb.j:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %2, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i32 %2, 1
  %i.aq = sub nsw i32 %2, %i.ap
  %i.ar = lshr i32 %3, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %3, 1
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.aq, i32 noundef %i.av, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader747.i

bb.l:                                             ; preds = %bb.j
  %i.aw = lshr i32 %3, 1
  %i.ax = and i32 %i.aw, 1
  %i.ay = and i32 %3, 1
  %i.az = add nuw nsw i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.ba, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader747.i

bb.m:                                             ; preds = %bb.g
  %i.bb = icmp sgt i32 %3, 1
  %i.bc = icmp sgt i32 %2, 7                      ; 2 uses
  br i1 %i.bb, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = lshr i32 %2, 3
  %i.be = lshr i32 %2, 1
  %i.bf = and i32 %i.be, 3
  %i.bg = and i32 %2, 1
  %i.bh = add nuw nsw i32 %i.bg, %i.bd
  %i.bi = add nuw nsw i32 %i.bh, %i.bf
  %i.bj = and i32 %3, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bi, i32 noundef %i.bk, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %.preheader747.i

bb.p:                                             ; preds = %bb.n
  %i.bl = icmp sgt i32 %2, 1
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = lshr i32 %2, 1
  %i.bn = sub nsw i32 %2, %i.bm
  %i.bo = and i32 %3, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bn, i32 noundef %i.bp, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader747.i

bb.r:                                             ; preds = %bb.p
  %i.bq = and i32 %3, 1
  %i.br = add nuw nsw i32 %i.bq, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.br, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader747.i

bb.s:                                             ; preds = %bb.m
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = lshr i32 %2, 3
  %i.bt = lshr i32 %2, 1
  %i.bu = and i32 %i.bt, 3
  %i.bv = and i32 %2, 1
  %i.bw = add nuw nsw i32 %i.bv, %i.bs
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bx, i32 noundef %3, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader747.i

bb.u:                                             ; preds = %bb.s
  %i.by = icmp sgt i32 %2, 1
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = lshr i32 %2, 1
  %i.ca = sub nsw i32 %2, %i.bz
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.ca, i32 noundef %3, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader747.i

bb.w:                                             ; preds = %bb.u
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %3, i64 noundef 1, i32 noundef 1, ptr noundef null)
  br label %.preheader747.i

_ZN4ncnn3MatD2Ev.exit650.lr.ph.i:                 ; preds = %bb.f, %bb.e, %bb.c
  %i.cb = mul i32 %i.a, %2                        ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.cf = sext i32 %i.a to i64                    ; 32 uses
  %i.cg = shl i32 %i.a, 1
  %i.ch = sext i32 %i.cg to i64                   ; 26 uses
  %i.ci = shl i32 %i.a, 3
  %i.cj = sext i32 %i.ci to i64                   ; 8 uses
  %i.ck = add nsw i32 %i.cb, %i.a
  %i.cl = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.a, i64 1
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.cb, i64 2
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.ck, i64 3 ; 2 uses
  %i.co = shl nsw i32 %i.cb, 1
  %i.cp = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cr = add <4 x i32> %i.cq, %i.cn
  %i.cs = shufflevector <4 x i32> %i.cn, <4 x i32> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ct = insertelement <8 x i32> poison, i32 %i.cb, i64 0
  %i.cu = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cv = mul <8 x i32> %i.cu, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.cw = icmp slt i32 %i.a, 1
  %i.cx = and i32 %2, -8
  %i.cy = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext i32 %i.a to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cz = icmp eq i32 %i.a, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod248 = trunc i32 %i.a to i1
  br label %_ZN4ncnn3MatD2Ev.exit650.i

.preheader747.loopexit.i:                         ; preds = %._crit_edge800.split.i
  %i.da = trunc nuw nsw i64 %indvars.iv.next1032.i to i32
  br label %.preheader747.i

.preheader747.i:                                  ; preds = %.preheader747.loopexit.i, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i
  %.0539.lcssa.i = phi i32 [ %i.da, %.preheader747.loopexit.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ] ; 4 uses
  %i.db = or disjoint i32 %.0539.lcssa.i, 3
  %i.dc = icmp slt i32 %i.db, %3
  br i1 %i.dc, label %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i, label %.preheader743.i

_ZN4ncnn3MatD2Ev.exit649.lr.ph.i:                 ; preds = %.preheader747.i
  %i.dd = mul i32 %i.a, %2                        ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = icmp sgt i32 %2, 7
  %i.dh = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.di = sext i32 %i.a to i64                    ; 16 uses
  %i.dj = shl i32 %i.a, 1
  %i.dk = sext i32 %i.dj to i64                   ; 13 uses
  %i.dl = shl i32 %i.a, 3
  %i.dm = sext i32 %i.dl to i64                   ; 4 uses
  %i.dn = add nsw i32 %i.dd, %i.a
  %i.do = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.a, i64 1
  %i.dp = insertelement <4 x i32> %i.do, i32 %i.dd, i64 2
  %i.dq = insertelement <4 x i32> %i.dp, i32 %i.dn, i64 3 ; 2 uses
  %i.dr = shl nsw i32 %i.dd, 1
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = shufflevector <4 x i32> %i.ds, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.du = add <4 x i32> %i.dt, %i.dq
  %i.dv = shufflevector <4 x i32> %i.dq, <4 x i32> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.dw = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dy = mul <4 x i32> %i.dx, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.dz = icmp slt i32 %i.a, 1
  %i.ea = and i32 %2, -8
  %i.eb = zext nneg i32 %.0539.lcssa.i to i64
  %6 = add i32 %.0539.lcssa.i, 3
  %i.ec = sext i32 %3 to i64
  %wide.trip.count1042.i = zext i32 %i.a to i64   ; 6 uses
  %invariant.op.i = add nsw i64 %i.ec, -3
  %i.ed = add nsw i64 %wide.trip.count1042.i, -1  ; 2 uses
  %xtraiter250 = and i64 %wide.trip.count1042.i, 1
  %i.ee = icmp eq i64 %i.ed, 0
  %unroll_iter254 = and i64 %wide.trip.count1042.i, 2147483646
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %lcmp.mod253 = trunc i32 %i.a to i1
  %xtraiter257 = and i64 %wide.trip.count1042.i, 3 ; 3 uses
  %i.ef = icmp ult i64 %i.ed, 3
  %unroll_iter261 = and i64 %wide.trip.count1042.i, 2147483644
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  br label %_ZN4ncnn3MatD2Ev.exit649.i

_ZN4ncnn3MatD2Ev.exit650.i:                       ; preds = %._crit_edge800.split.i, %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i
  %indvars.iv1031.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i ], [ %indvars.iv.next1032.i, %._crit_edge800.split.i ] ; 3 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.eh = trunc i64 %indvars.iv1031.i to i32      ; 8 uses
  %i.ei = mul i32 %i.cb, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
  %i.el = or disjoint i32 %i.eh, 4
  %i.em = mul i32 %i.el, %i.cb
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.eg, i64 %i.en ; 2 uses
  %i.ep = lshr exact i64 %indvars.iv1031.i, 3
  %i.eq = load ptr, ptr %1, align 8, !tbaa !9, !noalias !15
  %i.er = load i64, ptr %i.cc, align 8, !tbaa !18, !noalias !15
  %i.es = mul i64 %i.er, %i.ep
  %i.et = load i64, ptr %i.cd, align 8, !tbaa !19, !noalias !15
  %i.eu = mul i64 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 2 uses
  br i1 %i.c, label %.preheader748.lr.ph.i, label %.preheader750.i

.preheader748.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit650.i
  br i1 %i.ce, label %.preheader748.us.preheader.i, label %._crit_edge800.split.i

.preheader748.us.preheader.i:                     ; preds = %.preheader748.lr.ph.i
  %i.ew = or disjoint i32 %i.eh, 1
  %i.ex = mul i32 %i.ew, %i.cb
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.eg, i64 %i.ey
  %i.fa = or disjoint i32 %i.eh, 2
  %i.fb = mul i32 %i.fa, %i.cb
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr %i.eg, i64 %i.fc
  %i.fe = or disjoint i32 %i.eh, 3
  %i.ff = mul i32 %i.fe, %i.cb
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %i.eg, i64 %i.fg
  %i.fi = or disjoint i32 %i.eh, 5
  %i.fj = mul i32 %i.fi, %i.cb
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.eg, i64 %i.fk
  %i.fm = or disjoint i32 %i.eh, 6
  %i.fn = mul i32 %i.fm, %i.cb
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.eg, i64 %i.fo
  %i.fq = or disjoint i32 %i.eh, 7
  %i.fr = mul i32 %i.fq, %i.cb
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.eg, i64 %i.fs
  br label %.preheader748.us.i

.preheader748.us.i:                               ; preds = %._crit_edge.us.i, %.preheader748.us.preheader.i
  %.0541772.us.i = phi ptr [ %i.ne, %._crit_edge.us.i ], [ %i.ek, %.preheader748.us.preheader.i ] ; 2 uses
  %.0543771.us.i = phi ptr [ %i.nf, %._crit_edge.us.i ], [ %i.ez, %.preheader748.us.preheader.i ] ; 2 uses
  %.0554770.us.i = phi ptr [ %i.ng, %._crit_edge.us.i ], [ %i.fd, %.preheader748.us.preheader.i ] ; 2 uses
  %.0555769.us.i = phi ptr [ %i.nh, %._crit_edge.us.i ], [ %i.fh, %.preheader748.us.preheader.i ] ; 2 uses
  %.0557768.us.i = phi ptr [ %i.ni, %._crit_edge.us.i ], [ %i.eo, %.preheader748.us.preheader.i ] ; 2 uses
  %.0560767.us.i = phi ptr [ %i.nj, %._crit_edge.us.i ], [ %i.fl, %.preheader748.us.preheader.i ] ; 2 uses
  %.0561766.us.i = phi ptr [ %i.nk, %._crit_edge.us.i ], [ %i.fp, %.preheader748.us.preheader.i ] ; 2 uses
  %.0562765.us.i = phi ptr [ %i.nl, %._crit_edge.us.i ], [ %i.ft, %.preheader748.us.preheader.i ] ; 2 uses
  %.0563764.us.i = phi ptr [ %i.nd, %._crit_edge.us.i ], [ %i.ev, %.preheader748.us.preheader.i ]
  %.0569763.us.i = phi i32 [ %i.nm, %._crit_edge.us.i ], [ 0, %.preheader748.us.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader748.us.i
  %indvars.iv1016.i = phi i64 [ 0, %.preheader748.us.i ], [ %indvars.iv.next1017.i, %bb.x ] ; 9 uses
  %.1564762.us.i = phi ptr [ %.0563764.us.i, %.preheader748.us.i ], [ %i.nd, %bb.x ] ; 65 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0541772.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0543771.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0554770.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0555769.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0557768.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0560767.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0561766.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0562765.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.gc = load i8, ptr %i.fu, align 1, !tbaa !20
  store i8 %i.gc, ptr %.1564762.us.i, align 1, !tbaa !20
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.cf
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !20
  %i.gg = load i8, ptr %i.fv, align 1, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 2
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.cf
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 3
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !20
  %i.gl = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.gm = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 4
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.cf
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 5
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !20
  %i.gq = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 6
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !20
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.cf
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 7
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !20
  %i.gv = load i8, ptr %i.fy, align 1, !tbaa !20
  %i.gw = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 8
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.cf
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !20
  %i.gz = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 9
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !20
  %i.ha = load i8, ptr %i.fz, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 10
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !20
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.cf
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 11
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !20
  %i.hf = load i8, ptr %i.ga, align 1, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 12
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !20
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.cf
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 13
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !20
  %i.hk = load i8, ptr %i.gb, align 1, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 14
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.cf
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 15
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ch ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ch ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ch ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ch ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ch ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ch ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ch ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ch ; 3 uses
  %i.hy = load i8, ptr %i.hq, align 1, !tbaa !20
  store i8 %i.hy, ptr %i.hp, align 1, !tbaa !20
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.cf
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 17
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !20
  %i.ic = load i8, ptr %i.hr, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 18
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.cf
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 19
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !20
  %i.ih = load i8, ptr %i.hs, align 1, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 20
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !20
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.cf
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 21
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !20
  %i.im = load i8, ptr %i.ht, align 1, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 22
  store i8 %i.im, ptr %i.in, align 1, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.cf
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !20
  %i.iq = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 23
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !20
  %i.ir = load i8, ptr %i.hu, align 1, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 24
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !20
  %i.it = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.cf
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 25
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !20
  %i.iw = load i8, ptr %i.hv, align 1, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 26
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.cf
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 27
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !20
  %i.jb = load i8, ptr %i.hw, align 1, !tbaa !20
  %i.jc = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 28
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.cf
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20
  %i.jf = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 29
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !20
  %i.jg = load i8, ptr %i.hx, align 1, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii:bb.a

._crit_edge.us.i:                                 ; preds = %bb.x
  %i.ne = getelementptr inbounds nuw i8, ptr %.0541772.us.i, i64 %i.cj ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0543771.us.i, i64 %i.cj
  %i.ng = getelementptr inbounds nuw i8, ptr %.0554770.us.i, i64 %i.cj
  %i.nh = getelementptr inbounds nuw i8, ptr %.0555769.us.i, i64 %i.cj
  %i.ni = getelementptr inbounds nuw i8, ptr %.0557768.us.i, i64 %i.cj ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.0560767.us.i, i64 %i.cj
  %i.nk = getelementptr inbounds nuw i8, ptr %.0561766.us.i, i64 %i.cj
  %i.nl = getelementptr inbounds nuw i8, ptr %.0562765.us.i, i64 %i.cj
  %i.nm = add nuw nsw i32 %.0569763.us.i, 8       ; 2 uses
  %i.nn = or disjoint i32 %i.nm, 7
  %i.no = icmp slt i32 %i.nn, %2
  br i1 %i.no, label %.preheader748.us.i, label %.preheader750.i, !llvm.loop !23

.preheader750.i:                                  ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit650.i
  %.0569.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.cx, %._crit_edge.us.i ] ; 3 uses
  %.0563.lcssa.i = phi ptr [ %i.ev, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.nd, %._crit_edge.us.i ] ; 2 uses
  %.0557.lcssa.i = phi ptr [ %i.eo, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.ni, %._crit_edge.us.i ]
  %.0541.lcssa.i = phi ptr [ %i.ek, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.ne, %._crit_edge.us.i ] ; 2 uses
  %i.np = or disjoint i32 %.0569.lcssa.i, 1
  %i.nq = icmp slt i32 %i.np, %2
  br i1 %i.nq, label %.lr.ph786.i, label %.preheader749.i

.lr.ph786.i:                                      ; preds = %.preheader750.i
  br i1 %i.ce, label %.lr.ph.us.i, label %._crit_edge800.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph786.i, %._crit_edge.us790.i
  %.1542785.us.i = phi ptr [ %i.oj, %._crit_edge.us790.i ], [ %.0541.lcssa.i, %.lr.ph786.i ] ; 2 uses
  %.1558784.us.i = phi ptr [ %i.ok, %._crit_edge.us790.i ], [ %.0557.lcssa.i, %.lr.ph786.i ] ; 2 uses
  %.3566783.us.i = phi ptr [ %i.oi, %._crit_edge.us790.i ], [ %.0563.lcssa.i, %.lr.ph786.i ]
  %.1570782.us.i = phi i32 [ %i.ol, %._crit_edge.us790.i ], [ %.0569.lcssa.i, %.lr.ph786.i ]
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.us.i
  %indvars.iv1020.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next1021.i, %bb.y ] ; 3 uses
  %.4567781.us.i = phi ptr [ %.3566783.us.i, %.lr.ph.us.i ], [ %i.oi, %bb.y ] ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1542785.us.i, i64 %indvars.iv1020.i
  %i.ns = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.nr, <8 x i32> %i.cs, <8 x i32> splat (i32 -1), i8 1)
  %i.nt = bitcast <8 x i32> %i.ns to <32 x i8>
  %i.nu = shufflevector <32 x i8> %i.nt, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.1558784.us.i, i64 %indvars.iv1020.i
  %i.nw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.nv, <8 x i32> %i.cs, <8 x i32> splat (i32 -1), i8 1)
  %i.nx = bitcast <8 x i32> %i.nw to <32 x i8>
  %i.ny = shufflevector <32 x i8> %i.nx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.nz = bitcast <32 x i8> %i.nu to <8 x i32>
  %i.oa = bitcast <32 x i8> %i.nu to <8 x i32>
  %i.ob = shufflevector <8 x i32> %i.nz, <8 x i32> %i.oa, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.oc = bitcast <4 x i32> %i.ob to <2 x i64>
  %i.od = bitcast <32 x i8> %i.ny to <8 x i32>
  %i.oe = bitcast <32 x i8> %i.ny to <8 x i32>
  %i.of = shufflevector <8 x i32> %i.od, <8 x i32> %i.oe, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.og = bitcast <4 x i32> %i.of to <2 x i64>
  %i.oh = shufflevector <2 x i64> %i.oc, <2 x i64> %i.og, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.oh, ptr %.4567781.us.i, align 1, !tbaa !20
  %i.oi = getelementptr inbounds nuw i8, ptr %.4567781.us.i, i64 16 ; 3 uses
  %indvars.iv.next1021.i = add nuw nsw i64 %indvars.iv1020.i, 1 ; 2 uses
  %exitcond1024.not.i = icmp eq i64 %indvars.iv.next1021.i, %wide.trip.count.i
  br i1 %exitcond1024.not.i, label %._crit_edge.us790.i, label %bb.y, !llvm.loop !24

._crit_edge.us790.i:                              ; preds = %bb.y
  %i.oj = getelementptr inbounds nuw i8, ptr %.1542785.us.i, i64 %i.ch ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.1558784.us.i, i64 %i.ch
  %i.ol = add nuw nsw i32 %.1570782.us.i, 2       ; 3 uses
  %i.om = or disjoint i32 %i.ol, 1
  %i.on = icmp slt i32 %i.om, %2
  br i1 %i.on, label %.lr.ph.us.i, label %.preheader749.i, !llvm.loop !25

.preheader749.i:                                  ; preds = %._crit_edge.us790.i, %.preheader750.i
  %.1570.lcssa.i = phi i32 [ %.0569.lcssa.i, %.preheader750.i ], [ %i.ol, %._crit_edge.us790.i ] ; 2 uses
  %.3566.lcssa.i = phi ptr [ %.0563.lcssa.i, %.preheader750.i ], [ %i.oi, %._crit_edge.us790.i ]
  %.1542.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader750.i ], [ %i.oj, %._crit_edge.us790.i ] ; 3 uses
  %i.oo = icmp sge i32 %.1570.lcssa.i, %2
  %brmerge.i = or i1 %i.cw, %i.oo
  br i1 %brmerge.i, label %._crit_edge800.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader749.i, %._crit_edge.i
  %.5568798.i = phi ptr [ %.lcssa246, %._crit_edge.i ], [ %.3566.lcssa.i, %.preheader749.i ] ; 2 uses
  %.2571797.i = phi i32 [ %i.oz, %._crit_edge.i ], [ %.1570.lcssa.i, %.preheader749.i ]
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv1025.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next1026.i.1, %._crit_edge.i.unr-lcssa ]
  %.6796.i.epil.init = phi ptr [ %.5568798.i, %.lr.ph.i ], [ %i.pu, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.op = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i.epil.init
  %i.oq = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.op, <8 x i32> %i.cv, <8 x i32> splat (i32 -1), i8 1)
  %i.or = bitcast <8 x i32> %i.oq to <32 x i8>
  %i.os = shufflevector <32 x i8> %i.or, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.ot = bitcast <32 x i8> %i.os to <8 x i32>
  %i.ou = bitcast <32 x i8> %i.os to <8 x i32>
  %i.ov = shufflevector <8 x i32> %i.ot, <8 x i32> %i.ou, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ow = bitcast <4 x i32> %i.ov to <2 x i64>
  %i.ox = extractelement <2 x i64> %i.ow, i64 0
  store i64 %i.ox, ptr %.6796.i.epil.init, align 1, !tbaa !20
  %i.oy = getelementptr inbounds nuw i8, ptr %.6796.i.epil.init, i64 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa246 = phi ptr [ %i.pu, %._crit_edge.i.unr-lcssa ], [ %i.oy, %.epil.preheader ]
  %i.oz = add nuw nsw i32 %.2571797.i, 1          ; 2 uses
  %exitcond1030.not.i = icmp eq i32 %i.oz, %2
  br i1 %exitcond1030.not.i, label %._crit_edge800.split.i, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 3 uses
  %.6796.i = phi ptr [ %i.pu, %.lr.ph.i.new ], [ %.5568798.i, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.pa = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i
  %i.pb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.pa, <8 x i32> %i.cv, <8 x i32> splat (i32 -1), i8 1)
  %i.pc = bitcast <8 x i32> %i.pb to <32 x i8>
  %i.pd = shufflevector <32 x i8> %i.pc, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.pe = bitcast <32 x i8> %i.pd to <8 x i32>
  %i.pf = bitcast <32 x i8> %i.pd to <8 x i32>
  %i.pg = shufflevector <8 x i32> %i.pe, <8 x i32> %i.pf, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ph = bitcast <4 x i32> %i.pg to <2 x i64>
  %i.pi = extractelement <2 x i64> %i.ph, i64 0
  store i64 %i.pi, ptr %.6796.i, align 1, !tbaa !20
  %i.pj = getelementptr inbounds nuw i8, ptr %.6796.i, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pm = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.pl, <8 x i32> %i.cv, <8 x i32> splat (i32 -1), i8 1)
  %i.pn = bitcast <8 x i32> %i.pm to <32 x i8>
  %i.po = shufflevector <32 x i8> %i.pn, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.pp = bitcast <32 x i8> %i.po to <8 x i32>
  %i.pq = bitcast <32 x i8> %i.po to <8 x i32>
  %i.pr = shufflevector <8 x i32> %i.pp, <8 x i32> %i.pq, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ps = bitcast <4 x i32> %i.pr to <2 x i64>
  %i.pt = extractelement <2 x i64> %i.ps, i64 0
  store i64 %i.pt, ptr %i.pj, align 1, !tbaa !20
  %i.pu = getelementptr inbounds nuw i8, ptr %.6796.i, i64 16 ; 3 uses
  %indvars.iv.next1026.i.1 = add nuw nsw i64 %indvars.iv1025.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !27

._crit_edge800.split.i:                           ; preds = %._crit_edge.i, %.preheader749.i, %.lr.ph786.i, %.preheader748.lr.ph.i
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 8 ; 3 uses
  %i.pv = or disjoint i64 %indvars.iv.next1032.i, 7
  %i.pw = icmp samesign ult i64 %i.pv, %i.cy
  br i1 %i.pw, label %_ZN4ncnn3MatD2Ev.exit650.i, label %.preheader747.loopexit.i, !llvm.loop !28

.preheader743.loopexit.i:                         ; preds = %._crit_edge851.split.i
  %i.px = trunc nuw nsw i64 %indvars.iv.next1059.i to i32
  br label %.preheader743.i

.preheader743.i:                                  ; preds = %.preheader743.loopexit.i, %.preheader747.i
  %.1.lcssa.i = phi i32 [ %.0539.lcssa.i, %.preheader747.i ], [ %i.px, %.preheader743.loopexit.i ] ; 3 uses
  %i.py = or disjoint i32 %.1.lcssa.i, 1          ; 2 uses
  %i.pz = icmp slt i32 %i.py, %3
  br i1 %i.pz, label %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i, label %.preheader739.i

_ZN4ncnn3MatD2Ev.exit648.lr.ph.i:                 ; preds = %.preheader743.i
  %i.qa = mul i32 %i.a, %2                        ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qd = icmp sgt i32 %2, 7
  %i.qe = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.qf = shufflevector <8 x i32> %i.qe, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.qg = mul <8 x i32> %i.qf, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qh = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.qi = shl i32 %i.a, 3
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = add nsw i32 %i.qa, %i.a
  %i.ql = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.qa, i64 1
  %i.qm = insertelement <4 x i32> %i.ql, i32 %i.a, i64 2
  %i.qn = insertelement <4 x i32> %i.qm, i32 %i.qk, i64 3 ; 5 uses
  %i.qo = shl i32 %i.a, 1
  %i.qp = sext i32 %i.qo to i64                   ; 2 uses
  %i.qq = icmp slt i32 %i.a, 1
  %i.qr = and i32 %2, -8
  %i.qs = zext nneg i32 %.1.lcssa.i to i64
  %i.qt = sext i32 %3 to i64
  %wide.trip.count1073.i = zext i32 %i.a to i64   ; 14 uses
  %i.qu = shl nuw nsw i64 %wide.trip.count1073.i, 1
  %xtraiter264 = and i64 %wide.trip.count1073.i, 3 ; 3 uses
  %i.qv = add nsw i32 %i.a, -1
  %i.qw = icmp ult i32 %i.qv, 3
  %unroll_iter269 = and i64 %wide.trip.count1073.i, 2147483644
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  %min.iters.check = icmp ult i32 %i.a, 8
  %min.iters.check124 = icmp ult i32 %i.a, 32
  %i.qx = and i64 %wide.trip.count1073.i, 24
  %n.vec = and i64 %wide.trip.count1073.i, 2147483616 ; 5 uses
  %i.qy = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1073.i
  %min.epilog.iters.check = icmp eq i64 %i.qx, 0
  %n.vec126 = and i64 %wide.trip.count1073.i, 2147483640 ; 4 uses
  %i.qz = shl nuw nsw i64 %n.vec126, 1
  %cmp.n133 = icmp eq i64 %n.vec126, %wide.trip.count1073.i
  %xtraiter271 = and i64 %wide.trip.count1073.i, 3 ; 2 uses
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br label %_ZN4ncnn3MatD2Ev.exit648.i

_ZN4ncnn3MatD2Ev.exit649.i:                       ; preds = %._crit_edge851.split.i, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i
  %indvars.iv1058.i = phi i64 [ %i.eb, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i ], [ %indvars.iv.next1059.i, %._crit_edge851.split.i ] ; 2 uses
  %indvars.iv1056.i = phi i32 [ %6, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i ], [ %indvars.iv.next1057.i, %._crit_edge851.split.i ] ; 2 uses
  %i.ra = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.rb = trunc nuw i64 %indvars.iv1058.i to i32  ; 5 uses
  %i.rc = mul i32 %i.dd, %i.rb
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds i8, ptr %i.ra, i64 %i.rd ; 2 uses
  %i.rf = lshr i32 %i.rb, 3
  %i.rg = lshr i32 %i.rb, 2
  %i.rh = and i32 %i.rg, 1
  %i.ri = add nuw nsw i32 %i.rh, %i.rf
  %i.rj = load ptr, ptr %1, align 8, !tbaa !9, !noalias !29
  %i.rk = load i64, ptr %i.de, align 8, !tbaa !18, !noalias !29
  %i.rl = zext nneg i32 %i.ri to i64
  %i.rm = mul i64 %i.rk, %i.rl
  %i.rn = load i64, ptr %i.df, align 8, !tbaa !19, !noalias !29
  %i.ro = mul i64 %i.rm, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ro ; 2 uses
  br i1 %i.dg, label %.preheader744.lr.ph.i, label %.preheader746.i

.preheader744.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit649.i
  br i1 %i.dh, label %.preheader744.us.preheader.i, label %._crit_edge851.split.i

.preheader744.us.preheader.i:                     ; preds = %.preheader744.lr.ph.i
  %i.rq = add i32 %i.rb, 1
  %i.rr = mul i32 %i.rq, %i.dd
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.ra, i64 %i.rs
  %i.ru = add i32 %i.rb, 2
  %i.rv = mul i32 %i.ru, %i.dd
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds i8, ptr %i.ra, i64 %i.rw
  %i.ry = mul i32 %indvars.iv1056.i, %i.dd
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds i8, ptr %i.ra, i64 %i.rz
  br label %.preheader744.us.i

.preheader744.us.i:                               ; preds = %._crit_edge812.us.i, %.preheader744.us.preheader.i
  %.0596819.us.i = phi i32 [ %i.vx, %._crit_edge812.us.i ], [ 0, %.preheader744.us.preheader.i ]
  %.0599818.us.i = phi ptr [ %i.vs, %._crit_edge812.us.i ], [ %i.rp, %.preheader744.us.preheader.i ]
  %.0606817.us.i = phi ptr [ %i.vw, %._crit_edge812.us.i ], [ %i.sa, %.preheader744.us.preheader.i ] ; 2 uses
  %.0608816.us.i = phi ptr [ %i.vv, %._crit_edge812.us.i ], [ %i.rx, %.preheader744.us.preheader.i ] ; 2 uses
  %.0610815.us.i = phi ptr [ %i.vu, %._crit_edge812.us.i ], [ %i.rt, %.preheader744.us.preheader.i ] ; 2 uses
  %.0612814.us.i = phi ptr [ %i.vt, %._crit_edge812.us.i ], [ %i.re, %.preheader744.us.preheader.i ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader744.us.i
  %indvars.iv1039.i = phi i64 [ 0, %.preheader744.us.i ], [ %indvars.iv.next1040.i, %bb.z ] ; 5 uses
  %.1600809.us.i = phi ptr [ %.0599818.us.i, %.preheader744.us.i ], [ %i.vs, %bb.z ] ; 33 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0612814.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0610815.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0608816.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0606817.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !20
  store i8 %i.sf, ptr %.1600809.us.i, align 1, !tbaa !20
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.di
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !20
  %i.si = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 1
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !20
  %i.sj = load i8, ptr %i.sc, align 1, !tbaa !20
  %i.sk = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 2
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !20
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.di
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !20
  %i.sn = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 3
  store i8 %i.sm, ptr %i.sn, align 1, !tbaa !20
  %i.so = load i8, ptr %i.sd, align 1, !tbaa !20
  %i.sp = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 4
  store i8 %i.so, ptr %i.sp, align 1, !tbaa !20
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.di
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !20
  %i.ss = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 5
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !20
  %i.st = load i8, ptr %i.se, align 1, !tbaa !20
  %i.su = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 6
  store i8 %i.st, ptr %i.su, align 1, !tbaa !20
  %i.sv = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.di
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !20
  %i.sx = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 7
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !20
  %i.sy = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.dk ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.dk ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.dk ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.dk ; 3 uses
  %i.td = load i8, ptr %i.sz, align 1, !tbaa !20
  store i8 %i.td, ptr %i.sy, align 1, !tbaa !20
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.di
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !20
  %i.tg = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 9
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !20
  %i.th = load i8, ptr %i.ta, align 1, !tbaa !20
  %i.ti = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 10
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !20
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.di
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !20
  %i.tl = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 11
  store i8 %i.tk, ptr %i.tl, align 1, !tbaa !20
  %i.tm = load i8, ptr %i.tb, align 1, !tbaa !20
  %i.tn = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 12
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !20
  %i.to = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.di
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !20
  %i.tq = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 13
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !20
  %i.tr = load i8, ptr %i.tc, align 1, !tbaa !20
  %i.ts = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 14
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !20
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.di
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !20
  %i.tv = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 15
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !20
  %i.tw = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.dk ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.dk ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.dk ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.dk ; 3 uses
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !20
  store i8 %i.ub, ptr %i.tw, align 1, !tbaa !20
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.di
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !20
  %i.ue = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 17
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !20
  %i.uf = load i8, ptr %i.ty, align 1, !tbaa !20
  %i.ug = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 18
  store i8 %i.uf, ptr %i.ug, align 1, !tbaa !20
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.di
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !20
  %i.uj = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 19
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !20
  %i.uk = load i8, ptr %i.tz, align 1, !tbaa !20
  %i.ul = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 20
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !20
  %i.um = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.di
  %i.un = load i8, ptr %i.um, align 1, !tbaa !20
  %i.uo = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 21
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !20
  %i.up = load i8, ptr %i.ua, align 1, !tbaa !20
  %i.uq = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 22
  store i8 %i.up, ptr %i.uq, align 1, !tbaa !20
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.di
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !20
  %i.ut = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 23
  store i8 %i.us, ptr %i.ut, align 1, !tbaa !20
  %i.uu = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 24
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.dk ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.dk ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.dk ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.dk ; 2 uses
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !20
  store i8 %i.uz, ptr %i.uu, align 1, !tbaa !20
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.di
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !20
  %i.vc = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 25
  store i8 %i.vb, ptr %i.vc, align 1, !tbaa !20
  %i.vd = load i8, ptr %i.uw, align 1, !tbaa !20
  %i.ve = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 26
  store i8 %i.vd, ptr %i.ve, align 1, !tbaa !20
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.di
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !20
  %i.vh = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 27
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !20
  %i.vi = load i8, ptr %i.ux, align 1, !tbaa !20
  %i.vj = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 28
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !20
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.di
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !20
  %i.vm = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 29
  store i8 %i.vl, ptr %i.vm, align 1, !tbaa !20
  %i.vn = load i8, ptr %i.uy, align 1, !tbaa !20
  %i.vo = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 30
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !20
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.di
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !20
  %i.vr = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 31
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !20
  %i.vs = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 32 ; 3 uses
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1 ; 2 uses
  %exitcond1043.not.i = icmp eq i64 %indvars.iv.next1040.i, %wide.trip.count1042.i
  br i1 %exitcond1043.not.i, label %._crit_edge812.us.i, label %bb.z, !llvm.loop !32

._crit_edge812.us.i:                              ; preds = %bb.z
  %i.vt = getelementptr inbounds nuw i8, ptr %.0612814.us.i, i64 %i.dm ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.0610815.us.i, i64 %i.dm
  %i.vv = getelementptr inbounds nuw i8, ptr %.0608816.us.i, i64 %i.dm
  %i.vw = getelementptr inbounds nuw i8, ptr %.0606817.us.i, i64 %i.dm
  %i.vx = add nuw nsw i32 %.0596819.us.i, 8       ; 2 uses
  %i.vy = or disjoint i32 %i.vx, 7
  %i.vz = icmp slt i32 %i.vy, %2
  br i1 %i.vz, label %.preheader744.us.i, label %.preheader746.i, !llvm.loop !33

.preheader746.i:                                  ; preds = %._crit_edge812.us.i, %_ZN4ncnn3MatD2Ev.exit649.i
  %.0612.lcssa.i = phi ptr [ %i.re, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.vt, %._crit_edge812.us.i ] ; 2 uses
  %.0599.lcssa.i = phi ptr [ %i.rp, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.vs, %._crit_edge812.us.i ] ; 2 uses
  %.0596.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.ea, %._crit_edge812.us.i ] ; 3 uses
  %i.wa = or disjoint i32 %.0596.lcssa.i, 1
  %i.wb = icmp slt i32 %i.wa, %2
  br i1 %i.wb, label %.lr.ph835.i, label %.preheader745.i

.lr.ph835.i:                                      ; preds = %.preheader746.i
  br i1 %i.dh, label %.lr.ph829.us.i, label %._crit_edge851.split.i

.lr.ph829.us.i:                                   ; preds = %.lr.ph835.i, %._crit_edge830.us.i
  %.1597834.us.i = phi i32 [ %i.xi, %._crit_edge830.us.i ], [ %.0596.lcssa.i, %.lr.ph835.i ]
  %.3602833.us.i = phi ptr [ %.lcssa236, %._crit_edge830.us.i ], [ %.0599.lcssa.i, %.lr.ph835.i ] ; 2 uses
  %.1613832.us.i = phi ptr [ %i.xh, %._crit_edge830.us.i ], [ %.0612.lcssa.i, %.lr.ph835.i ] ; 4 uses
  br i1 %i.ee, label %.epil.preheader249, label %.lr.ph829.us.i.new

.lr.ph829.us.i.new:                               ; preds = %.lr.ph829.us.i, %.lr.ph829.us.i.new
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i.1, %.lr.ph829.us.i.new ], [ 0, %.lr.ph829.us.i ] ; 3 uses
  %.4603826.us.i = phi ptr [ %i.ww, %.lr.ph829.us.i.new ], [ %.3602833.us.i, %.lr.ph829.us.i ] ; 3 uses
  %niter255 = phi i64 [ %niter255.next.1, %.lr.ph829.us.i.new ], [ 0, %.lr.ph829.us.i ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i
  %i.wd = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.wc, <8 x i32> %i.dv, <8 x i32> splat (i32 -1), i8 1)
  %i.we = bitcast <8 x i32> %i.wd to <32 x i8>
  %i.wf = shufflevector <32 x i8> %i.we, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.wg = bitcast <32 x i8> %i.wf to <8 x i32>
  %i.wh = bitcast <32 x i8> %i.wf to <8 x i32>
  %i.wi = shufflevector <8 x i32> %i.wg, <8 x i32> %i.wh, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = extractelement <2 x i64> %i.wj, i64 0
  store i64 %i.wk, ptr %.4603826.us.i, align 1, !tbaa !20
  %i.wl = getelementptr inbounds nuw i8, ptr %.4603826.us.i, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wo = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wn, <8 x i32> %i.dv, <8 x i32> splat (i32 -1), i8 1)
  %i.wp = bitcast <8 x i32> %i.wo to <32 x i8>
  %i.wq = shufflevector <32 x i8> %i.wp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.wr = bitcast <32 x i8> %i.wq to <8 x i32>
  %i.ws = bitcast <32 x i8> %i.wq to <8 x i32>
  %i.wt = shufflevector <8 x i32> %i.wr, <8 x i32> %i.ws, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.wu = bitcast <4 x i32> %i.wt to <2 x i64>
  %i.wv = extractelement <2 x i64> %i.wu, i64 0
  store i64 %i.wv, ptr %i.wl, align 1, !tbaa !20
  %i.ww = getelementptr inbounds nuw i8, ptr %.4603826.us.i, i64 16 ; 3 uses
  %indvars.iv.next1046.i.1 = add nuw nsw i64 %indvars.iv1045.i, 2 ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %._crit_edge830.us.i.unr-lcssa, label %.lr.ph829.us.i.new, !llvm.loop !34

._crit_edge830.us.i.unr-lcssa:                    ; preds = %.lr.ph829.us.i.new
  br i1 %lcmp.mod251.not, label %._crit_edge830.us.i, label %.epil.preheader249

.epil.preheader249:                               ; preds = %._crit_edge830.us.i.unr-lcssa, %.lr.ph829.us.i
  %indvars.iv1045.i.epil.init = phi i64 [ 0, %.lr.ph829.us.i ], [ %indvars.iv.next1046.i.1, %._crit_edge830.us.i.unr-lcssa ]
  %.4603826.us.i.epil.init = phi ptr [ %.3602833.us.i, %.lr.ph829.us.i ], [ %i.ww, %._crit_edge830.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.wx = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i.epil.init
  %i.wy = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.wx, <8 x i32> %i.dv, <8 x i32> splat (i32 -1), i8 1)
  %i.wz = bitcast <8 x i32> %i.wy to <32 x i8>
  %i.xa = shufflevector <32 x i8> %i.wz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.xb = bitcast <32 x i8> %i.xa to <8 x i32>
  %i.xc = bitcast <32 x i8> %i.xa to <8 x i32>
  %i.xd = shufflevector <8 x i32> %i.xb, <8 x i32> %i.xc, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.xe = bitcast <4 x i32> %i.xd to <2 x i64>
  %i.xf = extractelement <2 x i64> %i.xe, i64 0
  store i64 %i.xf, ptr %.4603826.us.i.epil.init, align 1, !tbaa !20
  %i.xg = getelementptr inbounds nuw i8, ptr %.4603826.us.i.epil.init, i64 8
  br label %._crit_edge830.us.i

._crit_edge830.us.i:                              ; preds = %._crit_edge830.us.i.unr-lcssa, %.epil.preheader249
  %.lcssa236 = phi ptr [ %i.ww, %._crit_edge830.us.i.unr-lcssa ], [ %i.xg, %.epil.preheader249 ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %i.dk ; 2 uses
  %i.xi = add nuw nsw i32 %.1597834.us.i, 2       ; 3 uses
  %i.xj = or disjoint i32 %i.xi, 1
  %i.xk = icmp slt i32 %i.xj, %2
  br i1 %i.xk, label %.lr.ph829.us.i, label %.preheader745.i, !llvm.loop !35

.preheader745.i:                                  ; preds = %._crit_edge830.us.i, %.preheader746.i
  %.1613.lcssa.i = phi ptr [ %.0612.lcssa.i, %.preheader746.i ], [ %i.xh, %._crit_edge830.us.i ] ; 5 uses
  %.3602.lcssa.i = phi ptr [ %.0599.lcssa.i, %.preheader746.i ], [ %.lcssa236, %._crit_edge830.us.i ]
  %.1597.lcssa.i = phi i32 [ %.0596.lcssa.i, %.preheader746.i ], [ %i.xi, %._crit_edge830.us.i ] ; 2 uses
  %i.xl = icmp sge i32 %.1597.lcssa.i, %2
  %brmerge945.i = or i1 %i.dz, %i.xl
  br i1 %brmerge945.i, label %._crit_edge851.split.i, label %.lr.ph845.i

.lr.ph845.i:                                      ; preds = %.preheader745.i, %._crit_edge846.i
  %.2598849.i = phi i32 [ %i.xt, %._crit_edge846.i ], [ %.1597.lcssa.i, %.preheader745.i ]
  %.5604848.i = phi ptr [ %.lcssa239, %._crit_edge846.i ], [ %.3602.lcssa.i, %.preheader745.i ] ; 2 uses
  br i1 %i.ef, label %.epil.preheader256, label %.lr.ph845.i.new

._crit_edge846.i.unr-lcssa:                       ; preds = %.lr.ph845.i.new
  br i1 %lcmp.mod258.not, label %._crit_edge846.i, label %.epil.preheader256

.epil.preheader256:                               ; preds = %._crit_edge846.i.unr-lcssa, %.lr.ph845.i
  %indvars.iv1050.i.epil.init = phi i64 [ 0, %.lr.ph845.i ], [ %indvars.iv.next1051.i.3, %._crit_edge846.i.unr-lcssa ]
  %.6605842.i.epil.init = phi ptr [ %.5604848.i, %.lr.ph845.i ], [ %i.yy, %._crit_edge846.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod260)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader256
  %indvars.iv1050.i.epil = phi i64 [ %indvars.iv1050.i.epil.init, %.epil.preheader256 ], [ %indvars.iv.next1051.i.epil, %bb.aa ] ; 2 uses
  %.6605842.i.epil = phi ptr [ %.6605842.i.epil.init, %.epil.preheader256 ], [ %i.xs, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader256 ], [ %epil.iter.next, %bb.aa ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i.epil
  %i.xn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.xm, <4 x i32> %i.dy, <4 x i32> splat (i32 -1), i8 1)
  %i.xo = bitcast <4 x i32> %i.xn to <16 x i8>
  %i.xp = shufflevector <16 x i8> %i.xo, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xq = bitcast <16 x i8> %i.xp to <4 x float>
  %i.xr = extractelement <4 x float> %i.xq, i64 0
  store float %i.xr, ptr %.6605842.i.epil, align 1, !tbaa !20
  %i.xs = getelementptr inbounds nuw i8, ptr %.6605842.i.epil, i64 4 ; 2 uses
  %indvars.iv.next1051.i.epil = add nuw nsw i64 %indvars.iv1050.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter257
  br i1 %epil.iter.cmp.not, label %._crit_edge846.i, label %bb.aa, !llvm.loop !36

._crit_edge846.i:                                 ; preds = %bb.aa, %._crit_edge846.i.unr-lcssa
  %.lcssa239 = phi ptr [ %i.yy, %._crit_edge846.i.unr-lcssa ], [ %i.xs, %bb.aa ]
  %i.xt = add nuw nsw i32 %.2598849.i, 1          ; 2 uses
  %exitcond1055.not.i = icmp eq i32 %i.xt, %2
  br i1 %exitcond1055.not.i, label %._crit_edge851.split.i, label %.lr.ph845.i, !llvm.loop !38

.lr.ph845.i.new:                                  ; preds = %.lr.ph845.i, %.lr.ph845.i.new
  %indvars.iv1050.i = phi i64 [ %indvars.iv.next1051.i.3, %.lr.ph845.i.new ], [ 0, %.lr.ph845.i ] ; 5 uses
  %.6605842.i = phi ptr [ %i.yy, %.lr.ph845.i.new ], [ %.5604848.i, %.lr.ph845.i ] ; 5 uses
  %niter262 = phi i64 [ %niter262.next.3, %.lr.ph845.i.new ], [ 0, %.lr.ph845.i ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.xv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.xu, <4 x i32> %i.dy, <4 x i32> splat (i32 -1), i8 1)
  %i.xw = bitcast <4 x i32> %i.xv to <16 x i8>
  %i.xx = shufflevector <16 x i8> %i.xw, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xy = bitcast <16 x i8> %i.xx to <4 x float>
  %i.xz = extractelement <4 x float> %i.xy, i64 0
  store float %i.xz, ptr %.6605842.i, align 1, !tbaa !20
  %i.ya = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 4
  %i.yb = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 1
  %i.yd = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.yc, <4 x i32> %i.dy, <4 x i32> splat (i32 -1), i8 1)
  %i.ye = bitcast <4 x i32> %i.yd to <16 x i8>
  %i.yf = shufflevector <16 x i8> %i.ye, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yg = bitcast <16 x i8> %i.yf to <4 x float>
  %i.yh = extractelement <4 x float> %i.yg, i64 0
  store float %i.yh, ptr %i.ya, align 1, !tbaa !20
  %i.yi = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 8
  %i.yj = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 2
  %i.yl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.yk, <4 x i32> %i.dy, <4 x i32> splat (i32 -1), i8 1)
  %i.ym = bitcast <4 x i32> %i.yl to <16 x i8>
  %i.yn = shufflevector <16 x i8> %i.ym, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yo = bitcast <16 x i8> %i.yn to <4 x float>
  %i.yp = extractelement <4 x float> %i.yo, i64 0
  store float %i.yp, ptr %i.yi, align 1, !tbaa !20
  %i.yq = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 12
  %i.yr = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 3
  %i.yt = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ys, <4 x i32> %i.dy, <4 x i32> splat (i32 -1), i8 1)
  %i.yu = bitcast <4 x i32> %i.yt to <16 x i8>
  %i.yv = shufflevector <16 x i8> %i.yu, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yw = bitcast <16 x i8> %i.yv to <4 x float>
  %i.yx = extractelement <4 x float> %i.yw, i64 0
  store float %i.yx, ptr %i.yq, align 1, !tbaa !20
  %i.yy = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 16 ; 3 uses
  %indvars.iv.next1051.i.3 = add nuw nsw i64 %indvars.iv1050.i, 4 ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %._crit_edge846.i.unr-lcssa, label %.lr.ph845.i.new, !llvm.loop !39

._crit_edge851.split.i:                           ; preds = %._crit_edge846.i, %.preheader745.i, %.lr.ph835.i, %.preheader744.lr.ph.i
  %indvars.iv.next1059.i = add nuw nsw i64 %indvars.iv1058.i, 4 ; 3 uses
  %i.yz = icmp slt i64 %indvars.iv.next1059.i, %invariant.op.i
  %indvars.iv.next1057.i = add i32 %indvars.iv1056.i, 4
  br i1 %i.yz, label %_ZN4ncnn3MatD2Ev.exit649.i, label %.preheader743.loopexit.i, !llvm.loop !40

.preheader739.loopexit.i:                         ; preds = %._crit_edge899.split.i
  %i.za = trunc nsw i64 %indvars.iv.next1089.i to i32
  br label %.preheader739.i

.preheader739.i:                                  ; preds = %.preheader739.loopexit.i, %.preheader743.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader743.i ], [ %i.za, %.preheader739.loopexit.i ] ; 2 uses
  %i.zb = icmp slt i32 %.2.lcssa.i, %3
  br i1 %i.zb, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader739.i
  %i.zc = mul i32 %i.a, %2
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zf = icmp sgt i32 %2, 7
  %i.zg = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.zh = shufflevector <8 x i32> %i.zg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zi = mul <8 x i32> %i.zh, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.zj = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.zk = shl i32 %i.a, 3
  %i.zl = sext i32 %i.zk to i64
  %i.zm = sext i32 %i.a to i64                    ; 9 uses
  %i.zn = shl i32 %i.a, 1                         ; 2 uses
  %i.zo = sext i32 %i.zn to i64                   ; 2 uses
  %i.zp = icmp slt i32 %i.a, 1
  %i.zq = and i32 %2, -8
  %i.zr = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1115.i = sext i32 %3 to i64
  %wide.trip.count1098.i = zext i32 %i.a to i64   ; 21 uses
  %i.zs = shl nuw nsw i64 %wide.trip.count1098.i, 1
  %i.zt = add i32 %2, -2
  %xtraiter274 = and i64 %wide.trip.count1098.i, 1
  %i.zu = icmp eq i32 %i.a, 1
  %unroll_iter279 = and i64 %wide.trip.count1098.i, 2147483646
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  %lcmp.mod278 = trunc i32 %i.a to i1
  %min.iters.check185 = icmp ult i32 %i.a, 8
  %stride.check183 = icmp slt i32 %i.zn, 0
  %min.iters.check187 = icmp ult i32 %i.a, 64
  %i.zv = and i64 %wide.trip.count1098.i, 56
  %n.vec189 = and i64 %wide.trip.count1098.i, 2147483584 ; 5 uses
  %i.zw = shl nuw nsw i64 %n.vec189, 1
  %cmp.n202 = icmp eq i64 %n.vec189, %wide.trip.count1098.i
  %min.epilog.iters.check207 = icmp eq i64 %i.zv, 0
  %n.vec209 = and i64 %wide.trip.count1098.i, 2147483640 ; 4 uses
  %i.zx = shl nuw nsw i64 %n.vec209, 1
  %cmp.n218 = icmp eq i64 %n.vec209, %wide.trip.count1098.i
  %xtraiter281 = and i64 %wide.trip.count1098.i, 3 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  %min.iters.check139 = icmp ult i32 %i.a, 8
  %min.iters.check141 = icmp ult i32 %i.a, 128
  %i.zy = and i64 %wide.trip.count1098.i, 120
  %n.vec143 = and i64 %wide.trip.count1098.i, 2147483520 ; 5 uses
  %cmp.n153 = icmp eq i64 %n.vec143, %wide.trip.count1098.i
  %min.epilog.iters.check158 = icmp eq i64 %i.zy, 0
  %n.vec160 = and i64 %wide.trip.count1098.i, 2147483640 ; 4 uses
  %cmp.n167 = icmp eq i64 %n.vec160, %wide.trip.count1098.i
  %xtraiter284 = and i64 %wide.trip.count1098.i, 7 ; 2 uses
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit648.i:                       ; preds = %._crit_edge899.split.i, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i
  %indvars.iv1088.i = phi i64 [ %i.qs, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i ], [ %indvars.iv.next1089.i, %._crit_edge899.split.i ] ; 2 uses
  %i.zz = phi i32 [ %i.py, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i ], [ %i.afg, %._crit_edge899.split.i ]
  %i.aaa = load ptr, ptr %0, align 8, !tbaa !9    ; 2 uses
  %i.aab = trunc i64 %indvars.iv1088.i to i32     ; 4 uses
  %i.aac = mul i32 %i.qa, %i.aab
  %i.aad = sext i32 %i.aac to i64
  %i.aae = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aad ; 2 uses
  %i.aaf = mul i32 %i.zz, %i.qa
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds i8, ptr %i.aaa, i64 %i.aag ; 2 uses
  %i.aai = lshr i32 %i.aab, 3
  %i.aaj = lshr i32 %i.aab, 2
  %i.aak = and i32 %i.aaj, 1
  %i.aal = add nuw nsw i32 %i.aak, %i.aai
  %i.aam = lshr i32 %i.aab, 1
  %i.aan = and i32 %i.aam, 1
  %i.aao = add nuw nsw i32 %i.aal, %i.aan
  %i.aap = load ptr, ptr %1, align 8, !tbaa !9, !noalias !41
  %i.aaq = load i64, ptr %i.qb, align 8, !tbaa !18, !noalias !41
  %i.aar = zext nneg i32 %i.aao to i64
  %i.aas = load i64, ptr %i.qc, align 8, !tbaa !19, !noalias !41
  %i.aat = mul i64 %i.aas, %i.aaq
  %i.aau = mul i64 %i.aat, %i.aar
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aau ; 2 uses
  br i1 %i.qd, label %.lr.ph864.i, label %.preheader742.i

.lr.ph864.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit648.i
  br i1 %i.qh, label %.lr.ph857.us.i, label %._crit_edge899.split.i

.lr.ph857.us.i:                                   ; preds = %.lr.ph864.i, %._crit_edge858.us.i
  %.0573863.us.i = phi i32 [ %i.abq, %._crit_edge858.us.i ], [ 0, %.lr.ph864.i ]
  %.0576862.us.i = phi ptr [ %i.abn, %._crit_edge858.us.i ], [ %i.aav, %.lr.ph864.i ]
  %.0582861.us.i = phi ptr [ %i.abp, %._crit_edge858.us.i ], [ %i.aah, %.lr.ph864.i ] ; 2 uses
  %.0584860.us.i = phi ptr [ %i.abo, %._crit_edge858.us.i ], [ %i.aae, %.lr.ph864.i ] ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph857.us.i
  %indvars.iv1070.i = phi i64 [ 0, %.lr.ph857.us.i ], [ %indvars.iv.next1071.i, %bb.ab ] ; 3 uses
  %.1577854.us.i = phi ptr [ %.0576862.us.i, %.lr.ph857.us.i ], [ %i.abn, %bb.ab ] ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0584860.us.i, i64 %indvars.iv1070.i
  %i.aax = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aaw, <8 x i32> %i.qg, <8 x i32> splat (i32 -1), i8 1)
  %i.aay = bitcast <8 x i32> %i.aax to <32 x i8>
  %i.aaz = shufflevector <32 x i8> %i.aay, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0582861.us.i, i64 %indvars.iv1070.i
  %i.abb = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aba, <8 x i32> %i.qg, <8 x i32> splat (i32 -1), i8 1)
  %i.abc = bitcast <8 x i32> %i.abb to <32 x i8>
  %i.abd = shufflevector <32 x i8> %i.abc, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.abe = bitcast <32 x i8> %i.aaz to <8 x i32>
  %i.abf = bitcast <32 x i8> %i.aaz to <8 x i32>
  %i.abg = shufflevector <8 x i32> %i.abe, <8 x i32> %i.abf, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.abh = bitcast <4 x i32> %i.abg to <2 x i64>
  %i.abi = bitcast <32 x i8> %i.abd to <8 x i32>
  %i.abj = bitcast <32 x i8> %i.abd to <8 x i32>
  %i.abk = shufflevector <8 x i32> %i.abi, <8 x i32> %i.abj, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.abl = bitcast <4 x i32> %i.abk to <2 x i64>
  %i.abm = shufflevector <2 x i64> %i.abh, <2 x i64> %i.abl, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.abm, ptr %.1577854.us.i, align 1, !tbaa !20
  %i.abn = getelementptr inbounds nuw i8, ptr %.1577854.us.i, i64 16 ; 3 uses
  %indvars.iv.next1071.i = add nuw nsw i64 %indvars.iv1070.i, 1 ; 2 uses
  %exitcond1074.not.i = icmp eq i64 %indvars.iv.next1071.i, %wide.trip.count1073.i
  br i1 %exitcond1074.not.i, label %._crit_edge858.us.i, label %bb.ab, !llvm.loop !44

._crit_edge858.us.i:                              ; preds = %bb.ab
  %i.abo = getelementptr inbounds nuw i8, ptr %.0584860.us.i, i64 %i.qj ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.0582861.us.i, i64 %i.qj ; 2 uses
  %i.abq = add nuw nsw i32 %.0573863.us.i, 8      ; 2 uses
  %i.abr = or disjoint i32 %i.abq, 7
  %i.abs = icmp slt i32 %i.abr, %2
  br i1 %i.abs, label %.lr.ph857.us.i, label %.preheader742.i, !llvm.loop !45

.preheader742.i:                                  ; preds = %._crit_edge858.us.i, %_ZN4ncnn3MatD2Ev.exit648.i
  %.0584.lcssa.i = phi ptr [ %i.aae, %_ZN4ncnn3MatD2Ev.exit648.i ], [ %i.abo, %._crit_edge858.us.i ] ; 2 uses
  %.0582.lcssa.i = phi ptr [ %i.aah, %_ZN4ncnn3MatD2Ev.exit648.i ], [ %i.abp, %._crit_edge858.us.i ] ; 2 uses
  %.0576.lcssa.i = phi ptr [ %i.aav, %_ZN4ncnn3MatD2Ev.exit648.i ], [ %i.abn, %._crit_edge858.us.i ] ; 2 uses
  %.0573.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit648.i ], [ %i.qr, %._crit_edge858.us.i ] ; 3 uses
  %i.abt = or disjoint i32 %.0573.lcssa.i, 1
  %i.abu = icmp slt i32 %i.abt, %2
  br i1 %i.abu, label %.lr.ph883.i, label %.preheader741.i

.lr.ph883.i:                                      ; preds = %.preheader742.i
  br i1 %i.qh, label %.lr.ph876.us.i, label %._crit_edge899.split.i

.lr.ph876.us.i:                                   ; preds = %.lr.ph883.i, %._crit_edge877.us.i
  %.1574882.us.i = phi i32 [ %i.adj, %._crit_edge877.us.i ], [ %.0573.lcssa.i, %.lr.ph883.i ]
  %.2578881.us.i = phi ptr [ %.lcssa229, %._crit_edge877.us.i ], [ %.0576.lcssa.i, %.lr.ph883.i ] ; 2 uses
  %.1583880.us.i = phi ptr [ %i.adi, %._crit_edge877.us.i ], [ %.0582.lcssa.i, %.lr.ph883.i ]
  %.1585879.us.i = phi ptr [ %i.adh, %._crit_edge877.us.i ], [ %.0584.lcssa.i, %.lr.ph883.i ] ; 6 uses
  br i1 %i.qw, label %.epil.preheader263, label %.lr.ph876.us.i.new

.lr.ph876.us.i.new:                               ; preds = %.lr.ph876.us.i, %.lr.ph876.us.i.new
  %indvars.iv1077.i = phi i64 [ %indvars.iv.next1078.i.3, %.lr.ph876.us.i.new ], [ 0, %.lr.ph876.us.i ] ; 5 uses
  %.3579873.us.i = phi ptr [ %i.acz, %.lr.ph876.us.i.new ], [ %.2578881.us.i, %.lr.ph876.us.i ] ; 5 uses
  %niter270 = phi i64 [ %niter270.next.3, %.lr.ph876.us.i.new ], [ 0, %.lr.ph876.us.i ]
  %i.abv = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %indvars.iv1077.i
  %i.abw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.abv, <4 x i32> %i.qn, <4 x i32> splat (i32 -1), i8 1)
  %i.abx = bitcast <4 x i32> %i.abw to <16 x i8>
  %i.aby = shufflevector <16 x i8> %i.abx, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abz = bitcast <16 x i8> %i.aby to <4 x float>
  %i.aca = extractelement <4 x float> %i.abz, i64 0
  store float %i.aca, ptr %.3579873.us.i, align 1, !tbaa !20
  %i.acb = getelementptr inbounds nuw i8, ptr %.3579873.us.i, i64 4
  %i.acc = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %indvars.iv1077.i
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 1
  %i.ace = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.acd, <4 x i32> %i.qn, <4 x i32> splat (i32 -1), i8 1)
  %i.acf = bitcast <4 x i32> %i.ace to <16 x i8>
  %i.acg = shufflevector <16 x i8> %i.acf, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ach = bitcast <16 x i8> %i.acg to <4 x float>
  %i.aci = extractelement <4 x float> %i.ach, i64 0
  store float %i.aci, ptr %i.acb, align 1, !tbaa !20
  %i.acj = getelementptr inbounds nuw i8, ptr %.3579873.us.i, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %indvars.iv1077.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 2
  %i.acm = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.acl, <4 x i32> %i.qn, <4 x i32> splat (i32 -1), i8 1)
  %i.acn = bitcast <4 x i32> %i.acm to <16 x i8>
  %i.aco = shufflevector <16 x i8> %i.acn, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acp = bitcast <16 x i8> %i.aco to <4 x float>
  %i.acq = extractelement <4 x float> %i.acp, i64 0
  store float %i.acq, ptr %i.acj, align 1, !tbaa !20
  %i.acr = getelementptr inbounds nuw i8, ptr %.3579873.us.i, i64 12
  %i.acs = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %indvars.iv1077.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 3
  %i.acu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.act, <4 x i32> %i.qn, <4 x i32> splat (i32 -1), i8 1)
  %i.acv = bitcast <4 x i32> %i.acu to <16 x i8>
  %i.acw = shufflevector <16 x i8> %i.acv, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acx = bitcast <16 x i8> %i.acw to <4 x float>
  %i.acy = extractelement <4 x float> %i.acx, i64 0
  store float %i.acy, ptr %i.acr, align 1, !tbaa !20
  %i.acz = getelementptr inbounds nuw i8, ptr %.3579873.us.i, i64 16 ; 3 uses
  %indvars.iv.next1078.i.3 = add nuw nsw i64 %indvars.iv1077.i, 4 ; 2 uses
  %niter270.next.3 = add i64 %niter270, 4         ; 2 uses
  %niter270.ncmp.3 = icmp eq i64 %niter270.next.3, %unroll_iter269
  br i1 %niter270.ncmp.3, label %._crit_edge877.us.i.unr-lcssa, label %.lr.ph876.us.i.new, !llvm.loop !46

._crit_edge877.us.i.unr-lcssa:                    ; preds = %.lr.ph876.us.i.new
  br i1 %lcmp.mod266.not, label %._crit_edge877.us.i, label %.epil.preheader263

.epil.preheader263:                               ; preds = %._crit_edge877.us.i.unr-lcssa, %.lr.ph876.us.i
  %indvars.iv1077.i.epil.init = phi i64 [ 0, %.lr.ph876.us.i ], [ %indvars.iv.next1078.i.3, %._crit_edge877.us.i.unr-lcssa ]
  %.3579873.us.i.epil.init = phi ptr [ %.2578881.us.i, %.lr.ph876.us.i ], [ %i.acz, %._crit_edge877.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader263
  %indvars.iv1077.i.epil = phi i64 [ %indvars.iv1077.i.epil.init, %.epil.preheader263 ], [ %indvars.iv.next1078.i.epil, %bb.ac ] ; 2 uses
  %.3579873.us.i.epil = phi ptr [ %.3579873.us.i.epil.init, %.epil.preheader263 ], [ %i.adg, %bb.ac ] ; 2 uses
  %epil.iter265 = phi i64 [ 0, %.epil.preheader263 ], [ %epil.iter265.next, %bb.ac ]
  %i.ada = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %indvars.iv1077.i.epil
  %i.adb = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.ada, <4 x i32> %i.qn, <4 x i32> splat (i32 -1), i8 1)
  %i.adc = bitcast <4 x i32> %i.adb to <16 x i8>
  %i.add = shufflevector <16 x i8> %i.adc, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ade = bitcast <16 x i8> %i.add to <4 x float>
  %i.adf = extractelement <4 x float> %i.ade, i64 0
  store float %i.adf, ptr %.3579873.us.i.epil, align 1, !tbaa !20
  %i.adg = getelementptr inbounds nuw i8, ptr %.3579873.us.i.epil, i64 4 ; 2 uses
  %indvars.iv.next1078.i.epil = add nuw nsw i64 %indvars.iv1077.i.epil, 1
  %epil.iter265.next = add i64 %epil.iter265, 1   ; 2 uses
  %epil.iter265.cmp.not = icmp eq i64 %epil.iter265.next, %xtraiter264
  br i1 %epil.iter265.cmp.not, label %._crit_edge877.us.i, label %bb.ac, !llvm.loop !47

._crit_edge877.us.i:                              ; preds = %bb.ac, %._crit_edge877.us.i.unr-lcssa
  %.lcssa229 = phi ptr [ %i.acz, %._crit_edge877.us.i.unr-lcssa ], [ %i.adg, %bb.ac ] ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.1585879.us.i, i64 %i.qp ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.1583880.us.i, i64 %i.qp ; 2 uses
  %i.adj = add nuw nsw i32 %.1574882.us.i, 2      ; 3 uses
  %i.adk = or disjoint i32 %i.adj, 1
  %i.adl = icmp slt i32 %i.adk, %2
  br i1 %i.adl, label %.lr.ph876.us.i, label %.preheader741.i, !llvm.loop !48

.preheader741.i:                                  ; preds = %._crit_edge877.us.i, %.preheader742.i
  %.1585.lcssa.i = phi ptr [ %.0584.lcssa.i, %.preheader742.i ], [ %i.adh, %._crit_edge877.us.i ] ; 9 uses
  %.1583.lcssa.i = phi ptr [ %.0582.lcssa.i, %.preheader742.i ], [ %i.adi, %._crit_edge877.us.i ] ; 9 uses
  %.2578.lcssa.i = phi ptr [ %.0576.lcssa.i, %.preheader742.i ], [ %.lcssa229, %._crit_edge877.us.i ]
  %.1574.lcssa.i = phi i32 [ %.0573.lcssa.i, %.preheader742.i ], [ %i.adj, %._crit_edge877.us.i ] ; 2 uses
  %i.adm = icmp sge i32 %.1574.lcssa.i, %2
  %brmerge948.i = or i1 %i.qq, %i.adm
  br i1 %brmerge948.i, label %._crit_edge899.split.i, label %.preheader740.i.preheader

.preheader740.i.preheader:                        ; preds = %.preheader741.i
  %scevgep119 = getelementptr i8, ptr %.1583.lcssa.i, i64 %wide.trip.count1073.i
  %scevgep120 = getelementptr i8, ptr %.1585.lcssa.i, i64 %wide.trip.count1073.i
  br label %iter.check

iter.check:                                       ; preds = %.preheader740.i.preheader, %._crit_edge895.i
  %.2575898.i = phi i32 [ %i.aef, %._crit_edge895.i ], [ %.1574.lcssa.i, %.preheader740.i.preheader ]
  %.4580897.i = phi ptr [ %.lcssa105, %._crit_edge895.i ], [ %.2578.lcssa.i, %.preheader740.i.preheader ] ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.4580897.i, i64 %i.qu ; 2 uses
  %bound0 = icmp ult ptr %.4580897.i, %scevgep119
  %bound1 = icmp ult ptr %.1583.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0121 = icmp ult ptr %.4580897.i, %scevgep120
  %bound1122 = icmp ult ptr %.1585.lcssa.i, %scevgep
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict, %found.conflict123
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adn = getelementptr i8, ptr %.4580897.i, i64 %i.qy ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ado = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.4580897.i, i64 %i.ado
  %i.adp = getelementptr inbounds nuw i8, ptr %.1585.lcssa.i, i64 %index
  %i.adq = getelementptr inbounds nuw i8, ptr %.1583.lcssa.i, i64 %index
  %wide.load = load <32 x i8>, ptr %i.adp, align 1, !tbaa !20, !alias.scope !49
  %wide.load125 = load <32 x i8>, ptr %i.adq, align 1, !tbaa !20, !alias.scope !52
  %interleaved.vec = shufflevector <32 x i8> %wide.load, <32 x i8> %wide.load125, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !20, !alias.scope !54, !noalias !56
end_hunk_1
