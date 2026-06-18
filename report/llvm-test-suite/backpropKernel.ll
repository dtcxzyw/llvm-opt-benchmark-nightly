begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local float @bpnn_train_kernel(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 4 captures(none) %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, ptr noalias nofree noundef nonnull align 4 captures(none) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %6, ptr noalias nofree noundef nonnull align 4 captures(none) %7, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %8, ptr noalias nofree noundef nonnull align 4 captures(none) %9, ptr noalias nofree noundef nonnull align 4 captures(none) %10, ptr noalias nofree noundef nonnull align 4 captures(none) %11, ptr noalias nofree noundef nonnull align 4 captures(none) %12, i32 noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 9 uses
  %i.c = add i32 %2, 1
  %i.d = zext i32 %i.c to i64                     ; 7 uses
  %i.e = icmp sgt i32 %13, 0
  br i1 %i.e, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %bb.a
  %.not125 = icmp slt i32 %1, 1                   ; 2 uses
  %.not117122 = icmp slt i32 %0, 0                ; 2 uses
  %.not110136 = icmp slt i32 %2, 1
  %.not116128 = icmp slt i32 %1, 0                ; 2 uses
  %i.f = add i32 %0, 1                            ; 3 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %wide.trip.count208 = zext i32 %i.f to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %0, 0
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod227 = trunc i32 %i.f to i1
  %xtraiter229 = and i64 %i.b, 1
  %i.h = icmp eq i32 %1, 0
  %unroll_iter233 = and i64 %i.b, 4294967294
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  %lcmp.mod232 = trunc i32 %i.a to i1
  %brmerge = or i1 %.not125, %.not117122
  br label %bb.b

._crit_edge169:                                   ; preds = %._crit_edge165.split, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.lcssa219221, %._crit_edge165.split ]
  ret float %.0.lcssa

bb.b:                                             ; preds = %.lr.ph168, %._crit_edge165.split
  %.099166 = phi i32 [ 0, %.lr.ph168 ], [ %i.dc, %._crit_edge165.split ]
  store float 1.000000e+00, ptr %3, align 4, !tbaa !8
  br i1 %.not125, label %._crit_edge127, label %.preheader120

