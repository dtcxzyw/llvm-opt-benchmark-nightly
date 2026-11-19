Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_arls?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@config_output:bb.a
  %niter170.next.3 = add i64 %niter170, 4         ; 2 uses
  %niter170.ncmp.3 = icmp eq i64 %niter170.next.3, %unroll_iter169
  br i1 %niter170.ncmp.3, label %._crit_edge126.unr-lcssa, label %.lr.ph125.new, !llvm.loop !83

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %._crit_edge119
  %indvars.iv135 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next136, %._crit_edge119 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv135
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !55 ; 5 uses
  %.pre150 = load float, ptr %i.bp, align 8, !tbaa !89 ; 5 uses
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph118.new

._crit_edge119.unr-lcssa:                         ; preds = %.lr.ph118.new
  br i1 %lcmp.mod.not, label %._crit_edge119, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge119.unr-lcssa, %.lr.ph118
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next133.3, %._crit_edge119.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.epil.preheader ], [ %indvars.iv.next133.epil, %bb.y ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.dr = trunc nuw nsw i64 %indvars.iv132.epil to i32
  %i.ds = mul i32 %.0108, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dt
  store float %.pre150, ptr %i.du, align 4, !tbaa !60
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge119, label %bb.y, !llvm.loop !84

._crit_edge119:                                   ; preds = %bb.y, %._crit_edge119.unr-lcssa
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.sink.split, label %.lr.ph118, !llvm.loop !85

.lr.ph118.new:                                    ; preds = %.lr.ph118, %.lr.ph118.new
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.3, %.lr.ph118.new ], [ 0, %.lr.ph118 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph118.new ], [ 0, %.lr.ph118 ]
  %i.dv = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.dw = mul i32 %.0108, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dx
  store float %.pre150, ptr %i.dy, align 4, !tbaa !60
  %i.dz = trunc i64 %indvars.iv132 to i32
  %i.ea = or disjoint i32 %i.dz, 1
  %i.eb = mul i32 %.0108, %i.ea
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ec
  store float %.pre150, ptr %i.ed, align 4, !tbaa !60
  %i.ee = trunc i64 %indvars.iv132 to i32
  %i.ef = or disjoint i32 %i.ee, 2
  %i.eg = mul i32 %.0108, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.eh
  store float %.pre150, ptr %i.ei, align 4, !tbaa !60
  %i.ej = trunc i64 %indvars.iv132 to i32
  %i.ek = or disjoint i32 %i.ej, 3
  %i.el = mul i32 %.0108, %i.ek
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.em
  store float %.pre150, ptr %i.en, align 4, !tbaa !60
  %indvars.iv.next133.3 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge119.unr-lcssa, label %.lr.ph118.new, !llvm.loop !86

.sink.split:                                      ; preds = %._crit_edge119, %._crit_edge126, %.preheader110, %.lr.ph121, %.preheader, %.lr.ph128
  %filter_channels_double.sink = phi ptr [ @filter_channels_double, %.preheader ], [ @filter_channels_float, %.preheader110 ], [ @filter_channels_double, %.lr.ph128 ], [ @filter_channels_double, %._crit_edge126 ], [ @filter_channels_float, %.lr.ph121 ], [ @filter_channels_float, %._crit_edge119 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %filter_channels_double.sink, ptr %i.eo, align 8, !tbaa !36
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.w, %._crit_edge115, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.089 = phi i32 [ -12, %bb.q ], [ 0, %._crit_edge115 ], [ -12, %bb.w ], [ -12, %bb.v ], [ -12, %bb.u ], [ -12, %bb.t ], [ -12, %bb.s ], [ -12, %bb.r ], [ 0, %.sink.split ]
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels_double(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = mul nsw i64 %i.c, %i.d
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %i.g = sdiv i64 %i.e, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.c, %i.j
  %i.l = sdiv i64 %i.k, %i.f
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.m
  br i1 %i.n, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph38.split.preheader, label %._crit_edge39

.lr.ph38.split.preheader:                         ; preds = %.lr.ph38
  %sext = shl i64 %i.g, 32
  %i.ak = ashr exact i64 %sext, 32
  br label %.lr.ph38.split

._crit_edge39:                                    ; preds = %._crit_edge, %.lr.ph38, %bb.a
  ret i32 0

.lr.ph38.split:                                   ; preds = %.lr.ph38.split.preheader, %._crit_edge
  %i.al = phi i32 [ %i.ai, %.lr.ph38.split.preheader ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv43 = phi i64 [ %i.ak, %.lr.ph38.split.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 12 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv43
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv43
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %indvars.iv43
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = icmp sgt i32 %i.al, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph38.split
  %i.ba = phi i32 [ %i.al, %.lr.ph38.split ], [ %i.ji, %bb.g ]
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.m
  br i1 %exitcond.not, label %._crit_edge39, label %.lr.ph38.split, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph38.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph38.split ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !58 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.be = load double, ptr %i.bd, align 8, !tbaa !58 ; 2 uses
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv43
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 2 uses
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv43
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55 ; 10 uses
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !54
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv43
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 4 uses
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55 ; 11 uses
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv43
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55 ; 2 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv43
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 9 uses
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv43
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55 ; 12 uses
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv43
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55 ; 3 uses
  %i.ct = load i32, ptr %i.ac, align 4, !tbaa !44 ; 3 uses
  %i.cu = load i32, ptr %i.ad, align 8, !tbaa !43 ; 9 uses
  %i.cv = load float, ptr %i.ae, align 4, !tbaa !61
  %i.cw = fpext nsz float %i.cv to double         ; 5 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %i.cy = add nsw i32 %i.cx, %i.cu
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cz
  store double %i.bc, ptr %i.da, align 8, !tbaa !58
  %i.db = sext i32 %i.cx to i64                   ; 7 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.db
  store double %i.bc, ptr %i.dc, align 8, !tbaa !58
  %i.dd = sext i32 %i.cu to i64                   ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.dd ; 2 uses
  %i.df = sub nsw i64 0, %i.db
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = shl nsw i64 %i.dd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.by, ptr readonly align 8 %i.dg, i64 %i.dh, i1 false)
  %i.di = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !112
  %i.dl = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.dm = sext i32 %i.dl to i64
  %i.dn = tail call nsz double %i.dk(ptr noundef %i.bo, ptr noundef %i.by, i64 noundef %i.dm) #7, !inline_history !91 ; 3 uses
  %i.do = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  %spec.select.i.i = select i1 %i.dp, i32 %i.cu, i32 %i.do
  %storemerge.i.i = add nsw i32 %spec.select.i.i, -1
  store i32 %storemerge.i.i, ptr %i.cs, align 4, !tbaa !42
  %i.dq = fsub nsz double %i.be, %i.dn            ; 2 uses
  %i.dr = icmp sgt i32 %i.cu, 0
  br i1 %i.dr, label %.lr.ph.us.preheader.i, label %._crit_edge177.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph
  %i.ds = sext i32 %i.ct to i64                   ; 9 uses
  %wide.trip.count190.i = zext nneg i32 %i.cu to i64 ; 24 uses
  %i.dt = add nsw i64 %wide.trip.count190.i, -1   ; 2 uses
  %xtraiter = and i64 %wide.trip.count190.i, 1
  %i.du = icmp eq i64 %i.dt, 0
  %unroll_iter = and i64 %wide.trip.count190.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod112 = trunc i32 %i.cu to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv185.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next186.i, %._crit_edge.us.i ] ; 3 uses
  %indvars.iv183.i = phi i64 [ %i.db, %.lr.ph.us.preheader.i ], [ %indvars.iv.next184.i, %._crit_edge.us.i ] ; 2 uses
  %.0149154.us.i = phi double [ %i.cw, %.lr.ph.us.preheader.i ], [ %i.eo, %._crit_edge.us.i ]
  %i.dv = mul nsw i64 %indvars.iv185.i, %i.ds
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv185.i ; 4 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !58
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ci, i64 %i.dv ; 3 uses
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us.i.new ], [ %i.db, %.lr.ph.us.i ] ; 3 uses
  %i.dx = phi double [ %i.eh, %.lr.ph.us.i.new ], [ 0.000000e+00, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i
  %i.dy = load double, ptr %gep.i, align 8, !tbaa !58
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !58
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.ea, double %i.dx) ; 2 uses
  store double %i.eb, ptr %i.dw, align 8, !tbaa !58
  %i.ec = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i
  %gep.i.1 = getelementptr i8, ptr %i.ec, i64 8
  %i.ed = load double, ptr %gep.i.1, align 8, !tbaa !58
  %i.ee = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !58
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.ed, double %i.eg, double %i.eb) ; 4 uses
  store double %i.eh, ptr %i.dw, align 8, !tbaa !58
  %indvars.iv.next179.i.1 = add nuw nsw i64 %indvars.iv178.i, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !92

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv178.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next179.i.1, %._crit_edge.us.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.db, %.lr.ph.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i ], [ %i.eh, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i.epil.init
  %i.ei = load double, ptr %gep.i.epil, align 8, !tbaa !58
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv.i.epil.init
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !58
  %i.el = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ek, double %.epil.init) ; 2 uses
  store double %i.el, ptr %i.dw, align 8, !tbaa !58
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.eh, %._crit_edge.us.i.unr-lcssa ], [ %i.el, %.epil.preheader ]
  %i.em = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv183.i
  %i.en = load double, ptr %i.em, align 8, !tbaa !58
  %i.eo = tail call nsz double @llvm.fmuladd.f64(double %.lcssa, double %i.en, double %.0149154.us.i) ; 2 uses
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %indvars.iv.next184.i = add nsw i64 %indvars.iv183.i, 1
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next186.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %._crit_edge159.i, label %.lr.ph.us.i, !llvm.loop !93

