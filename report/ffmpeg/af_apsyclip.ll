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
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !50
  %i.bw = fcmp nsz ogt <4 x float> %i.bu, splat (float 1.000000e-01)
  %i.bx = fdiv nsz <4 x float> splat (float 1.000000e+00), %i.bu
  %i.by = select nsz <4 x i1> %i.bw, <4 x float> %i.bx, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index
  store <4 x float> %i.by, ptr %i.bz, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %generate_hann_window.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cc = uitofp nsz nneg i32 %i.cb to double
  %i.cd = fmul nnan nsz double %i.cc, f0x401921FB54442D18
  %i.ce = fdiv nsz double %i.cd, %i.bm
  %i.cf = fptrunc nsz double %i.ce to float
  %i.cg = tail call nsz float @llvm.cos.f32(float %i.cf)
  %i.ch = fsub nsz float 1.000000e+00, %i.cg
  %i.ci = fmul nsz float %i.ch, 5.000000e-01      ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  store float %i.ci, ptr %i.cj, align 4, !tbaa !50
  %i.ck = fcmp nsz ogt float %i.ci, 1.000000e-01
  %i.cl = fdiv nsz float 1.000000e+00, %i.ci
  %i.cm = select nsz i1 %i.ck, float %i.cl, float 0.000000e+00
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  store float %i.cm, ptr %i.cn, align 4, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %generate_hann_window.exit, label %scalar.ph, !llvm.loop !78

generate_hann_window.exit:                        ; preds = %scalar.ph, %middle.block, %bb.h
  %i.co = sdiv i32 %i.bi, 2
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = tail call noalias ptr @av_calloc(i64 noundef %i.cq, i64 noundef 4) #9 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !64
  %.not108 = icmp eq ptr %i.cr, null
  br i1 %.not108, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %generate_hann_window.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !52 ; 4 uses
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
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !81
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %.1.i, %i.db
  %i.dd = shl nuw nsw i32 %i.dc, 1                ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !82
  %i.df = mul nsw i32 %i.dd, %i.cu
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call noalias ptr @av_calloc(i64 noundef %i.dg, i64 noundef 4) #9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !65
  %.not109 = icmp eq ptr %i.dh, null
  br i1 %.not109, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !82
  %i.dk = shl nsw i32 %i.dj, 1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = tail call noalias ptr @av_calloc(i64 noundef %i.dl, i64 noundef 8) #9 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !66
  %.not110 = icmp eq ptr %i.dm, null
  br i1 %.not110, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = load i32, ptr %i.ct, align 8, !tbaa !52
  %i.dp = sext i32 %i.do to i64
  %i.dq = tail call noalias ptr @av_calloc(i64 noundef %i.dp, i64 noundef 4) #9 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !67
  %.not111 = icmp eq ptr %i.dq, null
  br i1 %.not111, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = load i32, ptr %i.f, align 8, !tbaa !80
  tail call fastcc void @set_margin_curve(ptr noundef nonnull %i.e, i32 noundef %i.ds)
  tail call fastcc void @generate_spread_table(ptr noundef nonnull %i.e)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !42 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 4 uses
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !27
  %i.dw = sext i32 %i.du to i64
  %i.dx = tail call noalias ptr @av_calloc(i64 noundef %i.dw, i64 noundef 8) #9
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 3 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !28
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !27
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
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !27
  %.not114119 = icmp sgt i32 %i.ee, 0
  br i1 %.not114119, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.dv, align 4, !tbaa !27
  %i.ei = sext i32 %i.eh to i64
  %.not114 = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %.not114, label %bb.n, label %.loopexit, !llvm.loop !79

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ej = load ptr, ptr %i.dy, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load i32, ptr %i.l, align 4, !tbaa !51
  %i.em = call i32 @av_tx_init(ptr noundef %i.ek, ptr noundef nonnull %i.ef, i32 noundef 0, i32 noundef 0, i32 noundef %i.el, ptr noundef nonnull %i.a, i64 noundef 0) #9 ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !29
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  %i.eq = load i32, ptr %i.l, align 4, !tbaa !51
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 14 uses
  store float 1.400000e+01, ptr %i.b, align 4, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51   ; 12 uses
  %i.e = sdiv i32 %i.d, 2                         ; 12 uses
  %2 = add nsw i32 %i.e, 1                        ; 3 uses
  %i.f = add nsw i32 %i.e, 1
  %3 = sext i32 %i.f to i64                       ; 9 uses
  %.not493 = icmp slt i32 %i.d, -1
  br i1 %.not493, label %.critedge, label %.lr.ph

