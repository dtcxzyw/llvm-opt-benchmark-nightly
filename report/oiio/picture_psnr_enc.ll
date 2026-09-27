Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/picture_psnr_enc?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPPicture = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, [2 x i32], ptr, i32, [3 x i32], ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, [3 x i32], ptr, ptr, [8 x i32], ptr, ptr, [2 x ptr] }

@VP8AccumulateSSE = external local_unnamed_addr global ptr, align 8
@VP8SSIMGetClipped = external local_unnamed_addr global ptr, align 8
@VP8SSIMGet = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPPlaneDistortion(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7, ptr nofree noundef captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %7, 0
  %i.b = icmp eq i32 %7, 1                        ; 2 uses
  %i.c = select i1 %i.b, ptr @AccumulateSSIM, ptr @AccumulateLSIM
  %i.d = select i1 %i.a, ptr @AccumulateSSE, ptr %i.c
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %2, null
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %4 to i64                       ; 3 uses
  %i.h = mul i64 %6, %i.g                         ; 2 uses
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i64 %3, %i.h
  %i.k = icmp eq ptr %9, null
  %or.cond3 = or i1 %i.j, %i.k
  %i.l = icmp eq ptr %8, null
  %or.cond5 = or i1 %i.l, %or.cond3
  br i1 %or.cond5, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @VP8SSIMDspInit() #7
  %.not = icmp eq i64 %6, 1
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = shl nsw i64 %i.g, 1
  %i.n = sext i32 %5 to i64                       ; 2 uses
  %i.o = mul i64 %i.m, %i.n
  %i.p = tail call ptr @WebPSafeMalloc(i64 noundef %i.o, i64 noundef 1) #7 ; 9 uses
  %.not87 = icmp eq ptr %i.p, null
  br i1 %.not87, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = mul nsw i64 %i.n, %i.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 5 uses
  %i.s = icmp sgt i32 %5, 0
  %i.t = icmp sgt i32 %4, 0
  %or.cond92 = and i1 %i.s, %i.t
  br i1 %or.cond92, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.f
  %i.u = zext nneg i32 %4 to i64                  ; 3 uses
  %wide.trip.count97 = zext nneg i32 %5 to i64
  %xtraiter = and i64 %i.u, 1
  %i.v = icmp eq i32 %4, 1
  %unroll_iter = and i64 %i.u, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod143 = trunc i32 %4 to i1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 4 uses
  %i.w = mul i64 %1, %indvars.iv94
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = mul nuw nsw i64 %indvars.iv94, %i.u      ; 3 uses
  %i.y = mul i64 %3, %indvars.iv94
  %invariant.gep89 = getelementptr i8, ptr %2, i64 %i.y ; 3 uses
  br i1 %i.v, label %.epil.preheader, label %iter.check.new

iter.check.new:                                   ; preds = %iter.check, %iter.check.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %iter.check.new ], [ 0, %iter.check ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %iter.check.new ], [ 0, %iter.check ]
  %i.z = mul i64 %6, %indvars.iv                  ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.z
  %i.aa = load i8, ptr %gep, align 1, !tbaa !7
  %i.ab = add nuw nsw i64 %indvars.iv, %i.x       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ab
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !7
  %gep90 = getelementptr i8, ptr %invariant.gep89, i64 %i.z
  %i.ad = load i8, ptr %gep90, align 1, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ab
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !7
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = mul i64 %6, %indvars.iv.next            ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.af
  %i.ag = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.ah = add nuw nsw i64 %indvars.iv.next, %i.x  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !7
  %gep90.1 = getelementptr i8, ptr %invariant.gep89, i64 %i.af
  %i.aj = load i8, ptr %gep90.1, align 1, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %iter.check.new, !llvm.loop !13

