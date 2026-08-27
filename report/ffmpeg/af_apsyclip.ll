Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_apsyclip?download=true
inline.NumInlined: 17
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@config_input:bb.a
  %wide.trip.count.i = zext nneg i32 %i.bi to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bi, 4
  %i.bn = sub i64 %i.bl, %i.bk
  %diff.check = icmp ugt i64 %i.bn, -16
  %or.cond129 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond129, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bo = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.bp = fmul nnan nsz <4 x double> %i.bo, splat (double f0x401921FB54442D18)
  %i.bq = fdiv nsz <4 x double> %i.bp, %broadcast.splat
  %i.br = fptrunc nsz <4 x double> %i.bq to <4 x float>
  %i.bs = tail call nsz <4 x float> @llvm.cos.v4f32(<4 x float> %i.br)
  %i.bt = fsub nsz <4 x float> splat (float 1.000000e+00), %i.bs
  %i.bu = fmul nsz <4 x float> %i.bt, splat (float 5.000000e-01) ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !58
  %i.bw = fcmp nsz ogt <4 x float> %i.bu, splat (float 1.000000e-01)
  %i.bx = fdiv nsz <4 x float> splat (float 1.000000e+00), %i.bu
  %i.by = select nsz <4 x i1> %i.bw, <4 x float> %i.bx, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index
  store <4 x float> %i.by, ptr %i.bz, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %generate_hann_window.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cc = uitofp nneg i32 %i.cb to double
  %i.cd = fmul nnan nsz double %i.cc, f0x401921FB54442D18
  %i.ce = fdiv nsz double %i.cd, %i.bm
  %i.cf = fptrunc nsz double %i.ce to float
  %i.cg = tail call nsz float @llvm.cos.f32(float %i.cf)
  %i.ch = fsub nsz float 1.000000e+00, %i.cg
  %i.ci = fmul nsz float %i.ch, 5.000000e-01      ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  store float %i.ci, ptr %i.cj, align 4, !tbaa !58
  %i.ck = fcmp nsz ogt float %i.ci, 1.000000e-01
  %i.cl = fdiv nsz float 1.000000e+00, %i.ci
  %i.cm = select nsz i1 %i.ck, float %i.cl, float 0.000000e+00
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  store float %i.cm, ptr %i.cn, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %generate_hann_window.exit, label %scalar.ph, !llvm.loop !75