._crit_edge159.i:                                 ; preds = %._crit_edge.us.i
  %i.ep = fdiv nsz double 1.000000e+00, %i.eo
  %xtraiter114 = and i64 %wide.trip.count190.i, 1
  %i.eq = icmp eq i64 %i.dt, 0
  %unroll_iter119 = and i64 %wide.trip.count190.i, 2147483646
  %lcmp.mod117.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = trunc i32 %i.cu to i1
  br label %.lr.ph.us165.i

.lr.ph.us165.i:                                   ; preds = %._crit_edge.us167.i, %._crit_edge159.i
  %indvars.iv201.i = phi i64 [ 0, %._crit_edge159.i ], [ %indvars.iv.next202.i, %._crit_edge.us167.i ] ; 7 uses
  %i.er = mul nsw i64 %indvars.iv201.i, %i.ds
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv201.i
  %i.et = load double, ptr %i.es, align 8, !tbaa !58
  %i.eu = fmul nsz double %i.ep, %i.et            ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv201.i
  store double %i.eu, ptr %i.ev, align 8, !tbaa !58
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv201.i ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !58
  %i.ey = tail call nsz double @llvm.fmuladd.f64(double %i.eu, double %i.dq, double %i.ex) ; 2 uses
  %gep231.i = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv201.i
  store double %i.ey, ptr %gep231.i, align 8, !tbaa !58
  store double %i.ey, ptr %i.ew, align 8, !tbaa !58
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv201.i ; 4 uses
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !58
  %invariant.gep228.i = getelementptr [8 x i8], ptr %i.ci, i64 %i.er ; 3 uses
  br i1 %i.eq, label %.epil.preheader113, label %.lr.ph.us165.i.new

