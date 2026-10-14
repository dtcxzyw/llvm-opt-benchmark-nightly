Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adeclick?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@detect_clicks:bb.a
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !50
  %i.af = sub nsw i64 %indvars.iv94, %indvars.iv.epil.init
  %i.ag = getelementptr inbounds [8 x i8], ptr %7, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !50
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double %.epil.init)
  store double %i.ai, ptr %i.n, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.preheader75, label %.preheader76, !llvm.loop !142

.preheader74:                                     ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.au, 0
  br i1 %i.aj, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %.preheader74
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %scevgep = getelementptr i8, ptr %5, i64 1
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %bb.b ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv99
  %i.am = load double, ptr %i.al, align 8, !tbaa !50
  %i.an = tail call nsz double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp nsz ogt double %i.an, %i.p
  %i.ap = zext i1 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv99
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !83
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv99
  %i.as = load double, ptr %i.ar, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv99
  store double %i.as, ptr %i.at, align 8, !tbaa !50
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.au = load i32, ptr %i.c, align 4, !tbaa !38  ; 3 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next100, %i.av
  br i1 %i.aw, label %bb.b, label %.preheader74, !llvm.loop !143

bb.c:                                             ; preds = %.lr.ph85, %.loopexit
  %i.ax = phi i32 [ %i.au, %.lr.ph85 ], [ %i.bo, %.loopexit ] ; 3 uses
  %indvars.iv106 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next107, %.loopexit ] ; 6 uses
  %.084 = phi i32 [ -1, %.lr.ph85 ], [ %.1, %.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv106
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !83
  %.not71 = icmp eq i8 %i.az, 0
  br i1 %.not71, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i32 %.084, -1
  %i.bb = trunc nuw nsw i64 %indvars.iv106 to i32 ; 3 uses
  %i.bc = add nuw nsw i32 %.084, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = icmp samesign ugt i64 %indvars.iv106, %i.bd
  %or.cond120 = select i1 %i.ba, i1 %i.be, i1 false
  br i1 %or.cond120, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !146
  %i.bg = add nsw i32 %i.bf, %.084
  %i.bh = sext i32 %i.bg to i64
  %.not72.not = icmp sgt i64 %indvars.iv106, %i.bh
  br i1 %.not72.not, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %bb.e
  %i.bi = zext nneg i32 %.084 to i64
  %scevgep102 = getelementptr i8, ptr %scevgep, i64 %i.bi
  %i.bj = trunc i64 %indvars.iv106 to i32
  %i.bk = add i32 %i.bj, -2
  %i.bl = sub i32 %i.bk, %.084
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bm, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep102, i8 1, i64 %i.bn, i1 false), !tbaa !83
  %.pre = load i32, ptr %i.c, align 4, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph82.preheader, %bb.d, %bb.e, %bb.c
  %i.bo = phi i32 [ %i.ax, %bb.c ], [ %i.ax, %bb.d ], [ %i.ax, %bb.e ], [ %.pre, %.lr.ph82.preheader ] ; 2 uses
  %.1 = phi i32 [ %.084, %bb.c ], [ %i.bb, %bb.d ], [ %i.bb, %bb.e ], [ %i.bb, %.lr.ph82.preheader ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next107, %i.bp
  br i1 %i.bq, label %bb.c, label %._crit_edge86, !llvm.loop !144

._crit_edge86:                                    ; preds = %.loopexit, %.preheader75, %.preheader74
  %i.br = load i32, ptr %i.g, align 4, !tbaa !74
  %i.bs = sext i32 %i.br to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %i.bs, i1 false)
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !38
  %i.bu = load i32, ptr %i.g, align 4, !tbaa !74  ; 2 uses
  %i.bv = sub nsw i32 %i.bt, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %5, i64 %i.bw
  %i.by = sext i32 %i.bu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bx, i8 0, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.g, align 4, !tbaa !74  ; 4 uses
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !38  ; 2 uses
  %i.cb = sub nsw i32 %i.ca, %i.bz
  %i.cc = icmp slt i32 %i.bz, %i.cb
  br i1 %i.cc, label %.lr.ph90.preheader, label %._crit_edge91

