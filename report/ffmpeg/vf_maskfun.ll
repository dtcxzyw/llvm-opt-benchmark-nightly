Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_maskfun?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@config_input:bb.a
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %fill_frame.exit, label %bb.f, !llvm.loop !3

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.dl = getelementptr inbounds [2 x i8], ptr %.0425.i, i64 %i.dc
  %i.dm = add nuw nsw i32 %.0416.i, 1             ; 2 uses
  %exitcond18.not.i = icmp eq i32 %i.dm, %i.cu
  br i1 %exitcond18.not.i, label %._crit_edge7.split.i, label %iter.check, !llvm.loop !4

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.0425.i, i64 %indvars.iv.i
  store i16 %i.bq, ptr %i.dn, align 2, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !75

fill_frame.exit.loopexit:                         ; preds = %._crit_edge13.i
  %.val.pre = load ptr, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.pre, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !31
  br label %fill_frame.exit

fill_frame.exit.thread:                           ; preds = %.preheader.i, %.preheader2.i
  %i.do = getelementptr inbounds nuw i8, ptr %.val50, i64 88
  store i64 0, ptr %i.do, align 8, !tbaa !30
  br label %set_max_sum.exit

fill_frame.exit:                                  ; preds = %._crit_edge7.split.i, %fill_frame.exit.loopexit
  %i.dp = phi i32 [ %.pre, %fill_frame.exit.loopexit ], [ %i.bk, %._crit_edge7.split.i ] ; 4 uses
  %.val = phi ptr [ %.val.pre, %fill_frame.exit.loopexit ], [ %.val50, %._crit_edge7.split.i ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 4 uses
  store i64 0, ptr %i.dq, align 8, !tbaa !30
  %i.dr = icmp sgt i32 %i.dp, 0
  br i1 %i.dr, label %.lr.ph.i52, label %set_max_sum.exit

.lr.ph.i52:                                       ; preds = %fill_frame.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !32 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val, i64 44 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val, i64 60 ; 3 uses
  %wide.trip.count.i53 = zext nneg i32 %i.dp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i53, 1
  %i.dx = icmp eq i32 %i.dp, 1
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph.i52.new

.lr.ph.i52.new:                                   ; preds = %.lr.ph.i52
  %unroll_iter = and i64 %wide.trip.count.i53, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i52.new
  %i.dy = phi i64 [ 0, %.lr.ph.i52.new ], [ %i.fc, %bb.k ] ; 2 uses
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i52.new ], [ %indvars.iv.next.i55.1, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i52.new ], [ %niter.next.1, %bb.k ]
  %i.dz = trunc nuw nsw i64 %indvars.iv.i54 to i32
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = and i32 %i.ea, %i.dt
  %.not.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ec = load i32, ptr %i.du, align 8, !tbaa !29
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i54
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !33
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i54
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !33
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %i.eh, %i.ek
  %i.em = add i64 %i.el, %i.dy                    ; 2 uses
  store i64 %i.em, ptr %i.dq, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.en = phi i64 [ %i.dy, %bb.g ], [ %i.em, %bb.h ] ; 2 uses
  %indvars.iv.next.i55 = or disjoint i64 %indvars.iv.i54, 1 ; 3 uses
  %i.eo = trunc nuw nsw i64 %indvars.iv.next.i55 to i32
  %i.ep = shl nuw i32 1, %i.eo
  %i.eq = and i32 %i.ep, %i.dt
  %.not.i.1 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = load i32, ptr %i.du, align 8, !tbaa !29
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next.i55
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !33
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i64 %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.i55
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul i64 %i.ew, %i.ez
  %i.fb = add i64 %i.fa, %i.en                    ; 2 uses
  store i64 %i.fb, ptr %i.dq, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fc = phi i64 [ %i.en, %bb.i ], [ %i.fb, %bb.j ] ; 2 uses
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %set_max_sum.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !0

