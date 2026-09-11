Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclSize?download=true
inline.NumInlined: 559
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Scl_LibLookup:bb.a

bb.i:                                             ; preds = %.lr.ph240
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge241, label %.lr.ph240, !llvm.loop !220

._crit_edge241.loopexit.split.loop.exit:          ; preds = %.lr.ph240
  %i.s = trunc nuw nsw i64 %indvars.iv261 to i32
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %bb.i, %._crit_edge241.loopexit.split.loop.exit, %bb.h
  %.0154.lcssa = phi i32 [ 1, %bb.h ], [ %i.s, %._crit_edge241.loopexit.split.loop.exit ], [ %i.o, %bb.i ] ; 2 uses
  %i.t = add nsw i32 %.0154.lcssa, -1
  %i.u = zext nneg i32 %.0154.lcssa to i64        ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val222, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !65 ; 2 uses
  %i.x = sext i32 %i.t to i64                     ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.val222, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !65 ; 3 uses
  %i.aa = fcmp oeq float %i.w, %i.z
  br i1 %i.aa, label %.thread227, label %bb.j

bb.j:                                             ; preds = %._crit_edge241
  %i.ab = fsub float %1, %i.z
  %i.ac = fsub float %i.w, %i.z
  %i.ad = fdiv float %i.ab, %i.ac                 ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 44
  %.val176 = load i32, ptr %i.ae, align 4, !tbaa !46 ; 2 uses
  %i.af = icmp eq i32 %.val176, %.val211
  br i1 %i.af, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %0, i64 48
  %.val187 = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val187, i64 %i.x
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val187, i64 %i.u
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 4
  %.val204 = load i32, ptr %i.al, align 4, !tbaa !121
  %i.am = icmp slt i32 %.val204, 1
  br i1 %i.am, label %.thread227, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.ak, i64 4
  %.val203 = load i32, ptr %i.an, align 4, !tbaa !121
  %i.ao = icmp slt i32 %.val203, 1
  br i1 %i.ao, label %.thread227, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.ai, i64 8
  %.val221 = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  %.val220 = load ptr, ptr %i.aq, align 8, !tbaa !94
  %i.ar = load float, ptr %.val221, align 4, !tbaa !65 ; 2 uses
  %i.as = load float, ptr %.val220, align 4, !tbaa !65
  %i.at = fsub float %i.as, %i.ar
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.at, float %i.ar)
  br label %.thread227

bb.n:                                             ; preds = %bb.j
  %.not170 = icmp eq i32 %.val176, 1
  br i1 %.not170, label %bb.o, label %.thread227

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %0, i64 48
  %.val185 = load ptr, ptr %i.av, align 8, !tbaa !47
  %i.aw = load ptr, ptr %.val185, align 8, !tbaa !49 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val202 = load i32, ptr %i.ax, align 4, !tbaa !121
  %.not171 = icmp eq i32 %.val202, %.val211
  br i1 %.not171, label %bb.p, label %.thread227

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  %.val219 = load ptr, ptr %i.ay, align 8, !tbaa !94 ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.val219, i64 %i.x
  %i.ba = load float, ptr %i.az, align 4, !tbaa !65 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val219, i64 %i.u
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !65
  %i.bd = fsub float %i.bc, %i.ba
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.bd, float %i.ba)
  br label %.thread227