.lr.ph90.preheader:                               ; preds = %._crit_edge86
  %i.cd = sext i32 %i.bz to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %bb.g
  %i.ce = phi i32 [ %i.bz, %.lr.ph90.preheader ], [ %i.cm, %bb.g ]
  %i.cf = phi i32 [ %i.ca, %.lr.ph90.preheader ], [ %i.cn, %bb.g ]
  %indvars.iv109 = phi i64 [ %i.cd, %.lr.ph90.preheader ], [ %indvars.iv.next110, %bb.g ] ; 3 uses
  %.06488 = phi i32 [ 0, %.lr.ph90.preheader ], [ %.165, %bb.g ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %5, i64 %indvars.iv109
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !83
  %.not = icmp eq i8 %i.ch, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph90
  %i.ci = add nsw i32 %.06488, 1
  %i.cj = sext i32 %.06488 to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cj
  %i.cl = trunc nsw i64 %indvars.iv109 to i32
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !67
  %.pre112 = load i32, ptr %i.c, align 4, !tbaa !38
  %.pre113 = load i32, ptr %i.g, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph90, %bb.f
  %i.cm = phi i32 [ %.pre113, %bb.f ], [ %i.ce, %.lr.ph90 ] ; 2 uses
  %i.cn = phi i32 [ %.pre112, %bb.f ], [ %i.cf, %.lr.ph90 ] ; 2 uses
  %.165 = phi i32 [ %i.ci, %bb.f ], [ %.06488, %.lr.ph90 ] ; 2 uses
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.co = sub nsw i32 %i.cn, %i.cm
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next110, %i.cp
  br i1 %i.cq, label %.lr.ph90, label %._crit_edge91, !llvm.loop !145

._crit_edge91:                                    ; preds = %bb.g, %._crit_edge86
  %.064.lcssa = phi i32 [ 0, %._crit_edge86 ], [ %.165, %bb.g ]
  ret i32 %.064.lcssa
}