set_max_sum.exit.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %set_max_sum.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %set_max_sum.exit.loopexit.unr-lcssa, %.lr.ph.i52
  %.epil.init = phi i64 [ 0, %.lr.ph.i52 ], [ %i.fc, %set_max_sum.exit.loopexit.unr-lcssa ]
  %indvars.iv.i54.epil.init = phi i64 [ 0, %.lr.ph.i52 ], [ %indvars.iv.next.i55.1, %set_max_sum.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod80 = trunc i32 %i.dp to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.fd = trunc nuw nsw i64 %indvars.iv.i54.epil.init to i32
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = and i32 %i.fe, %i.dt
  %.not.i.epil = icmp eq i32 %i.ff, 0
  br i1 %.not.i.epil, label %set_max_sum.exit, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %i.fg = load i32, ptr %i.du, align 8, !tbaa !29
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i54.epil.init
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !33
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul nsw i64 %i.fk, %i.fh
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i54.epil.init
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !33
  %i.fo = sext i32 %i.fn to i64
  %i.fp = mul i64 %i.fl, %i.fo
  %i.fq = add i64 %i.fp, %.epil.init
  store i64 %i.fq, ptr %i.dq, align 8, !tbaa !30
  br label %set_max_sum.exit

set_max_sum.exit:                                 ; preds = %set_max_sum.exit.loopexit.unr-lcssa, %bb.l, %.epil.preheader, %fill_frame.exit.thread, %fill_frame.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.o, %bb.a ], [ -12, %bb.b ], [ 0, %fill_frame.exit ], [ 0, %fill_frame.exit.thread ], [ 0, %.epil.preheader ], [ 0, %bb.l ], [ 0, %set_max_sum.exit.loopexit.unr-lcssa ]
  ret i32 %.0
}

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare i32 @av_pix_fmt_count_planes(i32 noundef) local_unnamed_addr #2

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @maskfun8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge70

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.r = sext i32 %3 to i64                       ; 2 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = sext i32 %2 to i64
  %i.w = trunc i32 %i.m to i8                     ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat87 = shufflevector <16 x i32> %broadcast.splatinsert86, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %broadcast.splat89 = shufflevector <16 x i8> %broadcast.splatinsert88, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <4 x i8> poison, i8 %i.w, i64 0
  %broadcast.splat126 = shufflevector <4 x i8> %broadcast.splatinsert125, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.x = phi i32 [ %i.j, %.lr.ph ], [ %i.fu, %.loopexit ] ; 3 uses
  %indvars.iv73 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next74, %.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv73
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33 ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv73
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv73
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = mul nsw i64 %i.ag, %i.t
  %i.ai = sdiv i64 %i.ah, %i.r                    ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = load i32, ptr %i.u, align 8, !tbaa !32
  %i.an = and i32 %i.am, %i.al
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = mul nsw i64 %i.ag, %i.v
  %i.ap = sdiv i64 %i.ao, %i.r                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 4 uses
  %i.ar = icmp slt i32 %i.aq, %i.aj
  br i1 %i.ar, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.as = icmp sgt i32 %i.ad, 0
  %i.at = sext i32 %i.z to i64                    ; 2 uses
  %i.au = sext i32 %i.ab to i64                   ; 2 uses
  br i1 %i.as, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = mul i32 %i.ab, %i.aq
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv73
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 2 uses
  %i.bc = mul i32 %i.z, %i.aq
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 %i.bd  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 10 uses
  %i.bf = xor i64 %i.ap, -1
  %i.bg = add i64 %i.ai, %i.bf
  %i.bh = and i64 %i.bg, 4294967295               ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.at
  %i.bj = getelementptr i8, ptr %i.bb, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.bk, i64 %wide.trip.count
  %i.bl = mul nsw i64 %i.bh, %i.au
  %i.bm = getelementptr i8, ptr %i.aw, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.ay
  %scevgep83 = getelementptr i8, ptr %i.bn, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %i.ad, 4
  %bound0 = icmp ult ptr %i.az, %scevgep
  %bound1 = icmp ult ptr %i.be, %scevgep83
  %found.conflict = and i1 %bound0, %bound1
  %i.bo = or i32 %i.z, %i.ab
  %i.bp = icmp slt i32 %i.bo, 0
  %i.bq = or i1 %found.conflict, %i.bp
  %min.iters.check85 = icmp ult i32 %i.ad, 16
  %i.br = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check.not.not = icmp eq i64 %i.br, 0
  %n.vec120 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n147 = icmp eq i64 %n.vec120, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bs = add nsw i64 %wide.trip.count, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05867 = phi i32 [ %i.fj, %._crit_edge ], [ %i.aq, %.preheader.preheader ]
  %.05966 = phi ptr [ %i.fi, %._crit_edge ], [ %i.az, %.preheader.preheader ] ; 24 uses
  %.06065 = phi ptr [ %i.fh, %._crit_edge ], [ %i.be, %.preheader.preheader ] ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bq
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %pred.store.continue119
  %index = phi i64 [ %index.next, %pred.store.continue119 ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.06065, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bt, align 1, !tbaa !60, !alias.scope !90 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05966, i64 %index ; 2 uses
  store <16 x i8> %wide.load, ptr %i.bu, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  %i.bv = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.bw = icmp sge <16 x i32> %broadcast.splat, %i.bv ; 2 uses
  %i.bx = icmp slt <16 x i32> %broadcast.splat87, %i.bv
  %i.by = select <16 x i1> %i.bw, <16 x i1> splat (i1 true), <16 x i1> %i.bx ; 16 uses
  %predphi = select <16 x i1> %i.bw, <16 x i8> zeroinitializer, <16 x i8> %broadcast.splat89 ; 16 uses
  %i.bz = extractelement <16 x i1> %i.by, i64 0
  br i1 %i.bz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ca = extractelement <16 x i8> %predphi, i64 0
  store i8 %i.ca, ptr %i.bu, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cb = extractelement <16 x i1> %i.by, i64 1
  br i1 %i.cb, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue
  %i.cc = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = extractelement <16 x i8> %predphi, i64 1
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue
  %i.cf = extractelement <16 x i1> %i.by, i64 2
  br i1 %i.cf, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %i.cg = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = extractelement <16 x i8> %predphi, i64 2
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.cj = extractelement <16 x i1> %i.by, i64 3
  br i1 %i.cj, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.ck = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cm = extractelement <16 x i8> %predphi, i64 3
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.cn = extractelement <16 x i1> %i.by, i64 4
  br i1 %i.cn, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.co = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = extractelement <16 x i8> %predphi, i64 4
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.cr = extractelement <16 x i1> %i.by, i64 5
  br i1 %i.cr, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.cs = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  %i.cu = extractelement <16 x i8> %predphi, i64 5
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.cv = extractelement <16 x i1> %i.by, i64 6
  br i1 %i.cv, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.cw = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  %i.cy = extractelement <16 x i8> %predphi, i64 6
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.cz = extractelement <16 x i1> %i.by, i64 7
  br i1 %i.cz, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.da = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 7
  %i.dc = extractelement <16 x i8> %predphi, i64 7
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.dd = extractelement <16 x i1> %i.by, i64 8
  br i1 %i.dd, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.de = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = extractelement <16 x i8> %predphi, i64 8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.dh = extractelement <16 x i1> %i.by, i64 9
  br i1 %i.dh, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.di = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 9
  %i.dk = extractelement <16 x i8> %predphi, i64 9
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.dl = extractelement <16 x i1> %i.by, i64 10
  br i1 %i.dl, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.dm = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  %i.do = extractelement <16 x i8> %predphi, i64 10
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.dp = extractelement <16 x i1> %i.by, i64 11
  br i1 %i.dp, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.dq = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 11
  %i.ds = extractelement <16 x i8> %predphi, i64 11
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.dt = extractelement <16 x i1> %i.by, i64 12
  br i1 %i.dt, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.du = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = extractelement <16 x i8> %predphi, i64 12
  store i8 %i.dw, ptr %i.dv, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.dx = extractelement <16 x i1> %i.by, i64 13
  br i1 %i.dx, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.dy = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 13
  %i.ea = extractelement <16 x i8> %predphi, i64 13
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.eb = extractelement <16 x i1> %i.by, i64 14
  br i1 %i.eb, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.ec = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 14
  %i.ee = extractelement <16 x i8> %predphi, i64 14
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.ef = extractelement <16 x i1> %i.by, i64 15
  br i1 %i.ef, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.eg = getelementptr inbounds nuw i8, ptr %.05966, i64 %index
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 15
  %i.ei = extractelement <16 x i8> %predphi, i64 15
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %pred.store.continue119
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue145, %vec.epilog.ph
  %index127 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %pred.store.continue145 ] ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06065, i64 %index127
  %wide.load128 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !60, !alias.scope !90 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05966, i64 %index127 ; 2 uses
  store <4 x i8> %wide.load128, ptr %i.el, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  %4 = zext <4 x i8> %wide.load128 to <4 x i32>   ; 2 uses
  %5 = icmp sge <4 x i32> %broadcast.splat122, %4 ; 2 uses
  %6 = icmp slt <4 x i32> %broadcast.splat124, %4
  %7 = select <4 x i1> %5, <4 x i1> splat (i1 true), <4 x i1> %6 ; 4 uses
  %predphi129 = select <4 x i1> %5, <4 x i8> zeroinitializer, <4 x i8> %broadcast.splat126 ; 4 uses
  %i.em = extractelement <4 x i1> %7, i64 0
  br i1 %i.em, label %pred.store.if138, label %pred.store.continue139