generate_hann_window.exit:                        ; preds = %scalar.ph, %middle.block, %bb.h
  %i.co = sdiv i32 %i.bi, 2
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = tail call noalias ptr @av_calloc(i64 noundef %i.cq, i64 noundef 4) #9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !76
  %.not108 = icmp eq ptr %i.cr, null
  br i1 %.not108, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %generate_hann_window.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !62 ; 4 uses
  %.not.i = icmp ult i32 %i.cu, 65536             ; 2 uses
  %i.cv = lshr i32 %i.cu, 16
  %spec.select.i = select i1 %.not.i, i32 %i.cu, i32 %i.cv ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.cw = lshr i32 %spec.select.i, 8
  %i.cx = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.cw
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.cx
  %i.cy = zext nneg i32 %.110.i to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !77
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %.1.i, %i.db
  %i.dd = shl nuw nsw i32 %i.dc, 1                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !78
  %i.df = mul nsw i32 %i.dd, %i.cu
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call noalias ptr @av_calloc(i64 noundef %i.dg, i64 noundef 4) #9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !79
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !78
  %i.dk = shl nsw i32 %i.dj, 1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = tail call noalias ptr @av_calloc(i64 noundef %i.dl, i64 noundef 8) #9 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !80
  %.not110 = icmp eq ptr %i.dm, null
  br i1 %.not110, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = load i32, ptr %i.ct, align 8, !tbaa !62
  %i.dp = sext i32 %i.do to i64
  %i.dq = tail call noalias ptr @av_calloc(i64 noundef %i.dp, i64 noundef 4) #9 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !81
  %.not111 = icmp eq ptr %i.dq, null
  br i1 %.not111, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = load i32, ptr %i.f, align 8, !tbaa !60
  tail call fastcc void @set_margin_curve(ptr noundef nonnull %i.e, i32 noundef %i.ds)
  tail call fastcc void @generate_spread_table(ptr noundef nonnull %i.e)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 4 uses
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !20
  %i.dw = sext i32 %i.du to i64
  %i.dx = tail call noalias ptr @av_calloc(i64 noundef %i.dw, i64 noundef 8) #9
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 3 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !28
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.ea = sext i32 %i.dz to i64
  %i.eb = tail call noalias ptr @av_calloc(i64 noundef %i.ea, i64 noundef 8) #9 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !29
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !28
  %.not112 = icmp eq ptr %i.ed, null
  %.not113 = icmp eq ptr %i.eb, null
  %or.cond116 = select i1 %.not112, i1 true, i1 %.not113
  br i1 %or.cond116, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !20
  %.not114119 = icmp sgt i32 %i.ee, 0
  br i1 %.not114119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.ei = sext i32 %i.eh to i64
  %.not114 = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %.not114, label %bb.n, label %.loopexit, !llvm.loop !82

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ej = load ptr, ptr %i.dy, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load i32, ptr %i.l, align 4, !tbaa !61
  %i.em = call i32 @av_tx_init(ptr noundef %i.ek, ptr noundef nonnull %i.ef, i32 noundef 0, i32 noundef 0, i32 noundef %i.el, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = load i32, ptr %i.l, align 4, !tbaa !61
  %i.er = call i32 @av_tx_init(ptr noundef %i.ep, ptr noundef nonnull %i.eg, i32 noundef 0, i32 noundef 1, i32 noundef %i.eq, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %.loopexit, label %bb.m

.loopexit:                                        ; preds = %bb.o, %bb.n, %bb.m, %.preheader, %bb.l, %bb.k, %bb.j, %bb.i, %generate_hann_window.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a
  %.1 = phi i32 [ -12, %bb.l ], [ -12, %bb.c ], [ -12, %bb.k ], [ -12, %bb.j ], [ -12, %bb.i ], [ -12, %generate_hann_window.exit ], [ -12, %bb.b ], [ -12, %bb.a ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.e ], [ -12, %bb.d ], [ 0, %.preheader ], [ %i.er, %bb.o ], [ %i.em, %bb.n ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @set_margin_curve(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
.preheader2:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 14 uses
  store float 1.400000e+01, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61   ; 12 uses
  %i.e = sdiv i32 %i.d, 2                         ; 12 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %narrow = add nsw i32 %i.e, 1
  %i.g = sext i32 %narrow to i64                  ; 9 uses
  %.not493 = icmp slt i32 %i.d, -1
  br i1 %.not493, label %.critedge, label %.lr.ph

.lr.ph11.preheader:                               ; preds = %.critedge.8
  %i.h = sext i32 %.1.lcssa.8 to i64              ; 3 uses
  %i.i = sub i32 %i.e, %.1.lcssa.8                ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 7
  br i1 %min.iters.check, label %.lr.ph11.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph11.preheader
  %n.vec = and i64 %i.k, 8589934584               ; 3 uses
  %i.l = add nsw i64 %n.vec, %i.h
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float -1.000000e+01), ptr %gep, align 4, !tbaa !58
  store <4 x float> splat (float -1.000000e+01), ptr %i.m, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph11.preheader13

.lr.ph11.preheader13:                             ; preds = %.lr.ph11.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %i.h, %.lr.ph11.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph11

.lr.ph:                                           ; preds = %.preheader2, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.a ], [ 0, %.preheader2 ] ; 4 uses
  %i.o = trunc i64 %indvars.iv to i32
  %i.p = mul i32 %1, %i.o
  %i.q = sdiv i32 %i.p, %i.d
  %i.r = icmp slt i32 %i.q, 125
  br i1 %i.r, label %bb.a, label %.critedge.loopexit.split.loop.exit

bb.a:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float 1.400000e+01, ptr %i.s, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !84

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.t = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit.split.loop.exit, %.preheader2
  %.1.lcssa = phi i32 [ 0, %.preheader2 ], [ %i.t, %.critedge.loopexit.split.loop.exit ] ; 3 uses
  %.not493.1 = icmp sgt i32 %.1.lcssa, %i.e
  br i1 %.not493.1, label %.critedge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge
  %i.u = sext i32 %.1.lcssa to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %i.u, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.v = trunc i64 %indvars.iv.1 to i32
  %i.w = mul i32 %1, %i.v
  %i.x = sdiv i32 %i.w, %i.d                      ; 2 uses
  %i.y = icmp slt i32 %i.x, 250
  br i1 %i.y, label %bb.c, label %.critedge.1.loopexit

bb.c:                                             ; preds = %bb.b
  %i.z = shl i32 %i.x, 1
  %i.aa = add i32 %i.z, -250
  %i.ab = sdiv i32 %i.aa, 125
  %i.ac = add nsw i32 %i.ab, 14
  %i.ad = sitofp nsz i32 %i.ac to float
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.1
  store float %i.ad, ptr %i.ae, align 4, !tbaa !58
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.g
  br i1 %exitcond.not.1, label %.preheader, label %bb.b, !llvm.loop !84

.critedge.1.loopexit:                             ; preds = %bb.b
  %2 = trunc nsw i64 %indvars.iv.1 to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge.1.loopexit, %.critedge
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.critedge ], [ %2, %.critedge.1.loopexit ] ; 3 uses
  %.not493.2 = icmp sgt i32 %.1.lcssa.1, %i.e
  br i1 %.not493.2, label %.critedge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.1
  %i.af = sext i32 %.1.lcssa.1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ %i.af, %.lr.ph.2 ], [ %indvars.iv.next.2, %bb.e ] ; 4 uses
  %i.ag = trunc i64 %indvars.iv.2 to i32
  %i.ah = mul i32 %1, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.d                    ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 500
  br i1 %i.aj, label %bb.e, label %.critedge.2.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = shl i32 %i.ai, 1
  %i.al = add i32 %i.ak, -500
  %i.am = sdiv i32 %i.al, 250
  %i.an = add nsw i32 %i.am, 16
  %i.ao = sitofp nsz i32 %i.an to float
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.2
  store float %i.ao, ptr %i.ap, align 4, !tbaa !58
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, %i.g
  br i1 %exitcond.not.2, label %.preheader, label %bb.d, !llvm.loop !84