.lr.ph11.preheader:                               ; preds = %.critedge.8
  %i.g = sext i32 %.1.lcssa.8 to i64              ; 3 uses
  %i.h = sub i32 %i.e, %.1.lcssa.8                ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 7
  br i1 %min.iters.check, label %.lr.ph11.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph11.preheader
  %n.vec = and i64 %i.j, 8589934584               ; 3 uses
  %i.k = add nsw i64 %n.vec, %i.g
  %invariant.gep = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> splat (float -1.000000e+01), ptr %gep, align 4, !tbaa !50
  store <4 x float> splat (float -1.000000e+01), ptr %i.l, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph11.preheader30

.lr.ph11.preheader30:                             ; preds = %.lr.ph11.preheader, %middle.block
  %indvars.iv21.ph = phi i64 [ %i.g, %.lr.ph11.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph11

.lr.ph:                                           ; preds = %.preheader2, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.a ], [ 0, %.preheader2 ] ; 4 uses
  %i.n = trunc i64 %indvars.iv to i32
  %i.o = mul i32 %1, %i.n
  %i.p = sdiv i32 %i.o, %i.d
  %i.q = icmp slt i32 %i.p, 125
  br i1 %i.q, label %bb.a, label %.critedge.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float 1.400000e+01, ptr %i.r, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %3
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !84

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.s = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader2
  %.1.lcssa = phi i32 [ 0, %.preheader2 ], [ %i.s, %.critedge.loopexit ] ; 3 uses
  %.not493.1 = icmp sgt i32 %.1.lcssa, %i.e
  br i1 %.not493.1, label %.critedge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge
  %i.t = sext i32 %.1.lcssa to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %i.t, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.u = trunc i64 %indvars.iv.1 to i32
  %i.v = mul i32 %1, %i.u
  %i.w = sdiv i32 %i.v, %i.d                      ; 2 uses
  %i.x = icmp slt i32 %i.w, 250
  br i1 %i.x, label %bb.c, label %.critedge.1.loopexit

bb.c:                                             ; preds = %bb.b
  %i.y = shl i32 %i.w, 1
  %i.z = add i32 %i.y, -250
  %i.aa = sdiv i32 %i.z, 125
  %i.ab = add nsw i32 %i.aa, 14
  %i.ac = sitofp nsz i32 %i.ab to float
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.1
  store float %i.ac, ptr %i.ad, align 4, !tbaa !50
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %3
  br i1 %exitcond.1.not, label %.preheader, label %bb.b, !llvm.loop !84

.critedge.1.loopexit:                             ; preds = %bb.b
  %i.ae = trunc nsw i64 %indvars.iv.1 to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge.1.loopexit, %.critedge
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.critedge ], [ %i.ae, %.critedge.1.loopexit ] ; 3 uses
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
  store float %i.ao, ptr %i.ap, align 4, !tbaa !50
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %3
  br i1 %exitcond.2.not, label %.preheader, label %bb.d, !llvm.loop !84

.critedge.2.loopexit:                             ; preds = %bb.d
  %i.aq = trunc nsw i64 %indvars.iv.2 to i32
  br label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.2.loopexit, %.critedge.1
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %i.aq, %.critedge.2.loopexit ] ; 3 uses
  %.not493.3 = icmp sgt i32 %.1.lcssa.2, %i.e
  br i1 %.not493.3, label %.critedge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.2
  %i.ar = sext i32 %.1.lcssa.2 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.3
  %indvars.iv.3 = phi i64 [ %i.ar, %.lr.ph.3 ], [ %indvars.iv.next.3, %bb.g ] ; 4 uses
  %i.as = trunc i64 %indvars.iv.3 to i32
  %i.at = mul i32 %1, %i.as
  %i.au = sdiv i32 %i.at, %i.d                    ; 2 uses
  %i.av = icmp slt i32 %i.au, 1000
  br i1 %i.av, label %bb.g, label %.critedge.3.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aw = shl i32 %i.au, 1
  %i.ax = add i32 %i.aw, -1000
  %i.ay = sdiv i32 %i.ax, 500
  %i.az = add nsw i32 %i.ay, 18
  %i.ba = sitofp nsz i32 %i.az to float
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.3
  store float %i.ba, ptr %i.bb, align 4, !tbaa !50
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %3
  br i1 %exitcond.3.not, label %.preheader, label %bb.f, !llvm.loop !84