._crit_edge.unr-lcssa:                            ; preds = %iter.check.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %iter.check
  %indvars.iv.epil.init = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.al = mul i64 %6, %indvars.iv.epil.init       ; 2 uses
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.al
  %i.am = load i8, ptr %gep.epil, align 1, !tbaa !7
  %i.an = add nuw nsw i64 %indvars.iv.epil.init, %i.x ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.an
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !7
  %gep90.epil = getelementptr i8, ptr %invariant.gep89, i64 %i.al
  %i.ap = load i8, ptr %gep90.epil, align 1, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit, label %iter.check, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %bb.d
  %.176 = phi ptr [ %2, %bb.d ], [ %i.r, %bb.f ], [ %i.r, %._crit_edge ]
  %.174 = phi ptr [ %0, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %._crit_edge ]
  %.071 = phi ptr [ null, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %._crit_edge ]
  %i.ar = tail call double %i.d(ptr noundef nonnull %.174, i32 noundef %4, ptr noundef %.176, i32 noundef %4, i32 noundef %4, i32 noundef %5) #7, !callees !15
  %i.as = fptrunc double %i.ar to float
  store float %i.as, ptr %8, align 4, !tbaa !10
  tail call void @WebPSafeFree(ptr noundef %.071) #7
  %i.at = load float, ptr %8, align 4, !tbaa !10  ; 3 uses
  br i1 %i.b, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.au = fpext float %i.at to double
  %i.av = sitofp i32 %4 to double
  %i.aw = sitofp i32 %5 to double
  %i.ax = fmul nnan double %i.av, %i.aw           ; 2 uses
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  %i.az = fdiv double %i.au, %i.ax
  %i.ba = select i1 %i.ay, double %i.az, double 1.000000e+00 ; 2 uses
  %i.bb = fcmp olt double %i.ba, 1.000000e+00
  br i1 %i.bb, label %bb.h, label %GetLogSSIM.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = fsub double 1.000000e+00, %i.ba
  %i.bd = tail call double @log10(double noundef %i.bc) #7, !tbaa !6
  %i.be = fmul double %i.bd, -1.000000e+01
  br label %GetLogSSIM.exit

bb.i:                                             ; preds = %.loopexit
  %i.bf = sitofp i32 %4 to double
  %i.bg = sitofp i32 %5 to double
  %i.bh = fmul nnan double %i.bf, %i.bg           ; 2 uses
  %i.bi = fcmp ogt float %i.at, 0.000000e+00
  %i.bj = fcmp ogt double %i.bh, 0.000000e+00
  %or.cond.i = and i1 %i.bj, %i.bi
  br i1 %or.cond.i, label %bb.j, label %GetLogSSIM.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = fpext float %i.at to double
  %i.bl = fmul nnan double %i.bh, 2.550000e+02
  %i.bm = fmul nnan double %i.bl, 2.550000e+02
  %i.bn = fdiv double %i.bk, %i.bm
  %i.bo = tail call double @log(double noundef %i.bn) #7, !tbaa !6
  %i.bp = fmul double %i.bo, f0xC0115F2CEBF15542
  br label %GetLogSSIM.exit

