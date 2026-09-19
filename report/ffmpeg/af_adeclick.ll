Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_adeclick?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@detect_clips:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !50 ; 2 uses
  %i.r = tail call nsz double @llvm.fabs.f64(double %i.q)
  %i.s = tail call nsz double @llvm.minnum.f64(double %i.r, double 1.000000e+00)
  %i.t = load i32, ptr %i.e, align 4, !tbaa !139
  %i.u = add nsw i32 %i.t, -1
  %i.v = sitofp nsz i32 %i.u to double
  %i.w = fmul nnan nsz double %i.s, %i.v
  %i.x = fptoui double %i.w to i32
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !67
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store double %i.q, ptr %i.ac, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  store i8 0, ptr %i.ad, align 1, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %i.m, align 4, !tbaa !38  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !135

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ah = icmp slt i32 %i.ae, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.not106 = phi i1 [ %i.ah, %._crit_edge.loopexit ], [ true, %bb.b ]
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !139 ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 2
  br i1 %i.aj, label %.lr.ph112, label %.thread

.lr.ph112:                                        ; preds = %._crit_edge
  %i.ak = zext nneg i32 %i.ai to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.al = trunc nuw i64 %i.an to i32
  %i.am = icmp sgt i32 %i.al, 2
  br i1 %i.am, label %bb.d, label %.thread, !llvm.loop !136

bb.d:                                             ; preds = %.lr.ph112, %bb.c
  %indvars.iv85111 = phi i64 [ %i.ak, %.lr.ph112 ], [ %i.an, %bb.c ] ; 2 uses
  %i.an = add nsw i64 %indvars.iv85111, -1        ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !67 ; 2 uses
  %.not69 = icmp eq i32 %i.ap, 0
  br i1 %.not69, label %bb.c, label %bb.e, !llvm.loop !136