declare void @av_fast_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #6

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_audio_fifo_free(ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_audio_fifo_size(ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_audio_fifo_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 16 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = sext i32 %2 to i64                       ; 6 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 13 uses
  %4 = ptrtoaddr ptr %i.v to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48   ; 7 uses
  %5 = ptrtoaddr ptr %i.z to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.h
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 23 uses
  %6 = ptrtoaddr ptr %i.af to i64                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds [128 x i8], ptr %i.aj, i64 %i.h ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 8 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76 ; 19 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 26 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = sext i32 %i.am to i64
  %i.ay = shl nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.ay, i1 false)
  %i.az = sitofp nsz i32 %i.ao to double
  %i.ba = fdiv nnan nsz double 1.000000e+00, %i.az
  %.not20.i.i = icmp slt i32 %i.am, 0
  br i1 %.not20.i.i, label %autocorrelation.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  %i.bb = sext i32 %i.ao to i64
  %i.bc = add nuw i32 %i.am, 1
  %wide.trip.count27.i.i = zext i32 %i.bc to i64
  %wide.trip.count.i.i = zext i32 %i.ao to i64    ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 12 uses
  %i.bd = icmp slt i64 %indvars.iv.i.i, %i.bb
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.be = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i
  %xtraiter = and i64 %i.be, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv23.i.i.prol = phi i64 [ %indvars.iv.next24.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.019.i.i.prol = phi double [ %i.bk, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv23.i.i.prol
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !50
  %i.bh = sub nuw nsw i64 %indvars.iv23.i.i.prol, %indvars.iv.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !50
  %i.bk = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %.019.i.i.prol) ; 3 uses
  %indvars.iv.next24.i.i.prol = add nuw nsw i64 %indvars.iv23.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !147

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa335.unr = phi double [ poison, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.prol ]
  %indvars.iv23.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i.preheader ], [ %indvars.iv.next24.i.i.prol, %.lr.ph.i.i.prol ]
  %.019.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.prol ]
  %i.bl = sub nsw i64 %indvars.iv.i.i, %wide.trip.count.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv23.i.i = phi i64 [ %indvars.iv.next24.i.i.3, %.lr.ph.i.i ], [ %indvars.iv23.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.019.i.i = phi double [ %i.ck, %.lr.ph.i.i ], [ %.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv23.i.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !50
  %i.bp = sub nuw nsw i64 %indvars.iv23.i.i, %indvars.iv.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !50
  %i.bs = tail call nsz double @llvm.fmuladd.f64(double %i.bo, double %i.br, double %.019.i.i)
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv23.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !50
  %i.bv = sub nuw nsw i64 %indvars.iv.next24.i.i, %indvars.iv.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !50
  %i.by = tail call nsz double @llvm.fmuladd.f64(double %i.bu, double %i.bx, double %i.bs)
  %indvars.iv.next24.i.i.1 = add nuw nsw i64 %indvars.iv23.i.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i.1
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !50
  %i.cb = sub nuw nsw i64 %indvars.iv.next24.i.i.1, %indvars.iv.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !50
  %i.ce = tail call nsz double @llvm.fmuladd.f64(double %i.ca, double %i.cd, double %i.by)
  %indvars.iv.next24.i.i.2 = add nuw nsw i64 %indvars.iv23.i.i, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next24.i.i.2
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !50
  %i.ch = sub nuw nsw i64 %indvars.iv.next24.i.i.2, %indvars.iv.i.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !50
  %i.ck = tail call nsz double @llvm.fmuladd.f64(double %i.cg, double %i.cj, double %i.ce) ; 2 uses
  %indvars.iv.next24.i.i.3 = add nuw nsw i64 %indvars.iv23.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next24.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.lcssa335.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ck, %.lr.ph.i.i ]
  %i.cl = fmul nsz double %i.ba, %.0.lcssa.i.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i
  store double %i.cl, ptr %i.cm, align 8, !tbaa !50
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count27.i.i
  br i1 %exitcond28.not.i.i, label %autocorrelation.exit.i, label %.preheader.i.i, !llvm.loop !149

autocorrelation.exit.i:                           ; preds = %._crit_edge.i.i, %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !50
  %i.cp = fneg nsz double %i.co
  %i.cq = load double, ptr %i.at, align 8, !tbaa !50
  %i.cr = fdiv nsz double %i.cp, %i.cq            ; 4 uses
  store double %i.cr, ptr %i.av, align 8, !tbaa !50
  store double %i.cr, ptr %i.aq, align 8, !tbaa !50
  %i.cs = load double, ptr %i.at, align 8, !tbaa !50
  %i.ct = fneg nsz double %i.cr
  %i.cu = tail call nsz double @llvm.fmuladd.f64(double %i.ct, double %i.cr, double 1.000000e+00)
  %i.cv = fmul nsz double %i.cu, %i.cs            ; 2 uses
  %i.cw = icmp sgt i32 %i.am, 1
  br i1 %i.cw, label %.preheader71.preheader.i, label %._crit_edge.i

.preheader71.preheader.i:                         ; preds = %autocorrelation.exit.i
  %i.cx = add nuw i32 %i.am, 1
  %wide.trip.count102.i = zext i32 %i.cx to i64
  %i.cy = sub i64 %i.ar, %i.aw
  %diff.check = icmp ugt i64 %i.cy, -32
  br label %.preheader71.i

.loopexit.i:                                      ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block
  %i.cz = fneg nsz double %i.en
  %i.da = tail call nsz double @llvm.fmuladd.f64(double %i.cz, double %i.en, double 1.000000e+00)
  %i.db = fmul nsz double %.06876.i, %i.da        ; 2 uses
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count102.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond103.not.i, label %._crit_edge.i, label %.preheader71.i, !llvm.loop !150

.preheader71.i:                                   ; preds = %.loopexit.i, %.preheader71.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %.preheader71.preheader.i ] ; 3 uses
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %.loopexit.i ], [ 2, %.preheader71.preheader.i ] ; 6 uses
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %.loopexit.i ], [ 1, %.preheader71.preheader.i ] ; 18 uses
  %.06876.i = phi double [ %i.db, %.loopexit.i ], [ %i.cv, %.preheader71.preheader.i ] ; 2 uses
  %i.dc = shl nuw nsw i64 %indvar, 3
  %i.dd = getelementptr i8, ptr %i.av, i64 %i.dc
  %scevgep = getelementptr i8, ptr %i.dd, i64 8
  %xtraiter336 = and i64 %indvars.iv85.i, 3       ; 3 uses
  %i.de = icmp ult i64 %indvar, 3
  br i1 %i.de, label %.epil.preheader, label %.preheader71.i.new