pred.store.if138:                                 ; preds = %vec.epilog.vector.body
  %i.en = extractelement <4 x i8> %predphi129, i64 0
  store i8 %i.en, ptr %i.el, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.if138, %vec.epilog.vector.body
  %i.eo = extractelement <4 x i1> %7, i64 1
  br i1 %i.eo, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue139
  %i.ep = getelementptr inbounds nuw i8, ptr %.05966, i64 %index127
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = extractelement <4 x i8> %predphi129, i64 1
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue139
  %i.es = extractelement <4 x i1> %7, i64 2
  br i1 %i.es, label %pred.store.if142, label %pred.store.continue143

pred.store.if142:                                 ; preds = %pred.store.continue141
  %i.et = getelementptr inbounds nuw i8, ptr %.05966, i64 %index127
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.ev = extractelement <4 x i8> %predphi129, i64 2
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.ew = extractelement <4 x i1> %7, i64 3
  br i1 %i.ew, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  %i.ex = getelementptr inbounds nuw i8, ptr %.05966, i64 %index127
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.ez = extractelement <4 x i8> %predphi129, i64 3
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !60, !alias.scope !91, !noalias !90
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %index.next146 = add nuw i64 %index127, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next146, %n.vec120
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %pred.store.continue145
  br i1 %cmp.n147, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec120, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %.06065, i64 %indvars.iv.ph
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !60  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05966, i64 %indvars.iv.ph ; 2 uses
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !60
  %i.fe = zext i8 %i.fc to i32                    ; 2 uses
  %.not63.prol = icmp slt i32 %i.f, %i.fe
  br i1 %.not63.prol, label %bb.d, label %.sink.split.prol

