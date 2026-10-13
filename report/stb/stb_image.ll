Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__decode_jpeg_image:bb.a
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !64
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %.preheader35.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 13448
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %scevgep55 = getelementptr i8, ptr %0, i64 13576
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge38.split.i, %.lr.ph.i
  %i.ah = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.dl, %._crit_edge38.split.i ] ; 2 uses
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next43.i, %._crit_edge38.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv42.i ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !109
  %i.al = add nsw i32 %i.ak, 7
  %i.am = ashr i32 %i.al, 3                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !110
  %i.ap = add nsw i32 %i.ao, 7
  %i.aq = ashr i32 %i.ap, 3                       ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.preheader.lr.ph.i, label %._crit_edge38.split.i

.preheader.lr.ph.i:                               ; preds = %bb.m
  %i.as = icmp sgt i32 %i.am, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  br i1 %i.as, label %.preheader.preheader.i, label %._crit_edge38.split.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.am to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.03437.i = phi i32 [ %i.dk, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.ay = shl nuw nsw i32 %.03437.i, 3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %stbi__jpeg_dequantize.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %stbi__jpeg_dequantize.exit.i ] ; 3 uses
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !120 ; 2 uses
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !121
  %i.bb = mul nsw i32 %i.ba, %.03437.i
  %i.bc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bd = add nsw i32 %i.bb, %i.bc
  %i.be = shl nsw i32 %i.bd, 6
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bf ; 15 uses
  %i.bh = load i32, ptr %i.av, align 4, !tbaa !113
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [128 x i8], ptr %i.af, i64 %i.bi ; 13 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 128
  %i.bk = shl nsw i64 %i.bf, 1
  %scevgep54 = getelementptr i8, ptr %scevgep, i64 %i.bk
  %i.bl = shl nsw i64 %i.bi, 7
  %scevgep56 = getelementptr i8, ptr %scevgep55, i64 %i.bl
  %bound0 = icmp ult ptr %i.bg, %scevgep56
  %bound1 = icmp ult ptr %i.bj, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <8 x i16>, ptr %i.bj, align 2, !tbaa !74, !alias.scope !365
  %wide.load57 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !74, !alias.scope !365
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %wide.load58 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %wide.load59 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.bo = mul <8 x i16> %wide.load58, %wide.load
  %i.bp = mul <8 x i16> %wide.load59, %wide.load57
  store <8 x i16> %i.bo, ptr %i.bg, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  store <8 x i16> %i.bp, ptr %i.bn, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !74, !alias.scope !365
  %wide.load57.1 = load <8 x i16>, ptr %i.br, align 2, !tbaa !74, !alias.scope !365
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %wide.load58.1 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %wide.load59.1 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.bu = mul <8 x i16> %wide.load58.1, %wide.load.1
  %i.bv = mul <8 x i16> %wide.load59.1, %wide.load57.1
  store <8 x i16> %i.bu, ptr %i.bs, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  store <8 x i16> %i.bv, ptr %i.bt, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.bw, align 2, !tbaa !74, !alias.scope !365
  %wide.load57.2 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !74, !alias.scope !365
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 80 ; 2 uses
  %wide.load58.2 = load <8 x i16>, ptr %i.by, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %wide.load59.2 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.ca = mul <8 x i16> %wide.load58.2, %wide.load.2
  %i.cb = mul <8 x i16> %wide.load59.2, %wide.load57.2
  store <8 x i16> %i.ca, ptr %i.by, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  store <8 x i16> %i.cb, ptr %i.bz, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.cc, align 2, !tbaa !74, !alias.scope !365
  %wide.load57.3 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !74, !alias.scope !365
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 2 uses
  %wide.load58.3 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %wide.load59.3 = load <8 x i16>, ptr %i.cf, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  %i.cg = mul <8 x i16> %wide.load58.3, %wide.load.3
  %i.ch = mul <8 x i16> %wide.load59.3, %wide.load57.3
  store <8 x i16> %i.cg, ptr %i.ce, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  store <8 x i16> %i.ch, ptr %i.cf, align 2, !tbaa !74, !alias.scope !366, !noalias !365
  br label %stbi__jpeg_dequantize.exit.i

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !74
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.i.i ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !74
  %i.cm = mul i16 %i.cl, %i.cj
  store i16 %i.cm, ptr %i.ck, align 2, !tbaa !74
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !74
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !74
  %i.cr = mul i16 %i.cq, %i.co
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !74
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.1
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !74
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !74
  %i.cw = mul i16 %i.cv, %i.ct
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !74
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i.2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !74
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !74
  %i.db = mul i16 %i.da, %i.cy
  store i16 %i.db, ptr %i.cz, align 2, !tbaa !74
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 64
  br i1 %exitcond.not.i.i.3, label %stbi__jpeg_dequantize.exit.i, label %scalar.ph, !llvm.loop !364

