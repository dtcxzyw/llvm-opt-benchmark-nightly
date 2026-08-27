Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OpTools?download=true
inline.NumInlined: 51
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_513EvalTransformEPKfPflRNS_10OpRcPtrVecE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(144) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl nsw i64 %2, 2                        ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #7
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl i64 %2, 4                            ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #8 ; 9 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !8
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %.idx.i.i.i.i.i.i.i = add i64 %i.c, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %xtraiter = and i64 %2, 1
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03664.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.03763.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %.idx.epil = shl nuw nsw i64 %.03664.epil.init, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.epil ; 3 uses
  %i.k = load <2 x float>, ptr %.03763.epil.init, align 4, !tbaa !8
  store <2 x float> %i.k, ptr %i.j, align 4, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %.03763.epil.init, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store float %i.m, ptr %i.n, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store float 1.000000e+00, ptr %i.o, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.p = phi i1 [ false, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ false, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ true, %._crit_edge.loopexit.unr-lcssa ], [ true, %.lr.ph.epil.preheader ]
  %.sroa.047.080 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.d, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.d, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil.preheader ] ; 13 uses
  %.sroa.18.079 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.g, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %i.g, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil.preheader ] ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec8finalizeEv(ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %bb.b unwind label %bb.e

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03664 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ] ; 3 uses
  %.03763 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.idx = shl nuw nsw i64 %.03664, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.r = load <2 x float>, ptr %.03763, align 4, !tbaa !8
  store <2 x float> %i.r, ptr %i.q, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.03763, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.03763, i64 12
  %i.x = shl i64 %.03664, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load <2 x float>, ptr %i.w, align 4, !tbaa !8
  store <2 x float> %i.aa, ptr %i.z, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.03763, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store float %i.ac, ptr %i.ad, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.03763, i64 24 ; 2 uses
  %i.ag = add nuw nsw i64 %.03664, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !10

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVec8optimizeENS_17OptimizationFlagsE(ptr noundef nonnull align 8 dereferenceable(144) %3, i64 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.aj
  br i1 %.not, label %.preheader, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 4
  br label %.lr.ph67

.preheader:                                       ; preds = %bb.d, %bb.c
  br i1 %i.p, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %.preheader
  %i.ao = add i64 %2, -1
  %xtraiter84 = and i64 %2, 3                     ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 3
  br i1 %i.ap, label %.lr.ph70.epil.preheader, label %.lr.ph70.preheader.new

.lr.ph70.preheader.new:                           ; preds = %.lr.ph70.preheader
  %unroll_iter87 = and i64 %2, -4
  br label %.lr.ph70

.thread:                                          ; preds = %.lr.ph67
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %bb.d
  %.03565 = phi i64 [ %i.ax, %bb.d ], [ 0, %.lr.ph67.preheader ] ; 2 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %.03565
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull %.sroa.047.080, ptr noundef nonnull %.sroa.047.080, i64 noundef %2)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %.lr.ph67
  %i.ax = add nuw i64 %.03565, 1                  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.ax, %i.an
  br i1 %exitcond72.not, label %.preheader, label %.lr.ph67, !llvm.loop !24

._crit_edge71:                                    ; preds = %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.047.080, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge71.thread

._crit_edge71.thread.loopexit.unr-lcssa:          ; preds = %.lr.ph70
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %._crit_edge71.thread, label %.lr.ph70.epil.preheader

.lr.ph70.epil.preheader:                          ; preds = %._crit_edge71.thread.loopexit.unr-lcssa, %.lr.ph70.preheader
  %.069.epil.init = phi i64 [ 0, %.lr.ph70.preheader ], [ %i.cl, %._crit_edge71.thread.loopexit.unr-lcssa ]
  %.03468.epil.init = phi ptr [ %1, %.lr.ph70.preheader ], [ %i.ck, %._crit_edge71.thread.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter84, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph70.epil

.lr.ph70.epil:                                    ; preds = %.lr.ph70.epil, %.lr.ph70.epil.preheader
  %.069.epil = phi i64 [ %i.be, %.lr.ph70.epil ], [ %.069.epil.init, %.lr.ph70.epil.preheader ] ; 2 uses
  %.03468.epil = phi ptr [ %i.bd, %.lr.ph70.epil ], [ %.03468.epil.init, %.lr.ph70.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph70.epil ], [ 0, %.lr.ph70.epil.preheader ]
  %.idx76.epil = shl nuw nsw i64 %.069.epil, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.047.080, i64 %.idx76.epil ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !8
  store <2 x float> %i.az, ptr %.03468.epil, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.03468.epil, i64 8
  store float %i.bb, ptr %i.bc, align 4, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %.03468.epil, i64 12
  %i.be = add nuw nsw i64 %.069.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter84
  br i1 %epil.iter.cmp.not, label %._crit_edge71.thread, label %.lr.ph70.epil, !llvm.loop !25

._crit_edge71.thread:                             ; preds = %._crit_edge71.thread.loopexit.unr-lcssa, %.lr.ph70.epil, %._crit_edge71
  %i.bf = ptrtoint ptr %.sroa.047.080 to i64
  %i.bg = sub i64 %.sroa.18.079, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.080, i64 noundef %i.bg) #9
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge71, %._crit_edge71.thread
  ret void

.lr.ph70:                                         ; preds = %.lr.ph70, %.lr.ph70.preheader.new
  %.069 = phi i64 [ 0, %.lr.ph70.preheader.new ], [ %i.cl, %.lr.ph70 ] ; 5 uses
  %.03468 = phi ptr [ %1, %.lr.ph70.preheader.new ], [ %i.ck, %.lr.ph70 ] ; 9 uses
  %niter88 = phi i64 [ 0, %.lr.ph70.preheader.new ], [ %niter88.next.3, %.lr.ph70 ]
  %.idx76 = shl nuw nsw i64 %.069, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.047.080, i64 %.idx76 ; 2 uses
  %i.bi = load <2 x float>, ptr %i.bh, align 4, !tbaa !8
  store <2 x float> %i.bi, ptr %.03468, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %.03468, i64 8
  store float %i.bk, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %.03468, i64 12
  %i.bn = shl i64 %.069, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.047.080, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !8
  store <2 x float> %i.bq, ptr %i.bm, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load float, ptr %i.br, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.03468, i64 20
  store float %i.bs, ptr %i.bt, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.03468, i64 24
  %i.bv = shl i64 %.069, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.047.080, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !8
  store <2 x float> %i.by, ptr %i.bu, align 4, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %.03468, i64 32
  store float %i.ca, ptr %i.cb, align 4, !tbaa !8
end_hunk_0