.critedge.3.loopexit:                             ; preds = %bb.f
  %i.bc = trunc nsw i64 %indvars.iv.3 to i32
  br label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.3.loopexit, %.critedge.2
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.critedge.2 ], [ %i.bc, %.critedge.3.loopexit ] ; 3 uses
  %.not493.4 = icmp sgt i32 %.1.lcssa.3, %i.e
  br i1 %.not493.4, label %.critedge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.3
  %i.bd = sext i32 %.1.lcssa.3 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.4
  %indvars.iv.4 = phi i64 [ %i.bd, %.lr.ph.4 ], [ %indvars.iv.next.4, %bb.i ] ; 4 uses
  %i.be = trunc i64 %indvars.iv.4 to i32
  %i.bf = mul i32 %1, %i.be
  %i.bg = sdiv i32 %i.bf, %i.d
  %i.bh = icmp slt i32 %i.bg, 2000
  br i1 %i.bh, label %bb.i, label %.critedge.4.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.4
  store float 2.000000e+01, ptr %i.bi, align 4, !tbaa !50
  %indvars.iv.next.4 = add nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, %3
  br i1 %exitcond.4.not, label %.preheader, label %bb.h, !llvm.loop !84

.critedge.4.loopexit:                             ; preds = %bb.h
  %i.bj = trunc nsw i64 %indvars.iv.4 to i32
  br label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.4.loopexit, %.critedge.3
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.critedge.3 ], [ %i.bj, %.critedge.4.loopexit ] ; 3 uses
  %.not493.5 = icmp sgt i32 %.1.lcssa.4, %i.e
  br i1 %.not493.5, label %.critedge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.4
  %i.bk = sext i32 %.1.lcssa.4 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.5
  %indvars.iv.5 = phi i64 [ %i.bk, %.lr.ph.5 ], [ %indvars.iv.next.5, %bb.k ] ; 4 uses
  %i.bl = trunc i64 %indvars.iv.5 to i32
  %i.bm = mul i32 %1, %i.bl
  %i.bn = sdiv i32 %i.bm, %i.d
  %i.bo = icmp slt i32 %i.bn, 4000
  br i1 %i.bo, label %bb.k, label %.critedge.5.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.5
  store float 2.000000e+01, ptr %i.bp, align 4, !tbaa !50
  %indvars.iv.next.5 = add nsw i64 %indvars.iv.5, 1 ; 2 uses
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, %3
  br i1 %exitcond.5.not, label %.preheader, label %bb.j, !llvm.loop !84

.critedge.5.loopexit:                             ; preds = %bb.j
  %i.bq = trunc nsw i64 %indvars.iv.5 to i32
  br label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.5.loopexit, %.critedge.4
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %.critedge.4 ], [ %i.bq, %.critedge.5.loopexit ] ; 3 uses
  %.not493.6 = icmp sgt i32 %.1.lcssa.5, %i.e
  br i1 %.not493.6, label %.critedge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.5
  %i.br = sext i32 %.1.lcssa.5 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.6
  %indvars.iv.6 = phi i64 [ %i.br, %.lr.ph.6 ], [ %indvars.iv.next.6, %bb.m ] ; 4 uses
  %i.bs = trunc i64 %indvars.iv.6 to i32
  %i.bt = mul i32 %1, %i.bs
  %i.bu = sdiv i32 %i.bt, %i.d                    ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 8000
  br i1 %i.bv, label %bb.m, label %.critedge.6.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bw = mul i32 %i.bu, -3
  %i.bx = add i32 %i.bw, 12000
  %i.by = sdiv i32 %i.bx, 4000
  %i.bz = add nsw i32 %i.by, 20
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.6
  store float %i.ca, ptr %i.cb, align 4, !tbaa !50
  %indvars.iv.next.6 = add nsw i64 %indvars.iv.6, 1 ; 2 uses
  %exitcond.6.not = icmp eq i64 %indvars.iv.next.6, %3
  br i1 %exitcond.6.not, label %.preheader, label %bb.l, !llvm.loop !84