GetLogSSIM.exit:                                  ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.in = phi double [ 9.900000e+01, %bb.g ], [ %i.be, %bb.h ], [ %i.bp, %bb.j ], [ 9.900000e+01, %bb.i ]
  %i.bq = fptrunc double %.in to float
  store float %i.bq, ptr %9, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %GetLogSSIM.exit
  %.1 = phi i32 [ 0, %bb.e ], [ 1, %GetLogSSIM.exit ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal double @AccumulateSSE(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.g, %bb.b ]
  %.01116 = phi i32 [ 0, %.lr.ph ], [ %i.j, %bb.b ]
  %.01215 = phi ptr [ %0, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.01314 = phi ptr [ %2, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr @VP8AccumulateSSE, align 8, !tbaa !12
  %i.e = tail call i32 %i.d(ptr noundef %.01215, ptr noundef %.01314, i32 noundef %4) #7
  %i.f = uitofp i32 %i.e to double
  %i.g = fadd double %.017, %i.f                  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.01215, i64 %i.b
  %i.i = getelementptr inbounds i8, ptr %.01314, i64 %i.c
  %i.j = add nuw nsw i32 %.01116, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.g, %bb.b ]
  ret double %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal double @AccumulateSSIM(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %4, i32 3) ; 2 uses
  %i.b = add i32 %4, -4                           ; 3 uses
  %i.c = tail call i32 @llvm.smin.i32(i32 %5, i32 3) ; 3 uses
  %i.d = add i32 %5, -4                           ; 3 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.preheader96.lr.ph, label %.preheader95

.preheader96.lr.ph:                               ; preds = %bb.a
  %i.f = icmp sgt i32 %4, 0
  br i1 %i.f, label %.preheader96.us, label %.preheader95

.preheader96.us:                                  ; preds = %.preheader96.lr.ph, %._crit_edge.us
  %.0100.us = phi double [ %i.i, %._crit_edge.us ], [ 0.000000e+00, %.preheader96.lr.ph ]
  %.07999.us = phi i32 [ %i.k, %._crit_edge.us ], [ 0, %.preheader96.lr.ph ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader96.us, %bb.b
  %.198.us = phi double [ %.0100.us, %.preheader96.us ], [ %i.i, %bb.b ]
  %.08297.us = phi i32 [ 0, %.preheader96.us ], [ %i.j, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr @VP8SSIMGetClipped, align 8, !tbaa !12
  %i.h = tail call double %i.g(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.08297.us, i32 noundef %.07999.us, i32 noundef %4, i32 noundef %5) #7
  %i.i = fadd double %.198.us, %i.h               ; 3 uses
  %i.j = add nuw nsw i32 %.08297.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %4
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.b
  %i.k = add nuw nsw i32 %.07999.us, 1            ; 2 uses
  %exitcond141.not = icmp eq i32 %i.k, %i.c
  br i1 %exitcond141.not, label %.preheader95, label %.preheader96.us, !llvm.loop !18

.preheader95:                                     ; preds = %._crit_edge.us, %.preheader96.lr.ph, %bb.a
  %.079.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.preheader96.lr.ph ], [ %i.c, %._crit_edge.us ] ; 3 uses
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.preheader96.lr.ph ], [ %i.i, %._crit_edge.us ] ; 2 uses
  %i.l = icmp slt i32 %.079.lcssa, %i.d
  br i1 %i.l, label %.preheader94.lr.ph, label %.preheader91

.preheader94.lr.ph:                               ; preds = %.preheader95
  %i.m = icmp sgt i32 %4, 0
  %i.n = sext i32 %.079.lcssa to i64
  %i.o = sext i32 %3 to i64
  %i.p = sext i32 %1 to i64
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.lr.ph, %._crit_edge
  %indvars.iv146 = phi i64 [ %i.n, %.preheader94.lr.ph ], [ %indvars.iv.next147, %._crit_edge ] ; 4 uses
  %.2117 = phi double [ %.0.lcssa, %.preheader94.lr.ph ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  br i1 %i.m, label %.lr.ph.preheader, label %.preheader93

.lr.ph.preheader:                                 ; preds = %.preheader94
  %i.q = trunc nsw i64 %indvars.iv146 to i32
  br label %.lr.ph

.preheader91:                                     ; preds = %._crit_edge, %.preheader95
  %.180.lcssa = phi i32 [ %.079.lcssa, %.preheader95 ], [ %i.d, %._crit_edge ] ; 2 uses
  %.2.lcssa = phi double [ %.0.lcssa, %.preheader95 ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.r = icmp slt i32 %.180.lcssa, %5
  %i.s = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %.preheader.us, label %._crit_edge127

.preheader.us:                                    ; preds = %.preheader91, %._crit_edge123.us
  %.6126.us = phi double [ %i.v, %._crit_edge123.us ], [ %.2.lcssa, %.preheader91 ]
  %.281125.us = phi i32 [ %i.x, %._crit_edge123.us ], [ %.180.lcssa, %.preheader91 ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %.7121.us = phi double [ %.6126.us, %.preheader.us ], [ %i.v, %bb.c ]
  %.486120.us = phi i32 [ 0, %.preheader.us ], [ %i.w, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr @VP8SSIMGetClipped, align 8, !tbaa !12
  %i.u = tail call double %i.t(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.486120.us, i32 noundef %.281125.us, i32 noundef %4, i32 noundef %5) #7
  %i.v = fadd double %.7121.us, %i.u              ; 3 uses
  %i.w = add nuw nsw i32 %.486120.us, 1           ; 2 uses
  %exitcond150.not = icmp eq i32 %i.w, %4
  br i1 %exitcond150.not, label %._crit_edge123.us, label %bb.c, !llvm.loop !19

._crit_edge123.us:                                ; preds = %bb.c
  %i.x = add i32 %.281125.us, 1                   ; 2 uses
  %exitcond151.not = icmp eq i32 %i.x, %5
  br i1 %exitcond151.not, label %._crit_edge127, label %.preheader.us, !llvm.loop !20

.preheader93:                                     ; preds = %.lr.ph, %.preheader94
  %.183.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.a, %.lr.ph ] ; 3 uses
  %.3.lcssa = phi double [ %.2117, %.preheader94 ], [ %i.af, %.lr.ph ] ; 2 uses
  %i.y = icmp slt i32 %.183.lcssa, %i.b
  br i1 %i.y, label %.lr.ph109, label %.preheader92

.lr.ph109:                                        ; preds = %.preheader93
  %i.z = add nsw i64 %indvars.iv146, -3           ; 2 uses
  %i.aa = mul nsw i64 %i.z, %i.p
  %i.ab = mul nsw i64 %i.z, %i.o
  %i.ac = zext nneg i32 %.183.lcssa to i64
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.aa
  %invariant.gep164 = getelementptr i8, ptr %2, i64 %i.ab
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.3105 = phi double [ %i.af, %.lr.ph ], [ %.2117, %.lr.ph.preheader ]
  %.183104 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load ptr, ptr @VP8SSIMGetClipped, align 8, !tbaa !12
  %i.ae = tail call double %i.ad(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.183104, i32 noundef %i.q, i32 noundef %4, i32 noundef %5) #7
  %i.af = fadd double %.3105, %i.ae               ; 2 uses
  %i.ag = add nuw nsw i32 %.183104, 1             ; 2 uses
  %exitcond142.not = icmp eq i32 %i.ag, %i.a
  br i1 %exitcond142.not, label %.preheader93, label %.lr.ph, !llvm.loop !21

.preheader92:                                     ; preds = %bb.d, %.preheader93
  %.284.lcssa = phi i32 [ %.183.lcssa, %.preheader93 ], [ %i.b, %bb.d ] ; 2 uses
  %.4.lcssa = phi double [ %.3.lcssa, %.preheader93 ], [ %i.am, %bb.d ] ; 2 uses
  %i.ah = icmp slt i32 %.284.lcssa, %4
  br i1 %i.ah, label %.lr.ph114.preheader, label %._crit_edge

.lr.ph114.preheader:                              ; preds = %.preheader92
  %i.ai = trunc nsw i64 %indvars.iv146 to i32
  br label %.lr.ph114

bb.d:                                             ; preds = %.lr.ph109, %bb.d
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph109 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.4108 = phi double [ %.3.lcssa, %.lr.ph109 ], [ %i.am, %bb.d ]
  %i.aj = add nsw i64 %indvars.iv, -3             ; 2 uses
  %i.ak = load ptr, ptr @VP8SSIMGet, align 8, !tbaa !12
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aj
  %gep165 = getelementptr i8, ptr %invariant.gep164, i64 %i.aj
  %i.al = tail call double %i.ak(ptr noundef %gep, i32 noundef %1, ptr noundef %gep165, i32 noundef %3) #7
  %i.am = fadd double %.4108, %i.al               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond144.not, label %.preheader92, label %bb.d, !llvm.loop !22

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %.lr.ph114
  %.5113 = phi double [ %i.ap, %.lr.ph114 ], [ %.4.lcssa, %.lr.ph114.preheader ]
  %.385112 = phi i32 [ %i.aq, %.lr.ph114 ], [ %.284.lcssa, %.lr.ph114.preheader ] ; 2 uses
  %i.an = load ptr, ptr @VP8SSIMGetClipped, align 8, !tbaa !12
  %i.ao = tail call double %i.an(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.385112, i32 noundef %i.ai, i32 noundef %4, i32 noundef %5) #7
  %i.ap = fadd double %.5113, %i.ao               ; 2 uses
  %i.aq = add i32 %.385112, 1                     ; 2 uses
  %exitcond145.not = icmp eq i32 %i.aq, %4
  br i1 %exitcond145.not, label %._crit_edge, label %.lr.ph114, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph114, %.preheader92
  %.5.lcssa = phi double [ %.4.lcssa, %.preheader92 ], [ %i.ap, %.lr.ph114 ] ; 2 uses
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next147 to i32
  %exitcond149.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond149.not, label %.preheader91, label %.preheader94, !llvm.loop !24

._crit_edge127:                                   ; preds = %._crit_edge123.us, %.preheader91
  %.6.lcssa = phi double [ %.2.lcssa, %.preheader91 ], [ %i.v, %._crit_edge123.us ]
  ret double %.6.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal double @AccumulateLSIM(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.us.preheader, label %._crit_edge71

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = sext i32 %3 to i64
  %wide.trip.count93 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.e = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod105 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv90 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next91, %._crit_edge.us ] ; 4 uses
  %.04568.us = phi double [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.us-phi66.us, %._crit_edge.us ] ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv90 to i32
  %smax82 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 2) ; 2 uses
  %i.g = zext nneg i32 %smax82 to i64
  %i.h = add nsw i64 %i.g, -2
  %i.i = add nsw i32 %smax82, -2
  %i.j = trunc i64 %indvars.iv90 to i32
  %i.k = add i32 %i.j, 3
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %5) ; 2 uses
  %i.m = icmp slt i32 %i.i, %i.l
  br i1 %i.m, label %.lr.ph57.us.us.preheader, label %.lr.ph.split.us73.preheader

.lr.ph.split.us73.preheader:                      ; preds = %.lr.ph.us
  br i1 %i.e, label %.lr.ph.split.us73.epil.preheader, label %.lr.ph.split.us73

.lr.ph57.us.us.preheader:                         ; preds = %.lr.ph.us
  %i.n = mul nsw i64 %indvars.iv90, %i.d
  %i.o = zext nneg i32 %i.l to i64
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.n
  br label %.lr.ph57.us.us

.lr.ph.split.us73:                                ; preds = %.lr.ph.split.us73.preheader, %.lr.ph.split.us73
  %.14661.us74 = phi double [ %i.w, %.lr.ph.split.us73 ], [ %.04568.us, %.lr.ph.split.us73.preheader ]
  %niter = phi i32 [ %niter.next.7, %.lr.ph.split.us73 ], [ 0, %.lr.ph.split.us73.preheader ]
  %i.p = fadd double %.14661.us74, 6.502500e+04
  %i.q = fadd double %i.p, 6.502500e+04
  %i.r = fadd double %i.q, 6.502500e+04
  %i.s = fadd double %i.r, 6.502500e+04
  %i.t = fadd double %i.s, 6.502500e+04
  %i.u = fadd double %i.t, 6.502500e+04
  %i.v = fadd double %i.u, 6.502500e+04
  %i.w = fadd double %i.v, 6.502500e+04           ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.loopexit102.unr-lcssa, label %.lr.ph.split.us73, !llvm.loop !25

.lr.ph57.us.us:                                   ; preds = %.lr.ph57.us.us.preheader, %._crit_edge58.us.us
  %indvars.iv86 = phi i64 [ 0, %.lr.ph57.us.us.preheader ], [ %indvars.iv.next87, %._crit_edge58.us.us ] ; 4 uses
  %.14661.us.us = phi double [ %.04568.us, %.lr.ph57.us.us.preheader ], [ %i.as, %._crit_edge58.us.us ]
  %i.x = trunc nuw nsw i64 %indvars.iv86 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.x, i32 2) ; 2 uses
  %i.y = zext nneg i32 %smax to i64
  %i.z = add nsw i64 %i.y, -2
  %i.aa = add nsw i32 %smax, -2
  %i.ab = trunc i64 %indvars.iv86 to i32
  %i.ac = add i32 %i.ab, 3
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %4) ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv86
  %i.ae = load i8, ptr %gep, align 1, !tbaa !7
  %i.af = uitofp i8 %i.ae to double
  %i.ag = icmp slt i32 %i.aa, %i.ad
  br i1 %i.ag, label %.lr.ph.us.us.us.preheader, label %._crit_edge58.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph57.us.us
  %i.ah = zext nneg i32 %i.ad to i64
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %indvars.iv83 = phi i64 [ %i.h, %.lr.ph.us.us.us.preheader ], [ %indvars.iv.next84, %._crit_edge.us.us.us ] ; 2 uses
  %.04454.us.us.us = phi double [ 6.502500e+04, %.lr.ph.us.us.us.preheader ], [ %.2.us.us.us, %._crit_edge.us.us.us ]
  %i.ai = mul nsw i64 %indvars.iv83, %i.c
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.z, %.lr.ph.us.us.us ] ; 2 uses
  %.152.us.us.us = phi double [ %.2.us.us.us, %bb.b ], [ %.04454.us.us.us, %.lr.ph.us.us.us ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7
  %i.am = uitofp i8 %i.al to double
  %i.an = fsub double %i.am, %i.af                ; 2 uses
  %i.ao = fmul double %i.an, %i.an                ; 2 uses
  %i.ap = fcmp olt double %i.ao, %.152.us.us.us
  %.2.us.us.us = select i1 %i.ap, double %i.ao, double %.152.us.us.us ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.aq, label %bb.b, label %._crit_edge.us.us.us, !llvm.loop !26

._crit_edge.us.us.us:                             ; preds = %bb.b
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next84, %i.o
  br i1 %i.ar, label %.lr.ph.us.us.us, label %._crit_edge58.us.us, !llvm.loop !27

._crit_edge58.us.us:                              ; preds = %._crit_edge.us.us.us, %.lr.ph57.us.us
  %.us-phi.us.us = phi double [ 6.502500e+04, %.lr.ph57.us.us ], [ %.2.us.us.us, %._crit_edge.us.us.us ]
  %i.as = fadd double %.14661.us.us, %.us-phi.us.us ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count
  br i1 %exitcond89.not, label %._crit_edge.us, label %.lr.ph57.us.us, !llvm.loop !25

._crit_edge.us.loopexit102.unr-lcssa:             ; preds = %.lr.ph.split.us73
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.lr.ph.split.us73.epil.preheader

.lr.ph.split.us73.epil.preheader:                 ; preds = %._crit_edge.us.loopexit102.unr-lcssa, %.lr.ph.split.us73.preheader
  %.14661.us74.epil.init = phi double [ %.04568.us, %.lr.ph.split.us73.preheader ], [ %i.w, %._crit_edge.us.loopexit102.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.split.us73.epil

.lr.ph.split.us73.epil:                           ; preds = %.lr.ph.split.us73.epil, %.lr.ph.split.us73.epil.preheader
  %.14661.us74.epil = phi double [ %i.at, %.lr.ph.split.us73.epil ], [ %.14661.us74.epil.init, %.lr.ph.split.us73.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.split.us73.epil ], [ 0, %.lr.ph.split.us73.epil.preheader ]
  %i.at = fadd double %.14661.us74.epil, 6.502500e+04 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %.lr.ph.split.us73.epil, !llvm.loop !28

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit102.unr-lcssa, %.lr.ph.split.us73.epil, %._crit_edge58.us.us
  %.us-phi66.us = phi double [ %i.as, %._crit_edge58.us.us ], [ %i.w, %._crit_edge.us.loopexit102.unr-lcssa ], [ %i.at, %.lr.ph.split.us73.epil ] ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge71, label %.lr.ph.us, !llvm.loop !29

._crit_edge71:                                    ; preds = %._crit_edge.us, %bb.a
  %.045.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.us-phi66.us, %._crit_edge.us ]
  ret double %.045.lcssa
}