.critedge.2.loopexit:                             ; preds = %bb.d
  %3 = trunc nsw i64 %indvars.iv.2 to i32
  br label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.2.loopexit, %.critedge.1
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %3, %.critedge.2.loopexit ] ; 3 uses
  %.not493.3 = icmp sgt i32 %.1.lcssa.2, %i.e
  br i1 %.not493.3, label %.critedge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.2
  %i.aq = sext i32 %.1.lcssa.2 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.3
  %indvars.iv.3 = phi i64 [ %i.aq, %.lr.ph.3 ], [ %indvars.iv.next.3, %bb.g ] ; 4 uses
  %i.ar = trunc i64 %indvars.iv.3 to i32
  %i.as = mul i32 %1, %i.ar
  %i.at = sdiv i32 %i.as, %i.d                    ; 2 uses
  %i.au = icmp slt i32 %i.at, 1000
  br i1 %i.au, label %bb.g, label %.critedge.3.loopexit

bb.g:                                             ; preds = %bb.f
  %i.av = shl i32 %i.at, 1
  %i.aw = add i32 %i.av, -1000
  %i.ax = sdiv i32 %i.aw, 500
  %i.ay = add nsw i32 %i.ax, 18
  %i.az = sitofp nsz i32 %i.ay to float
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.3
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.g
  br i1 %exitcond.not.3, label %.preheader, label %bb.f, !llvm.loop !84

.critedge.3.loopexit:                             ; preds = %bb.f
  %4 = trunc nsw i64 %indvars.iv.3 to i32
  br label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.3.loopexit, %.critedge.2
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.critedge.2 ], [ %4, %.critedge.3.loopexit ] ; 3 uses
  %.not493.4 = icmp sgt i32 %.1.lcssa.3, %i.e
  br i1 %.not493.4, label %.critedge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.3
  %i.bb = sext i32 %.1.lcssa.3 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.4
  %indvars.iv.4 = phi i64 [ %i.bb, %.lr.ph.4 ], [ %indvars.iv.next.4, %bb.i ] ; 4 uses
  %i.bc = trunc i64 %indvars.iv.4 to i32
  %i.bd = mul i32 %1, %i.bc
  %i.be = sdiv i32 %i.bd, %i.d
  %i.bf = icmp slt i32 %i.be, 2000
  br i1 %i.bf, label %bb.i, label %.critedge.4.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.4
  store float 2.000000e+01, ptr %i.bg, align 4, !tbaa !58
  %indvars.iv.next.4 = add nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, %i.g
  br i1 %exitcond.not.4, label %.preheader, label %bb.h, !llvm.loop !84