stbi__jpeg_dequantize.exit.i:                     ; preds = %scalar.ph, %vector.body
  %i.dc = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.dd = load ptr, ptr %i.aw, align 8, !tbaa !114
  %i.de = load i32, ptr %i.ax, align 4, !tbaa !115 ; 2 uses
  %i.df = mul i32 %i.ay, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 %i.dg
  %i.di = shl nuw nsw i64 %indvars.iv.i, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  tail call void %i.dc(ptr noundef %i.dj, i32 noundef %i.de, ptr noundef nonnull %i.bg) #37, !inline_history !367
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vector.memcheck, !llvm.loop !6

._crit_edge.i:                                    ; preds = %stbi__jpeg_dequantize.exit.i
  %i.dk = add nuw nsw i32 %.03437.i, 1            ; 2 uses
  %exitcond41.not.i = icmp eq i32 %i.dk, %i.aq
  br i1 %exitcond41.not.i, label %._crit_edge38.split.loopexit.i, label %.preheader.i, !llvm.loop !7

._crit_edge38.split.loopexit.i:                   ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !78
  br label %._crit_edge38.split.i

._crit_edge38.split.i:                            ; preds = %._crit_edge38.split.loopexit.i, %.preheader.lr.ph.i, %bb.m
  %i.dl = phi ptr [ %.pre.i, %._crit_edge38.split.loopexit.i ], [ %i.ah, %.preheader.lr.ph.i ], [ %i.ah, %bb.m ] ; 2 uses
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !64
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next43.i, %i.do
  br i1 %i.dp, label %bb.m, label %.critedge, !llvm.loop !8