bb.e:                                             ; preds = %bb.d
  %i.aq = uitofp nsz i32 %i.ap to double
  %i.ar = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv85111
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !67
  %i.au = tail call i32 @llvm.umax.i32(i32 %i.at, i32 1)
  %i.av = uitofp i32 %i.au to double
  %i.aw = fdiv nsz double %i.aq, %i.av
  %i.ax = fcmp nsz ogt double %i.aw, %i.b
  br i1 %i.ax, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ay = trunc i64 %i.an to i32
  %i.az = uitofp nneg i32 %i.ay to double
  %i.ba = sitofp nsz i32 %i.ai to double
  %i.bb = fdiv nsz double %i.az, %i.ba            ; 2 uses
  %i.bc = fcmp nsz ule double %i.bb, 0.000000e+00
  %brmerge = or i1 %i.bc, %.not106
  br i1 %brmerge, label %.thread, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.f, %.lr.ph78
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %.lr.ph78 ], [ 0, %bb.f ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv89
  %i.be = load double, ptr %i.bd, align 8, !tbaa !50
  %i.bf = tail call nsz double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp nsz oge double %i.bf, %i.bb
  %i.bh = zext i1 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv89
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !83
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !38
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next90, %i.bk
  br i1 %i.bl, label %.lr.ph78, label %.thread, !llvm.loop !137

.thread:                                          ; preds = %bb.c, %.lr.ph78, %._crit_edge, %bb.f, %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !74
  %i.bo = sext i32 %i.bn to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %i.bo, i1 false)
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !38
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !74 ; 2 uses
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  %i.bu = sext i32 %i.bq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 0, i64 %i.bu, i1 false)
  %i.bv = load i32, ptr %i.bm, align 4, !tbaa !74 ; 4 uses
  %i.bw = load i32, ptr %i.m, align 4, !tbaa !38  ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %i.bv
  %i.by = icmp slt i32 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.thread
  %i.bz = sext i32 %i.bv to i64
  br label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.h
  %i.ca = phi i32 [ %i.bv, %.lr.ph81.preheader ], [ %i.ci, %bb.h ]
  %i.cb = phi i32 [ %i.bw, %.lr.ph81.preheader ], [ %i.cj, %bb.h ]
  %indvars.iv92 = phi i64 [ %i.bz, %.lr.ph81.preheader ], [ %indvars.iv.next93, %bb.h ] ; 3 uses
  %.06280 = phi i32 [ 0, %.lr.ph81.preheader ], [ %.1, %bb.h ] ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %5, i64 %indvars.iv92
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !83
  %.not70 = icmp eq i8 %i.cd, 0
  br i1 %.not70, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph81
  %i.ce = add nsw i32 %.06280, 1
  %i.cf = sext i32 %.06280 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %6, i64 %i.cf
  %i.ch = trunc nsw i64 %indvars.iv92 to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !67
  %.pre = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre95 = load i32, ptr %i.bm, align 4, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph81, %bb.g
  %i.ci = phi i32 [ %.pre95, %bb.g ], [ %i.ca, %.lr.ph81 ] ; 2 uses
  %i.cj = phi i32 [ %.pre, %bb.g ], [ %i.cb, %.lr.ph81 ] ; 2 uses
  %.1 = phi i32 [ %i.ce, %bb.g ], [ %.06280, %.lr.ph81 ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ck = sub nsw i32 %i.cj, %i.ci
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp slt i64 %indvars.iv.next93, %i.cl
  br i1 %i.cm, label %.lr.ph81, label %.loopexit, !llvm.loop !138

.loopexit:                                        ; preds = %bb.h, %.thread, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %.thread ], [ %.1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @detect_clicks(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, double noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !74   ; 5 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !38   ; 3 uses
  %i.j = icmp sge i32 %i.h, %i.i
  %.not7377 = icmp slt i32 %i.h, 0
  %or.cond = or i1 %i.j, %.not7377
  br i1 %or.cond, label %.preheader75, label %.preheader76.preheader

.preheader76.preheader:                           ; preds = %bb.a
  %i.k = add nuw nsw i32 %i.h, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.h to i64
  %wide.trip.count97 = sext i32 %i.i to i64
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.h, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod121 = trunc i32 %i.k to i1
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ %i.l, %.preheader76.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv94 ; 4 uses
  %.promoted = load double, ptr %i.n, align 8, !tbaa !50 ; 2 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader76.new

.preheader75:                                     ; preds = %._crit_edge, %bb.a
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge86

.lr.ph:                                           ; preds = %.preheader75
  %i.p = fmul nsz double %2, %i.b
  br label %bb.b

.preheader76.new:                                 ; preds = %.preheader76, %.preheader76.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader76.new ], [ 0, %.preheader76 ] ; 4 uses
  %i.q = phi double [ %i.ac, %.preheader76.new ], [ %.promoted, %.preheader76 ]
  %niter = phi i64 [ %niter.next.1, %.preheader76.new ], [ 0, %.preheader76 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8, !tbaa !50
  %i.t = sub nsw i64 %indvars.iv94, %indvars.iv
  %i.u = getelementptr inbounds [8 x i8], ptr %7, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !50
  %i.w = tail call nsz double @llvm.fmuladd.f64(double %i.s, double %i.v, double %i.q) ; 2 uses
  store double %i.w, ptr %i.n, align 8, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.y = load double, ptr %i.x, align 8, !tbaa !50
  %i.z = sub nsw i64 %indvars.iv94, %indvars.iv.next
  %i.aa = getelementptr inbounds [8 x i8], ptr %7, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !50
  %i.ac = tail call nsz double @llvm.fmuladd.f64(double %i.y, double %i.ab, double %i.w) ; 3 uses
  store double %i.ac, ptr %i.n, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader76.new, !llvm.loop !141

._crit_edge.unr-lcssa:                            ; preds = %.preheader76.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader76
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %.promoted, %.preheader76 ], [ %i.ac, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod121)
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
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.h
end_hunk_0