.preheader71.i.new:                               ; preds = %.preheader71.i
  %unroll_iter = and i64 %indvars.iv85.i, 9223372036854775804
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader71.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader71.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %.073.i = phi double [ 0.000000e+00, %.preheader71.i.new ], [ %i.ec, %bb.b ]
  %niter = phi i64 [ 0, %.preheader71.i.new ], [ %niter.next.3, %bb.b ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !50
  %i.dh = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !50
  %i.dk = tail call nsz double @llvm.fmuladd.f64(double %i.dg, double %i.dj, double %.073.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !50
  %i.dn = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !50
  %i.dq = tail call nsz double @llvm.fmuladd.f64(double %i.dm, double %i.dp, double %i.dk)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i.1
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !50
  %i.dt = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i.1
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !50
  %i.dw = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double %i.dv, double %i.dq)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next.i.2
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !50
  %i.dz = sub nuw nsw i64 %indvars.iv85.i, %indvars.iv.next.i.2
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !50
  %i.ec = tail call nsz double @llvm.fmuladd.f64(double %i.dy, double %i.eb, double %i.dw) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !151

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader71.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader71.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.073.i.epil.init = phi double [ 0.000000e+00, %.preheader71.i ], [ %i.ec, %.unr-lcssa ]
  %lcmp.mod339 = icmp ne i64 %xtraiter336, 0
end_hunk_0
begin_hunk_1_@filter_channel:bb.a
.lr.ph:                                           ; preds = %bb.s, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.s ] ; 4 uses
  %niter384 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter384.next.1, %bb.s ]
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !67
  %i.sy = sext i32 %i.sx to i64                   ; 3 uses
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.sy
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !50
  %i.tb = fcmp nsz une double %i.ta, 0.000000e+00
  br i1 %i.tb, label %bb.q, label %.lr.ph.1

bb.q:                                             ; preds = %.lr.ph
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv
  %i.td = load double, ptr %i.tc, align 8, !tbaa !50
  %i.te = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.sy
  store double %i.td, ptr %i.te, align 8, !tbaa !50
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sy
  store double 1.000000e+00, ptr %i.tf, align 8, !tbaa !50
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.q
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !67
  %i.ti = sext i32 %i.th to i64                   ; 3 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.ti
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !50
  %i.tl = fcmp nsz une double %i.tk, 0.000000e+00
  br i1 %i.tl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.1
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !50
  %i.to = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ti
  store double %i.tn, ptr %i.to, align 8, !tbaa !50
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ti
  store double 1.000000e+00, ptr %i.tp, align 8, !tbaa !50
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter384.next.1 = add i64 %niter384, 2         ; 2 uses
  %niter384.ncmp.1 = icmp eq i64 %niter384.next.1, %unroll_iter383
  br i1 %niter384.ncmp.1, label %.critedge.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !181

isfinite_array.exit:                              ; preds = %.lr.ph.i126
  %i.tq = load i32, ptr %i.an, align 4, !tbaa !38
  %i.tr = sext i32 %i.tq to i64
  %i.ts = shl nsw i64 %i.tr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.j, i64 %i.ts, i1 false)
  br label %.critedge.thread

.critedge.thread.loopexit.unr-lcssa:              ; preds = %bb.s
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod381.not, label %.critedge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.critedge.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.critedge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod382 = trunc i32 %i.im to i1
  tail call void @llvm.assume(i1 %lcmp.mod382)
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.epil.init
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !67
  %i.tv = sext i32 %i.tu to i64                   ; 3 uses
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.tv
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !50
  %i.ty = fcmp nsz une double %i.tx, 0.000000e+00
  br i1 %i.ty, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %.lr.ph.epil.preheader
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.epil.init
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !50
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.tv
  store double %i.ua, ptr %i.ub, align 8, !tbaa !50
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.tv
  store double 1.000000e+00, ptr %i.uc, align 8, !tbaa !50
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit.unr-lcssa, %bb.t, %.lr.ph.epil.preheader, %.loopexit159, %isfinite_array.exit
  %i.ud = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !72
  %i.uf = icmp eq i32 %i.ue, 0
  br i1 %i.uf, label %.preheader, label %bb.u