bb.d:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ff = icmp slt i32 %i.h, %i.fe
  br i1 %i.ff, label %.sink.split.prol, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.d, %vec.epilog.scalar.ph.prol
  %.sink.prol = phi i8 [ 0, %vec.epilog.scalar.ph.prol ], [ %i.w, %bb.d ]
  store i8 %.sink.prol, ptr %i.fd, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %.sink.split.prol, %bb.d
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.fg = icmp eq i64 %indvars.iv.ph, %i.bs
  br i1 %i.fg, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.g, %vec.epilog.middle.block, %middle.block
  %i.fh = getelementptr inbounds i8, ptr %.06065, i64 %i.at
  %i.fi = getelementptr inbounds i8, ptr %.05966, i64 %i.au
  %i.fj = add nsw i32 %.05867, 1                  ; 2 uses
  %exitcond72.not = icmp eq i32 %i.fj, %i.aj
  br i1 %exitcond72.not, label %.loopexit.loopexit, label %iter.check, !llvm.loop !87

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.06065, i64 %indvars.iv
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !60  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.05966, i64 %indvars.iv ; 2 uses
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !60
  %i.fn = zext i8 %i.fl to i32                    ; 2 uses
  %.not63 = icmp slt i32 %i.f, %i.fn
  br i1 %.not63, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %vec.epilog.scalar.ph
  %i.fo = icmp slt i32 %i.h, %i.fn
  br i1 %i.fo, label %.sink.split, label %vec.epilog.scalar.ph.1

.sink.split:                                      ; preds = %bb.e, %vec.epilog.scalar.ph
  %.sink = phi i8 [ 0, %vec.epilog.scalar.ph ], [ %i.w, %bb.e ]
  store i8 %.sink, ptr %i.fm, align 1, !tbaa !60
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %.sink.split, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.06065, i64 %indvars.iv.next
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !60  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.05966, i64 %indvars.iv.next ; 2 uses
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !60
  %i.fs = zext i8 %i.fq to i32                    ; 2 uses
  %.not63.1 = icmp slt i32 %i.f, %i.fs
  br i1 %.not63.1, label %bb.f, label %.sink.split.1

bb.f:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ft = icmp slt i32 %i.h, %i.fs
  br i1 %i.ft, label %.sink.split.1, label %bb.g

.sink.split.1:                                    ; preds = %bb.f, %vec.epilog.scalar.ph.1
  %.sink.1 = phi i8 [ 0, %vec.epilog.scalar.ph.1 ], [ %i.w, %bb.f ]
  store i8 %.sink.1, ptr %i.fr, align 1, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.1, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !88