.lr.ph.us165.i.new:                               ; preds = %.lr.ph.us165.i, %.lr.ph.us165.i.new
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.1, %.lr.ph.us165.i.new ], [ 0, %.lr.ph.us165.i ] ; 3 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i.1, %.lr.ph.us165.i.new ], [ %i.db, %.lr.ph.us165.i ] ; 3 uses
  %i.fa = phi double [ %i.fk, %.lr.ph.us165.i.new ], [ 0.000000e+00, %.lr.ph.us165.i ]
  %niter120 = phi i64 [ %niter120.next.1, %.lr.ph.us165.i.new ], [ 0, %.lr.ph.us165.i ]
  %gep229.i = getelementptr [8 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i
  %i.fb = load double, ptr %gep229.i, align 8, !tbaa !58
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv192.i
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !58
  %i.fe = tail call nsz double @llvm.fmuladd.f64(double %i.fb, double %i.fd, double %i.fa) ; 2 uses
  store double %i.fe, ptr %i.ez, align 8, !tbaa !58
  %i.ff = getelementptr [8 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i
  %gep229.i.1 = getelementptr i8, ptr %i.ff, i64 8
  %i.fg = load double, ptr %gep229.i.1, align 8, !tbaa !58
  %i.fh = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv192.i
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !58
  %i.fk = tail call nsz double @llvm.fmuladd.f64(double %i.fg, double %i.fj, double %i.fe) ; 3 uses
  store double %i.fk, ptr %i.ez, align 8, !tbaa !58
  %indvars.iv.next195.i.1 = add nuw nsw i64 %indvars.iv194.i, 2 ; 2 uses
  %indvars.iv.next193.i.1 = add nsw i64 %indvars.iv192.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.us167.i.unr-lcssa, label %.lr.ph.us165.i.new, !llvm.loop !94

._crit_edge.us167.i.unr-lcssa:                    ; preds = %.lr.ph.us165.i.new
  br i1 %lcmp.mod117.not, label %._crit_edge.us167.i, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.us167.i.unr-lcssa, %.lr.ph.us165.i
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.lr.ph.us165.i ], [ %indvars.iv.next195.i.1, %._crit_edge.us167.i.unr-lcssa ]
  %indvars.iv192.i.epil.init = phi i64 [ %i.db, %.lr.ph.us165.i ], [ %indvars.iv.next193.i.1, %._crit_edge.us167.i.unr-lcssa ]
  %.epil.init116 = phi double [ 0.000000e+00, %.lr.ph.us165.i ], [ %i.fk, %._crit_edge.us167.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %gep229.i.epil = getelementptr [8 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i.epil.init
  %i.fl = load double, ptr %gep229.i.epil, align 8, !tbaa !58
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %indvars.iv192.i.epil.init
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !58
  %i.fo = tail call nsz double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %.epil.init116)
  store double %i.fo, ptr %i.ez, align 8, !tbaa !58
  br label %._crit_edge.us167.i

._crit_edge.us167.i:                              ; preds = %._crit_edge.us167.i.unr-lcssa, %.epil.preheader113
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count190.i
  br i1 %exitcond205.not.i, label %.lr.ph.i.preheader, label %.lr.ph.us165.i, !llvm.loop !95

.lr.ph.i.preheader:                               ; preds = %._crit_edge.us167.i
  %i.fp = shl nuw nsw i64 %wide.trip.count190.i, 3 ; 3 uses
  %scevgep82 = getelementptr i8, ptr %i.by, i64 %i.fp
  %scevgep83 = getelementptr i8, ptr %i.bt, i64 %i.fp
  %i.fq = shl nuw nsw i64 %wide.trip.count190.i, 3
  %i.fr = add nsw i64 %i.fq, -8
  %i.fs = mul i64 %i.fr, %i.ds
  %i.ft = getelementptr i8, ptr %i.cn, i64 %i.fs
  %scevgep84 = getelementptr i8, ptr %i.ft, i64 %i.fp ; 2 uses
  %min.iters.check86 = icmp ult i32 %i.cu, 6
  %bound088 = icmp ult ptr %i.cn, %scevgep83
  %bound189 = icmp ult ptr %i.bt, %scevgep84
  %found.conflict90 = and i1 %bound088, %bound189
  %stride.check91 = icmp slt i32 %i.ct, 0
  %i.fu = or i1 %found.conflict90, %stride.check91
  %bound092 = icmp ult ptr %i.cn, %scevgep82
  %bound193 = icmp ult ptr %i.by, %scevgep84
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %i.fu, %found.conflict94
  %n.vec97 = and i64 %wide.trip.count190.i, 2147483644 ; 3 uses
  %cmp.n106 = icmp eq i64 %n.vec97, %wide.trip.count190.i
  %xtraiter121 = and i64 %wide.trip.count190.i, 3 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.fv = mul nsw i64 %indvars.iv211.i, %i.ds
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv211.i ; 6 uses
  %invariant.gep232.i = getelementptr [8 x i8], ptr %i.cn, i64 %i.fv ; 6 uses
  %brmerge = select i1 %min.iters.check86, i1 true, i1 %conflict.rdx95
  br i1 %brmerge, label %scalar.ph85.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph.i
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !58, !alias.scope !113
  %broadcast.splatinsert102 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat103 = shufflevector <2 x double> %broadcast.splatinsert102, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index99 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load100 = load <2 x double>, ptr %i.fy, align 8, !tbaa !58, !alias.scope !114
  %wide.load101 = load <2 x double>, ptr %i.fz, align 8, !tbaa !58, !alias.scope !114
  %i.ga = fmul nsz <2 x double> %broadcast.splat103, %wide.load100
  %i.gb = fmul nsz <2 x double> %broadcast.splat103, %wide.load101
  %i.gc = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %index99 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store <2 x double> %i.ga, ptr %i.gc, align 8, !tbaa !58, !alias.scope !115, !noalias !116
  store <2 x double> %i.gb, ptr %i.gd, align 8, !tbaa !58, !alias.scope !115, !noalias !116
  %index.next104 = add nuw i64 %index99, 4        ; 2 uses
  %i.ge = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.ge, label %middle.block105, label %vector.body98, !llvm.loop !100

middle.block105:                                  ; preds = %vector.body98
  br i1 %cmp.n106, label %._crit_edge.i, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %.lr.ph.i, %middle.block105
  %indvars.iv206.i.ph = phi i64 [ %n.vec97, %middle.block105 ], [ 0, %.lr.ph.i ] ; 3 uses
  br i1 %lcmp.mod122.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol

scalar.ph85.prol:                                 ; preds = %scalar.ph85.preheader, %scalar.ph85.prol
  %indvars.iv206.i.prol = phi i64 [ %indvars.iv.next207.i.prol, %scalar.ph85.prol ], [ %indvars.iv206.i.ph, %scalar.ph85.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph85.prol ], [ 0, %scalar.ph85.preheader ]
  %i.gf = load double, ptr %i.fw, align 8, !tbaa !58
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv206.i.prol
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !58
  %i.gi = fmul nsz double %i.gf, %i.gh
  %gep233.i.prol = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %indvars.iv206.i.prol
  store double %i.gi, ptr %gep233.i.prol, align 8, !tbaa !58
  %indvars.iv.next207.i.prol = add nuw nsw i64 %indvars.iv206.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter121
  br i1 %prol.iter.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !101

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv206.i.unr = phi i64 [ %indvars.iv206.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next207.i.prol, %scalar.ph85.prol ]
  %i.gj = sub nsw i64 %indvars.iv206.i.ph, %wide.trip.count190.i
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %._crit_edge.i, label %scalar.ph85

._crit_edge.i:                                    ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block105
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count190.i
  br i1 %exitcond215.not.i, label %.lr.ph173.i.preheader, label %.lr.ph.i, !llvm.loop !102

.lr.ph173.i.preheader:                            ; preds = %._crit_edge.i
  %i.gl = shl nuw nsw i64 %wide.trip.count190.i, 3
  %4 = add nsw i64 %i.gl, -8
  %5 = mul i64 %4, %i.ds
  %i.gm = shl nuw nsw i64 %wide.trip.count190.i, 3
  %6 = add i64 %5, %i.gm                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cn, i64 %6
  %scevgep60 = getelementptr i8, ptr %i.cn, i64 -8
  %7 = shl nuw nsw i64 %wide.trip.count190.i, 4
  %scevgep61.a = getelementptr i8, ptr %scevgep60, i64 %7
  %scevgep62.a = getelementptr i8, ptr %i.ci, i64 %6
  %min.iters.check = icmp ugt i32 %i.cu, 3
  %ident.check.not = icmp eq i32 %i.ct, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.ci, %scevgep61.a
  %bound1 = icmp ult ptr %i.cn, %scevgep62.a
  %bound063 = icmp ult ptr %i.ci, %scevgep
  %found.conflict108 = or i1 %bound0, %bound063
  %conflict.rdx.a = and i1 %found.conflict108, %bound1
  %n.vec = and i64 %wide.trip.count190.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count190.i
  %xtraiter123 = and i64 %wide.trip.count190.i, 1
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  %i.gn = add nsw i64 %wide.trip.count190.i, -1
  br label %.lr.ph173.i

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i.3, %scalar.ph85 ], [ %indvars.iv206.i.unr, %scalar.ph85.prol.loopexit ] ; 6 uses
  %i.go = load double, ptr %i.fw, align 8, !tbaa !58
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv206.i
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !58
  %i.gr = fmul nsz double %i.go, %i.gq
  %gep233.i = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %indvars.iv206.i
  store double %i.gr, ptr %gep233.i, align 8, !tbaa !58
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %i.gs = load double, ptr %i.fw, align 8, !tbaa !58
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next207.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !58
  %i.gv = fmul nsz double %i.gs, %i.gu
  %gep233.i.1 = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i
  store double %i.gv, ptr %gep233.i.1, align 8, !tbaa !58
  %indvars.iv.next207.i.1 = add nuw nsw i64 %indvars.iv206.i, 2 ; 2 uses
  %i.gw = load double, ptr %i.fw, align 8, !tbaa !58
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next207.i.1
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !58
  %i.gz = fmul nsz double %i.gw, %i.gy
  %gep233.i.2 = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i.1
  store double %i.gz, ptr %gep233.i.2, align 8, !tbaa !58
  %indvars.iv.next207.i.2 = add nuw nsw i64 %indvars.iv206.i, 3 ; 2 uses
  %i.ha = load double, ptr %i.fw, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next207.i.2
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !58
  %i.hd = fmul nsz double %i.ha, %i.hc
  %gep233.i.3 = getelementptr [8 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i.2
  store double %i.hd, ptr %gep233.i.3, align 8, !tbaa !58
  %indvars.iv.next207.i.3 = add nuw nsw i64 %indvars.iv206.i, 4 ; 2 uses
  %exitcond210.not.i.3 = icmp eq i64 %indvars.iv.next207.i.3, %wide.trip.count190.i
  br i1 %exitcond210.not.i.3, label %._crit_edge.i, label %scalar.ph85, !llvm.loop !103

._crit_edge177.split.i:                           ; preds = %._crit_edge174.i, %.lr.ph
  %i.he = load i32, ptr %i.ag, align 4, !tbaa !65
  switch i32 %i.he, label %process_sample_double.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

.lr.ph173.i:                                      ; preds = %.lr.ph173.i.preheader, %._crit_edge174.i
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %._crit_edge174.i ], [ 0, %.lr.ph173.i.preheader ] ; 3 uses
  %i.hf = mul nsw i64 %indvars.iv221.i, %i.ds     ; 4 uses
  %invariant.gep234.i = getelementptr [8 x i8], ptr %i.cn, i64 %indvars.iv221.i ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge130 = select i1 %or.cond.not, i1 true, i1 %conflict.rdx.a
  br i1 %brmerge130, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph173.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph173.i ] ; 3 uses
  %i.hg = add nsw i64 %index, %i.hf               ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.hg ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.hh, align 8, !tbaa !58, !alias.scope !117, !noalias !118
  %wide.load65 = load <2 x double>, ptr %i.hi, align 8, !tbaa !58, !alias.scope !117, !noalias !118
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hg ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load66 = load <2 x double>, ptr %i.hj, align 8, !tbaa !58, !alias.scope !119
  %wide.load67 = load <2 x double>, ptr %i.hk, align 8, !tbaa !58, !alias.scope !119
  %i.hl = getelementptr [8 x i8], ptr %invariant.gep234.i, i64 %index ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  %wide.load68 = load <2 x double>, ptr %i.hl, align 8, !tbaa !58, !alias.scope !120
  %wide.load69 = load <2 x double>, ptr %i.hm, align 8, !tbaa !58, !alias.scope !120
  %i.hn = fadd nsz <2 x double> %wide.load66, %wide.load68
  %i.ho = fadd nsz <2 x double> %wide.load67, %wide.load69
  %i.hp = fneg nsz <2 x double> %i.hn
  %i.hq = fneg nsz <2 x double> %i.ho
  %i.hr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> splat (double 5.000000e-01), <2 x double> %wide.load)
  %i.hs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> splat (double 5.000000e-01), <2 x double> %wide.load65)
  %i.ht = fmul nsz <2 x double> %i.hr, %broadcast.splat
  %i.hu = fmul nsz <2 x double> %i.hs, %broadcast.splat
  store <2 x double> %i.ht, ptr %i.hh, align 8, !tbaa !58, !alias.scope !117, !noalias !118
  store <2 x double> %i.hu, ptr %i.hi, align 8, !tbaa !58, !alias.scope !117, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge174.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph173.i, %middle.block
  %indvars.iv216.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph173.i ] ; 5 uses
  br i1 %lcmp.mod124.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hw = add nsw i64 %indvars.iv216.i.ph, %i.hf  ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !58
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.hw
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !58
  %i.ib = mul nsw i64 %indvars.iv216.i.ph, %i.ds
  %gep235.i.prol = getelementptr [8 x i8], ptr %invariant.gep234.i, i64 %i.ib
  %i.ic = load double, ptr %gep235.i.prol, align 8, !tbaa !58
  %i.id = fadd nsz double %i.ia, %i.ic
  %i.ie = fneg nsz double %i.id
  %i.if = tail call nsz double @llvm.fmuladd.f64(double %i.ie, double 5.000000e-01, double %i.hy)
  %i.ig = fmul nsz double %i.if, %i.cw
  store double %i.ig, ptr %i.hx, align 8, !tbaa !58
  %indvars.iv.next217.i.prol = or disjoint i64 %indvars.iv216.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv216.i.unr = phi i64 [ %indvars.iv216.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next217.i.prol, %scalar.ph.prol ]
  %i.ih = icmp eq i64 %indvars.iv216.i.ph, %i.gn
  br i1 %i.ih, label %._crit_edge174.i, label %scalar.ph