.critedge.4.loopexit:                             ; preds = %bb.h
  %5 = trunc nsw i64 %indvars.iv.4 to i32
  br label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.4.loopexit, %.critedge.3
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.critedge.3 ], [ %5, %.critedge.4.loopexit ] ; 3 uses
  %.not493.5 = icmp sgt i32 %.1.lcssa.4, %i.e
  br i1 %.not493.5, label %.critedge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.4
  %i.bh = sext i32 %.1.lcssa.4 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.5
  %indvars.iv.5 = phi i64 [ %i.bh, %.lr.ph.5 ], [ %indvars.iv.next.5, %bb.k ] ; 4 uses
  %i.bi = trunc i64 %indvars.iv.5 to i32
  %i.bj = mul i32 %1, %i.bi
  %i.bk = sdiv i32 %i.bj, %i.d
  %i.bl = icmp slt i32 %i.bk, 4000
  br i1 %i.bl, label %bb.k, label %.critedge.5.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.5
  store float 2.000000e+01, ptr %i.bm, align 4, !tbaa !58
  %indvars.iv.next.5 = add nsw i64 %indvars.iv.5, 1 ; 2 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, %i.g
  br i1 %exitcond.not.5, label %.preheader, label %bb.j, !llvm.loop !84

.critedge.5.loopexit:                             ; preds = %bb.j
  %6 = trunc nsw i64 %indvars.iv.5 to i32
  br label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.5.loopexit, %.critedge.4
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %.critedge.4 ], [ %6, %.critedge.5.loopexit ] ; 3 uses
  %.not493.6 = icmp sgt i32 %.1.lcssa.5, %i.e
  br i1 %.not493.6, label %.critedge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.5
  %i.bn = sext i32 %.1.lcssa.5 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.6
  %indvars.iv.6 = phi i64 [ %i.bn, %.lr.ph.6 ], [ %indvars.iv.next.6, %bb.m ] ; 4 uses
  %i.bo = trunc i64 %indvars.iv.6 to i32
  %i.bp = mul i32 %1, %i.bo
  %i.bq = sdiv i32 %i.bp, %i.d                    ; 2 uses
  %i.br = icmp slt i32 %i.bq, 8000
  br i1 %i.br, label %bb.m, label %.critedge.6.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bs = mul i32 %i.bq, -3
  %i.bt = add i32 %i.bs, 12000
  %i.bu = sdiv i32 %i.bt, 4000
  %i.bv = add nsw i32 %i.bu, 20
  %7 = uitofp nneg i32 %i.bv to float
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.6
  store float %7, ptr %i.bw, align 4, !tbaa !58
  %indvars.iv.next.6 = add nsw i64 %indvars.iv.6, 1 ; 2 uses
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next.6, %i.g
  br i1 %exitcond.not.6, label %.preheader, label %bb.l, !llvm.loop !84

.critedge.6.loopexit:                             ; preds = %bb.l
  %8 = trunc nsw i64 %indvars.iv.6 to i32
  br label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.6.loopexit, %.critedge.5
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %.critedge.5 ], [ %8, %.critedge.6.loopexit ] ; 3 uses
  %.not493.7 = icmp sgt i32 %.1.lcssa.6, %i.e
  br i1 %.not493.7, label %.critedge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.critedge.6
  %i.bx = sext i32 %.1.lcssa.6 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.7
  %indvars.iv.7 = phi i64 [ %i.bx, %.lr.ph.7 ], [ %indvars.iv.next.7, %bb.o ] ; 4 uses
  %i.by = trunc i64 %indvars.iv.7 to i32
  %i.bz = mul i32 %1, %i.by
  %i.ca = sdiv i32 %i.bz, %i.d                    ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 16000
  br i1 %i.cb, label %bb.o, label %.critedge.7.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cc = mul i32 %i.ca, -3
  %i.cd = add i32 %i.cc, 24000
  %i.ce = sdiv i32 %i.cd, 8000
  %i.cf = add nsw i32 %i.ce, 17
  %9 = uitofp nneg i32 %i.cf to float
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.7
  store float %9, ptr %i.cg, align 4, !tbaa !58
  %indvars.iv.next.7 = add nsw i64 %indvars.iv.7, 1 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %i.g
  br i1 %exitcond.not.7, label %.preheader, label %bb.n, !llvm.loop !84