bb.q:                                             ; preds = %bb.b
  %i.bf = icmp sgt i32 %.val210, 1
  br i1 %i.bf, label %bb.r, label %.thread227

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %0, i64 32
  %.val218 = load ptr, ptr %i.bg, align 8, !tbaa !94 ; 3 uses
  %i.bh = add nsw i32 %.val210, -1                ; 2 uses
  %.not254 = icmp eq i32 %.val210, 2
  br i1 %.not254, label %._crit_edge248, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.r
  %wide.trip.count269 = zext nneg i32 %i.bh to i64
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.s
  %indvars.iv266 = phi i64 [ 1, %.lr.ph247.preheader ], [ %indvars.iv.next267, %bb.s ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val218, i64 %indvars.iv266
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !65
  %i.bk = fcmp ogt float %i.bj, %2
  br i1 %i.bk, label %._crit_edge248.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph247
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge248, label %.lr.ph247, !llvm.loop !221

._crit_edge248.loopexit.split.loop.exit:          ; preds = %.lr.ph247
  %i.bl = trunc nuw nsw i64 %indvars.iv266 to i32
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.s, %._crit_edge248.loopexit.split.loop.exit, %bb.r
  %.0.lcssa = phi i32 [ 1, %bb.r ], [ %i.bl, %._crit_edge248.loopexit.split.loop.exit ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bm = add nsw i32 %.0.lcssa, -1
  %i.bn = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val218, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !65 ; 2 uses
  %i.bq = sext i32 %i.bm to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.val218, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65 ; 3 uses
  %i.bt = fcmp oeq float %i.bp, %i.bs
  br i1 %i.bt, label %.thread227, label %bb.t

bb.t:                                             ; preds = %._crit_edge248
  %i.bu = fsub float %2, %i.bs
  %i.bv = fsub float %i.bp, %i.bs
  %i.bw = fdiv float %i.bu, %i.bv
  %i.bx = getelementptr i8, ptr %0, i64 44
  %.val174 = load i32, ptr %i.bx, align 4, !tbaa !46
  %.not168 = icmp eq i32 %.val174, 1
  br i1 %.not168, label %bb.u, label %.thread227

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr i8, ptr %0, i64 48
  %.val183 = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.bz = load ptr, ptr %.val183, align 8, !tbaa !49 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val197 = load i32, ptr %i.ca, align 4, !tbaa !121
  %.not169 = icmp eq i32 %.val197, %.val210
  br i1 %.not169, label %bb.v, label %.thread227

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr i8, ptr %i.bz, i64 8
  %.val217 = load ptr, ptr %i.cb, align 8, !tbaa !94 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %.val217, i64 %i.bq
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !65 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val217, i64 %i.bn
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !65
  %i.cg = fsub float %i.cf, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.cg, float %i.cd)
  br label %.thread227

.thread223:                                       ; preds = %bb.g
  %i.ci = getelementptr i8, ptr %0, i64 44
  %.val = load i32, ptr %i.ci, align 4, !tbaa !46
  %.not.not = icmp eq i32 %.val, %.val211
  br i1 %.not.not, label %bb.w, label %.thread227

bb.w:                                             ; preds = %.thread223
  %i.cj = getelementptr i8, ptr %0, i64 28
  %.val193 = load i32, ptr %i.cj, align 4, !tbaa !121 ; 3 uses
  %i.ck = icmp slt i32 %.val193, 2
  br i1 %i.ck, label %.thread227, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr i8, ptr %0, i64 16
  %.val216 = load ptr, ptr %i.cl, align 8, !tbaa !94 ; 3 uses
  %i.cm = add nsw i32 %.val211, -1                ; 2 uses
  %.not = icmp eq i32 %.val211, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %wide.trip.count = zext nneg i32 %i.cm to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !65
  %i.cp = fcmp ogt float %i.co, %1
  br i1 %i.cp, label %._crit_edge.loopexit.split.loop.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.cq = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %._crit_edge.loopexit.split.loop.exit, %bb.x
  %.1155.lcssa = phi i32 [ 1, %bb.x ], [ %i.cq, %._crit_edge.loopexit.split.loop.exit ], [ %i.cm, %bb.y ] ; 2 uses
  %i.cr = add nsw i32 %.1155.lcssa, -1
  %i.cs = getelementptr i8, ptr %0, i64 32
  %.val215 = load ptr, ptr %i.cs, align 8, !tbaa !94 ; 3 uses
  %3 = add nsw i32 %.val193, -1                   ; 2 uses
  %.not252 = icmp eq i32 %.val193, 2
  br i1 %.not252, label %._crit_edge234, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %._crit_edge
  %wide.trip.count259 = zext nneg i32 %3 to i64
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.preheader, %bb.z
  %indvars.iv256 = phi i64 [ 1, %.lr.ph233.preheader ], [ %indvars.iv.next257, %bb.z ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val215, i64 %indvars.iv256
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !65
  %i.cv = fcmp ogt float %i.cu, %2
  br i1 %i.cv, label %._crit_edge234.loopexit.split.loop.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph233
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %._crit_edge234, label %.lr.ph233, !llvm.loop !223

._crit_edge234.loopexit.split.loop.exit:          ; preds = %.lr.ph233
  %i.cw = trunc nuw nsw i64 %indvars.iv256 to i32
  br label %._crit_edge234

._crit_edge234:                                   ; preds = %bb.z, %._crit_edge234.loopexit.split.loop.exit, %._crit_edge
  %.1.lcssa = phi i32 [ 1, %._crit_edge ], [ %i.cw, %._crit_edge234.loopexit.split.loop.exit ], [ %3, %bb.z ] ; 4 uses
  %i.cx = zext nneg i32 %.1155.lcssa to i64       ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !65 ; 2 uses
  %i.da = sext i32 %i.cr to i64                   ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !65 ; 2 uses
  %i.dd = fcmp oeq float %i.cz, %i.dc
  br i1 %i.dd, label %.thread227, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge234
  %i.de = add nsw i32 %.1.lcssa, -1
  %i.df = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val215, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !65 ; 2 uses
  %i.di = sext i32 %i.de to i64                   ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %.val215, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !65 ; 2 uses
  %i.dl = fcmp oeq float %i.dh, %i.dk
  br i1 %i.dl, label %.thread227, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = insertelement <2 x float> poison, float %1, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %2, i64 1
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dk, i64 1 ; 2 uses
  %i.dq = fsub <2 x float> %i.dn, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dh, i64 1
  %i.dt = fsub <2 x float> %i.ds, %i.dp
  %i.du = fdiv <2 x float> %i.dq, %i.dt           ; 2 uses
  %i.dv = getelementptr i8, ptr %0, i64 48
  %.val181 = load ptr, ptr %i.dv, align 8, !tbaa !47 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %.val181, i64 %i.da
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !49 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 4
  %.val190 = load i32, ptr %i.dy, align 4, !tbaa !121
  %.not166 = icmp sgt i32 %.val190, %.1.lcssa
  br i1 %.not166, label %bb.ac, label %.thread227

bb.ac:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.val181, i64 %i.cx
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !49 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %.val189 = load i32, ptr %i.eb, align 4, !tbaa !121
  %.not167 = icmp sgt i32 %.val189, %.1.lcssa
  br i1 %.not167, label %bb.ad, label %.thread227

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr i8, ptr %i.dx, i64 8
  %.val214 = load ptr, ptr %i.ec, align 8, !tbaa !94 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val213 = load ptr, ptr %i.ed, align 8, !tbaa !94 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %.val214, i64 %i.di
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !65
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.val214, i64 %i.df
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !65
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val213, i64 %i.di
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !65
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val213, i64 %i.df
  %i.el = load float, ptr %i.ek, align 4, !tbaa !65
  %i.em = insertelement <2 x float> poison, float %i.el, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.eh, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ef, i64 1 ; 2 uses
  %i.eq = fsub <2 x float> %i.en, %i.ep
  %i.er = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.eq, <2 x float> %i.ep) ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %i.eu = extractelement <2 x float> %i.es, i64 1 ; 2 uses
  %i.ev = fsub float %i.et, %i.eu
  %i.ew = extractelement <2 x float> %i.du, i64 0
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ev, float %i.eu)
  br label %.thread227