._crit_edge174.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next222.i, %wide.trip.count190.i
  br i1 %exitcond225.not.i, label %._crit_edge177.split.i, label %.lr.ph173.i, !llvm.loop !109

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv216.i = phi i64 [ %indvars.iv.next217.i.1, %scalar.ph ], [ %indvars.iv216.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ii = add nsw i64 %indvars.iv216.i, %i.hf     ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.ii ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !58
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ii
  %i.im = load double, ptr %i.il, align 8, !tbaa !58
  %i.in = mul nsw i64 %indvars.iv216.i, %i.ds
  %gep235.i = getelementptr [8 x i8], ptr %invariant.gep234.i, i64 %i.in
  %i.io = load double, ptr %gep235.i, align 8, !tbaa !58
  %i.ip = fadd nsz double %i.im, %i.io
  %i.iq = fneg nsz double %i.ip
  %i.ir = tail call nsz double @llvm.fmuladd.f64(double %i.iq, double 5.000000e-01, double %i.ik)
  %i.is = fmul nsz double %i.ir, %i.cw
  store double %i.is, ptr %i.ij, align 8, !tbaa !58
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %i.it = add nsw i64 %indvars.iv.next217.i, %i.hf ; 2 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.it ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !58
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.it
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !58
  %i.iy = mul nsw i64 %indvars.iv.next217.i, %i.ds
  %gep235.i.1 = getelementptr [8 x i8], ptr %invariant.gep234.i, i64 %i.iy
  %i.iz = load double, ptr %gep235.i.1, align 8, !tbaa !58
  %i.ja = fadd nsz double %i.ix, %i.iz
  %i.jb = fneg nsz double %i.ja
  %i.jc = tail call nsz double @llvm.fmuladd.f64(double %i.jb, double 5.000000e-01, double %i.iv)
  %i.jd = fmul nsz double %i.jc, %i.cw
  store double %i.jd, ptr %i.iu, align 8, !tbaa !58
  %indvars.iv.next217.i.1 = add nuw nsw i64 %indvars.iv216.i, 2 ; 2 uses
  %exitcond220.not.i.1 = icmp eq i64 %indvars.iv.next217.i.1, %wide.trip.count190.i
  br i1 %exitcond220.not.i.1, label %._crit_edge174.i, label %scalar.ph, !llvm.loop !110

bb.b:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_double.exit

bb.c:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_double.exit

bb.d:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_double.exit

bb.e:                                             ; preds = %._crit_edge177.split.i
  %i.je = fsub nsz double %i.bc, %i.dn
  br label %process_sample_double.exit

process_sample_double.exit:                       ; preds = %._crit_edge177.split.i, %bb.b, %bb.c, %bb.d, %bb.e
  %.0148.i = phi nsz double [ %i.dn, %._crit_edge177.split.i ], [ %i.bc, %bb.b ], [ %i.be, %bb.c ], [ %i.dq, %bb.d ], [ %i.je, %bb.e ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  store double %.0148.i, ptr %i.jf, align 8, !tbaa !58
  %i.jg = load i32, ptr %i.ah, align 8, !tbaa !66
  %.not = icmp eq i32 %i.jg, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %process_sample_double.exit
  %i.jh = load double, ptr %i.bb, align 8, !tbaa !58
  store double %i.jh, ptr %i.jf, align 8, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %process_sample_double.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ji = load i32, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = icmp slt i64 %indvars.iv.next, %i.jj
  br i1 %i.jk, label %.lr.ph, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = sext i32 %2 to i64
  %i.e = mul nsw i64 %i.c, %i.d
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %i.g = sdiv i64 %i.e, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = add nsw i32 %2, 1
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.c, %i.j
  %i.l = sdiv i64 %i.k, %i.f
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp slt i32 %i.h, %i.m
  br i1 %i.n, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph38.split.preheader, label %._crit_edge39

.lr.ph38.split.preheader:                         ; preds = %.lr.ph38
  %sext = shl i64 %i.g, 32
  %i.ak = ashr exact i64 %sext, 32
  br label %.lr.ph38.split

._crit_edge39:                                    ; preds = %._crit_edge, %.lr.ph38, %bb.a
  ret i32 0

.lr.ph38.split:                                   ; preds = %.lr.ph38.split.preheader, %._crit_edge
  %i.al = phi i32 [ %i.ai, %.lr.ph38.split.preheader ], [ %i.ba, %._crit_edge ] ; 2 uses
  %indvars.iv43 = phi i64 [ %i.ak, %.lr.ph38.split.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 12 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv43
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %indvars.iv43
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %indvars.iv43
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = icmp sgt i32 %i.al, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph38.split
  %i.ba = phi i32 [ %i.al, %.lr.ph38.split ], [ %i.jg, %bb.g ]
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.m
  br i1 %exitcond.not, label %._crit_edge39, label %.lr.ph38.split, !llvm.loop !121

.lr.ph:                                           ; preds = %.lr.ph38.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph38.split ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60 ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !60 ; 2 uses
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv43
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 2 uses
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %indvars.iv43
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55 ; 10 uses
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !54
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv43
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 4 uses
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !54
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv43
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55 ; 11 uses
  %i.bz = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %indvars.iv43
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55 ; 2 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv43
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 9 uses
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv43
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !55 ; 12 uses
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !54
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv43
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !55 ; 3 uses
  %i.ct = load i32, ptr %i.ac, align 4, !tbaa !44 ; 3 uses
  %i.cu = load i32, ptr %i.ad, align 8, !tbaa !43 ; 9 uses
  %i.cv = load float, ptr %i.ae, align 4, !tbaa !61 ; 5 uses
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cy
  store float %i.bc, ptr %i.cz, align 4, !tbaa !60
  %i.da = sext i32 %i.cw to i64                   ; 7 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.da
  store float %i.bc, ptr %i.db, align 4, !tbaa !60
  %i.dc = sext i32 %i.cu to i64                   ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %i.bj, i64 %i.dc ; 2 uses
  %i.de = sub nsw i64 0, %i.da
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = shl nsw i64 %i.dc, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.by, ptr readonly align 4 %i.df, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !143
  %i.dk = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.dl = tail call nsz float %i.dj(ptr noundef %i.bo, ptr noundef %i.by, i32 noundef %i.dk) #7, !inline_history !122 ; 3 uses
  %i.dm = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 1
  %spec.select.i.i = select i1 %i.dn, i32 %i.cu, i32 %i.dm
  %storemerge.i.i = add nsw i32 %spec.select.i.i, -1
  store i32 %storemerge.i.i, ptr %i.cs, align 4, !tbaa !42
  %i.do = fsub nsz float %i.be, %i.dl             ; 2 uses
  %i.dp = icmp sgt i32 %i.cu, 0
  br i1 %i.dp, label %.lr.ph.us.preheader.i, label %._crit_edge177.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph
  %i.dq = sext i32 %i.ct to i64                   ; 9 uses
  %wide.trip.count190.i = zext nneg i32 %i.cu to i64 ; 24 uses
  %i.dr = add nsw i64 %wide.trip.count190.i, -1   ; 2 uses
  %xtraiter = and i64 %wide.trip.count190.i, 1
  %i.ds = icmp eq i64 %i.dr, 0
  %unroll_iter = and i64 %wide.trip.count190.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod112 = trunc i32 %i.cu to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv185.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next186.i, %._crit_edge.us.i ] ; 3 uses
  %indvars.iv183.i = phi i64 [ %i.da, %.lr.ph.us.preheader.i ], [ %indvars.iv.next184.i, %._crit_edge.us.i ] ; 2 uses
  %.0149154.us.i = phi float [ %i.cv, %.lr.ph.us.preheader.i ], [ %i.em, %._crit_edge.us.i ]
  %i.dt = mul nsw i64 %indvars.iv185.i, %i.dq
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv185.i ; 4 uses
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !60
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ci, i64 %i.dt ; 3 uses
  br i1 %i.ds, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us.i.new ], [ %i.da, %.lr.ph.us.i ] ; 3 uses
  %i.dv = phi float [ %i.ef, %.lr.ph.us.i.new ], [ 0.000000e+00, %.lr.ph.us.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i
  %i.dw = load float, ptr %gep.i, align 4, !tbaa !60
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !60
  %i.dz = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float %i.dy, float %i.dv) ; 2 uses
  store float %i.dz, ptr %i.du, align 4, !tbaa !60
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i
  %gep.i.1 = getelementptr i8, ptr %i.ea, i64 4
  %i.eb = load float, ptr %gep.i.1, align 4, !tbaa !60
  %i.ec = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !60
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.ee, float %i.dz) ; 4 uses
  store float %i.ef, ptr %i.du, align 4, !tbaa !60
  %indvars.iv.next179.i.1 = add nuw nsw i64 %indvars.iv178.i, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !123

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv178.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next179.i.1, %._crit_edge.us.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.da, %.lr.ph.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.i ], [ %i.ef, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv178.i.epil.init
  %i.eg = load float, ptr %gep.i.epil, align 4, !tbaa !60
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv.i.epil.init
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !60
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %i.eg, float %i.ei, float %.epil.init) ; 2 uses
  store float %i.ej, ptr %i.du, align 4, !tbaa !60
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.ef, %._crit_edge.us.i.unr-lcssa ], [ %i.ej, %.epil.preheader ]
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv183.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !60
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %.lcssa, float %i.el, float %.0149154.us.i) ; 2 uses
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 1 ; 2 uses
  %indvars.iv.next184.i = add nsw i64 %indvars.iv183.i, 1
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next186.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %._crit_edge159.i, label %.lr.ph.us.i, !llvm.loop !124