.critedge.7.loopexit:                             ; preds = %bb.n
  %10 = trunc nsw i64 %indvars.iv.7 to i32
  br label %.critedge.7

.critedge.7:                                      ; preds = %.critedge.7.loopexit, %.critedge.6
  %.1.lcssa.7 = phi i32 [ %.1.lcssa.6, %.critedge.6 ], [ %10, %.critedge.7.loopexit ] ; 3 uses
  %.not493.8 = icmp sgt i32 %.1.lcssa.7, %i.e
  br i1 %.not493.8, label %.critedge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.critedge.7
  %i.ch = sext i32 %.1.lcssa.7 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.8
  %indvars.iv.8 = phi i64 [ %i.ch, %.lr.ph.8 ], [ %indvars.iv.next.8, %bb.q ] ; 4 uses
  %i.ci = trunc i64 %indvars.iv.8 to i32
  %i.cj = mul i32 %1, %i.ci
  %i.ck = sdiv i32 %i.cj, %i.d                    ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 20000
  br i1 %i.cl, label %bb.q, label %.critedge.8.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cm = mul i32 %i.ck, -24
  %i.cn = add i32 %i.cm, 384000
  %i.co = sdiv i32 %i.cn, 4000
  %i.cp = add nsw i32 %i.co, 14
  %i.cq = sitofp nsz i32 %i.cp to float
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.8
  store float %i.cq, ptr %i.cr, align 4, !tbaa !58
  %indvars.iv.next.8 = add nsw i64 %indvars.iv.8, 1 ; 2 uses
  %exitcond.not.8 = icmp eq i64 %indvars.iv.next.8, %i.g
  br i1 %exitcond.not.8, label %.preheader, label %bb.p, !llvm.loop !84

.critedge.8.loopexit:                             ; preds = %bb.p
  %11 = trunc nsw i64 %indvars.iv.8 to i32
  br label %.critedge.8

.critedge.8:                                      ; preds = %.critedge.8.loopexit, %.critedge.7
  %.1.lcssa.8 = phi i32 [ %.1.lcssa.7, %.critedge.7 ], [ %11, %.critedge.8.loopexit ] ; 3 uses
  %.not9 = icmp sgt i32 %.1.lcssa.8, %i.e
  br i1 %.not9, label %.preheader, label %.lr.ph11.preheader

.preheader:                                       ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %.lr.ph11, %middle.block, %.critedge.8
  %.not4813 = icmp slt i32 %i.d, -1
  br i1 %.not4813, label %._crit_edge, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %i.f to i64         ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.f, 4
  br i1 %min.iters.check3, label %.lr.ph15.preheader12, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph15.preheader
  %n.vec5 = and i64 %wide.trip.count, 4294967292  ; 3 uses
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph4
  %index7 = phi i64 [ 0, %vector.ph4 ], [ %index.next8, %vector.body6 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index7 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cs, align 4, !tbaa !58
  %i.ct = fdiv nsz <4 x float> %wide.load, splat (float 2.000000e+01)
  %i.cu = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> splat (float 1.000000e+01), <4 x float> %i.ct)
  store <4 x float> %i.cu, ptr %i.cs, align 4, !tbaa !58
  %index.next8 = add nuw i64 %index7, 4           ; 2 uses
  %i.cv = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.cv, label %middle.block9, label %vector.body6, !llvm.loop !85

middle.block9:                                    ; preds = %vector.body6
  %cmp.n10 = icmp eq i64 %n.vec5, %wide.trip.count
  br i1 %cmp.n10, label %._crit_edge, label %.lr.ph15.preheader12