.preheader:                                       ; preds = %.critedge.thread
  %i.ug = load i32, ptr %i.an, align 4, !tbaa !38 ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %.lr.ph172.preheader, label %.loopexit

.lr.ph172.preheader:                              ; preds = %.preheader
  %wide.trip.count192 = zext nneg i32 %i.ug to i64 ; 6 uses
  %min.iters.check287 = icmp ult i32 %i.ug, 8
  br i1 %min.iters.check287, label %.lr.ph172.preheader325, label %vector.memcheck288

vector.memcheck288:                               ; preds = %.lr.ph172.preheader
  %i.ui = shl nuw nsw i64 %wide.trip.count192, 3  ; 3 uses
  %i.uj = getelementptr i8, ptr %i.af, i64 %i.ui  ; 2 uses
  %i.uk = getelementptr i8, ptr %i.v, i64 %i.ui
  %i.ul = getelementptr i8, ptr %i.ah, i64 %i.ui
  %bound0289 = icmp ult ptr %i.af, %i.uk
  %bound1290 = icmp ult ptr %i.v, %i.uj
  %found.conflict291 = and i1 %bound0289, %bound1290
  %bound0292 = icmp ult ptr %i.af, %i.ul
  %bound1293 = icmp ult ptr %i.ah, %i.uj
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx = or i1 %found.conflict291, %found.conflict294
  br i1 %conflict.rdx, label %.lr.ph172.preheader325, label %vector.ph295

vector.ph295:                                     ; preds = %vector.memcheck288
  %n.vec296 = and i64 %wide.trip.count192, 2147483644 ; 3 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next305, %vector.body297 ] ; 4 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index298 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %wide.load299 = load <2 x double>, ptr %i.um, align 8, !tbaa !50, !alias.scope !200
  %wide.load300 = load <2 x double>, ptr %i.un, align 8, !tbaa !50, !alias.scope !200
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index298 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %wide.load301 = load <2 x double>, ptr %i.uo, align 8, !tbaa !50, !alias.scope !201
  %wide.load302 = load <2 x double>, ptr %i.up, align 8, !tbaa !50, !alias.scope !201
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index298 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 2 uses
  %wide.load303 = load <2 x double>, ptr %i.uq, align 8, !tbaa !50, !alias.scope !202, !noalias !203
  %wide.load304 = load <2 x double>, ptr %i.ur, align 8, !tbaa !50, !alias.scope !202, !noalias !203
  %i.us = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load299, <2 x double> %wide.load301, <2 x double> %wide.load303)
  %i.ut = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load300, <2 x double> %wide.load302, <2 x double> %wide.load304)
  store <2 x double> %i.us, ptr %i.uq, align 8, !tbaa !50, !alias.scope !202, !noalias !203
  store <2 x double> %i.ut, ptr %i.ur, align 8, !tbaa !50, !alias.scope !202, !noalias !203
  %index.next305 = add nuw i64 %index298, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next305, %n.vec296
  br i1 %i.uu, label %middle.block306, label %vector.body297, !llvm.loop !186

middle.block306:                                  ; preds = %vector.body297
  %cmp.n307 = icmp eq i64 %n.vec296, %wide.trip.count192
  br i1 %cmp.n307, label %.loopexit, label %.lr.ph172.preheader325