._crit_edge159.i:                                 ; preds = %._crit_edge.us.i
  %i.en = fdiv nsz float 1.000000e+00, %i.em
  %xtraiter114 = and i64 %wide.trip.count190.i, 1
  %i.eo = icmp eq i64 %i.dr, 0
  %unroll_iter119 = and i64 %wide.trip.count190.i, 2147483646
  %lcmp.mod117.not = icmp eq i64 %xtraiter114, 0
  %lcmp.mod118 = trunc i32 %i.cu to i1
  br label %.lr.ph.us165.i

.lr.ph.us165.i:                                   ; preds = %._crit_edge.us167.i, %._crit_edge159.i
  %indvars.iv201.i = phi i64 [ 0, %._crit_edge159.i ], [ %indvars.iv.next202.i, %._crit_edge.us167.i ] ; 7 uses
  %i.ep = mul nsw i64 %indvars.iv201.i, %i.dq
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv201.i
  %i.er = load float, ptr %i.eq, align 4, !tbaa !60
  %i.es = fmul nsz float %i.en, %i.er             ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv201.i
  store float %i.es, ptr %i.et, align 4, !tbaa !60
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv201.i ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !60
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.es, float %i.do, float %i.ev) ; 2 uses
  %gep231.i = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv201.i
  store float %i.ew, ptr %gep231.i, align 4, !tbaa !60
  store float %i.ew, ptr %i.eu, align 4, !tbaa !60
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv201.i ; 4 uses
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !60
  %invariant.gep228.i = getelementptr [4 x i8], ptr %i.ci, i64 %i.ep ; 3 uses
  br i1 %i.eo, label %.epil.preheader113, label %.lr.ph.us165.i.new