.lr.ph15.preheader12:                             ; preds = %.lr.ph15.preheader, %middle.block9
  %indvars.iv26.ph = phi i64 [ 0, %.lr.ph15.preheader ], [ %n.vec5, %middle.block9 ]
  br label %.lr.ph15

.lr.ph11:                                         ; preds = %.lr.ph11.preheader13, %.lr.ph11
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph11 ], [ %indvars.iv22.ph, %.lr.ph11.preheader13 ] ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv22
  store float -1.000000e+01, ptr %i.cw, align 4, !tbaa !58
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next23 to i32
  %exitcond25.not = icmp eq i32 %i.f, %lftr.wideiv
  br i1 %exitcond25.not, label %.preheader, label %.lr.ph11, !llvm.loop !86

.lr.ph15:                                         ; preds = %.lr.ph15.preheader12, %.lr.ph15
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %.lr.ph15 ], [ %indvars.iv26.ph, %.lr.ph15.preheader12 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv26 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !58
  %i.cz = fdiv nsz float %i.cy, 2.000000e+01
  %i.da = tail call nsz float @llvm.pow.f32(float 1.000000e+01, float %i.cz)
  store float %i.da, ptr %i.cx, align 4, !tbaa !58
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count
  br i1 %exitcond29.not, label %._crit_edge, label %.lr.ph15, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph15, %middle.block9, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @generate_spread_table(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge86
  %indvars.iv105 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next106, %._crit_edge86 ] ; 3 uses
  %i.h = phi i32 [ %i.b, %.lr.ph92 ], [ %i.cn, %._crit_edge86 ] ; 4 uses
  %.070.neg90 = phi i32 [ 0, %.lr.ph92 ], [ %.070.neg, %._crit_edge86 ] ; 3 uses
  %.06989 = phi i32 [ 1, %.lr.ph92 ], [ %.2, %._crit_edge86 ] ; 2 uses
  %.07088 = phi i32 [ 0, %.lr.ph92 ], [ %.067, %._crit_edge86 ] ; 12 uses
  %i.i = trunc i64 %indvars.iv105 to i32          ; 3 uses
  %i.j = mul i32 %i.h, %i.i                       ; 3 uses
  %i.k = mul nsw i32 %.07088, 3
  %i.l = sdiv i32 %i.k, 4                         ; 6 uses
  %i.m = add nsw i32 %.07088, 1                   ; 2 uses
  %i.n = shl nsw i32 %i.m, 2
  %i.o = or disjoint i32 %i.n, 2
  %i.p = sdiv i32 %i.o, 3
  %. = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.p) ; 4 uses
  %i.q = icmp slt i32 %i.l, %.
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %invariant.op = add i32 %.070.neg90, %i.j
  %i.r = sitofp nsz i32 %.07088 to float
  %i.s = fadd nsz float %i.r, 5.000000e-01
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.u = sdiv i32 %i.h, 2
  %.reass = add i32 %i.u, %invariant.op
  %i.v = sext i32 %i.l to i64                     ; 3 uses
  %i.w = sext i32 %.07088 to i64
  %wide.trip.count = sext i32 %. to i64           ; 5 uses
  br label %bb.c