.critedge.sink.split:                             ; preds = %bb.j, %bb.i
  %.str.35.sink = phi ptr [ @.str.35, %bb.i ], [ @.str.36, %bb.j ]
  %i.dq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %.str.35.sink, ptr %i.dq, align 8, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.e, %bb.d, %._crit_edge38.split.i, %.critedge.sink.split, %.preheader35.i, %bb.l, %bb.a
  %.338 = phi i32 [ 1, %._crit_edge38.split.i ], [ 0, %bb.a ], [ 1, %bb.l ], [ 1, %.preheader35.i ], [ 0, %.critedge.sink.split ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.e ]
  ret i32 %.338
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @resample_row_1(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4) #0 {
bb.a:
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @stbi__resample_row_v_2(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #18 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.a, %i.c
  %diff.check11 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check11
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i32 %3, 16
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !37
  %i.i = zext <16 x i8> %wide.load to <16 x i16>
  %i.j = mul nuw nsw <16 x i16> %i.i, splat (i16 3)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load13 = load <16 x i8>, ptr %i.k, align 1, !tbaa !37
  %i.l = zext <16 x i8> %wide.load13 to <16 x i16>
  %i.m = add nuw nsw <16 x i16> %i.l, splat (i16 2)
  %i.n = add nuw nsw <16 x i16> %i.m, %i.j
  %i.o = lshr <16 x i16> %i.n, splat (i16 2)
  %i.p = trunc nuw <16 x i16> %i.o to <16 x i8>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.s, align 1, !tbaa !37
  %i.t = zext <4 x i8> %wide.load16 to <4 x i16>
  %i.u = mul nuw nsw <4 x i16> %i.t, splat (i16 3)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %index15
  %wide.load17 = load <4 x i8>, ptr %i.v, align 1, !tbaa !37
  %i.w = zext <4 x i8> %wide.load17 to <4 x i16>
  %i.x = add nuw nsw <4 x i16> %i.w, splat (i16 2)
  %i.y = add nuw nsw <4 x i16> %i.x, %i.u
  %i.z = lshr <4 x i16> %i.y, splat (i16 2)
  %i.aa = trunc nuw <4 x i16> %i.z to <4 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index15
  store <4 x i8> %i.aa, ptr %i.ab, align 1, !tbaa !37
  %index.next18 = add nuw i64 %index15, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next18, %n.vec14
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !369

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec14, %wide.trip.count
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.af = zext i8 %i.ae to i16
  %i.ag = mul nuw nsw i16 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = zext i8 %i.ai to i16
  %i.ak = add nuw nsw i16 %i.aj, 2
  %i.al = add nuw nsw i16 %i.ak, %i.ag
  %i.am = lshr i16 %i.al, 2
  %i.an = trunc nuw i16 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !37
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = add nsw i64 %wide.trip.count, -1
  %i.aq = icmp eq i64 %indvars.iv.ph, %i.ap
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = zext i8 %i.as to i16
  %i.au = mul nuw nsw i16 %i.at, 3
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = zext i8 %i.aw to i16
  %i.ay = add nuw nsw i16 %i.ax, 2
  %i.az = add nuw nsw i16 %i.ay, %i.au
  %i.ba = lshr i16 %i.az, 2
  %i.bb = trunc nuw i16 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = zext i8 %i.be to i16
  %i.bg = mul nuw nsw i16 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i16
  %i.bk = add nuw nsw i16 %i.bj, 2
  %i.bl = add nuw nsw i16 %i.bk, %i.bg
  %i.bm = lshr i16 %i.bl, 2
  %i.bn = trunc nuw i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !37
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !370

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @stbi__resample_row_h_2(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 2)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 %4) #18 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1, !tbaa !37      ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !37
  store i8 %i.b, ptr %0, align 1, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 %i.b, ptr %0, align 1, !tbaa !37
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %i.h = zext i8 %i.g to i16
  %i.i = add nuw nsw i16 %i.h, 2
  %i.j = add nuw nsw i16 %i.i, %i.e
  %i.k = lshr i16 %i.j, 2
  %i.l = trunc nuw i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !37
  %i.n = add i32 %3, -1                           ; 3 uses
  %i.o = icmp sgt i32 %3, 2
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.q = getelementptr i8, ptr %0, i64 2
  %i.r = shl nuw nsw i64 %wide.trip.count, 1
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = zext nneg i32 %3 to i64
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %bound0 = icmp ult ptr %i.q, %i.u
  %bound1 = icmp ult ptr %1, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %i.v = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.x, align 1, !tbaa !37, !alias.scope !376
  %i.y = zext <8 x i8> %wide.load to <8 x i32>
  %i.z = mul nuw nsw <8 x i32> %i.y, splat (i32 3)
  %i.aa = add nuw nsw <8 x i32> %i.z, splat (i32 2) ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 -1
  %wide.load44 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !37, !alias.scope !376
  %i.ac = zext <8 x i8> %wide.load44 to <8 x i32>
  %i.ad = add nuw nsw <8 x i32> %i.aa, %i.ac
  %i.ae = shl nuw nsw i64 %i.w, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
end_hunk_0