.lr.ph.us165.i.new:                               ; preds = %.lr.ph.us165.i, %.lr.ph.us165.i.new
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i.1, %.lr.ph.us165.i.new ], [ 0, %.lr.ph.us165.i ] ; 3 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i.1, %.lr.ph.us165.i.new ], [ %i.da, %.lr.ph.us165.i ] ; 3 uses
  %i.ey = phi float [ %i.fi, %.lr.ph.us165.i.new ], [ 0.000000e+00, %.lr.ph.us165.i ]
  %niter120 = phi i64 [ %niter120.next.1, %.lr.ph.us165.i.new ], [ 0, %.lr.ph.us165.i ]
  %gep229.i = getelementptr [4 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i
  %i.ez = load float, ptr %gep229.i, align 4, !tbaa !60
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv192.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !60
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.fb, float %i.ey) ; 2 uses
  store float %i.fc, ptr %i.ex, align 4, !tbaa !60
  %i.fd = getelementptr [4 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i
  %gep229.i.1 = getelementptr i8, ptr %i.fd, i64 4
  %i.fe = load float, ptr %gep229.i.1, align 4, !tbaa !60
  %i.ff = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv192.i
  %i.fg = getelementptr i8, ptr %i.ff, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !60
  %i.fi = tail call nsz float @llvm.fmuladd.f32(float %i.fe, float %i.fh, float %i.fc) ; 3 uses
  store float %i.fi, ptr %i.ex, align 4, !tbaa !60
  %indvars.iv.next195.i.1 = add nuw nsw i64 %indvars.iv194.i, 2 ; 2 uses
  %indvars.iv.next193.i.1 = add nsw i64 %indvars.iv192.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.us167.i.unr-lcssa, label %.lr.ph.us165.i.new, !llvm.loop !125

._crit_edge.us167.i.unr-lcssa:                    ; preds = %.lr.ph.us165.i.new
  br i1 %lcmp.mod117.not, label %._crit_edge.us167.i, label %.epil.preheader113

.epil.preheader113:                               ; preds = %._crit_edge.us167.i.unr-lcssa, %.lr.ph.us165.i
  %indvars.iv194.i.epil.init = phi i64 [ 0, %.lr.ph.us165.i ], [ %indvars.iv.next195.i.1, %._crit_edge.us167.i.unr-lcssa ]
  %indvars.iv192.i.epil.init = phi i64 [ %i.da, %.lr.ph.us165.i ], [ %indvars.iv.next193.i.1, %._crit_edge.us167.i.unr-lcssa ]
  %.epil.init116 = phi float [ 0.000000e+00, %.lr.ph.us165.i ], [ %i.fi, %._crit_edge.us167.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %gep229.i.epil = getelementptr [4 x i8], ptr %invariant.gep228.i, i64 %indvars.iv194.i.epil.init
  %i.fj = load float, ptr %gep229.i.epil, align 4, !tbaa !60
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %indvars.iv192.i.epil.init
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !60
  %i.fm = tail call nsz float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %.epil.init116)
  store float %i.fm, ptr %i.ex, align 4, !tbaa !60
  br label %._crit_edge.us167.i

._crit_edge.us167.i:                              ; preds = %._crit_edge.us167.i.unr-lcssa, %.epil.preheader113
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count190.i
  br i1 %exitcond205.not.i, label %.lr.ph.i.preheader, label %.lr.ph.us165.i, !llvm.loop !126

.lr.ph.i.preheader:                               ; preds = %._crit_edge.us167.i
  %i.fn = shl nuw nsw i64 %wide.trip.count190.i, 2 ; 3 uses
  %scevgep82 = getelementptr i8, ptr %i.by, i64 %i.fn
  %scevgep83 = getelementptr i8, ptr %i.bt, i64 %i.fn
  %i.fo = shl nuw nsw i64 %wide.trip.count190.i, 2
  %i.fp = add nsw i64 %i.fo, -4
  %i.fq = mul i64 %i.fp, %i.dq
  %i.fr = getelementptr i8, ptr %i.cn, i64 %i.fq
  %scevgep84 = getelementptr i8, ptr %i.fr, i64 %i.fn ; 2 uses
  %min.iters.check86 = icmp ult i32 %i.cu, 8
  %bound088 = icmp ult ptr %i.cn, %scevgep83
  %bound189 = icmp ult ptr %i.bt, %scevgep84
  %found.conflict90 = and i1 %bound088, %bound189
  %stride.check91 = icmp slt i32 %i.ct, 0
  %i.fs = or i1 %found.conflict90, %stride.check91
  %bound092 = icmp ult ptr %i.cn, %scevgep82
  %bound193 = icmp ult ptr %i.by, %scevgep84
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %i.fs, %found.conflict94
  %n.vec97 = and i64 %wide.trip.count190.i, 2147483640 ; 3 uses
  %cmp.n106 = icmp eq i64 %n.vec97, %wide.trip.count190.i
  %xtraiter121 = and i64 %wide.trip.count190.i, 3 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %._crit_edge.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.ft = mul nsw i64 %indvars.iv211.i, %i.dq
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv211.i ; 6 uses
  %invariant.gep232.i = getelementptr [4 x i8], ptr %i.cn, i64 %i.ft ; 6 uses
  %brmerge = select i1 %min.iters.check86, i1 true, i1 %conflict.rdx95
  br i1 %brmerge, label %scalar.ph85.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.lr.ph.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !60, !alias.scope !144
  %broadcast.splatinsert102 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat103 = shufflevector <4 x float> %broadcast.splatinsert102, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index99 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load100 = load <4 x float>, ptr %i.fw, align 4, !tbaa !60, !alias.scope !145
  %wide.load101 = load <4 x float>, ptr %i.fx, align 4, !tbaa !60, !alias.scope !145
  %i.fy = fmul nsz <4 x float> %broadcast.splat103, %wide.load100
  %i.fz = fmul nsz <4 x float> %broadcast.splat103, %wide.load101
  %i.ga = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %index99 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store <4 x float> %i.fy, ptr %i.ga, align 4, !tbaa !60, !alias.scope !146, !noalias !147
  store <4 x float> %i.fz, ptr %i.gb, align 4, !tbaa !60, !alias.scope !146, !noalias !147
  %index.next104 = add nuw i64 %index99, 8        ; 2 uses
  %i.gc = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.gc, label %middle.block105, label %vector.body98, !llvm.loop !131

middle.block105:                                  ; preds = %vector.body98
  br i1 %cmp.n106, label %._crit_edge.i, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %.lr.ph.i, %middle.block105
  %indvars.iv206.i.ph = phi i64 [ %n.vec97, %middle.block105 ], [ 0, %.lr.ph.i ] ; 3 uses
  br i1 %lcmp.mod122.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol

scalar.ph85.prol:                                 ; preds = %scalar.ph85.preheader, %scalar.ph85.prol
  %indvars.iv206.i.prol = phi i64 [ %indvars.iv.next207.i.prol, %scalar.ph85.prol ], [ %indvars.iv206.i.ph, %scalar.ph85.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph85.prol ], [ 0, %scalar.ph85.preheader ]
  %i.gd = load float, ptr %i.fu, align 4, !tbaa !60
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv206.i.prol
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !60
  %i.gg = fmul nsz float %i.gd, %i.gf
  %gep233.i.prol = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %indvars.iv206.i.prol
  store float %i.gg, ptr %gep233.i.prol, align 4, !tbaa !60
  %indvars.iv.next207.i.prol = add nuw nsw i64 %indvars.iv206.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter121
  br i1 %prol.iter.cmp.not, label %scalar.ph85.prol.loopexit, label %scalar.ph85.prol, !llvm.loop !132

scalar.ph85.prol.loopexit:                        ; preds = %scalar.ph85.prol, %scalar.ph85.preheader
  %indvars.iv206.i.unr = phi i64 [ %indvars.iv206.i.ph, %scalar.ph85.preheader ], [ %indvars.iv.next207.i.prol, %scalar.ph85.prol ]
  %i.gh = sub nsw i64 %indvars.iv206.i.ph, %wide.trip.count190.i
  %i.gi = icmp ugt i64 %i.gh, -4
  br i1 %i.gi, label %._crit_edge.i, label %scalar.ph85

._crit_edge.i:                                    ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85, %middle.block105
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count190.i
  br i1 %exitcond215.not.i, label %.lr.ph173.i.preheader, label %.lr.ph.i, !llvm.loop !133

.lr.ph173.i.preheader:                            ; preds = %._crit_edge.i
  %i.gj = shl nuw nsw i64 %wide.trip.count190.i, 2
  %4 = add nsw i64 %i.gj, -4
  %5 = mul i64 %4, %i.dq
  %i.gk = shl nuw nsw i64 %wide.trip.count190.i, 2
  %6 = add i64 %5, %i.gk                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cn, i64 %6
  %scevgep60 = getelementptr i8, ptr %i.cn, i64 -4
  %7 = shl nuw nsw i64 %wide.trip.count190.i, 3
  %scevgep61.a = getelementptr i8, ptr %scevgep60, i64 %7
  %scevgep62.a = getelementptr i8, ptr %i.ci, i64 %6
  %min.iters.check = icmp ugt i32 %i.cu, 7
  %ident.check.not = icmp eq i32 %i.ct, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.ci, %scevgep61.a
  %bound1 = icmp ult ptr %i.cn, %scevgep62.a
  %bound063 = icmp ult ptr %i.ci, %scevgep
  %found.conflict108 = or i1 %bound0, %bound063
  %conflict.rdx.a = and i1 %found.conflict108, %bound1
  %n.vec = and i64 %wide.trip.count190.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count190.i
  %xtraiter123 = and i64 %wide.trip.count190.i, 1
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  %i.gl = add nsw i64 %wide.trip.count190.i, -1
  br label %.lr.ph173.i

scalar.ph85:                                      ; preds = %scalar.ph85.prol.loopexit, %scalar.ph85
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i.3, %scalar.ph85 ], [ %indvars.iv206.i.unr, %scalar.ph85.prol.loopexit ] ; 6 uses
  %i.gm = load float, ptr %i.fu, align 4, !tbaa !60
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv206.i
  %i.go = load float, ptr %i.gn, align 4, !tbaa !60
  %i.gp = fmul nsz float %i.gm, %i.go
  %gep233.i = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %indvars.iv206.i
  store float %i.gp, ptr %gep233.i, align 4, !tbaa !60
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %i.gq = load float, ptr %i.fu, align 4, !tbaa !60
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next207.i
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !60
  %i.gt = fmul nsz float %i.gq, %i.gs
  %gep233.i.1 = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i
  store float %i.gt, ptr %gep233.i.1, align 4, !tbaa !60
  %indvars.iv.next207.i.1 = add nuw nsw i64 %indvars.iv206.i, 2 ; 2 uses
  %i.gu = load float, ptr %i.fu, align 4, !tbaa !60
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next207.i.1
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !60
  %i.gx = fmul nsz float %i.gu, %i.gw
  %gep233.i.2 = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i.1
  store float %i.gx, ptr %gep233.i.2, align 4, !tbaa !60
  %indvars.iv.next207.i.2 = add nuw nsw i64 %indvars.iv206.i, 3 ; 2 uses
  %i.gy = load float, ptr %i.fu, align 4, !tbaa !60
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next207.i.2
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !60
  %i.hb = fmul nsz float %i.gy, %i.ha
  %gep233.i.3 = getelementptr [4 x i8], ptr %invariant.gep232.i, i64 %indvars.iv.next207.i.2
  store float %i.hb, ptr %gep233.i.3, align 4, !tbaa !60
  %indvars.iv.next207.i.3 = add nuw nsw i64 %indvars.iv206.i, 4 ; 2 uses
  %exitcond210.not.i.3 = icmp eq i64 %indvars.iv.next207.i.3, %wide.trip.count190.i
  br i1 %exitcond210.not.i.3, label %._crit_edge.i, label %scalar.ph85, !llvm.loop !134