.loopexit.loopexit:                               ; preds = %._crit_edge
  %.pre = load i32, ptr %i.i, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %.preheader.lr.ph, %bb.b
  %i.fu = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.x, %bb.c ], [ %i.x, %.preheader.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next74, %i.fv
  br i1 %i.fw, label %bb.b, label %._crit_edge70, !llvm.loop !89

._crit_edge70:                                    ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @getsum8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit44

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %wide.trip.count64 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %.loopexit ] ; 6 uses
  %.03354 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %.loopexit ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33   ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.j, %i.q
  %.not = icmp ne i32 %i.r, 0
  %.not4049 = icmp sgt i32 %i.o, 0
  %or.cond = select i1 %.not, i1 %.not4049, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv61
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = icmp sgt i32 %i.m, 0
  %i.v = load i64, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.w = sext i32 %i.t to i64
  br i1 %i.u, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv61
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.z = icmp ult i32 %i.m, 8
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.02952.us = phi i32 [ %i.bo, %bb.c ], [ 0, %.preheader.us.preheader ]
  %.03151.us = phi ptr [ %i.bn, %bb.c ], [ %i.y, %.preheader.us.preheader ] ; 10 uses
  %.13450.us = phi i64 [ %.lcssa, %bb.c ], [ %.03354, %.preheader.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader.us.new ], [ 0, %.preheader.us ] ; 9 uses
  %.247.us = phi i64 [ %i.bm, %.preheader.us.new ], [ %.13450.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.7, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !60
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %.247.us, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !60
  %i.ah = zext i8 %i.ag to i64
  %i.ai = add i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !60
  %i.am = zext i8 %i.al to i64
  %i.an = add i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !60
  %i.ar = zext i8 %i.aq to i64
  %i.as = add i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !60
  %i.aw = zext i8 %i.av to i64
  %i.ax = add i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !60
  %i.bb = zext i8 %i.ba to i64
  %i.bc = add i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !60
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !60
  %i.bl = zext i8 %i.bk to i64
  %i.bm = add i64 %i.bh, %i.bl                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !92

bb.c:                                             ; preds = %._crit_edge.us
  %i.bn = getelementptr inbounds i8, ptr %.03151.us, i64 %i.w
  %i.bo = add nuw nsw i32 %.02952.us, 1           ; 2 uses
  %exitcond60.not = icmp eq i32 %i.bo, %i.o
  br i1 %exitcond60.not, label %.loopexit, label %.preheader.us, !llvm.loop !93

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.7, %._crit_edge.us.unr-lcssa ]
  %.247.us.epil.init = phi i64 [ %.13450.us, %.preheader.us ], [ %i.bm, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.247.us.epil = phi i64 [ %.247.us.epil.init, %.epil.preheader ], [ %i.bs, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.03151.us, i64 %indvars.iv.epil
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !60
  %i.br = zext i8 %i.bq to i64
  %i.bs = add i64 %.247.us.epil, %i.br            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !94

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i64 [ %i.bm, %._crit_edge.us.unr-lcssa ], [ %i.bs, %bb.d ] ; 3 uses
  %.not39.us = icmp ult i64 %.lcssa, %i.v
  br i1 %.not39.us, label %bb.c, label %.loopexit44

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not39 = icmp ult i64 %.03354, %i.v
  br i1 %.not39, label %.loopexit, label %.loopexit44

.loopexit:                                        ; preds = %bb.c, %.preheader.lr.ph.split, %bb.b
  %.4.ph = phi i64 [ %.03354, %bb.b ], [ %.03354, %.preheader.lr.ph.split ], [ %.lcssa, %bb.c ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit44, label %bb.b, !llvm.loop !95

.loopexit44:                                      ; preds = %.loopexit, %.preheader.lr.ph.split, %._crit_edge.us, %bb.a
  %.338 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge.us ], [ 0, %.loopexit ], [ 1, %.preheader.lr.ph.split ]
  ret i32 %.338
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @maskfun16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge70

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.r = sext i32 %3 to i64                       ; 2 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !32
  %i.w = sext i32 %2 to i64
  %i.x = trunc i32 %i.m to i16                    ; 4 uses
  %wide.trip.count76 = zext nneg i32 %i.j to i64
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert89 = insertelement <8 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat90 = shufflevector <8 x i16> %broadcast.splatinsert89, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv73 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next74, %.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv73
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33   ; 2 uses
  %i.aa = sdiv i32 %i.z, 2                        ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv73
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !33 ; 2 uses
  %i.ad = sdiv i32 %i.ac, 2                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv73
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv73
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nsw i64 %i.ai, %i.t
  %i.ak = sdiv i64 %i.aj, %i.r                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv73 to i32
  %i.an = shl nuw i32 1, %i.am
  %i.ao = and i32 %i.v, %i.an
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = mul nsw i64 %i.ai, %i.w
  %i.aq = sdiv i64 %i.ap, %i.r                    ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 4 uses
  %i.as = icmp slt i32 %i.ar, %i.al
  br i1 %i.as, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.at = icmp sgt i32 %i.af, 0
  %i.au = sext i32 %i.aa to i64                   ; 2 uses
  %i.av = sext i32 %i.ad to i64                   ; 2 uses
  br i1 %i.at, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv73
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38 ; 2 uses
  %i.ay = mul i32 %i.ad, %i.ar
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv73
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38 ; 2 uses
  %i.bd = mul i32 %i.aa, %i.ar
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr [2 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 6 uses
  %i.bg = shl nsw i64 %i.au, 1
  %i.bh = xor i64 %i.aq, -1
  %i.bi = add i64 %i.ak, %i.bh
  %i.bj = and i64 %i.bi, 4294967295               ; 2 uses
  %i.bk = mul nsw i64 %i.bg, %i.bj
  %i.bl = shl nsw i64 %i.be, 1
  %i.bm = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bk
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bo, i64 %i.bm
  %i.bp = shl nsw i64 %i.av, 1
  %i.bq = mul nsw i64 %i.bp, %i.bj
  %i.br = shl nsw i64 %i.az, 1
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bq
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.br
  %scevgep85 = getelementptr i8, ptr %i.bt, i64 %i.bm
  %min.iters.check = icmp ult i32 %i.af, 8
  %bound0 = icmp ult ptr %i.ba, %scevgep
  %bound1 = icmp ult ptr %i.bf, %scevgep85
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ac, -1
  %i.bu = or i1 %found.conflict, %stride.check
  %stride.check86 = icmp slt i32 %i.z, -1
  %i.bv = or i1 %i.bu, %stride.check86
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bw = add nsw i64 %wide.trip.count, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.05867 = phi i32 [ %i.dq, %._crit_edge ], [ %i.ar, %.preheader.preheader ]
  %.05966 = phi ptr [ %i.dp, %._crit_edge ], [ %i.ba, %.preheader.preheader ] ; 12 uses
  %.06065 = phi ptr [ %i.do, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bv
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %pred.store.continue104
  %index = phi i64 [ %index.next, %pred.store.continue104 ], [ 0, %.preheader ] ; 10 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.06065, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bx, align 2, !tbaa !40, !alias.scope !104 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index ; 2 uses
  store <8 x i16> %wide.load, ptr %i.by, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ca = icmp sge <8 x i32> %broadcast.splat, %i.bz ; 2 uses
  %i.cb = icmp slt <8 x i32> %broadcast.splat88, %i.bz
  %i.cc = select <8 x i1> %i.ca, <8 x i1> splat (i1 true), <8 x i1> %i.cb ; 8 uses
  %predphi = select <8 x i1> %i.ca, <8 x i16> zeroinitializer, <8 x i16> %broadcast.splat90 ; 8 uses
  %i.cd = extractelement <8 x i1> %i.cc, i64 0
  br i1 %i.cd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ce = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.ce, ptr %i.by, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cf = extractelement <8 x i1> %i.cc, i64 1
  br i1 %i.cf, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.ci, ptr %i.ch, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue
  %i.cj = extractelement <8 x i1> %i.cc, i64 2
  br i1 %i.cj, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.cm, ptr %i.cl, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.cn = extractelement <8 x i1> %i.cc, i64 3
  br i1 %i.cn, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.cq, ptr %i.cp, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cr = extractelement <8 x i1> %i.cc, i64 4
  br i1 %i.cr, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.cu, ptr %i.ct, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cv = extractelement <8 x i1> %i.cc, i64 5
  br i1 %i.cv, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.cy = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.cy, ptr %i.cx, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.cz = extractelement <8 x i1> %i.cc, i64 6
  br i1 %i.cz, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.dc, ptr %i.db, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.dd = extractelement <8 x i1> %i.cc, i64 7
  br i1 %i.dd, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %index
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dg = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.dg, ptr %i.df, align 2, !tbaa !40, !alias.scope !105, !noalias !104
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %pred.store.continue104
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.06065, i64 %indvars.iv.ph
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !40 ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %indvars.iv.ph ; 2 uses
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !40
  %i.dl = zext i16 %i.dj to i32                   ; 2 uses
  %.not63.prol = icmp slt i32 %i.f, %i.dl
  br i1 %.not63.prol, label %bb.d, label %.sink.split.prol

bb.d:                                             ; preds = %scalar.ph.prol
  %i.dm = icmp slt i32 %i.h, %i.dl
  br i1 %i.dm, label %.sink.split.prol, label %scalar.ph.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.d, %scalar.ph.prol
  %.sink.prol = phi i16 [ 0, %scalar.ph.prol ], [ %i.x, %bb.d ]
  store i16 %.sink.prol, ptr %i.dk, align 2, !tbaa !40
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %.sink.split.prol, %bb.d
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.dn = icmp eq i64 %indvars.iv.ph, %i.bw
  br i1 %i.dn, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %bb.g, %middle.block
  %i.do = getelementptr inbounds [2 x i8], ptr %.06065, i64 %i.au
  %i.dp = getelementptr inbounds [2 x i8], ptr %.05966, i64 %i.av
  %i.dq = add nsw i32 %.05867, 1                  ; 2 uses
  %exitcond72.not = icmp eq i32 %i.dq, %i.al
  br i1 %exitcond72.not, label %.loopexit, label %.preheader, !llvm.loop !101

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.06065, i64 %indvars.iv
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !40 ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %indvars.iv ; 2 uses
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !40
  %i.du = zext i16 %i.ds to i32                   ; 2 uses
  %.not63 = icmp slt i32 %i.f, %i.du
  br i1 %.not63, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %scalar.ph
  %i.dv = icmp slt i32 %i.h, %i.du
  br i1 %i.dv, label %.sink.split, label %scalar.ph.1

.sink.split:                                      ; preds = %bb.e, %scalar.ph
  %.sink = phi i16 [ 0, %scalar.ph ], [ %i.x, %bb.e ]
  store i16 %.sink, ptr %i.dt, align 2, !tbaa !40
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %.sink.split, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.06065, i64 %indvars.iv.next
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !40 ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.05966, i64 %indvars.iv.next ; 2 uses
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !40
  %i.dz = zext i16 %i.dx to i32                   ; 2 uses
  %.not63.1 = icmp slt i32 %i.f, %i.dz
  br i1 %.not63.1, label %bb.f, label %.sink.split.1

bb.f:                                             ; preds = %scalar.ph.1
  %i.ea = icmp slt i32 %i.h, %i.dz
  br i1 %i.ea, label %.sink.split.1, label %bb.g

.sink.split.1:                                    ; preds = %bb.f, %scalar.ph.1
  %.sink.1 = phi i16 [ 0, %scalar.ph.1 ], [ %i.x, %bb.f ]
  store i16 %.sink.1, ptr %i.dy, align 2, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.1, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !102

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.preheader.lr.ph, %bb.b
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge70, label %bb.b, !llvm.loop !103

._crit_edge70:                                    ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @getsum16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit44

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %wide.trip.count64 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %.loopexit ] ; 6 uses
  %.03354 = phi i64 [ 0, %.lr.ph ], [ %.4.ph, %.loopexit ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33   ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.j, %i.q
  %.not = icmp ne i32 %i.r, 0
  %.not4049 = icmp sgt i32 %i.o, 0
  %or.cond = select i1 %.not, i1 %.not4049, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv61
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %i.u = sdiv i32 %i.t, 2
  %i.v = icmp sgt i32 %i.m, 0
  %i.w = load i64, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.x = sext i32 %i.u to i64
  br i1 %i.v, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv61
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.02952.us = phi i32 [ %i.ao, %bb.c ], [ 0, %.preheader.us.preheader ]
  %.03151.us = phi ptr [ %i.an, %bb.c ], [ %i.z, %.preheader.us.preheader ] ; 3 uses
  %.13450.us = phi i64 [ %.lcssa, %bb.c ], [ %.03354, %.preheader.us.preheader ] ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.aa = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.13450.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.aa, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi74 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.03151.us, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %wide.load = load <2 x i16>, ptr %i.ab, align 2, !tbaa !40
  %wide.load75 = load <2 x i16>, ptr %i.ac, align 2, !tbaa !40
  %i.ad = zext <2 x i16> %wide.load to <2 x i64>
  %i.ae = zext <2 x i16> %wide.load75 to <2 x i64>
  %i.af = add <2 x i64> %vec.phi, %i.ad           ; 2 uses
  %i.ag = add <2 x i64> %vec.phi74, %i.ae         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec, %middle.block ]
  %.247.us.ph = phi i64 [ %.13450.us, %.preheader.us ], [ %i.ai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.247.us = phi i64 [ %i.am, %scalar.ph ], [ %.247.us.ph, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.03151.us, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !40
  %i.al = zext i16 %i.ak to i64
  %i.am = add i64 %.247.us, %i.al                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !107

bb.c:                                             ; preds = %._crit_edge.us
  %i.an = getelementptr inbounds [2 x i8], ptr %.03151.us, i64 %i.x
  %i.ao = add nuw nsw i32 %.02952.us, 1           ; 2 uses
  %exitcond60.not = icmp eq i32 %i.ao, %i.o
  br i1 %exitcond60.not, label %.loopexit, label %.preheader.us, !llvm.loop !108

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.ai, %middle.block ], [ %i.am, %scalar.ph ] ; 3 uses
  %.not39.us = icmp ult i64 %.lcssa, %i.w
  br i1 %.not39.us, label %bb.c, label %.loopexit44

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not39 = icmp ult i64 %.03354, %i.w
  br i1 %.not39, label %.loopexit, label %.loopexit44

.loopexit:                                        ; preds = %bb.c, %.preheader.lr.ph.split, %bb.b
  %.4.ph = phi i64 [ %.03354, %bb.b ], [ %.03354, %.preheader.lr.ph.split ], [ %.lcssa, %bb.c ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit44, label %bb.b, !llvm.loop !109

.loopexit44:                                      ; preds = %.loopexit, %.preheader.lr.ph.split, %._crit_edge.us, %bb.a
  %.338 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge.us ], [ 0, %.loopexit ], [ 1, %.preheader.lr.ph.split ]
  ret i32 %.338
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{!3, !34}
!4 = distinct !{!4, !34}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 1, !"override-stack-alignment", i32 16}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!16 = !{!"p1 _ZTS8AVFilter", !14, i64 0}
!17 = !{!"p1 omnipotent char", !14, i64 0}
!18 = !{!"p1 _ZTS11AVFilterPad", !14, i64 0}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = !{!"p2 _ZTS12AVFilterLink", !19, i64 0}
!21 = !{!"p1 _ZTS13AVFilterGraph", !14, i64 0}
!22 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!23 = !{!"AVFilterContext", !15, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !20, i64 32, !11, i64 40, !18, i64 48, !20, i64 56, !11, i64 64, !14, i64 72, !21, i64 80, !11, i64 88, !11, i64 92, !17, i64 96, !11, i64 104, !22, i64 112, !11, i64 120}
!24 = !{!23, !14, i64 72}
!25 = !{!"long", !10, i64 0}
!26 = !{!"p1 _ZTS7AVFrame", !14, i64 0}
!27 = !{!"MaskFunContext", !15, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !10, i64 28, !10, i64 44, !10, i64 60, !11, i64 76, !11, i64 80, !11, i64 84, !25, i64 88, !26, i64 96, !26, i64 104, !14, i64 112, !14, i64 120}
!28 = !{!27, !11, i64 20}
!29 = !{!27, !11, i64 24}
!30 = !{!27, !25, i64 88}
!31 = !{!27, !11, i64 76}
!32 = !{!27, !11, i64 16}
!33 = !{!11, !11, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!27, !11, i64 84}
!36 = !{!27, !11, i64 80}
!37 = !{!27, !26, i64 104}
!38 = !{!17, !17, i64 0}
!39 = !{!"short", !10, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 12}
!44 = !{!"p1 _ZTS15AVFilterContext", !14, i64 0}
!45 = !{!"AVRational", !11, i64 0, !11, i64 4}
!46 = !{!"AVChannelLayout", !11, i64 0, !11, i64 4, !10, i64 8, !14, i64 16}
!47 = !{!"p2 _ZTS15AVFrameSideData", !19, i64 0}
!48 = !{!"p1 _ZTS15AVFilterFormats", !14, i64 0}
!49 = !{!"p1 _ZTS22AVFilterChannelLayouts", !14, i64 0}
!50 = !{!"AVFilterFormatsConfig", !48, i64 0, !48, i64 8, !49, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!51 = !{!"AVFilterLink", !44, i64 0, !18, i64 8, !44, i64 16, !18, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !45, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !46, i64 72, !45, i64 96, !47, i64 104, !11, i64 112, !11, i64 116, !50, i64 120, !50, i64 168}
!52 = !{!51, !44, i64 16}
!53 = !{!27, !14, i64 112}
!54 = !{!51, !11, i64 40}
!55 = !{!51, !11, i64 44}
!56 = !{!27, !26, i64 96}
!57 = !{!27, !14, i64 120}
!58 = !{!27, !11, i64 8}
!59 = !{!27, !11, i64 12}
!60 = !{!10, !10, i64 0}
!61 = distinct !{!61, !34, !41, !42}
!62 = distinct !{!62, !34, !41, !42}
!63 = distinct !{!63, !34, !42, !41}
!64 = !{!26, !26, i64 0}
!65 = !{!23, !20, i64 56}
!66 = !{!"p1 _ZTS12AVFilterLink", !14, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p2 omnipotent char", !19, i64 0}
!69 = !{!"p2 _ZTS11AVBufferRef", !19, i64 0}
!70 = !{!"p1 _ZTS12AVDictionary", !14, i64 0}
!71 = !{!"AVFrame", !10, i64 0, !10, i64 64, !68, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !45, i64 124, !25, i64 136, !25, i64 144, !45, i64 152, !11, i64 160, !14, i64 168, !11, i64 176, !11, i64 180, !10, i64 184, !69, i64 248, !11, i64 256, !47, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !25, i64 304, !70, i64 312, !11, i64 320, !22, i64 328, !22, i64 336, !25, i64 344, !25, i64 352, !25, i64 360, !25, i64 368, !14, i64 376, !46, i64 384, !25, i64 408, !11, i64 416}
!72 = !{!71, !25, i64 136}
!73 = distinct !{!73, !34, !41, !42}
!74 = distinct !{!74, !34, !41, !42}
!75 = distinct !{!75, !34, !42, !41}
!76 = !{!51, !11, i64 36}
!77 = !{!"AVPixFmtDescriptor", !17, i64 0, !10, i64 8, !10, i64 9, !10, i64 10, !25, i64 16, !10, i64 24, !17, i64 104}
!78 = !{!77, !10, i64 9}
!79 = !{!77, !10, i64 10}
!80 = !{!"AVComponentDescriptor", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16}
!81 = !{!80, !11, i64 16}
!82 = distinct !{!82, i1 false, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !34, !41, !42}
!86 = distinct !{!86, !34, !41, !42}
!87 = distinct !{!87, !34}
!88 = distinct !{!88, !34, !41}
!89 = distinct !{!89, !34}
!90 = !{!83}
!91 = !{!84}
!92 = distinct !{!92, !34}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !96}
!95 = distinct !{!95, !34}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, i1 false, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !34, !41, !42}
!101 = distinct !{!101, !34}
!102 = distinct !{!102, !34, !41}
!103 = distinct !{!103, !34}
!104 = !{!98}
!105 = !{!99}
!106 = distinct !{!106, !34, !41, !42}
!107 = distinct !{!107, !34, !42, !41}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
end_hunk_0