.preheader120:                                    ; preds = %bb.b, %._crit_edge
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %._crit_edge ], [ 1, %bb.b ] ; 3 uses
  br i1 %.not117122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader120
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv175 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %.0106123 = phi double [ %i.v, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.i = mul nuw nsw i64 %indvars.iv, %i.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.i
  %i.j = load float, ptr %gep, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4, !tbaa !8
  %i.m = fmul float %i.j, %i.l
  %i.n = fpext float %i.m to double
  %i.o = fadd double %.0106123, %i.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.p = mul nuw nsw i64 %indvars.iv.next, %i.b
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.p
  %i.q = load float, ptr %gep.1, align 4, !tbaa !8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.s = load float, ptr %i.r, align 4, !tbaa !8
  %i.t = fmul float %i.q, %i.s
  %i.u = fpext float %i.t to double
  %i.v = fadd double %i.o, %i.u                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !10

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0106123.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.w = mul nuw nsw i64 %indvars.iv.epil.init, %i.b
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.w
  %i.x = load float, ptr %gep.epil, align 4, !tbaa !8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.z = load float, ptr %i.y, align 4, !tbaa !8
  %i.aa = fmul float %i.x, %i.z
  %i.ab = fpext float %i.aa to double
  %i.ac = fadd double %.0106123.epil.init, %i.ab
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader120
  %.0106.lcssa = phi double [ 0.000000e+00, %.preheader120 ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = fneg double %.0106.lcssa
  %i.ae = tail call double @exp(double noundef %i.ad) #4, !tbaa !4
  %i.af = fadd double %i.ae, 1.000000e+00
  %i.ag = fdiv double 1.000000e+00, %i.af
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv175
  store float %i.ah, ptr %i.ai, align 4, !tbaa !8
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %i.b
  br i1 %exitcond179.not, label %._crit_edge127, label %.preheader120, !llvm.loop !12

._crit_edge127:                                   ; preds = %._crit_edge, %bb.b
  store float 1.000000e+00, ptr %4, align 4, !tbaa !8
  br i1 %.not110136, label %._crit_edge142.thread, label %.preheader119

.preheader119:                                    ; preds = %._crit_edge127, %._crit_edge132
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %._crit_edge132 ], [ 1, %._crit_edge127 ] ; 3 uses
  br i1 %.not116128, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader119
  %invariant.gep134 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv185 ; 3 uses
  br i1 %i.h, label %.epil.preheader228, label %.lr.ph131.new

.lr.ph131.new:                                    ; preds = %.lr.ph131, %.lr.ph131.new
  %indvars.iv180 = phi i64 [ %indvars.iv.next181.1, %.lr.ph131.new ], [ 0, %.lr.ph131 ] ; 4 uses
  %.1107129 = phi double [ %i.aw, %.lr.ph131.new ], [ 0.000000e+00, %.lr.ph131 ]
  %niter234 = phi i64 [ %niter234.next.1, %.lr.ph131.new ], [ 0, %.lr.ph131 ]
  %i.aj = mul nuw nsw i64 %indvars.iv180, %i.d
  %gep135 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep134, i64 %i.aj
  %i.ak = load float, ptr %gep135, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv180
  %i.am = load float, ptr %i.al, align 4, !tbaa !8
  %i.an = fmul float %i.ak, %i.am
  %i.ao = fpext float %i.an to double
  %i.ap = fadd double %.1107129, %i.ao
  %indvars.iv.next181 = or disjoint i64 %indvars.iv180, 1 ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv.next181, %i.d
  %gep135.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep134, i64 %i.aq
  %i.ar = load float, ptr %gep135.1, align 4, !tbaa !8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next181
  %i.at = load float, ptr %i.as, align 4, !tbaa !8
  %i.au = fmul float %i.ar, %i.at
  %i.av = fpext float %i.au to double
  %i.aw = fadd double %i.ap, %i.av                ; 3 uses
  %indvars.iv.next181.1 = add nuw nsw i64 %indvars.iv180, 2 ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %._crit_edge132.loopexit.unr-lcssa, label %.lr.ph131.new, !llvm.loop !13

._crit_edge132.loopexit.unr-lcssa:                ; preds = %.lr.ph131.new
  br i1 %lcmp.mod230.not, label %._crit_edge132, label %.epil.preheader228

.epil.preheader228:                               ; preds = %._crit_edge132.loopexit.unr-lcssa, %.lr.ph131
  %indvars.iv180.epil.init = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next181.1, %._crit_edge132.loopexit.unr-lcssa ] ; 2 uses
  %.1107129.epil.init = phi double [ 0.000000e+00, %.lr.ph131 ], [ %i.aw, %._crit_edge132.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.ax = mul nuw nsw i64 %indvars.iv180.epil.init, %i.d
  %gep135.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep134, i64 %i.ax
  %i.ay = load float, ptr %gep135.epil, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv180.epil.init
  %i.ba = load float, ptr %i.az, align 4, !tbaa !8
  %i.bb = fmul float %i.ay, %i.ba
  %i.bc = fpext float %i.bb to double
  %i.bd = fadd double %.1107129.epil.init, %i.bc
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.epil.preheader228, %._crit_edge132.loopexit.unr-lcssa, %.preheader119
  %.1107.lcssa = phi double [ 0.000000e+00, %.preheader119 ], [ %i.aw, %._crit_edge132.loopexit.unr-lcssa ], [ %i.bd, %.epil.preheader228 ]
  %i.be = fneg double %.1107.lcssa
  %i.bf = tail call double @exp(double noundef %i.be) #4, !tbaa !4
  %i.bg = fadd double %i.bf, 1.000000e+00
  %i.bh = fdiv double 1.000000e+00, %i.bg
  %i.bi = fptrunc double %i.bh to float
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv185
  store float %i.bi, ptr %i.bj, align 4, !tbaa !8
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %i.d
  br i1 %exitcond189.not, label %.lr.ph141, label %.preheader119, !llvm.loop !14

.lr.ph141:                                        ; preds = %._crit_edge132, %.lr.ph141
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph141 ], [ 1, %._crit_edge132 ] ; 4 uses
  %.1140 = phi float [ %i.bx, %.lr.ph141 ], [ 0.000000e+00, %._crit_edge132 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv190
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !8 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv190
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !8
  %i.bo = fpext float %i.bl to double             ; 2 uses
  %i.bp = fsub double 1.000000e+00, %i.bo
  %i.bq = fmul double %i.bp, %i.bo
  %i.br = fsub float %i.bn, %i.bl
  %i.bs = fpext float %i.br to double
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = fptrunc double %i.bt to float           ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv190
  store float %i.bu, ptr %i.bv, align 4, !tbaa !8
  %i.bw = tail call float @llvm.fabs.f32(float %i.bu)
  %i.bx = fadd float %.1140, %i.bw                ; 3 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond194.not = icmp eq i64 %indvars.iv.next191, %i.d
  br i1 %exitcond194.not, label %._crit_edge142, label %.lr.ph141, !llvm.loop !15

._crit_edge142.thread:                            ; preds = %._crit_edge127
  store float 1.000000e+00, ptr %4, align 4, !tbaa !8
  br label %._crit_edge154.split

._crit_edge142:                                   ; preds = %.lr.ph141
  store float 1.000000e+00, ptr %4, align 4, !tbaa !8
  br i1 %.not116128, label %._crit_edge154.thread, label %.preheader118

._crit_edge154.thread:                            ; preds = %._crit_edge142
  store float 1.000000e+00, ptr %3, align 4, !tbaa !8
  br label %._crit_edge165.split

.preheader118:                                    ; preds = %._crit_edge142, %._crit_edge147
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %._crit_edge147 ], [ 1, %._crit_edge142 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv200
  %i.bz = load float, ptr %i.by, align 4, !tbaa !8
  %i.ca = fpext float %i.bz to double
  %i.cb = fmul double %i.ca, 3.000000e-01
  %invariant.gep148 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv200
  %invariant.gep150 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv200
  br label %bb.c

bb.c:                                             ; preds = %.preheader118, %bb.c
  %indvars.iv195 = phi i64 [ 0, %.preheader118 ], [ %indvars.iv.next196, %bb.c ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv195
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !8
  %i.ce = fpext float %i.cd to double
  %i.cf = mul nuw nsw i64 %indvars.iv195, %i.d    ; 2 uses
  %gep149 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep148, i64 %i.cf ; 2 uses
  %i.cg = load float, ptr %gep149, align 4, !tbaa !8
  %i.ch = fpext float %i.cg to double
  %i.ci = fmul double %i.ch, 3.000000e-01
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ce, double %i.ci)
  %i.ck = fptrunc double %i.cj to float           ; 2 uses
  %gep151 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep150, i64 %i.cf ; 2 uses
  %i.cl = load float, ptr %gep151, align 4, !tbaa !8
  %i.cm = fadd float %i.cl, %i.ck
  store float %i.cm, ptr %gep151, align 4, !tbaa !8
  store float %i.ck, ptr %gep149, align 4, !tbaa !8
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %i.b
  br i1 %exitcond199.not, label %._crit_edge147, label %bb.c, !llvm.loop !16

._crit_edge147:                                   ; preds = %bb.c
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %i.d
  br i1 %exitcond204.not, label %._crit_edge154.split, label %.preheader118, !llvm.loop !17

._crit_edge154.split:                             ; preds = %._crit_edge147, %._crit_edge142.thread
  %.1.lcssa219 = phi float [ 0.000000e+00, %._crit_edge142.thread ], [ %i.bx, %._crit_edge147 ] ; 2 uses
  store float 1.000000e+00, ptr %3, align 4, !tbaa !8
  br i1 %brmerge, label %._crit_edge165.split, label %.preheader

.preheader:                                       ; preds = %._crit_edge154.split, %._crit_edge158
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %._crit_edge158 ], [ 1, %._crit_edge154.split ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv210
  %i.co = load float, ptr %i.cn, align 4, !tbaa !8
  %i.cp = fpext float %i.co to double
  %i.cq = fmul double %i.cp, 3.000000e-01
  %invariant.gep159 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv210
  %invariant.gep161 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv210
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv205 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next206, %bb.d ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv205
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !8
  %i.ct = fpext float %i.cs to double
  %i.cu = mul nuw nsw i64 %indvars.iv205, %i.b    ; 2 uses
  %gep160 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep159, i64 %i.cu ; 2 uses
  %i.cv = load float, ptr %gep160, align 4, !tbaa !8
  %i.cw = fpext float %i.cv to double
  %i.cx = fmul double %i.cw, 3.000000e-01
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ct, double %i.cx)
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %gep162 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep161, i64 %i.cu ; 2 uses
  %i.da = load float, ptr %gep162, align 4, !tbaa !8
  %i.db = fadd float %i.da, %i.cz
  store float %i.db, ptr %gep162, align 4, !tbaa !8
  store float %i.cz, ptr %gep160, align 4, !tbaa !8
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %._crit_edge158, label %bb.d, !llvm.loop !18

._crit_edge158:                                   ; preds = %bb.d
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %i.b
  br i1 %exitcond214.not, label %._crit_edge165.split, label %.preheader, !llvm.loop !19

._crit_edge165.split:                             ; preds = %._crit_edge158, %._crit_edge154.split, %._crit_edge154.thread
  %.1.lcssa219221 = phi float [ %i.bx, %._crit_edge154.thread ], [ %.1.lcssa219, %._crit_edge154.split ], [ %.1.lcssa219, %._crit_edge158 ]
  %i.dc = add nuw nsw i32 %.099166, 1             ; 2 uses
  %exitcond215.not = icmp eq i32 %i.dc, %13
  br i1 %exitcond215.not, label %._crit_edge169, label %bb.b, !llvm.loop !20
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
end_hunk_0