._crit_edge177.split.i:                           ; preds = %._crit_edge174.i, %.lr.ph
  %i.hc = load i32, ptr %i.ag, align 4, !tbaa !65
  switch i32 %i.hc, label %process_sample_float.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

.lr.ph173.i:                                      ; preds = %.lr.ph173.i.preheader, %._crit_edge174.i
  %indvars.iv221.i = phi i64 [ %indvars.iv.next222.i, %._crit_edge174.i ], [ 0, %.lr.ph173.i.preheader ] ; 3 uses
  %i.hd = mul nsw i64 %indvars.iv221.i, %i.dq     ; 4 uses
  %invariant.gep234.i = getelementptr [4 x i8], ptr %i.cn, i64 %indvars.iv221.i ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge130 = select i1 %or.cond.not, i1 true, i1 %conflict.rdx.a
  br i1 %brmerge130, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph173.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph173.i ] ; 3 uses
  %i.he = add nsw i64 %index, %i.hd               ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.he ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.hf, align 4, !tbaa !60, !alias.scope !148, !noalias !149
  %wide.load65 = load <4 x float>, ptr %i.hg, align 4, !tbaa !60, !alias.scope !148, !noalias !149
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.he ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load66 = load <4 x float>, ptr %i.hh, align 4, !tbaa !60, !alias.scope !150
  %wide.load67 = load <4 x float>, ptr %i.hi, align 4, !tbaa !60, !alias.scope !150
  %i.hj = getelementptr [4 x i8], ptr %invariant.gep234.i, i64 %index ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 16
  %wide.load68 = load <4 x float>, ptr %i.hj, align 4, !tbaa !60, !alias.scope !151
  %wide.load69 = load <4 x float>, ptr %i.hk, align 4, !tbaa !60, !alias.scope !151
  %i.hl = fadd nsz <4 x float> %wide.load66, %wide.load68
  %i.hm = fadd nsz <4 x float> %wide.load67, %wide.load69
  %i.hn = fneg nsz <4 x float> %i.hl
  %i.ho = fneg nsz <4 x float> %i.hm
  %i.hp = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> splat (float 5.000000e-01), <4 x float> %wide.load)
  %i.hq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> splat (float 5.000000e-01), <4 x float> %wide.load65)
  %i.hr = fmul nsz <4 x float> %broadcast.splat, %i.hp
  %i.hs = fmul nsz <4 x float> %broadcast.splat, %i.hq
  store <4 x float> %i.hr, ptr %i.hf, align 4, !tbaa !60, !alias.scope !148, !noalias !149
  store <4 x float> %i.hs, ptr %i.hg, align 4, !tbaa !60, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge174.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph173.i, %middle.block
  %indvars.iv216.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph173.i ] ; 5 uses
  br i1 %lcmp.mod124.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hu = add nsw i64 %indvars.iv216.i.ph, %i.hd  ; 2 uses
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.hu ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !60
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.hu
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !60
  %i.hz = mul nsw i64 %indvars.iv216.i.ph, %i.dq
  %gep235.i.prol = getelementptr [4 x i8], ptr %invariant.gep234.i, i64 %i.hz
  %i.ia = load float, ptr %gep235.i.prol, align 4, !tbaa !60
  %i.ib = fadd nsz float %i.hy, %i.ia
  %i.ic = fneg nsz float %i.ib
  %i.id = tail call nsz float @llvm.fmuladd.f32(float %i.ic, float 5.000000e-01, float %i.hw)
  %i.ie = fmul nsz float %i.cv, %i.id
  store float %i.ie, ptr %i.hv, align 4, !tbaa !60
  %indvars.iv.next217.i.prol = or disjoint i64 %indvars.iv216.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv216.i.unr = phi i64 [ %indvars.iv216.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next217.i.prol, %scalar.ph.prol ]
  %i.if = icmp eq i64 %indvars.iv216.i.ph, %i.gl
  br i1 %i.if, label %._crit_edge174.i, label %scalar.ph