.critedge.6.loopexit:                             ; preds = %bb.l
  %i.cc = trunc nsw i64 %indvars.iv.6 to i32
  br label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.6.loopexit, %.critedge.5
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %.critedge.5 ], [ %i.cc, %.critedge.6.loopexit ] ; 3 uses
  %.not493.7 = icmp sgt i32 %.1.lcssa.6, %i.e
  br i1 %.not493.7, label %.critedge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.critedge.6
  %i.cd = sext i32 %.1.lcssa.6 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.7
  %indvars.iv.7 = phi i64 [ %i.cd, %.lr.ph.7 ], [ %indvars.iv.next.7, %bb.o ] ; 4 uses
  %i.ce = trunc i64 %indvars.iv.7 to i32
  %i.cf = mul i32 %1, %i.ce
  %i.cg = sdiv i32 %i.cf, %i.d                    ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 16000
  br i1 %i.ch, label %bb.o, label %.critedge.7.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ci = mul i32 %i.cg, -3
  %i.cj = add i32 %i.ci, 24000
  %i.ck = sdiv i32 %i.cj, 8000
  %i.cl = add nsw i32 %i.ck, 17
  %i.cm = uitofp nneg i32 %i.cl to float
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.7
  store float %i.cm, ptr %i.cn, align 4, !tbaa !50
  %indvars.iv.next.7 = add nsw i64 %indvars.iv.7, 1 ; 2 uses
  %exitcond.7.not = icmp eq i64 %indvars.iv.next.7, %3
  br i1 %exitcond.7.not, label %.preheader, label %bb.n, !llvm.loop !84

.critedge.7.loopexit:                             ; preds = %bb.n
  %i.co = trunc nsw i64 %indvars.iv.7 to i32
  br label %.critedge.7

.critedge.7:                                      ; preds = %.critedge.7.loopexit, %.critedge.6
  %.1.lcssa.7 = phi i32 [ %.1.lcssa.6, %.critedge.6 ], [ %i.co, %.critedge.7.loopexit ] ; 3 uses
  %.not493.8 = icmp sgt i32 %.1.lcssa.7, %i.e
  br i1 %.not493.8, label %.critedge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %.critedge.7
  %i.cp = sext i32 %.1.lcssa.7 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.8
  %indvars.iv.8 = phi i64 [ %i.cp, %.lr.ph.8 ], [ %indvars.iv.next.8, %bb.q ] ; 4 uses
  %i.cq = trunc i64 %indvars.iv.8 to i32
  %i.cr = mul i32 %1, %i.cq
  %i.cs = sdiv i32 %i.cr, %i.d                    ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 20000
  br i1 %i.ct, label %bb.q, label %.critedge.8.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cu = mul i32 %i.cs, -24
  %i.cv = add i32 %i.cu, 384000
  %i.cw = sdiv i32 %i.cv, 4000
  %i.cx = add nsw i32 %i.cw, 14
  %i.cy = sitofp nsz i32 %i.cx to float
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.8
  store float %i.cy, ptr %i.cz, align 4, !tbaa !50
  %indvars.iv.next.8 = add nsw i64 %indvars.iv.8, 1 ; 2 uses
  %exitcond.8.not = icmp eq i64 %indvars.iv.next.8, %3
  br i1 %exitcond.8.not, label %.preheader, label %bb.p, !llvm.loop !84

.critedge.8.loopexit:                             ; preds = %bb.p
  %i.da = trunc nsw i64 %indvars.iv.8 to i32
  br label %.critedge.8

.critedge.8:                                      ; preds = %.critedge.8.loopexit, %.critedge.7
  %.1.lcssa.8 = phi i32 [ %.1.lcssa.7, %.critedge.7 ], [ %i.da, %.critedge.8.loopexit ] ; 3 uses
  %.not9 = icmp sgt i32 %.1.lcssa.8, %i.e
  br i1 %.not9, label %.preheader, label %.lr.ph11.preheader

.preheader:                                       ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %.lr.ph11, %middle.block, %.critedge.8
  %.not4813 = icmp slt i32 %i.d, -1
  br i1 %.not4813, label %._crit_edge, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %min.iters.check20 = icmp ult i32 %2, 4
  br i1 %min.iters.check20, label %.lr.ph15.preheader29, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph15.preheader
  %n.vec22 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph21
  %index24 = phi i64 [ 0, %vector.ph21 ], [ %index.next25, %vector.body23 ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index24 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !50
  %i.dc = fdiv nsz <4 x float> %wide.load, splat (float 2.000000e+01)
  %i.dd = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> splat (float 1.000000e+01), <4 x float> %i.dc)
  store <4 x float> %i.dd, ptr %i.db, align 4, !tbaa !50
  %index.next25 = add nuw i64 %index24, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.de, label %middle.block26, label %vector.body23, !llvm.loop !85