declare void @VP8SSIMDspInit() local_unnamed_addr #3

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @WebPPictureDistortion(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WebPPicture, align 8        ; 9 uses
  %5 = alloca %struct.WebPPicture, align 8        ; 9 uses
  %i.a = alloca float, align 4                    ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %i.l = icmp ne i32 %i.i, %i.k
  %i.m = icmp eq ptr %3, null
  %or.cond3 = or i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @VP8SSIMDspInit() #7
  %i.n = call i32 @WebPPictureInitInternal(ptr noundef nonnull %4, i32 noundef 528) #7
  %.not51 = icmp eq i32 %i.n, 0
  br i1 %.not51, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @WebPPictureInitInternal(ptr noundef nonnull %5, i32 noundef 528) #7
  %.not52 = icmp eq i32 %i.o, 0
  br i1 %.not52, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.d, align 8, !tbaa !35   ; 7 uses
  %i.q = load i32, ptr %i.h, align 4, !tbaa !36   ; 7 uses
  %i.r = call i32 @WebPPictureView(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull %4) #7
  %.not53 = icmp eq i32 %i.r, 0
  br i1 %.not53, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @WebPPictureView(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.p, i32 noundef %i.q, ptr noundef nonnull %5) #7
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %4, align 8, !tbaa !37
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = call i32 @WebPPictureYUVAToARGB(ptr noundef nonnull %4) #7
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = load i32, ptr %5, align 8, !tbaa !37
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = call i32 @WebPPictureYUVAToARGB(ptr noundef nonnull %5) #7
  %.not56 = icmp eq i32 %i.y, 0
  br i1 %.not56, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 4 uses
  %i.ad = mul nsw i32 %i.q, %i.p
  %i.ae = sitofp i32 %i.ad to double              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.af = load i32, ptr %i.z, align 8, !tbaa !38
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.an = call i32 @WebPPlaneDistortion(ptr noundef %i.al, i64 noundef %i.ah, ptr noundef %i.am, i64 noundef %i.ak, i32 noundef %i.p, i32 noundef %i.q, i64 noundef 4, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  %.not57 = icmp eq i32 %i.an, 0
  br i1 %.not57, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ao = load float, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ap = load i32, ptr %i.z, align 8, !tbaa !38
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = call i32 @WebPPlaneDistortion(ptr noundef nonnull %i.aw, i64 noundef %i.ar, ptr noundef nonnull %i.ay, i64 noundef %i.au, i32 noundef %i.p, i32 noundef %i.q, i64 noundef 4, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.az)
  %.not57.1 = icmp eq i32 %i.ba, 0
  br i1 %.not57.1, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = load float, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bc = load i32, ptr %i.z, align 8, !tbaa !38
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = call i32 @WebPPlaneDistortion(ptr noundef nonnull %i.bj, i64 noundef %i.be, ptr noundef nonnull %i.bl, i64 noundef %i.bh, i32 noundef %i.p, i32 noundef %i.q, i64 noundef 4, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bm)
  %.not57.2 = icmp eq i32 %i.bn, 0
  br i1 %.not57.2, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load float, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bp = load i32, ptr %i.z, align 8, !tbaa !38
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 2
  %i.bs = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 2
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ca = call i32 @WebPPlaneDistortion(ptr noundef nonnull %i.bw, i64 noundef %i.br, ptr noundef nonnull %i.by, i64 noundef %i.bu, i32 noundef %i.p, i32 noundef %i.q, i64 noundef 4, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bz)
  %.not57.3 = icmp eq i32 %i.ca, 0
  br i1 %.not57.3, label %bb.m, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = fadd double %i.ae, %i.ae
  %i.cc = fadd double %i.cb, %i.ae
  %i.cd = fpext float %i.ao to double
  %i.ce = fadd double %i.cd, 0.000000e+00
  %i.cf = fpext float %i.bb to double
  %i.cg = fadd double %i.ce, %i.cf
  %i.ch = fpext float %i.bo to double
  %i.ci = fadd double %i.cg, %i.ch
  %i.cj = load float, ptr %i.a, align 4, !tbaa !10
  %i.ck = fpext float %i.cj to double
  %i.cl = fadd double %i.ci, %i.ck                ; 3 uses
  %i.cm = fadd double %i.cc, %i.ae                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.cn = icmp eq i32 %2, 1
  br i1 %i.cn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.co = fcmp ogt double %i.cm, 0.000000e+00
  %i.cp = fdiv double %i.cl, %i.cm
  %i.cq = select i1 %i.co, double %i.cp, double 1.000000e+00 ; 2 uses
  %i.cr = fcmp olt double %i.cq, 1.000000e+00
  br i1 %i.cr, label %bb.s, label %GetLogSSIM.exit

bb.s:                                             ; preds = %bb.r
  %i.cs = fsub double 1.000000e+00, %i.cq
  %i.ct = call double @log10(double noundef %i.cs) #7, !tbaa !6
  %i.cu = fmul double %i.ct, -1.000000e+01
  br label %GetLogSSIM.exit

bb.t:                                             ; preds = %bb.q
  %i.cv = fcmp ogt double %i.cl, 0.000000e+00
  %i.cw = fcmp ogt double %i.cm, 0.000000e+00
  %or.cond.i = and i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %bb.u, label %GetLogSSIM.exit

bb.u:                                             ; preds = %bb.t
  %i.cx = fmul nnan double %i.cm, 2.550000e+02
  %i.cy = fmul nnan double %i.cx, 2.550000e+02
  %i.cz = fdiv double %i.cl, %i.cy
  %i.da = call double @log(double noundef %i.cz) #7, !tbaa !6
  %i.db = fmul double %i.da, f0xC0115F2CEBF15542
  br label %GetLogSSIM.exit

GetLogSSIM.exit:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.in = phi double [ 9.900000e+01, %bb.r ], [ %i.cu, %bb.s ], [ %i.db, %bb.u ], [ 9.900000e+01, %bb.t ]
  %i.dc = fptrunc double %.in to float
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.dc, ptr %i.dd, align 4, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %GetLogSSIM.exit
  %.045 = phi i32 [ 0, %bb.m ], [ 1, %GetLogSSIM.exit ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @WebPPictureFree(ptr noundef nonnull %4) #7
  call void @WebPPictureFree(ptr noundef nonnull %5) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %bb.v
  %.047 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %.045, %bb.v ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i32 %.047
}

declare i32 @WebPPictureView(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPPictureYUVAToARGB(ptr noundef) local_unnamed_addr #3

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"float", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = !{ptr @AccumulateLSIM, ptr @AccumulateSSE, ptr @AccumulateSSIM}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !30}
!29 = distinct !{!29, !8}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!"p1 omnipotent char", !11, i64 0}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!"p1 _ZTS12WebPAuxStats", !11, i64 0}
!34 = !{!"WebPPicture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !31, i64 16, !31, i64 24, !31, i64 32, !5, i64 40, !5, i64 44, !31, i64 48, !5, i64 56, !4, i64 60, !32, i64 72, !5, i64 80, !4, i64 84, !11, i64 96, !11, i64 104, !5, i64 112, !31, i64 120, !33, i64 128, !5, i64 136, !11, i64 144, !11, i64 152, !4, i64 160, !31, i64 176, !31, i64 184, !4, i64 192, !11, i64 224, !11, i64 232, !4, i64 240}
!35 = !{!34, !5, i64 8}
!36 = !{!34, !5, i64 12}
!37 = !{!34, !5, i64 0}
!38 = !{!34, !5, i64 80}
!39 = !{!34, !32, i64 72}
end_hunk_0