._crit_edge174.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next222.i, %wide.trip.count190.i
  br i1 %exitcond225.not.i, label %._crit_edge177.split.i, label %.lr.ph173.i, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv216.i = phi i64 [ %indvars.iv.next217.i.1, %scalar.ph ], [ %indvars.iv216.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ig = add nsw i64 %indvars.iv216.i, %i.hd     ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ig ; 2 uses
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !60
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ig
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !60
  %i.il = mul nsw i64 %indvars.iv216.i, %i.dq
  %gep235.i = getelementptr [4 x i8], ptr %invariant.gep234.i, i64 %i.il
  %i.im = load float, ptr %gep235.i, align 4, !tbaa !60
  %i.in = fadd nsz float %i.ik, %i.im
  %i.io = fneg nsz float %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.io, float 5.000000e-01, float %i.ii)
  %i.iq = fmul nsz float %i.cv, %i.ip
  store float %i.iq, ptr %i.ih, align 4, !tbaa !60
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %i.ir = add nsw i64 %indvars.iv.next217.i, %i.hd ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ir ; 2 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !60
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ir
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !60
  %i.iw = mul nsw i64 %indvars.iv.next217.i, %i.dq
  %gep235.i.1 = getelementptr [4 x i8], ptr %invariant.gep234.i, i64 %i.iw
  %i.ix = load float, ptr %gep235.i.1, align 4, !tbaa !60
  %i.iy = fadd nsz float %i.iv, %i.ix
  %i.iz = fneg nsz float %i.iy
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float 5.000000e-01, float %i.it)
  %i.jb = fmul nsz float %i.cv, %i.ja
  store float %i.jb, ptr %i.is, align 4, !tbaa !60
  %indvars.iv.next217.i.1 = add nuw nsw i64 %indvars.iv216.i, 2 ; 2 uses
  %exitcond220.not.i.1 = icmp eq i64 %indvars.iv.next217.i.1, %wide.trip.count190.i
  br i1 %exitcond220.not.i.1, label %._crit_edge174.i, label %scalar.ph, !llvm.loop !141

bb.b:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_float.exit

bb.c:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_float.exit

bb.d:                                             ; preds = %._crit_edge177.split.i
  br label %process_sample_float.exit

bb.e:                                             ; preds = %._crit_edge177.split.i
  %i.jc = fsub nsz float %i.bc, %i.dl
  br label %process_sample_float.exit

process_sample_float.exit:                        ; preds = %._crit_edge177.split.i, %bb.b, %bb.c, %bb.d, %bb.e
  %.0148.i = phi nsz float [ %i.dl, %._crit_edge177.split.i ], [ %i.bc, %bb.b ], [ %i.be, %bb.c ], [ %i.do, %bb.d ], [ %i.jc, %bb.e ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  store float %.0148.i, ptr %i.jd, align 4, !tbaa !60
  %i.je = load i32, ptr %i.ah, align 8, !tbaa !66
  %.not = icmp eq i32 %i.je, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %process_sample_float.exit
  %i.jf = load float, ptr %i.bb, align 4, !tbaa !60
  store float %i.jf, ptr %i.jd, align 4, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %process_sample_float.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = load i32, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp slt i64 %indvars.iv.next, %i.jh
  br i1 %i.ji, label %.lr.ph, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @av_default_item_name(ptr noundef) #2

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #2

declare i32 @ff_inlink_check_available_samples(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #2

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_0