.lr.ph172.preheader325:                           ; preds = %vector.memcheck288, %.lr.ph172.preheader, %middle.block306
  %indvars.iv189.ph = phi i64 [ 0, %vector.memcheck288 ], [ 0, %.lr.ph172.preheader ], [ %n.vec296, %middle.block306 ] ; 6 uses
  %xtraiter388 = and i64 %wide.trip.count192, 1
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader325
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv189.ph
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !50
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv189.ph
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !50
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv189.ph ; 2 uses
  %i.va = load double, ptr %i.uz, align 8, !tbaa !50
  %i.vb = tail call nsz double @llvm.fmuladd.f64(double %i.uw, double %i.uy, double %i.va)
  store double %i.vb, ptr %i.uz, align 8, !tbaa !50
  %indvars.iv.next190.prol = or disjoint i64 %indvars.iv189.ph, 1
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader325
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %.lr.ph172.preheader325 ], [ %indvars.iv.next190.prol, %.lr.ph172.prol ]
  %i.vc = add nsw i64 %wide.trip.count192, -1
  %i.vd = icmp eq i64 %indvars.iv189.ph, %i.vc
  br i1 %i.vd, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %.lr.ph172 ], [ %indvars.iv189.unr, %.lr.ph172.prol.loopexit ] ; 5 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv189
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !50
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv189
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !50
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv189 ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !50
  %i.vk = tail call nsz double @llvm.fmuladd.f64(double %i.vf, double %i.vh, double %i.vj)
  store double %i.vk, ptr %i.vi, align 8, !tbaa !50
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next190
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !50
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next190
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !50
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next190 ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !50
  %i.vr = tail call nsz double @llvm.fmuladd.f64(double %i.vm, double %i.vo, double %i.vq)
  store double %i.vr, ptr %i.vp, align 8, !tbaa !50
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %exitcond193.not.1 = icmp eq i64 %indvars.iv.next190.1, %wide.trip.count192
  br i1 %exitcond193.not.1, label %.loopexit, label %.lr.ph172, !llvm.loop !187

bb.u:                                             ; preds = %.critedge.thread
  %i.vs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !59 ; 3 uses
  %i.vu = icmp sgt i32 %i.vt, 0
  br i1 %i.vu, label %.lr.ph170.preheader, label %.loopexit

.lr.ph170.preheader:                              ; preds = %bb.u
  %i.vv = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !66
  %i.vx = sext i32 %i.vw to i64                   ; 2 uses
  %wide.trip.count187 = zext nneg i32 %i.vt to i64 ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.v, i64 %i.vx ; 6 uses
  %min.iters.check265 = icmp ult i32 %i.vt, 14
  br i1 %min.iters.check265, label %.lr.ph170.preheader326, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph170.preheader
  %i.vy = shl nsw i64 %i.vx, 3
  %i.vz = add i64 %i.vy, %4
  %i.wa = sub i64 %i.vz, %6
  %diff.check263 = icmp ugt i64 %i.wa, -32
  br i1 %diff.check263, label %.lr.ph170.preheader326, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck262
  %n.vec267 = and i64 %wide.trip.count187, 2147483644 ; 3 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next272, %vector.body268 ] ; 3 uses
  %i.wb = getelementptr [8 x i8], ptr %invariant.gep, i64 %index269 ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 16
  %wide.load270 = load <2 x double>, ptr %i.wb, align 8, !tbaa !50
  %wide.load271 = load <2 x double>, ptr %i.wc, align 8, !tbaa !50
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index269 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  store <2 x double> %wide.load270, ptr %i.wd, align 8, !tbaa !50
  store <2 x double> %wide.load271, ptr %i.we, align 8, !tbaa !50
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.wf = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.wf, label %middle.block273, label %vector.body268, !llvm.loop !188

middle.block273:                                  ; preds = %vector.body268
  %cmp.n274 = icmp eq i64 %n.vec267, %wide.trip.count187
  br i1 %cmp.n274, label %.loopexit, label %.lr.ph170.preheader326

.lr.ph170.preheader326:                           ; preds = %vector.memcheck262, %.lr.ph170.preheader, %middle.block273
  %indvars.iv184.ph = phi i64 [ 0, %vector.memcheck262 ], [ 0, %.lr.ph170.preheader ], [ %n.vec267, %middle.block273 ] ; 3 uses
  %xtraiter385 = and i64 %wide.trip.count187, 3   ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol

.lr.ph170.prol:                                   ; preds = %.lr.ph170.preheader326, %.lr.ph170.prol
  %indvars.iv184.prol = phi i64 [ %indvars.iv.next185.prol, %.lr.ph170.prol ], [ %indvars.iv184.ph, %.lr.ph170.preheader326 ] ; 3 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph170.prol ], [ 0, %.lr.ph170.preheader326 ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv184.prol
  %i.wg = load double, ptr %gep.prol, align 8, !tbaa !50
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv184.prol
  store double %i.wg, ptr %i.wh, align 8, !tbaa !50
  %indvars.iv.next185.prol = add nuw nsw i64 %indvars.iv184.prol, 1 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph170.prol.loopexit, label %.lr.ph170.prol, !llvm.loop !189

.lr.ph170.prol.loopexit:                          ; preds = %.lr.ph170.prol, %.lr.ph170.preheader326
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %.lr.ph170.preheader326 ], [ %indvars.iv.next185.prol, %.lr.ph170.prol ]
  %i.wi = sub nsw i64 %indvars.iv184.ph, %wide.trip.count187
  %i.wj = icmp ugt i64 %i.wi, -4
  br i1 %i.wj, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.3, %.lr.ph170 ], [ %indvars.iv184.unr, %.lr.ph170.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv184
  %i.wk = load double, ptr %gep, align 8, !tbaa !50
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv184
  store double %i.wk, ptr %i.wl, align 8, !tbaa !50
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next185
  %i.wm = load double, ptr %gep.1, align 8, !tbaa !50
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next185
  store double %i.wm, ptr %i.wn, align 8, !tbaa !50
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next185.1
  %i.wo = load double, ptr %gep.2, align 8, !tbaa !50
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next185.1
  store double %i.wo, ptr %i.wp, align 8, !tbaa !50
  %indvars.iv.next185.2 = add nuw nsw i64 %indvars.iv184, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next185.2
  %i.wq = load double, ptr %gep.3, align 8, !tbaa !50
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next185.2
  store double %i.wq, ptr %i.wr, align 8, !tbaa !50
  %indvars.iv.next185.3 = add nuw nsw i64 %indvars.iv184, 4 ; 2 uses
  %exitcond188.not.3 = icmp eq i64 %indvars.iv.next185.3, %wide.trip.count187
  br i1 %exitcond188.not.3, label %.loopexit, label %.lr.ph170, !llvm.loop !190

.loopexit:                                        ; preds = %.lr.ph170.prol.loopexit, %.lr.ph170, %.lr.ph172.prol.loopexit, %.lr.ph172, %middle.block273, %middle.block306, %bb.u, %.preheader
  %i.ws = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !59 ; 5 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %.lr.ph174.preheader, label %._crit_edge

.lr.ph174.preheader:                              ; preds = %.loopexit
  %wide.trip.count197 = zext nneg i32 %i.wt to i64 ; 5 uses
  %min.iters.check312 = icmp ult i32 %i.wt, 8
  %i.wv = sub i64 %6, %5
  %diff.check310 = icmp ugt i64 %i.wv, -32
  %or.cond323 = select i1 %min.iters.check312, i1 true, i1 %diff.check310
  br i1 %or.cond323, label %.lr.ph174.preheader324, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph174.preheader
  %n.vec314 = and i64 %wide.trip.count197, 2147483644 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index316 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %wide.load317 = load <2 x double>, ptr %i.ww, align 8, !tbaa !50
  %wide.load318 = load <2 x double>, ptr %i.wx, align 8, !tbaa !50
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index316 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  store <2 x double> %wide.load317, ptr %i.wy, align 8, !tbaa !50
  store <2 x double> %wide.load318, ptr %i.wz, align 8, !tbaa !50
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.xa = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.xa, label %middle.block320, label %vector.body315, !llvm.loop !191

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count197
  br i1 %cmp.n321, label %._crit_edge, label %.lr.ph174.preheader324

.lr.ph174.preheader324:                           ; preds = %.lr.ph174.preheader, %middle.block320
  %indvars.iv194.ph = phi i64 [ 0, %.lr.ph174.preheader ], [ %n.vec314, %middle.block320 ] ; 3 uses
  %xtraiter391 = and i64 %wide.trip.count197, 3   ; 2 uses
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph174.prol.loopexit, label %.lr.ph174.prol

.lr.ph174.prol:                                   ; preds = %.lr.ph174.preheader324, %.lr.ph174.prol
  %indvars.iv194.prol = phi i64 [ %indvars.iv.next195.prol, %.lr.ph174.prol ], [ %indvars.iv194.ph, %.lr.ph174.preheader324 ] ; 3 uses
  %prol.iter393 = phi i64 [ %prol.iter393.next, %.lr.ph174.prol ], [ 0, %.lr.ph174.preheader324 ]
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv194.prol
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !50
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv194.prol
  store double %i.xc, ptr %i.xd, align 8, !tbaa !50
  %indvars.iv.next195.prol = add nuw nsw i64 %indvars.iv194.prol, 1 ; 2 uses
  %prol.iter393.next = add i64 %prol.iter393, 1   ; 2 uses
  %prol.iter393.cmp.not = icmp eq i64 %prol.iter393.next, %xtraiter391
  br i1 %prol.iter393.cmp.not, label %.lr.ph174.prol.loopexit, label %.lr.ph174.prol, !llvm.loop !192

.lr.ph174.prol.loopexit:                          ; preds = %.lr.ph174.prol, %.lr.ph174.preheader324
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %.lr.ph174.preheader324 ], [ %indvars.iv.next195.prol, %.lr.ph174.prol ]
  %i.xe = sub nsw i64 %indvars.iv194.ph, %wide.trip.count197
  %i.xf = icmp ugt i64 %i.xe, -4
  br i1 %i.xf, label %._crit_edge, label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.prol.loopexit, %.lr.ph174
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.3, %.lr.ph174 ], [ %indvars.iv194.unr, %.lr.ph174.prol.loopexit ] ; 6 uses
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv194
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !50
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv194
  store double %i.xh, ptr %i.xi, align 8, !tbaa !50
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next195
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !50
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next195
  store double %i.xk, ptr %i.xl, align 8, !tbaa !50
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next195.1
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !50
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next195.1
  store double %i.xn, ptr %i.xo, align 8, !tbaa !50
  %indvars.iv.next195.2 = add nuw nsw i64 %indvars.iv194, 3 ; 2 uses
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next195.2
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !50
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next195.2
  store double %i.xq, ptr %i.xr, align 8, !tbaa !50
  %indvars.iv.next195.3 = add nuw nsw i64 %indvars.iv194, 4 ; 2 uses
  %exitcond198.not.3 = icmp eq i64 %indvars.iv.next195.3, %wide.trip.count197
  br i1 %exitcond198.not.3, label %._crit_edge, label %.lr.ph174, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph174.prol.loopexit, %.lr.ph174, %middle.block320, %.loopexit
  %i.xs = sext i32 %i.wt to i64
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.xs
  %i.xu = load i32, ptr %i.an, align 4, !tbaa !38
  %i.xv = shl nsw i32 %i.xu, 1
  %i.xw = sub nsw i32 %i.xv, %i.wt
  %i.xx = sext i32 %i.xw to i64
  %i.xy = shl nsw i64 %i.xx, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.xt, i64 %i.xy, i1 false)
  %i.xz = load i32, ptr %i.ws, align 8, !tbaa !59 ; 2 uses
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ya
  %i.yc = load i32, ptr %i.an, align 4, !tbaa !38
  %i.yd = sub nsw i32 %i.yc, %i.xz
  %i.ye = sext i32 %i.yd to i64
  %i.yf = shl nsw i64 %i.ye, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.yb, i64 %i.yf, i1 false)
  %i.yg = load i32, ptr %i.an, align 4, !tbaa !38
  %i.yh = shl nsw i32 %i.yg, 1
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.yi
  %i.yk = load i32, ptr %i.ws, align 8, !tbaa !59
  %i.yl = sext i32 %i.yk to i64                   ; 2 uses
  %i.ym = sub nsw i64 0, %i.yl
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.yj, i64 %i.ym
  %i.yo = shl nsw i64 %i.yl, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yn, i8 0, i64 %i.yo, i1 false)
  %i.yp = load i32, ptr %i.an, align 4, !tbaa !38
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.yq
  %i.ys = load i32, ptr %i.ws, align 8, !tbaa !59
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %i.yu = sub nsw i64 0, %i.yt
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.yu
  %i.yw = shl nsw i64 %i.yt, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.yv, i8 0, i64 %i.yw, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge.i.i.i, %factorization.exit.i.i, %bb.e, %bb.f, %._crit_edge
  %.3120 = phi i32 [ 0, %._crit_edge ], [ -12, %bb.f ], [ -12, %factorization.exit.i.i ], [ -12, %bb.e ], [ -1, %._crit_edge.i.i.i ]
  ret i32 %.3120
}

declare i32 @av_audio_fifo_drain(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #9

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
end_hunk_1