middle.block26:                                   ; preds = %vector.body23
  %cmp.n27 = icmp eq i64 %n.vec22, %wide.trip.count
  br i1 %cmp.n27, label %._crit_edge, label %.lr.ph15.preheader29

.lr.ph15.preheader29:                             ; preds = %.lr.ph15.preheader, %middle.block26
  %indvars.iv25.ph = phi i64 [ 0, %.lr.ph15.preheader ], [ %n.vec22, %middle.block26 ]
  br label %.lr.ph15

.lr.ph11:                                         ; preds = %.lr.ph11.preheader30, %.lr.ph11
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.lr.ph11 ], [ %indvars.iv21.ph, %.lr.ph11.preheader30 ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv21
  store float -1.000000e+01, ptr %i.df, align 4, !tbaa !50
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next22 to i32
  %exitcond24.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond24.not, label %.preheader, label %.lr.ph11, !llvm.loop !86

.lr.ph15:                                         ; preds = %.lr.ph15.preheader29, %.lr.ph15
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.lr.ph15 ], [ %indvars.iv25.ph, %.lr.ph15.preheader29 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv25 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !50
  %i.di = fdiv nsz float %i.dh, 2.000000e+01
  %i.dj = tail call nsz float @llvm.pow.f32(float 1.000000e+01, float %i.di)
  store float %i.dj, ptr %i.dg, align 4, !tbaa !50
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph15, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph15, %middle.block26, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @generate_spread_table(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
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
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.u = sdiv i32 %i.h, 2
  %.reass = add i32 %i.u, %invariant.op
  %i.v = sext i32 %i.l to i64                     ; 3 uses
  %i.w = sext i32 %.07088 to i64
  %wide.trip.count = sext i32 %. to i64           ; 5 uses
  br label %bb.c

.lr.ph82:                                         ; preds = %bb.c
  %invariant.op79 = add i32 %.070.neg90, %i.j
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !65   ; 4 uses
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
  %wide.load = load <4 x float>, ptr %i.ao, align 4, !tbaa !50
  %i.ap = fdiv nsz <4 x float> %wide.load, %broadcast.splat118
  store <4 x float> %i.ap, ptr %i.ao, align 4, !tbaa !50
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = fdiv nsz float %i.aw, %i.bi
  store float %i.ax, ptr %i.av, align 4, !tbaa !50
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
  store float %i.bh, ptr %i.bl, align 4, !tbaa !50
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph82, label %bb.c, !llvm.loop !89

._crit_edge:                                      ; preds = %scalar.ph113.prol.loopexit, %scalar.ph113, %middle.block122, %bb.b
  %i.bm = sub nsw i32 %i.l, %.07088
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv105 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !48
  %i.bo = sub nsw i32 %., %.07088
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !48
  %i.bq = icmp slt i32 %.07088, 2
  br i1 %i.bq, label %bb.e, label %bb.d

scalar.ph113:                                     ; preds = %scalar.ph113, %scalar.ph113.preheader.new
  %indvars.iv95 = phi i64 [ %indvars.iv95.unr, %scalar.ph113.preheader.new ], [ %indvars.iv.next96.1, %scalar.ph113 ] ; 3 uses
  %i.br = trunc nsw i64 %indvars.iv95 to i32
  %i.bs = add i32 %.reass80, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bt ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !50
  %i.bw = fdiv nsz float %i.bv, %i.bi
  store float %i.bw, ptr %i.bu, align 4, !tbaa !50
  %i.bx = trunc i64 %indvars.iv95 to i32
  %.reass128 = add i32 %i.bx, %invariant.op127
  %i.by = sext i32 %.reass128 to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !50
  %i.cb = fdiv nsz float %i.ca, %i.bi
  store float %i.cb, ptr %i.bz, align 4, !tbaa !50
  %indvars.iv.next96.1 = add nsw i64 %indvars.iv95, 2 ; 2 uses
  %exitcond99.not.1 = icmp eq i64 %indvars.iv.next96.1, %wide.trip.count98
  br i1 %exitcond99.not.1, label %._crit_edge, label %scalar.ph113, !llvm.loop !90

bb.d:                                             ; preds = %._crit_edge
  %i.cc = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %.07088)
  %i.cd = icmp samesign ult i32 %i.cc, 2
  %i.ce = lshr i32 %.07088, 1
  %spec.select = select i1 %i.cd, i32 %i.ce, i32 %.06989 ; 2 uses
  %i.cf = add nuw nsw i32 %spec.select, %.07088
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
end_hunk_0