.lr.ph82:                                         ; preds = %bb.c
  %invariant.op79 = add i32 %.070.neg90, %i.j
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !79   ; 4 uses
  %i.y = sdiv i32 %i.h, 2                         ; 2 uses
  %.reass80 = add i32 %i.y, %invariant.op79       ; 4 uses
  %i.z = sext i32 %i.l to i64                     ; 3 uses
  %wide.trip.count98 = sext i32 %. to i64
  %i.aa = sub nsw i64 %wide.trip.count, %i.v      ; 3 uses
  %min.iters.check114 = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph82
  %i.ab = xor i64 %i.v, -1
  %i.ac = add nsw i64 %i.ab, %wide.trip.count     ; 2 uses
  %i.ad = add i32 %.070.neg90, %i.y
  %i.ae = add i32 %i.ad, %i.l
  %i.af = add i32 %i.ae, %i.j                     ; 2 uses
  %i.ag = trunc i64 %i.ac to i32
  %i.ah = add i32 %i.af, %i.ag
  %i.ai = icmp slt i32 %i.ah, %i.af
  %i.aj = icmp ugt i64 %i.ac, 4294967295
  %i.ak = or i1 %i.ai, %i.aj
  br i1 %i.ak, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.scevcheck
  %n.vec116 = and i64 %i.aa, -4                   ; 3 uses
  %i.al = add nsw i64 %n.vec116, %i.z
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.bi, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.op125 = add i32 %i.l, %.reass80
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph115
  %index120 = phi i64 [ 0, %vector.ph115 ], [ %index.next121, %vector.body119 ] ; 2 uses
  %i.am = trunc i64 %index120 to i32
  %.reass126 = add i32 %i.am, %invariant.op125
  %i.an = sext i32 %.reass126 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.an ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ao, align 4, !tbaa !58
  %i.ap = fdiv nsz <4 x float> %wide.load, %broadcast.splat118
  store <4 x float> %i.ap, ptr %i.ao, align 4, !tbaa !58
  %index.next121 = add nuw i64 %index120, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.aq, label %middle.block122, label %vector.body119, !llvm.loop !88

middle.block122:                                  ; preds = %vector.body119
  %cmp.n123 = icmp eq i64 %i.aa, %n.vec116
  br i1 %cmp.n123, label %._crit_edge, label %scalar.ph113.preheader

scalar.ph113.preheader:                           ; preds = %vector.scevcheck, %.lr.ph82, %middle.block122
  %indvars.iv95.ph = phi i64 [ %i.z, %vector.scevcheck ], [ %i.z, %.lr.ph82 ], [ %i.al, %middle.block122 ] ; 5 uses
  %i.ar = sub nsw i64 %wide.trip.count, %indvars.iv95.ph
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph113.prol.loopexit, label %scalar.ph113.prol

scalar.ph113.prol:                                ; preds = %scalar.ph113.preheader
  %i.as = trunc nsw i64 %indvars.iv95.ph to i32
  %i.at = add i32 %.reass80, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !58
  %i.ax = fdiv nsz float %i.aw, %i.bi
  store float %i.ax, ptr %i.av, align 4, !tbaa !58
  %indvars.iv.next96.prol = add nsw i64 %indvars.iv95.ph, 1
  br label %scalar.ph113.prol.loopexit

scalar.ph113.prol.loopexit:                       ; preds = %scalar.ph113.prol, %scalar.ph113.preheader
  %indvars.iv95.unr = phi i64 [ %indvars.iv95.ph, %scalar.ph113.preheader ], [ %indvars.iv.next96.prol, %scalar.ph113.prol ]
  %i.ay = add nsw i64 %wide.trip.count, -1
  %i.az = icmp eq i64 %indvars.iv95.ph, %i.ay
  br i1 %i.az, label %._crit_edge, label %scalar.ph113.preheader.new

scalar.ph113.preheader.new:                       ; preds = %scalar.ph113.prol.loopexit
  %invariant.op127 = add i32 1, %.reass80
  br label %scalar.ph113

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.v, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.06877 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bi, %bb.c ]
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bb = sitofp nsz i32 %i.ba to float
  %i.bc = fadd nsz float %i.bb, 5.000000e-01
  %i.bd = fdiv nsz float %i.bc, %i.s
  %i.be = tail call nsz float @llvm.log.f32(float %i.bd)
  %i.bf = tail call nsz float @llvm.fabs.f32(float %i.be)
  %.not = icmp slt i64 %indvars.iv, %i.w
  %.112 = select i1 %.not, float -8.000000e+01, float -4.000000e+01
  %i.bg = fmul nsz float %i.bf, %.112
  %i.bh = tail call nsz float @llvm.exp.f32(float %i.bg) ; 2 uses
  %i.bi = fadd nsz float %.06877, %i.bh           ; 5 uses
  %i.bj = add i32 %.reass, %i.ba
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bk
  store float %i.bh, ptr %i.bl, align 4, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph82, label %bb.c, !llvm.loop !89

._crit_edge:                                      ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113, %middle.block122, %bb.b
end_hunk_0