.thread227:                                       ; preds = %bb.f, %bb.q, %bb.ab, %bb.ac, %._crit_edge234, %bb.aa, %bb.w, %.thread223, %bb.u, %bb.t, %._crit_edge248, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %._crit_edge241, %bb.e, %bb.c, %bb.d, %bb.ad, %bb.v, %bb.p
  %.2 = phi float [ %i.ex, %bb.ad ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %._crit_edge241 ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.n ], [ %i.be, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %._crit_edge248 ], [ 0.000000e+00, %bb.t ], [ %i.ch, %bb.v ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %.thread223 ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %._crit_edge234 ], [ %i.j, %bb.e ], [ 0.000000e+00, %bb.c ], [ %i.au, %bb.m ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.ac ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %bb.f ]
  ret float %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

declare ptr @Mio_GateReadOutName(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

declare i32 @Abc_NtkLevel(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare ptr @Extra_FileNameWithoutPath(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #24

declare ptr @Mio_GateReadTwin(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS7SC_Lib_", !16, i64 0}
!18 = !{!"p1 _ZTS10Abc_Ntk_t_", !16, i64 0}
!19 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!20 = !{!"p1 _ZTS12SC_WireLoad_", !16, i64 0}
!21 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!22 = !{!"p1 _ZTS8SC_Pair_", !16, i64 0}
!23 = !{!"p1 _ZTS10Vec_Que_t_", !16, i64 0}
!24 = !{!"p1 _ZTS8SC_Cell_", !16, i64 0}
!25 = !{!"float", !12, i64 0}
!26 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!27 = !{!"long", !12, i64 0}
!28 = !{!"SC_Man_", !17, i64 0, !18, i64 8, !13, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !20, i64 48, !21, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !21, i64 96, !21, i64 104, !23, i64 112, !24, i64 120, !21, i64 128, !21, i64 136, !21, i64 144, !21, i64 152, !25, i64 160, !25, i64 164, !25, i64 168, !13, i64 172, !23, i64 176, !21, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !26, i64 216, !19, i64 224, !13, i64 232, !25, i64 236, !25, i64 240, !25, i64 244, !25, i64 248, !25, i64 252, !25, i64 256, !27, i64 264, !27, i64 272, !27, i64 280, !27, i64 288, !27, i64 296, !16, i64 304}
!29 = !{!28, !18, i64 8}
!30 = !{!"p1 omnipotent char", !16, i64 0}
end_hunk_0
