Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_enc?download=true
inline.NumInlined: 86
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0_@TrellisQuantizeBlock:bb.a

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.cl, %bb.f ], [ null, %bb.e ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0194227, i64 8
  store ptr %.sink, ptr %i.cm, align 8, !tbaa !231
  %i.cn = icmp samesign ult i32 %i.bs, %spec.store.select1
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 36028797018963967, ptr %.0194227, align 8, !tbaa !230
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.co = mul nuw nsw i32 %spec.store.select1, %i.bd
  %i.cp = load i16, ptr %i.by, align 2, !tbaa !30
  %i.cq = zext i16 %i.cp to i32
  %add.neg = sub nsw i32 %i.co, %i.bz
  %i.cr = zext i16 %i.bc to i32
  %i.cs = mul nuw nsw i32 %spec.store.select1, %i.cr
  %.neg205 = mul i32 %add.neg, %i.cs
  %i.ct = mul nsw i32 %.neg205, %i.cq
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 8
  %i.cw = load ptr, ptr %i.ca, align 8, !tbaa !231
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.cg
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !30
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 67)
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !30
  %i.de = zext i16 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, %i.cz
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dg, %i.aj
  %i.di = add nsw i64 %i.dh, %i.ax                ; 2 uses
  %i.dj = load ptr, ptr %i.cc, align 8, !tbaa !231
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.db
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !30
  %i.dm = zext i16 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, %i.cz
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = load i64, ptr %i.cb, align 8, !tbaa !230
  %i.dq = mul nsw i64 %i.do, %i.aj
  %i.dr = add nsw i64 %i.dq, %i.dp                ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.di               ; 2 uses
  %spec.select207 = tail call i64 @llvm.smin.i64(i64 %i.dr, i64 %i.di)
  %spec.select208 = zext i1 %i.ds to i32
  %i.dt = add nsw i64 %spec.select207, %i.cv      ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.cd, ptr %i.du, align 1, !tbaa !233
  %i.dv = trunc nuw nsw i32 %spec.store.select1 to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !234
  %i.dx = zext i1 %i.ds to i8
  store i8 %i.dx, ptr %i.bt, align 8, !tbaa !235
  store i64 %i.dt, ptr %.0194227, align 8, !tbaa !230
  %.not206 = icmp ne i32 %i.bq, 0
  %i.dy = icmp slt i64 %i.dt, %.0190231
  %or.cond = select i1 %.not206, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dz = zext nneg i32 %i.ci to i64
  %i.ea = getelementptr inbounds nuw [11 x i8], ptr %i.cf, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !32
  %.pn.i213 = zext i8 %i.eb to i64
  %.in.in.i214 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i213
  %.in.i215 = load i16, ptr %.in.in.i214, align 2, !tbaa !30
  %i.ec = zext i16 %.in.i215 to i64
  %i.ed = mul nsw i64 %i.ec, %i.aj
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ee = phi i64 [ %i.ed, %bb.k ], [ 0, %bb.j ]
  %i.ef = add nsw i64 %i.ee, %i.dt                ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %.0190231
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.h
  %i.ei = phi i64 [ 36028797018963967, %bb.h ], [ %i.dt, %bb.i ], [ %i.dt, %bb.m ], [ %i.dt, %bb.l ]
  %.sroa.8.4 = phi i32 [ %.sroa.8.0228, %bb.h ], [ %.sroa.8.0228, %bb.i ], [ %spec.select208, %bb.m ], [ %.sroa.8.0228, %bb.l ] ; 3 uses
  %.sroa.6.4 = phi i32 [ %.sroa.6.0229, %bb.h ], [ %.sroa.6.0229, %bb.i ], [ 0, %bb.m ], [ %.sroa.6.0229, %bb.l ] ; 3 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.0230, %bb.h ], [ %.sroa.0.0230, %bb.i ], [ %i.eh, %bb.m ], [ %.sroa.0.0230, %bb.l ] ; 3 uses
  %.4 = phi i64 [ %.0190231, %bb.h ], [ %.0190231, %bb.i ], [ %i.ef, %bb.m ], [ %.0190231, %bb.l ] ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.ek = add nuw nsw i64 %i.cg, 1                ; 4 uses
  %i.el = add nuw nsw i32 %spec.store.select1, 1
  %i.em = trunc nuw nsw i64 %i.ek to i32          ; 2 uses
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 2) ; 2 uses
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !228
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sink264 = phi ptr [ %i.eq, %bb.o ], [ null, %bb.n ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0194227, i64 24
  store ptr %.sink264, ptr %i.er, align 8, !tbaa !231
  %.not = icmp samesign ult i32 %i.bq, %spec.store.select
  br i1 %.not, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.es = mul nuw nsw i64 %i.ek, %i.ch
  %i.et = mul nuw nsw i32 %i.el, %i.bd
  %i.eu = load i16, ptr %i.by, align 2, !tbaa !30
  %i.ev = zext i16 %i.eu to i32
  %add.neg.1 = sub nsw i32 %i.et, %i.bz
  %i.ew = trunc nuw nsw i64 %i.es to i32
  %.neg205.1 = mul i32 %add.neg.1, %i.ew
  %i.ex = mul nsw i32 %.neg205.1, %i.ev
  %i.ey = sext i32 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 8
  %i.fa = load ptr, ptr %i.ca, align 8, !tbaa !231
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.ek
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !30
  %i.fd = zext i16 %i.fc to i32                   ; 2 uses
  %i.fe = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32768) %i.em, i32 67)
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !30
  %i.fi = zext i16 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.fi, %i.fd
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = load i64, ptr %.0195226, align 8, !tbaa !230
  %i.fm = mul nsw i64 %i.fk, %i.aj
  %i.fn = add nsw i64 %i.fm, %i.fl                ; 2 uses
  %i.fo = load ptr, ptr %i.cc, align 8, !tbaa !231
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.ff
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !30
  %i.fr = zext i16 %i.fq to i32
  %i.fs = add nuw nsw i32 %i.fr, %i.fd
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = load i64, ptr %i.cb, align 8, !tbaa !230
  %i.fv = mul nsw i64 %i.ft, %i.aj
  %i.fw = add nsw i64 %i.fv, %i.fu                ; 2 uses
  %i.fx = icmp slt i64 %i.fw, %i.fn               ; 2 uses
  %spec.select207.1 = tail call i64 @llvm.smin.i64(i64 %i.fw, i64 %i.fn)
  %spec.select208.1 = zext i1 %i.fx to i32
  %i.fy = add nsw i64 %spec.select207.1, %i.ez    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bt, i64 5
  store i8 %i.cd, ptr %i.fz, align 1, !tbaa !233
  %i.ga = trunc nuw nsw i64 %i.ek to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !234
  %i.gc = zext i1 %i.fx to i8
  store i8 %i.gc, ptr %i.ej, align 4, !tbaa !235
  %i.gd = getelementptr inbounds nuw i8, ptr %.0194227, i64 16
  store i64 %i.fy, ptr %i.gd, align 8, !tbaa !230
  %i.ge = icmp slt i64 %i.fy, %.4
  br i1 %i.ge, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = zext nneg i32 %i.en to i64
  %i.gg = getelementptr inbounds nuw [11 x i8], ptr %i.cf, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !32
  %.pn.i213.1 = zext i8 %i.gh to i64
  %.in.in.i214.1 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i213.1
  %.in.i215.1 = load i16, ptr %.in.in.i214.1, align 2, !tbaa !30
  %i.gi = zext i16 %.in.i215.1 to i64
  %i.gj = mul nsw i64 %i.gi, %i.aj
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gk = phi i64 [ %i.gj, %bb.s ], [ 0, %bb.r ]
  %i.gl = add nsw i64 %i.gk, %i.fy                ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %.4
  br i1 %i.gm, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.go = getelementptr inbounds nuw i8, ptr %.0194227, i64 16
  store i64 36028797018963967, ptr %i.go, align 8, !tbaa !230
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.q
  %.sroa.8.4.1 = phi i32 [ %.sroa.8.4, %bb.v ], [ %.sroa.8.4, %bb.q ], [ %spec.select208.1, %bb.u ], [ %.sroa.8.4, %bb.t ] ; 2 uses
  %.sroa.6.4.1 = phi i32 [ %.sroa.6.4, %bb.v ], [ %.sroa.6.4, %bb.q ], [ 1, %bb.u ], [ %.sroa.6.4, %bb.t ] ; 2 uses
  %.sroa.0.4.1 = phi i32 [ %.sroa.0.4, %bb.v ], [ %.sroa.0.4, %bb.q ], [ %i.gn, %bb.u ], [ %.sroa.0.4, %bb.t ] ; 2 uses
  %.4.1 = phi i64 [ %.4, %bb.v ], [ %.4, %bb.q ], [ %i.gl, %bb.u ], [ %.4, %bb.t ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !226

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.gp = trunc nsw i32 %.sroa.8.4.1 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.sroa.8.0.lcssa = phi i8 [ -1, %.preheader ], [ %i.gp, %._crit_edge.loopexit ]
  %.sroa.6.0.lcssa = phi i32 [ -1, %.preheader ], [ %.sroa.6.4.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa = phi i32 [ -1, %.preheader ], [ %.sroa.0.4.1, %._crit_edge.loopexit ] ; 4 uses
  br i1 %i.f, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.gq, i8 0, i64 30, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.gr, i8 0, i64 30, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gs = icmp eq i32 %.sroa.0.0.lcssa, -1
  br i1 %i.gs, label %._crit_edge241, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gt = sext i32 %.sroa.0.0.lcssa to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %7, i64 %i.gt
  %i.gv = sext i32 %.sroa.6.0.lcssa to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gv
  store i8 %.sroa.8.0.lcssa, ptr %i.gw, align 4, !tbaa !235
  %.not203235 = icmp slt i32 %.sroa.0.0.lcssa, %i.g
  br i1 %.not203235, label %._crit_edge241, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %bb.aa
  %i.gx = zext nneg i32 %.sroa.0.0.lcssa to i64
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %.lr.ph240
  %indvars.iv249 = phi i64 [ %i.gx, %.lr.ph240.preheader ], [ %indvars.iv.next250, %.lr.ph240 ] ; 5 uses
  %.0238 = phi i32 [ %.sroa.6.0.lcssa, %.lr.ph240.preheader ], [ %i.hs, %.lr.ph240 ]
  %.0176237 = phi i32 [ 0, %.lr.ph240.preheader ], [ %i.hl, %.lr.ph240 ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv249
  %i.gz = sext i32 %.0238 to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %indvars.iv249
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !233
  %.not204 = icmp eq i8 %i.he, 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !234 ; 3 uses
  %i.hh = sub i16 0, %i.hg
  %i.hi = select i1 %.not204, i16 %i.hg, i16 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv249
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !30
  %i.hk = sext i16 %i.hg to i32
  %i.hl = or i32 %.0176237, %i.hk                 ; 2 uses
  %i.hm = zext i8 %i.hc to i64                    ; 2 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !30
  %i.hp = mul i16 %i.ho, %i.hi
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hm
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !30
  %i.hr = load i8, ptr %i.ha, align 4, !tbaa !235
  %i.hs = sext i8 %i.hr to i32
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, -1
  %i.ht = trunc nuw i64 %indvars.iv249 to i32
  %.not203.not = icmp sgt i32 %i.ht, %i.g
  br i1 %.not203.not, label %.lr.ph240, label %._crit_edge241.loopexit, !llvm.loop !227

._crit_edge241.loopexit:                          ; preds = %.lr.ph240
  %i.hu = icmp ne i32 %i.hl, 0
  %i.hv = zext i1 %i.hu to i32
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %bb.aa, %._crit_edge241.loopexit, %bb.z
  %.0177 = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ %i.hv, %._crit_edge241.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.0177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @VP8IteratorStartI4(ptr noundef) local_unnamed_addr #4

declare i32 @VP8GetCostLuma4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @VP8IteratorRotateI4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @VP8SetIntra4Mode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -65535) i32 @ReconstructUV(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef range(i32 -2147483648, 4) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x [16 x i16]], align 16        ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = sext i32 %3 to i64
  %i.g = getelementptr inbounds [2 x i8], ptr @VP8UVModeOffsets, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !30
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = load i8, ptr %i.o, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.q = load ptr, ptr @VP8FTransform2, align 8, !tbaa !52
  call void %i.q(ptr noundef nonnull %i.m, ptr noundef %i.j, ptr noundef nonnull %i.a) #11
  %i.r = load ptr, ptr @VP8FTransform2, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 5 uses
  call void %i.r(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u) #11
  %i.v = load ptr, ptr @VP8FTransform2, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 5 uses
  call void %i.v(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #11
  %i.z = load ptr, ptr @VP8FTransform2, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 5 uses
  call void %i.z(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.ae = lshr i8 %i.p, 5
  %i.af = and i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [744 x i8], ptr %i.ad, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 448 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.al = load i32, ptr %0, align 8, !tbaa !48, !alias.scope !264
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 576
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31, !alias.scope !267 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 480 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 512 ; 8 uses
  %i.au = load i8, ptr %i.an, align 1, !tbaa !32, !noalias !268
  %i.av = sext i8 %i.au to i16
  %i.aw = mul nsw i16 %i.av, 7
  %i.ax = load i8, ptr %i.ao, align 8, !tbaa !32, !alias.scope !264
  %i.ay = sext i8 %i.ax to i16
  %i.az = shl nsw i16 %i.ay, 3
  %i.ba = add nsw i16 %i.az, %i.aw
  %i.bb = ashr i16 %i.ba, 3
  %i.bc = load i16, ptr %i.a, align 16, !tbaa !30, !noalias !268
  %i.bd = add i16 %i.bb, %i.bc                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.be = icmp slt i16 %i.bd, 0                   ; 2 uses
  %i.bf = call i16 @llvm.abs.i16(i16 %i.bd, i1 false)
  %spec.select.i.i = zext i16 %i.bf to i32        ; 4 uses
  %i.bg = icmp slt i32 %i.aq, %spec.select.i.i
  br i1 %i.bg, label %bb.c, label %QuantizeSingle.exit.i

bb.c:                                             ; preds = %bb.b
  %i.bh = load i16, ptr %i.as, align 4, !tbaa !30, !alias.scope !267
  %i.bi = zext i16 %i.bh to i32
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !31, !alias.scope !267
  %i.bk = mul nuw nsw i32 %i.bi, %spec.select.i.i
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = lshr i32 %i.bl, 17
  %i.bn = load i16, ptr %i.ak, align 4, !tbaa !30, !alias.scope !267
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bm, %i.bo            ; 3 uses
  %i.bq = sub nsw i32 %spec.select.i.i, %i.bp
  %i.br = sub nsw i32 0, %i.bp
  %i.bs = select i1 %i.be, i32 %i.br, i32 %i.bp
  %i.bt = trunc i32 %i.bs to i16
  br label %QuantizeSingle.exit.i

QuantizeSingle.exit.i:                            ; preds = %bb.c, %bb.b
  %spec.select.sink26.i.i = phi i32 [ %i.bq, %bb.c ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  %.sink.i.i = phi i16 [ %i.bt, %bb.c ], [ 0, %bb.b ]
  %i.bu = sub nsw i32 0, %spec.select.sink26.i.i
  %i.bv = select i1 %i.be, i32 %i.bu, i32 %spec.select.sink26.i.i
  store i16 %.sink.i.i, ptr %i.a, align 16, !tbaa !30, !alias.scope !269, !noalias !268
  %.0.i.i = ashr i32 %i.bv, 1                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32, !noalias !268
  %i.by = sext i8 %i.bx to i32
  %i.bz = mul nsw i32 %i.by, 7
  %i.ca = lshr i32 %i.bz, 3
end_hunk_0
