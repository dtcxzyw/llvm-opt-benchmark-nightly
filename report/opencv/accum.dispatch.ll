inline.NumInlined: 56
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count56.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check23 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check23, label %.lr.ph.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count56.i, 2
  %scevgep17 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep18 = getelementptr i8, ptr %0, i64 %wide.trip.count56.i
  %bound019 = icmp ult ptr %1, %scevgep18
  %bound120 = icmp ult ptr %0, %scevgep17
  %found.conflict21 = and i1 %bound019, %bound120
  br i1 %found.conflict21, label %.lr.ph.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck16
  %n.vec25 = and i64 %wide.trip.count56.i, 2147483640 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load28 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !9
  %wide.load29 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !9
  %i.f = uitofp <4 x i8> %wide.load28 to <4 x float>
  %i.g = uitofp <4 x i8> %wide.load29 to <4 x float>
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.h, align 4, !tbaa !12, !alias.scope !14, !noalias !9
  %wide.load31 = load <4 x float>, ptr %i.i, align 4, !tbaa !12, !alias.scope !14, !noalias !9
  %i.j = fadd <4 x float> %wide.load30, %i.f
  %i.k = fadd <4 x float> %wide.load31, %i.g
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12, !alias.scope !14, !noalias !9
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !12, !alias.scope !14, !noalias !9
  %index.next32 = add nuw i64 %index27, 8         ; 2 uses
  %i.l = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.l, label %middle.block33, label %vector.body26, !llvm.loop !16

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec25, %wide.trip.count56.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck16, %.lr.ph.preheader.i, %middle.block33
  %indvars.iv53.i.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec25, %middle.block33 ] ; 5 uses
  %xtraiter38 = and i64 %wide.trip.count56.i, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to float
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i.ph ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = fadd float %i.q, %i.o
  store float %i.r, ptr %i.p, align 4, !tbaa !12
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph.i.prol ]
  %i.s = add nsw i64 %wide.trip.count56.i, -1
  %i.t = icmp eq i64 %indvars.iv53.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph.i ], [ %indvars.iv53.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to float
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = fadd float %i.y, %i.w
  store float %i.z, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next54.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next54.i ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fadd float %i.ae, %i.ac
  store float %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %wide.trip.count56.i
  br i1 %exitcond57.not.i.1, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !20

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph43.i, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph43.i:                                       ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph43.split.us.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph43.split.us.preheader.i:                    ; preds = %.lr.ph43.i
  %wide.trip.count51.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count51.i, -1    ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i
  %i.am = shl i64 %i.al, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep12 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph43.split.us.i

.lr.ph43.split.us.i:                              ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph43.split.us.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i ], [ %indvars.iv.next49.i, %..loopexit37_crit_edge.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i ], [ %i.bt, %..loopexit37_crit_edge.us.i ] ; 5 uses
  %.03440.us.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i ], [ %i.bu, %..loopexit37_crit_edge.us.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.aq, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !21
  %wide.load13 = load <4 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !21
  %i.at = uitofp <4 x i8> %wide.load to <4 x float>
  %i.au = uitofp <4 x i8> %wide.load13 to <4 x float>
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load14 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !24, !noalias !21
  %wide.load15 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !24, !noalias !21
  %i.ax = fadd <4 x float> %wide.load14, %i.at
  %i.ay = fadd <4 x float> %wide.load15, %i.au
  store <4 x float> %i.ax, ptr %i.av, align 4, !tbaa !12, !alias.scope !24, !noalias !21
  store <4 x float> %i.ay, ptr %i.aw, align 4, !tbaa !12, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.ba = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fadd float %i.be, %i.bc
  store float %i.bf, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fadd float %i.bl, %i.bj
  store float %i.bm, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fadd float %i.br, %i.bp
  store float %i.bs, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !27

..loopexit37_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph43.split.us.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %i.ai
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph43.split.us.i, !llvm.loop !28

_ZN2cv12cpu_baseline12acc_general_IhfEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph43.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count56.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check16, label %.lr.ph.i.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i
  %n.vec18 = and i64 %wide.trip.count56.i, 2147483640 ; 3 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load21 = load <4 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load22 = load <4 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <4 x i16> %wide.load21 to <4 x float>
  %i.f = uitofp <4 x i16> %wide.load22 to <4 x float>
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load23 = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %wide.load24 = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.i = fadd <4 x float> %wide.load23, %i.e
  %i.j = fadd <4 x float> %wide.load24, %i.f
  store <4 x float> %i.i, ptr %i.g, align 4, !tbaa !12
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12
  %index.next25 = add nuw i64 %index20, 8         ; 2 uses
  %i.k = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.k, label %middle.block26, label %vector.body19, !llvm.loop !31

middle.block26:                                   ; preds = %vector.body19
  %cmp.n27 = icmp eq i64 %n.vec18, %wide.trip.count56.i
  br i1 %cmp.n27, label %_ZN2cv12cpu_baseline12acc_general_ItfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block26
  %indvars.iv53.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec18, %middle.block26 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %.lr.ph.i ], [ %indvars.iv53.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv53.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = uitofp i16 %i.m to float
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = fadd float %i.p, %i.n
  store float %i.q, ptr %i.o, align 4, !tbaa !12
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %_ZN2cv12cpu_baseline12acc_general_ItfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !32

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph43.i, label %_ZN2cv12cpu_baseline12acc_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph43.i:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %4, 0
  %i.t = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.s, label %.lr.ph43.split.us.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph43.split.us.preheader.i:                    ; preds = %.lr.ph43.i
  %wide.trip.count51.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph43.split.us.i

.lr.ph43.split.us.i:                              ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph43.split.us.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i ], [ %indvars.iv.next49.i, %..loopexit37_crit_edge.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i ], [ %i.al, %..loopexit37_crit_edge.us.i ] ; 3 uses
  %.03440.us.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i ], [ %i.am, %..loopexit37_crit_edge.us.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.v, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader29, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03341.us.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.load = load <4 x i16>, ptr %i.w, align 2, !tbaa !29
  %wide.load12 = load <4 x i16>, ptr %i.x, align 2, !tbaa !29
  %i.y = uitofp <4 x i16> %wide.load to <4 x float>
  %i.z = uitofp <4 x i16> %wide.load12 to <4 x float>
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline9acc_simd_EPKfPfPKhii:bb.a
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.at, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !12, !alias.scope !45
  %wide.load13 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !45
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load14 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !48, !noalias !45
  %wide.load15 = load <4 x float>, ptr %i.ax, align 4, !tbaa !12, !alias.scope !48, !noalias !45
  %i.ay = fadd <4 x float> %wide.load, %wide.load14
  %i.az = fadd <4 x float> %wide.load13, %wide.load15
  store <4 x float> %i.ay, ptr %i.aw, align 4, !tbaa !12, !alias.scope !48, !noalias !45
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !12, !alias.scope !48, !noalias !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36, %.preheader.us.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ], [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.i.prol ], [ 0, %.preheader.us.i.preheader36 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %indvars.iv.i.prol
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fadd float %i.bc, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol, !llvm.loop !51

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %indvars.iv.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fadd float %i.bj, %i.bl
  store float %i.bm, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12
  %i.br = fadd float %i.bo, %i.bq
  store float %i.br, ptr %i.bp, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !12
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i.2
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fadd float %i.by, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !12
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !52

..loopexit37_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph43.split.us.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.03341.us.i, i64 %i.an
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i, i64 %i.an
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN2cv12cpu_baseline12acc_general_IffEEvPKT_PT0_PKhiii.exit, label %.lr.ph43.split.us.i, !llvm.loop !53

_ZN2cv12cpu_baseline12acc_general_IffEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph43.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count56.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check23 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check23, label %.lr.ph.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count56.i, 3
  %scevgep17 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep18 = getelementptr i8, ptr %0, i64 %wide.trip.count56.i
  %bound019 = icmp ult ptr %1, %scevgep18
  %bound120 = icmp ult ptr %0, %scevgep17
  %found.conflict21 = and i1 %bound019, %bound120
  br i1 %found.conflict21, label %.lr.ph.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck16
  %n.vec25 = and i64 %wide.trip.count56.i, 2147483644 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %wide.load28 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !54
  %wide.load29 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !54
  %i.f = uitofp <2 x i8> %wide.load28 to <2 x double>
  %i.g = uitofp <2 x i8> %wide.load29 to <2 x double>
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load30 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !59, !noalias !54
  %wide.load31 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !59, !noalias !54
  %i.j = fadd <2 x double> %wide.load30, %i.f
  %i.k = fadd <2 x double> %wide.load31, %i.g
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57, !alias.scope !59, !noalias !54
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !57, !alias.scope !59, !noalias !54
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.l, label %middle.block33, label %vector.body26, !llvm.loop !61

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec25, %wide.trip.count56.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck16, %.lr.ph.preheader.i, %middle.block33
  %indvars.iv53.i.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec25, %middle.block33 ] ; 5 uses
  %xtraiter38 = and i64 %wide.trip.count56.i, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to double
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i.ph ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = fadd double %i.q, %i.o
  store double %i.r, ptr %i.p, align 8, !tbaa !57
  %indvars.iv.next54.i.prol = or disjoint i64 %indvars.iv53.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv53.i.unr = phi i64 [ %indvars.iv53.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next54.i.prol, %.lr.ph.i.prol ]
  %i.s = add nsw i64 %wide.trip.count56.i, -1
  %i.t = icmp eq i64 %indvars.iv53.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %.lr.ph.i ], [ %indvars.iv53.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to double
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !57
  %i.z = fadd double %i.y, %i.w
  store double %i.z, ptr %i.x, align 8, !tbaa !57
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next54.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to double
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next54.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !57
  %i.af = fadd double %i.ae, %i.ac
  store double %i.af, ptr %i.ad, align 8, !tbaa !57
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %exitcond57.not.i.1 = icmp eq i64 %indvars.iv.next54.i.1, %wide.trip.count56.i
  br i1 %exitcond57.not.i.1, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !62

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph43.i, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph43.i:                                       ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph43.split.us.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph43.split.us.preheader.i:                    ; preds = %.lr.ph43.i
  %wide.trip.count51.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count51.i, -1    ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i
  %i.am = shl i64 %i.al, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep12 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph43.split.us.i

.lr.ph43.split.us.i:                              ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph43.split.us.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i ], [ %indvars.iv.next49.i, %..loopexit37_crit_edge.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i ], [ %i.bt, %..loopexit37_crit_edge.us.i ] ; 5 uses
  %.03440.us.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i ], [ %i.bu, %..loopexit37_crit_edge.us.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.aq, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %wide.load = load <2 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !63
  %wide.load13 = load <2 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !63
  %i.at = uitofp <2 x i8> %wide.load to <2 x double>
  %i.au = uitofp <2 x i8> %wide.load13 to <2 x double>
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !66, !noalias !63
  %wide.load15 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !66, !noalias !63
  %i.ax = fadd <2 x double> %wide.load14, %i.at
  %i.ay = fadd <2 x double> %wide.load15, %i.au
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !57, !alias.scope !66, !noalias !63
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !57, !alias.scope !66, !noalias !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.ba = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to double
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57
  %i.bf = fadd double %i.be, %i.bc
  store double %i.bf, ptr %i.bd, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to double
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = fadd double %i.bl, %i.bj
  store double %i.bm, ptr %i.bk, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to double
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !57
  %i.bs = fadd double %i.br, %i.bp
  store double %i.bs, ptr %i.bq, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !69

..loopexit37_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph43.split.us.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03341.us.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %i.ai
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph43.split.us.i, !llvm.loop !70

_ZN2cv12cpu_baseline12acc_general_IhdEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph43.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline9acc_simd_EPKtPdPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count56.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check16, label %.lr.ph.i.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i
  %n.vec18 = and i64 %wide.trip.count56.i, 2147483644 ; 3 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %wide.load21 = load <2 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load22 = load <2 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <2 x i16> %wide.load21 to <2 x double>
  %i.f = uitofp <2 x i16> %wide.load22 to <2 x double>
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load23 = load <2 x double>, ptr %i.g, align 8, !tbaa !57
  %wide.load24 = load <2 x double>, ptr %i.h, align 8, !tbaa !57
  %i.i = fadd <2 x double> %wide.load23, %i.e
  %i.j = fadd <2 x double> %wide.load24, %i.f
  store <2 x double> %i.i, ptr %i.g, align 8, !tbaa !57
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57
  %index.next25 = add nuw i64 %index20, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.k, label %middle.block26, label %vector.body19, !llvm.loop !71

middle.block26:                                   ; preds = %vector.body19
  %cmp.n27 = icmp eq i64 %n.vec18, %wide.trip.count56.i
  br i1 %cmp.n27, label %_ZN2cv12cpu_baseline12acc_general_ItdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block26
  %indvars.iv53.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec18, %middle.block26 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %.lr.ph.i ], [ %indvars.iv53.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv53.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = uitofp i16 %i.m to double
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !57
  %i.q = fadd double %i.p, %i.n
  store double %i.q, ptr %i.o, align 8, !tbaa !57
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %_ZN2cv12cpu_baseline12acc_general_ItdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !72

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph43.i, label %_ZN2cv12cpu_baseline12acc_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph43.i:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %4, 0
  %i.t = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.s, label %.lr.ph43.split.us.preheader.i, label %_ZN2cv12cpu_baseline12acc_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph43.split.us.preheader.i:                    ; preds = %.lr.ph43.i
  %wide.trip.count51.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph43.split.us.i

.lr.ph43.split.us.i:                              ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph43.split.us.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i ], [ %indvars.iv.next49.i, %..loopexit37_crit_edge.us.i ] ; 2 uses
  %.03341.us.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i ], [ %i.al, %..loopexit37_crit_edge.us.i ] ; 3 uses
  %.03440.us.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i ], [ %i.am, %..loopexit37_crit_edge.us.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.v, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader29, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03341.us.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load = load <2 x i16>, ptr %i.w, align 2, !tbaa !29
  %wide.load12 = load <2 x i16>, ptr %i.x, align 2, !tbaa !29
  %i.y = uitofp <2 x i16> %wide.load to <2 x double>
  %i.z = uitofp <2 x i16> %wide.load12 to <2 x double>
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline9acc_simd_EPKdPdPKhii:bb.a
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not36.us.i = icmp eq i8 %i.at, 0
  br i1 %.not36.us.i, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph43.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !57, !alias.scope !89
  %wide.load13 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !89
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !92, !noalias !89
  %wide.load15 = load <2 x double>, ptr %i.ax, align 8, !tbaa !57, !alias.scope !92, !noalias !89
  %i.ay = fadd <2 x double> %wide.load, %wide.load14
  %i.az = fadd <2 x double> %wide.load13, %wide.load15
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !57, !alias.scope !92, !noalias !89
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !57, !alias.scope !92, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36, %.preheader.us.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ], [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.i.prol ], [ 0, %.preheader.us.i.preheader36 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.i.prol
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57
  %i.bf = fadd double %i.bc, %i.be
  store double %i.bf, ptr %i.bd, align 8, !tbaa !57
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol, !llvm.loop !95

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = fadd double %i.bj, %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !57
  %i.br = fadd double %i.bo, %i.bq
  store double %i.br, ptr %i.bp, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i.1
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !57
  %i.bw = fadd double %i.bt, %i.bv
  store double %i.bw, ptr %i.bu, align 8, !tbaa !57
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %indvars.iv.next.i.2
  %i.by = load double, ptr %i.bx, align 8, !tbaa !57
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !57
  %i.cb = fadd double %i.by, %i.ca
  store double %i.cb, ptr %i.bz, align 8, !tbaa !57
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %..loopexit37_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !96

..loopexit37_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph43.split.us.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.03341.us.i, i64 %i.an
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i, i64 %i.an
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN2cv12cpu_baseline12acc_general_IddEEvPKT_PT0_PKhiii.exit, label %.lr.ph43.split.us.i, !llvm.loop !97

_ZN2cv12cpu_baseline12acc_general_IddEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit37_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph43.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count60.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check23 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check23, label %.lr.ph.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count60.i, 2
  %scevgep17 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep18 = getelementptr i8, ptr %0, i64 %wide.trip.count60.i
  %bound019 = icmp ult ptr %1, %scevgep18
  %bound120 = icmp ult ptr %0, %scevgep17
  %found.conflict21 = and i1 %bound019, %bound120
  br i1 %found.conflict21, label %.lr.ph.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck16
  %n.vec25 = and i64 %wide.trip.count60.i, 2147483640 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load28 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !98
  %wide.load29 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !98
  %i.f = uitofp <4 x i8> %wide.load28 to <4 x float> ; 2 uses
  %i.g = uitofp <4 x i8> %wide.load29 to <4 x float> ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.h, align 4, !tbaa !12, !alias.scope !101, !noalias !98
  %wide.load31 = load <4 x float>, ptr %i.i, align 4, !tbaa !12, !alias.scope !101, !noalias !98
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.f, <4 x float> %wide.load30)
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.g, <4 x float> %wide.load31)
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12, !alias.scope !101, !noalias !98
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !12, !alias.scope !101, !noalias !98
  %index.next32 = add nuw i64 %index27, 8         ; 2 uses
  %i.l = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.l, label %middle.block33, label %vector.body26, !llvm.loop !103

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec25, %wide.trip.count60.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck16, %.lr.ph.preheader.i, %middle.block33
  %indvars.iv57.i.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec25, %middle.block33 ] ; 5 uses
  %xtraiter38 = and i64 %wide.trip.count60.i, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to float                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv57.i.ph ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.q)
  store float %i.r, ptr %i.p, align 4, !tbaa !12
  %indvars.iv.next58.i.prol = or disjoint i64 %indvars.iv57.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next58.i.prol, %.lr.ph.i.prol ]
  %i.s = add nsw i64 %wide.trip.count60.i, -1
  %i.t = icmp eq i64 %indvars.iv57.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.lr.ph.i ], [ %indvars.iv57.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to float                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv57.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next58.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to float                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next58.i ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, %wide.trip.count60.i
  br i1 %exitcond61.not.i.1, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !104

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph47.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph47.i:                                       ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph47.split.us.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit

.lr.ph47.split.us.preheader.i:                    ; preds = %.lr.ph47.i
  %wide.trip.count55.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count55.i, -1    ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i
  %i.am = shl i64 %i.al, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep12 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph47.split.us.i

.lr.ph47.split.us.i:                              ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph47.split.us.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i ], [ %indvars.iv.next53.i, %..loopexit41_crit_edge.us.i ] ; 2 uses
  %.03745.us.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i ], [ %i.bt, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %.03844.us.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i ], [ %i.bu, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not40.us.i = icmp eq i8 %i.aq, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !105
  %wide.load13 = load <4 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !105
  %i.at = uitofp <4 x i8> %wide.load to <4 x float> ; 2 uses
  %i.au = uitofp <4 x i8> %wide.load13 to <4 x float> ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load14 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !108, !noalias !105
  %wide.load15 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !108, !noalias !105
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.at, <4 x float> %wide.load14)
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.au, <4 x float> %wide.load15)
  store <4 x float> %i.ax, ptr %i.av, align 4, !tbaa !12, !alias.scope !108, !noalias !105
  store <4 x float> %i.ay, ptr %i.aw, align 4, !tbaa !12, !alias.scope !108, !noalias !105
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.ba = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to float                ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.be)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to float                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to float                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.br)
  store float %i.bs, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !111

..loopexit41_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph47.split.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %i.ai
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit, label %.lr.ph47.split.us.i, !llvm.loop !112

_ZN2cv12cpu_baseline15accSqr_general_IhfEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline12accSqr_simd_EPKtPfPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count60.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check16, label %.lr.ph.i.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i
  %n.vec18 = and i64 %wide.trip.count60.i, 2147483640 ; 3 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load21 = load <4 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load22 = load <4 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <4 x i16> %wide.load21 to <4 x float> ; 2 uses
  %i.f = uitofp <4 x i16> %wide.load22 to <4 x float> ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load23 = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %wide.load24 = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.e, <4 x float> %wide.load23)
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.f, <4 x float> %wide.load24)
  store <4 x float> %i.i, ptr %i.g, align 4, !tbaa !12
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12
  %index.next25 = add nuw i64 %index20, 8         ; 2 uses
  %i.k = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.k, label %middle.block26, label %vector.body19, !llvm.loop !113

middle.block26:                                   ; preds = %vector.body19
  %cmp.n27 = icmp eq i64 %n.vec18, %wide.trip.count60.i
  br i1 %cmp.n27, label %_ZN2cv12cpu_baseline15accSqr_general_ItfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block26
  %indvars.iv57.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec18, %middle.block26 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph.i ], [ %indvars.iv57.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = uitofp i16 %i.m to float                 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv57.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.p)
  store float %i.q, ptr %i.o, align 4, !tbaa !12
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItfEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !114

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph47.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph47.i:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %4, 0
  %i.t = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.s, label %.lr.ph47.split.us.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItfEEvPKT_PT0_PKhiii.exit

.lr.ph47.split.us.preheader.i:                    ; preds = %.lr.ph47.i
  %wide.trip.count55.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph47.split.us.i

.lr.ph47.split.us.i:                              ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph47.split.us.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i ], [ %indvars.iv.next53.i, %..loopexit41_crit_edge.us.i ] ; 2 uses
  %.03745.us.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i ], [ %i.al, %..loopexit41_crit_edge.us.i ] ; 3 uses
  %.03844.us.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i ], [ %i.am, %..loopexit41_crit_edge.us.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %.not40.us.i = icmp eq i8 %i.v, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader29, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03745.us.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.load = load <4 x i16>, ptr %i.w, align 2, !tbaa !29
  %wide.load12 = load <4 x i16>, ptr %i.x, align 2, !tbaa !29
  %i.y = uitofp <4 x i16> %wide.load to <4 x float> ; 2 uses
  %i.z = uitofp <4 x i16> %wide.load12 to <4 x float> ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12accSqr_simd_EPKfPfPKhii:bb.a
  %i.ah = shl i64 %i.ag, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.ah
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.ah
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ai = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph47.split.us.i

.lr.ph47.split.us.i:                              ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph47.split.us.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i ], [ %indvars.iv.next53.i, %..loopexit41_crit_edge.us.i ] ; 2 uses
  %.03745.us.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i ], [ %i.bi, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %.03844.us.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i ], [ %i.bj, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %.not40.us.i = icmp eq i8 %i.ak, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.03745.us.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x float>, ptr %i.al, align 4, !tbaa !12, !alias.scope !125 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.am, align 4, !tbaa !12, !alias.scope !125 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load14 = load <4 x float>, ptr %i.an, align 4, !tbaa !12, !alias.scope !128, !noalias !125
  %wide.load15 = load <4 x float>, ptr %i.ao, align 4, !tbaa !12, !alias.scope !128, !noalias !125
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load, <4 x float> %wide.load14)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load13, <4 x float> %wide.load13, <4 x float> %wide.load15)
  store <4 x float> %i.ap, ptr %i.an, align 4, !tbaa !12, !alias.scope !128, !noalias !125
  store <4 x float> %i.aq, ptr %i.ao, align 4, !tbaa !12, !alias.scope !128, !noalias !125
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.03745.us.i, i64 %indvars.iv.i.ph
  %i.at = load float, ptr %i.as, align 4, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av)
  store float %i.aw, ptr %i.au, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.ax = icmp eq i64 %indvars.iv.i.ph, %i.ai
  br i1 %i.ax, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.03745.us.i, i64 %indvars.iv.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bb)
  store float %i.bc, ptr %i.ba, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03745.us.i, i64 %indvars.iv.next.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bg)
  store float %i.bh, ptr %i.bf, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !131

..loopexit41_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph47.split.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.03745.us.i, i64 %i.ad
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i, i64 %i.ad
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_IffEEvPKT_PT0_PKhiii.exit, label %.lr.ph47.split.us.i, !llvm.loop !132

_ZN2cv12cpu_baseline15accSqr_general_IffEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count60.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check23 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check23, label %.lr.ph.i.preheader, label %vector.memcheck16

vector.memcheck16:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count60.i, 3
  %scevgep17 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep18 = getelementptr i8, ptr %0, i64 %wide.trip.count60.i
  %bound019 = icmp ult ptr %1, %scevgep18
  %bound120 = icmp ult ptr %0, %scevgep17
  %found.conflict21 = and i1 %bound019, %bound120
  br i1 %found.conflict21, label %.lr.ph.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck16
  %n.vec25 = and i64 %wide.trip.count60.i, 2147483644 ; 3 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %wide.load28 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !133
  %wide.load29 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !133
  %i.f = uitofp <2 x i8> %wide.load28 to <2 x double> ; 2 uses
  %i.g = uitofp <2 x i8> %wide.load29 to <2 x double> ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load30 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !136, !noalias !133
  %wide.load31 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !136, !noalias !133
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.f, <2 x double> %wide.load30)
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.g, <2 x double> %wide.load31)
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57, !alias.scope !136, !noalias !133
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !57, !alias.scope !136, !noalias !133
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next32, %n.vec25
  br i1 %i.l, label %middle.block33, label %vector.body26, !llvm.loop !138

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec25, %wide.trip.count60.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck16, %.lr.ph.preheader.i, %middle.block33
  %indvars.iv57.i.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec25, %middle.block33 ] ; 5 uses
  %xtraiter38 = and i64 %wide.trip.count60.i, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to double                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i.ph ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.q)
  store double %i.r, ptr %i.p, align 8, !tbaa !57
  %indvars.iv.next58.i.prol = or disjoint i64 %indvars.iv57.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv57.i.unr = phi i64 [ %indvars.iv57.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next58.i.prol, %.lr.ph.i.prol ]
  %i.s = add nsw i64 %wide.trip.count60.i, -1
  %i.t = icmp eq i64 %indvars.iv57.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.lr.ph.i ], [ %indvars.iv57.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to double                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !57
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.y)
  store double %i.z, ptr %i.x, align 8, !tbaa !57
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next58.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to double               ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next58.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !57
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ae)
  store double %i.af, ptr %i.ad, align 8, !tbaa !57
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, %wide.trip.count60.i
  br i1 %exitcond61.not.i.1, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !139

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph47.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph47.i:                                       ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph47.split.us.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit

.lr.ph47.split.us.preheader.i:                    ; preds = %.lr.ph47.i
  %wide.trip.count55.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count55.i, -1    ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i
  %i.am = shl i64 %i.al, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep12 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph47.split.us.i

.lr.ph47.split.us.i:                              ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph47.split.us.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i ], [ %indvars.iv.next53.i, %..loopexit41_crit_edge.us.i ] ; 2 uses
  %.03745.us.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i ], [ %i.bt, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %.03844.us.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i ], [ %i.bu, %..loopexit41_crit_edge.us.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not40.us.i = icmp eq i8 %i.aq, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %wide.load = load <2 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !140
  %wide.load13 = load <2 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !140
  %i.at = uitofp <2 x i8> %wide.load to <2 x double> ; 2 uses
  %i.au = uitofp <2 x i8> %wide.load13 to <2 x double> ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !143, !noalias !140
  %wide.load15 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !143, !noalias !140
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %wide.load14)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %wide.load15)
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !57, !alias.scope !143, !noalias !140
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !57, !alias.scope !143, !noalias !140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.ba = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to double               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.be)
  store double %i.bf, ptr %i.bd, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to double               ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  store double %i.bm, ptr %i.bk, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to double               ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !57
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.br)
  store double %i.bs, ptr %i.bq, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !146

..loopexit41_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph47.split.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03745.us.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %i.ai
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit, label %.lr.ph47.split.us.i, !llvm.loop !147

_ZN2cv12cpu_baseline15accSqr_general_IhdEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline12accSqr_simd_EPKtPdPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count60.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check16 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check16, label %.lr.ph.i.preheader, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.preheader.i
  %n.vec18 = and i64 %wide.trip.count60.i, 2147483644 ; 3 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %wide.load21 = load <2 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load22 = load <2 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <2 x i16> %wide.load21 to <2 x double> ; 2 uses
  %i.f = uitofp <2 x i16> %wide.load22 to <2 x double> ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load23 = load <2 x double>, ptr %i.g, align 8, !tbaa !57
  %wide.load24 = load <2 x double>, ptr %i.h, align 8, !tbaa !57
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.e, <2 x double> %wide.load23)
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.f, <2 x double> %wide.load24)
  store <2 x double> %i.i, ptr %i.g, align 8, !tbaa !57
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57
  %index.next25 = add nuw i64 %index20, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.k, label %middle.block26, label %vector.body19, !llvm.loop !148

middle.block26:                                   ; preds = %vector.body19
  %cmp.n27 = icmp eq i64 %n.vec18, %wide.trip.count60.i
  br i1 %cmp.n27, label %_ZN2cv12cpu_baseline15accSqr_general_ItdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block26
  %indvars.iv57.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec18, %middle.block26 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph.i ], [ %indvars.iv57.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = uitofp i16 %i.m to double                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !57
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.p)
  store double %i.q, ptr %i.o, align 8, !tbaa !57
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItdEEvPKT_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !149

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph47.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph47.i:                                       ; preds = %bb.c
  %i.s = icmp sgt i32 %4, 0
  %i.t = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.s, label %.lr.ph47.split.us.preheader.i, label %_ZN2cv12cpu_baseline15accSqr_general_ItdEEvPKT_PT0_PKhiii.exit

.lr.ph47.split.us.preheader.i:                    ; preds = %.lr.ph47.i
  %wide.trip.count55.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph47.split.us.i

.lr.ph47.split.us.i:                              ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph47.split.us.preheader.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i ], [ %indvars.iv.next53.i, %..loopexit41_crit_edge.us.i ] ; 2 uses
  %.03745.us.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i ], [ %i.al, %..loopexit41_crit_edge.us.i ] ; 3 uses
  %.03844.us.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i ], [ %i.am, %..loopexit41_crit_edge.us.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %.not40.us.i = icmp eq i8 %i.v, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  br i1 %min.iters.check, label %.preheader.us.i.preheader29, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.03745.us.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %wide.load = load <2 x i16>, ptr %i.w, align 2, !tbaa !29
  %wide.load12 = load <2 x i16>, ptr %i.x, align 2, !tbaa !29
  %i.y = uitofp <2 x i16> %wide.load to <2 x double> ; 2 uses
  %i.z = uitofp <2 x i16> %wide.load12 to <2 x double> ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline12accSqr_simd_EPKdPdPKhii:bb.a
  %.not40.us.i = icmp eq i8 %i.ak, 0
  br i1 %.not40.us.i, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph47.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader36, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.03745.us.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !57, !alias.scope !165 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.am, align 8, !tbaa !57, !alias.scope !165 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load14 = load <2 x double>, ptr %i.an, align 8, !tbaa !57, !alias.scope !168, !noalias !165
  %wide.load15 = load <2 x double>, ptr %i.ao, align 8, !tbaa !57, !alias.scope !168, !noalias !165
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %wide.load, <2 x double> %wide.load14)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load13, <2 x double> %wide.load13, <2 x double> %wide.load15)
  store <2 x double> %i.ap, ptr %i.an, align 8, !tbaa !57, !alias.scope !168, !noalias !165
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !57, !alias.scope !168, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i.preheader36

.preheader.us.i.preheader36:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader36
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.03745.us.i, i64 %indvars.iv.i.ph
  %i.at = load double, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !57
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  store double %i.aw, ptr %i.au, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader36
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader36 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.ax = icmp eq i64 %indvars.iv.i.ph, %i.ai
  br i1 %i.ax, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.03745.us.i, i64 %indvars.iv.i
  %i.az = load double, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !57
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03745.us.i, i64 %indvars.iv.next.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !57
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bg)
  store double %i.bh, ptr %i.bf, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit41_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !171

..loopexit41_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph47.split.us.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.03745.us.i, i64 %i.ad
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i, i64 %i.ad
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %_ZN2cv12cpu_baseline15accSqr_general_IddEEvPKT_PT0_PKhiii.exit, label %.lr.ph47.split.us.i, !llvm.loop !172

_ZN2cv12cpu_baseline15accSqr_general_IddEEvPKT_PT0_PKhiii.exit: ; preds = %..loopexit41_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block33, %bb.b, %bb.c, %.lr.ph47.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count67.i = zext nneg i32 %i.a to i64 ; 8 uses
  %min.iters.check35 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check35, label %.lr.ph.i.preheader, label %vector.memcheck23

vector.memcheck23:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count67.i, 2
  %scevgep24 = getelementptr i8, ptr %2, i64 %i.c ; 2 uses
  %scevgep25 = getelementptr i8, ptr %0, i64 %wide.trip.count67.i
  %scevgep26 = getelementptr i8, ptr %1, i64 %wide.trip.count67.i
  %bound027 = icmp ult ptr %2, %scevgep25
  %bound128 = icmp ult ptr %0, %scevgep24
  %found.conflict29 = and i1 %bound027, %bound128
  %bound030 = icmp ult ptr %2, %scevgep26
  %bound131 = icmp ult ptr %1, %scevgep24
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %found.conflict29, %found.conflict32
  br i1 %conflict.rdx33, label %.lr.ph.i.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck23
  %n.vec37 = and i64 %wide.trip.count67.i, 2147483640 ; 3 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next46, %vector.body38 ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index39 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load40 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !173
  %wide.load41 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !173
  %i.f = uitofp <4 x i8> %wide.load40 to <4 x float>
  %i.g = uitofp <4 x i8> %wide.load41 to <4 x float>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index39 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load42 = load <4 x i8>, ptr %i.h, align 1, !tbaa !8, !alias.scope !176
  %wide.load43 = load <4 x i8>, ptr %i.i, align 1, !tbaa !8, !alias.scope !176
  %i.j = uitofp <4 x i8> %wide.load42 to <4 x float>
  %i.k = uitofp <4 x i8> %wide.load43 to <4 x float>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index39 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load44 = load <4 x float>, ptr %i.l, align 4, !tbaa !12, !alias.scope !178, !noalias !180
  %wide.load45 = load <4 x float>, ptr %i.m, align 4, !tbaa !12, !alias.scope !178, !noalias !180
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.j, <4 x float> %wide.load44)
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.k, <4 x float> %wide.load45)
  store <4 x float> %i.n, ptr %i.l, align 4, !tbaa !12, !alias.scope !178, !noalias !180
  store <4 x float> %i.o, ptr %i.m, align 4, !tbaa !12, !alias.scope !178, !noalias !180
  %index.next46 = add nuw i64 %index39, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next46, %n.vec37
  br i1 %i.p, label %middle.block47, label %vector.body38, !llvm.loop !181

middle.block47:                                   ; preds = %vector.body38
  %cmp.n48 = icmp eq i64 %n.vec37, %wide.trip.count67.i
  br i1 %cmp.n48, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck23, %.lr.ph.preheader.i, %middle.block47
  %indvars.iv64.i.ph = phi i64 [ 0, %vector.memcheck23 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec37, %middle.block47 ] ; 6 uses
  %xtraiter52 = and i64 %wide.trip.count67.i, 1
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.ph
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = uitofp i8 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = uitofp i8 %i.u to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.i.ph ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = tail call float @llvm.fmuladd.f32(float %i.s, float %i.v, float %i.x)
  store float %i.y, ptr %i.w, align 4, !tbaa !12
  %indvars.iv.next65.i.prol = or disjoint i64 %indvars.iv64.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv64.i.unr = phi i64 [ %indvars.iv64.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next65.i.prol, %.lr.ph.i.prol ]
  %i.z = add nsw i64 %wide.trip.count67.i, -1
  %i.aa = icmp eq i64 %indvars.iv64.i.ph, %i.z
  br i1 %i.aa, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i.1, %.lr.ph.i ], [ %indvars.iv64.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = uitofp i8 %i.af to float
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.i ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ag, float %i.ai)
  store float %i.aj, ptr %i.ah, align 4, !tbaa !12
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next65.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = uitofp i8 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next65.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = uitofp i8 %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next65.i ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !12
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %exitcond68.not.i.1 = icmp eq i64 %indvars.iv.next65.i.1, %wide.trip.count67.i
  br i1 %exitcond68.not.i.1, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !182

bb.c:                                             ; preds = %bb.a
  %i.at = icmp sgt i32 %4, 0
  br i1 %i.at, label %.lr.ph54.i, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.i:                                       ; preds = %bb.c
  %i.au = icmp sgt i32 %5, 0
  %i.av = sext i32 %5 to i64                      ; 5 uses
  br i1 %i.au, label %.lr.ph54.split.us.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.split.us.preheader.i:                    ; preds = %.lr.ph54.i
  %wide.trip.count62.i = zext nneg i32 %4 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 7 uses
  %i.aw = add nsw i64 %wide.trip.count62.i, -1    ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = add i64 %i.ax, %wide.trip.count.i
  %i.az = shl i64 %i.ay, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.az  ; 2 uses
  %6 = mul nsw i64 %i.aw, %i.av
  %i.ba = add nsw i64 %6, %wide.trip.count.i      ; 2 uses
  %scevgep13 = getelementptr i8, ptr %0, i64 %i.ba
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.ba
  %min.iters.check = icmp ult i32 %5, 8
  %bound0 = icmp ult ptr %2, %scevgep13
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %2, %scevgep14
  %bound116 = icmp ult ptr %1, %scevgep
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph54.split.us.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i ], [ %indvars.iv.next60.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04252.us.i = phi ptr [ %0, %.lr.ph54.split.us.preheader.i ], [ %i.ct, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04351.us.i = phi ptr [ %1, %.lr.ph54.split.us.preheader.i ], [ %i.cu, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %2, %.lr.ph54.split.us.preheader.i ], [ %i.cv, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv59.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.bd, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph54.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.preheader50, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %wide.load = load <4 x i8>, ptr %i.be, align 1, !tbaa !8, !alias.scope !183
  %wide.load18 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !8, !alias.scope !183
  %i.bg = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bh = uitofp <4 x i8> %wide.load18 to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load19 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !8, !alias.scope !186
  %wide.load20 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !8, !alias.scope !186
  %i.bk = uitofp <4 x i8> %wide.load19 to <4 x float>
  %i.bl = uitofp <4 x i8> %wide.load20 to <4 x float>
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load21 = load <4 x float>, ptr %i.bm, align 4, !tbaa !12, !alias.scope !188, !noalias !190
  %wide.load22 = load <4 x float>, ptr %i.bn, align 4, !tbaa !12, !alias.scope !188, !noalias !190
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bk, <4 x float> %wide.load21)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bl, <4 x float> %wide.load22)
  store <4 x float> %i.bo, ptr %i.bm, align 4, !tbaa !12, !alias.scope !188, !noalias !190
  store <4 x float> %i.bp, ptr %i.bn, align 4, !tbaa !12, !alias.scope !188, !noalias !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader50

.preheader.us.i.preheader50:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader50
  %i.br = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.i.ph
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bw, float %i.by)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader50
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader50 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.ca = icmp eq i64 %indvars.iv.i.ph, %i.bb
  br i1 %i.ca, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = uitofp i8 %i.cc to float
  %i.ce = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cg, float %i.ci)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.next.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = uitofp i8 %i.cl to float
  %i.cn = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cp = uitofp i8 %i.co to float
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !12
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cp, float %i.cr)
  store float %i.cs, ptr %i.cq, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !192

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph54.split.us.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %i.av
  %i.cu = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %i.av
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %i.av
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph54.split.us.i, !llvm.loop !193

_ZN2cv12cpu_baseline16accProd_general_IhfEEvPKT_S4_PT0_PKhiii.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block47, %bb.b, %bb.c, %.lr.ph54.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline13accProd_simd_EPKtS2_PfPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_ItfEEvPKT_S4_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count67.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check19 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check19, label %.lr.ph.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.preheader.i
  %n.vec21 = and i64 %wide.trip.count67.i, 2147483640 ; 3 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next30, %vector.body22 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load24 = load <4 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load25 = load <4 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <4 x i16> %wide.load24 to <4 x float>
  %i.f = uitofp <4 x i16> %wide.load25 to <4 x float>
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load26 = load <4 x i16>, ptr %i.g, align 2, !tbaa !29
  %wide.load27 = load <4 x i16>, ptr %i.h, align 2, !tbaa !29
  %i.i = uitofp <4 x i16> %wide.load26 to <4 x float>
  %i.j = uitofp <4 x i16> %wide.load27 to <4 x float>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index23 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load28 = load <4 x float>, ptr %i.k, align 4, !tbaa !12
  %wide.load29 = load <4 x float>, ptr %i.l, align 4, !tbaa !12
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> %i.i, <4 x float> %wide.load28)
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.j, <4 x float> %wide.load29)
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !12
  store <4 x float> %i.n, ptr %i.l, align 4, !tbaa !12
  %index.next30 = add nuw i64 %index23, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next30, %n.vec21
  br i1 %i.o, label %middle.block31, label %vector.body22, !llvm.loop !194

middle.block31:                                   ; preds = %vector.body22
  %cmp.n32 = icmp eq i64 %n.vec21, %wide.trip.count67.i
  br i1 %cmp.n32, label %_ZN2cv12cpu_baseline16accProd_general_ItfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block31
  %indvars.iv64.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec21, %middle.block31 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !29
  %i.r = uitofp i16 %i.q to float
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv64.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = uitofp i16 %i.t to float
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.i ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.u, float %i.w)
  store float %i.x, ptr %i.v, align 4, !tbaa !12
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %_ZN2cv12cpu_baseline16accProd_general_ItfEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !195

bb.c:                                             ; preds = %bb.a
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph54.i, label %_ZN2cv12cpu_baseline16accProd_general_ItfEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.i:                                       ; preds = %bb.c
  %i.z = icmp sgt i32 %5, 0
  %i.aa = sext i32 %5 to i64                      ; 3 uses
  br i1 %i.z, label %.lr.ph54.split.us.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_ItfEEvPKT_S4_PT0_PKhiii.exit
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline13accProd_simd_EPKfS2_PfPKhii:bb.a
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph54.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.preheader50, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.04252.us.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x float>, ptr %i.at, align 4, !tbaa !12, !alias.scope !209
  %wide.load18 = load <4 x float>, ptr %i.au, align 4, !tbaa !12, !alias.scope !209
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load19 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !212
  %wide.load20 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !212
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load21 = load <4 x float>, ptr %i.ax, align 4, !tbaa !12, !alias.scope !214, !noalias !216
  %wide.load22 = load <4 x float>, ptr %i.ay, align 4, !tbaa !12, !alias.scope !214, !noalias !216
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load19, <4 x float> %wide.load21)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %wide.load20, <4 x float> %wide.load22)
  store <4 x float> %i.az, ptr %i.ax, align 4, !tbaa !12, !alias.scope !214, !noalias !216
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !12, !alias.scope !214, !noalias !216
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader50

.preheader.us.i.preheader50:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader50
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.04252.us.i, i64 %indvars.iv.i.ph
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !12
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.bh)
  store float %i.bi, ptr %i.bg, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader50
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader50 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bj = icmp eq i64 %indvars.iv.i.ph, %i.aq
  br i1 %i.bj, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.04252.us.i, i64 %indvars.iv.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bn, float %i.bp)
  store float %i.bq, ptr %i.bo, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.04252.us.i, i64 %indvars.iv.next.i
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bu, float %i.bw)
  store float %i.bx, ptr %i.bv, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !218

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph54.split.us.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.04252.us.i, i64 %i.al
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %i.al
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %i.al
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %_ZN2cv12cpu_baseline16accProd_general_IffEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph54.split.us.i, !llvm.loop !219

_ZN2cv12cpu_baseline16accProd_general_IffEEvPKT_S4_PT0_PKhiii.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block47, %bb.b, %bb.c, %.lr.ph54.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count67.i = zext nneg i32 %i.a to i64 ; 8 uses
  %min.iters.check32 = icmp ult i32 %i.a, 6
  br i1 %min.iters.check32, label %.lr.ph.i.preheader, label %vector.memcheck20

vector.memcheck20:                                ; preds = %.lr.ph.preheader.i
  %i.c = shl nuw nsw i64 %wide.trip.count67.i, 3
  %scevgep21 = getelementptr i8, ptr %2, i64 %i.c ; 2 uses
  %scevgep22 = getelementptr i8, ptr %0, i64 %wide.trip.count67.i
  %scevgep23 = getelementptr i8, ptr %1, i64 %wide.trip.count67.i
  %bound024 = icmp ult ptr %2, %scevgep22
  %bound125 = icmp ult ptr %0, %scevgep21
  %found.conflict26 = and i1 %bound024, %bound125
  %bound027 = icmp ult ptr %2, %scevgep23
  %bound128 = icmp ult ptr %1, %scevgep21
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %found.conflict26, %found.conflict29
  br i1 %conflict.rdx30, label %.lr.ph.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck20
  %n.vec34 = and i64 %wide.trip.count67.i, 2147483646 ; 3 uses
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body35 ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index36
  %wide.load37 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !220
  %i.e = uitofp <2 x i8> %wide.load37 to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index36
  %wide.load38 = load <2 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !223
  %i.g = uitofp <2 x i8> %wide.load38 to <2 x double>
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index36 ; 2 uses
  %wide.load39 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !225, !noalias !227
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.g, <2 x double> %wide.load39)
  store <2 x double> %i.i, ptr %i.h, align 8, !tbaa !57, !alias.scope !225, !noalias !227
  %index.next40 = add nuw i64 %index36, 2         ; 2 uses
  %i.j = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.j, label %middle.block41, label %vector.body35, !llvm.loop !228

middle.block41:                                   ; preds = %vector.body35
  %cmp.n42 = icmp eq i64 %n.vec34, %wide.trip.count67.i
  br i1 %cmp.n42, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck20, %.lr.ph.preheader.i, %middle.block41
  %indvars.iv64.i.ph = phi i64 [ 0, %vector.memcheck20 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec34, %middle.block41 ] ; 6 uses
  %xtraiter46 = and i64 %wide.trip.count67.i, 1
  %lcmp.mod47.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod47.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.ph
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = uitofp i8 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.ph
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = uitofp i8 %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64.i.ph ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !57
  %i.s = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double %i.r)
  store double %i.s, ptr %i.q, align 8, !tbaa !57
  %indvars.iv.next65.i.prol = or disjoint i64 %indvars.iv64.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv64.i.unr = phi i64 [ %indvars.iv64.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next65.i.prol, %.lr.ph.i.prol ]
  %i.t = add nsw i64 %wide.trip.count67.i, -1
  %i.u = icmp eq i64 %indvars.iv64.i.ph, %i.t
  br i1 %i.u, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i.1, %.lr.ph.i ], [ %indvars.iv64.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = uitofp i8 %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = uitofp i8 %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !57
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.x, double %i.aa, double %i.ac)
  store double %i.ad, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next65.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = uitofp i8 %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next65.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = uitofp i8 %i.ai to double
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next65.i ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !57
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.aj, double %i.al)
  store double %i.am, ptr %i.ak, align 8, !tbaa !57
  %indvars.iv.next65.i.1 = add nuw nsw i64 %indvars.iv64.i, 2 ; 2 uses
  %exitcond68.not.i.1 = icmp eq i64 %indvars.iv.next65.i.1, %wide.trip.count67.i
  br i1 %exitcond68.not.i.1, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !229

bb.c:                                             ; preds = %bb.a
  %i.an = icmp sgt i32 %4, 0
  br i1 %i.an, label %.lr.ph54.i, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.i:                                       ; preds = %bb.c
  %i.ao = icmp sgt i32 %5, 0
  %i.ap = sext i32 %5 to i64                      ; 5 uses
  br i1 %i.ao, label %.lr.ph54.split.us.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.split.us.preheader.i:                    ; preds = %.lr.ph54.i
  %wide.trip.count62.i = zext nneg i32 %4 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 7 uses
  %i.aq = add nsw i64 %wide.trip.count62.i, -1    ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = add i64 %i.ar, %wide.trip.count.i
  %i.at = shl i64 %i.as, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.at  ; 2 uses
  %6 = mul nsw i64 %i.aq, %i.ap
  %i.au = add nsw i64 %6, %wide.trip.count.i      ; 2 uses
  %scevgep13 = getelementptr i8, ptr %0, i64 %i.au
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.au
  %min.iters.check = icmp eq i32 %5, 1
  %bound0 = icmp ult ptr %2, %scevgep13
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult ptr %2, %scevgep14
  %bound116 = icmp ult ptr %1, %scevgep
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph54.split.us.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i ], [ %indvars.iv.next60.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04252.us.i = phi ptr [ %0, %.lr.ph54.split.us.preheader.i ], [ %i.ch, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04351.us.i = phi ptr [ %1, %.lr.ph54.split.us.preheader.i ], [ %i.ci, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %2, %.lr.ph54.split.us.preheader.i ], [ %i.cj, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv59.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph54.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.preheader44, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %index
  %wide.load = load <2 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !230
  %i.az = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ba = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %index
  %wide.load18 = load <2 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !233
  %i.bb = uitofp <2 x i8> %wide.load18 to <2 x double>
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %index ; 2 uses
  %wide.load19 = load <2 x double>, ptr %i.bc, align 8, !tbaa !57, !alias.scope !235, !noalias !237
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> %wide.load19)
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !57, !alias.scope !235, !noalias !237
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader44

.preheader.us.i.preheader44:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader44
  %i.bf = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.i.ph
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = uitofp i8 %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !57
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bk, double %i.bm)
  store double %i.bn, ptr %i.bl, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader44
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader44 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bo = icmp eq i64 %indvars.iv.i.ph, %i.av
  br i1 %i.bo, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = uitofp i8 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !57
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bu, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %indvars.iv.next.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = uitofp i8 %i.bz to double
  %i.cb = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = uitofp i8 %i.cc to double
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !57
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cd, double %i.cf)
  store double %i.cg, ptr %i.ce, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !239

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph54.split.us.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04252.us.i, i64 %i.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %i.ap
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %i.ap
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph54.split.us.i, !llvm.loop !240

_ZN2cv12cpu_baseline16accProd_general_IhdEEvPKT_S4_PT0_PKhiii.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block41, %bb.b, %bb.c, %.lr.ph54.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline13accProd_simd_EPKtS2_PdPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_ItdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count67.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check19 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check19, label %.lr.ph.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.preheader.i
  %n.vec21 = and i64 %wide.trip.count67.i, 2147483644 ; 3 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next30, %vector.body22 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %wide.load24 = load <2 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load25 = load <2 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <2 x i16> %wide.load24 to <2 x double>
  %i.f = uitofp <2 x i16> %wide.load25 to <2 x double>
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load26 = load <2 x i16>, ptr %i.g, align 2, !tbaa !29
  %wide.load27 = load <2 x i16>, ptr %i.h, align 2, !tbaa !29
  %i.i = uitofp <2 x i16> %wide.load26 to <2 x double>
  %i.j = uitofp <2 x i16> %wide.load27 to <2 x double>
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index23 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load28 = load <2 x double>, ptr %i.k, align 8, !tbaa !57
  %wide.load29 = load <2 x double>, ptr %i.l, align 8, !tbaa !57
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.i, <2 x double> %wide.load28)
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.j, <2 x double> %wide.load29)
  store <2 x double> %i.m, ptr %i.k, align 8, !tbaa !57
  store <2 x double> %i.n, ptr %i.l, align 8, !tbaa !57
  %index.next30 = add nuw i64 %index23, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next30, %n.vec21
  br i1 %i.o, label %middle.block31, label %vector.body22, !llvm.loop !241

middle.block31:                                   ; preds = %vector.body22
  %cmp.n32 = icmp eq i64 %n.vec21, %wide.trip.count67.i
  br i1 %cmp.n32, label %_ZN2cv12cpu_baseline16accProd_general_ItdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block31
  %indvars.iv64.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec21, %middle.block31 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !29
  %i.r = uitofp i16 %i.q to double
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv64.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = uitofp i16 %i.t to double
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64.i ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !57
  %i.x = tail call double @llvm.fmuladd.f64(double %i.r, double %i.u, double %i.w)
  store double %i.x, ptr %i.v, align 8, !tbaa !57
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %_ZN2cv12cpu_baseline16accProd_general_ItdEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph.i, !llvm.loop !242

bb.c:                                             ; preds = %bb.a
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph54.i, label %_ZN2cv12cpu_baseline16accProd_general_ItdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.i:                                       ; preds = %bb.c
  %i.z = icmp sgt i32 %5, 0
  %i.aa = sext i32 %5 to i64                      ; 3 uses
  br i1 %i.z, label %.lr.ph54.split.us.preheader.i, label %_ZN2cv12cpu_baseline16accProd_general_ItdEEvPKT_S4_PT0_PKhiii.exit

.lr.ph54.split.us.preheader.i:                    ; preds = %.lr.ph54.i
  %wide.trip.count62.i = zext nneg i32 %4 to i64
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph54.split.us.preheader.i
end_hunk_5
begin_hunk_6_@_ZN2cv12cpu_baseline13accProd_simd_EPKdS2_PdPKhii:bb.a

.preheader.us.i.preheader:                        ; preds = %.lr.ph54.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.preheader50, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.04252.us.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x double>, ptr %i.at, align 8, !tbaa !57, !alias.scope !261
  %wide.load18 = load <2 x double>, ptr %i.au, align 8, !tbaa !57, !alias.scope !261
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load19 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !264
  %wide.load20 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !264
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load21 = load <2 x double>, ptr %i.ax, align 8, !tbaa !57, !alias.scope !266, !noalias !268
  %wide.load22 = load <2 x double>, ptr %i.ay, align 8, !tbaa !57, !alias.scope !266, !noalias !268
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %wide.load19, <2 x double> %wide.load21)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load18, <2 x double> %wide.load20, <2 x double> %wide.load22)
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !57, !alias.scope !266, !noalias !268
  store <2 x double> %i.ba, ptr %i.ay, align 8, !tbaa !57, !alias.scope !266, !noalias !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader50

.preheader.us.i.preheader50:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader50
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.04252.us.i, i64 %indvars.iv.i.ph
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bf = load double, ptr %i.be, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !57
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bf, double %i.bh)
  store double %i.bi, ptr %i.bg, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader50
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader50 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bj = icmp eq i64 %indvars.iv.i.ph, %i.aq
  br i1 %i.bj, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.04252.us.i, i64 %indvars.iv.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !57
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %i.bp)
  store double %i.bq, ptr %i.bo, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.04252.us.i, i64 %indvars.iv.next.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !57
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bu, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !270

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph54.split.us.i
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.04252.us.i, i64 %i.al
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %i.al
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %i.al
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %_ZN2cv12cpu_baseline16accProd_general_IddEEvPKT_S4_PT0_PKhiii.exit, label %.lr.ph54.split.us.i, !llvm.loop !271

_ZN2cv12cpu_baseline16accProd_general_IddEEvPKT_S4_PT0_PKhiii.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block47, %bb.b, %bb.c, %.lr.ph54.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %5 to float               ; 9 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 8 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %4, %3                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count66.i = zext nneg i32 %i.c to i64 ; 7 uses
  %min.iters.check26 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check26, label %.lr.ph.i.preheader, label %vector.memcheck19

vector.memcheck19:                                ; preds = %.lr.ph.preheader.i
  %i.e = shl nuw nsw i64 %wide.trip.count66.i, 2
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep21 = getelementptr i8, ptr %0, i64 %wide.trip.count66.i
  %bound022 = icmp ult ptr %1, %scevgep21
  %bound123 = icmp ult ptr %0, %scevgep20
  %found.conflict24 = and i1 %bound022, %bound123
  br i1 %found.conflict24, label %.lr.ph.i.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %vector.memcheck19
  %n.vec28 = and i64 %wide.trip.count66.i, 2147483640 ; 3 uses
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert31 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat32 = shufflevector <4 x float> %broadcast.splatinsert31, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph27
  %index34 = phi i64 [ 0, %vector.ph27 ], [ %index.next39, %vector.body33 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load35 = load <4 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !272
  %wide.load36 = load <4 x i8>, ptr %i.g, align 1, !tbaa !8, !alias.scope !272
  %i.h = uitofp <4 x i8> %wide.load35 to <4 x float>
  %i.i = uitofp <4 x i8> %wide.load36 to <4 x float>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index34 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load37 = load <4 x float>, ptr %i.j, align 4, !tbaa !12, !alias.scope !275, !noalias !272
  %wide.load38 = load <4 x float>, ptr %i.k, align 4, !tbaa !12, !alias.scope !275, !noalias !272
  %i.l = fmul <4 x float> %broadcast.splat30, %wide.load37
  %i.m = fmul <4 x float> %broadcast.splat30, %wide.load38
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %broadcast.splat32, <4 x float> %i.l)
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %broadcast.splat32, <4 x float> %i.m)
  store <4 x float> %i.n, ptr %i.j, align 4, !tbaa !12, !alias.scope !275, !noalias !272
  store <4 x float> %i.o, ptr %i.k, align 4, !tbaa !12, !alias.scope !275, !noalias !272
  %index.next39 = add nuw i64 %index34, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next39, %n.vec28
  br i1 %i.p, label %middle.block40, label %vector.body33, !llvm.loop !277

middle.block40:                                   ; preds = %vector.body33
  %cmp.n41 = icmp eq i64 %n.vec28, %wide.trip.count66.i
  br i1 %cmp.n41, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck19, %.lr.ph.preheader.i, %middle.block40
  %indvars.iv63.i.ph = phi i64 [ 0, %vector.memcheck19 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec28, %middle.block40 ] ; 5 uses
  %xtraiter45 = and i64 %wide.trip.count66.i, 1
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.ph
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = uitofp i8 %i.r to float
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63.i.ph ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = fmul float %i.b, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.a, float %i.v)
  store float %i.w, ptr %i.t, align 4, !tbaa !12
  %indvars.iv.next64.i.prol = or disjoint i64 %indvars.iv63.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv63.i.unr = phi i64 [ %indvars.iv63.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next64.i.prol, %.lr.ph.i.prol ]
  %i.x = add nsw i64 %wide.trip.count66.i, -1
  %i.y = icmp eq i64 %indvars.iv63.i.ph, %i.x
  br i1 %i.y, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.lr.ph.i ], [ %indvars.iv63.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = fmul float %i.b, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.a, float %i.ae)
  store float %i.af, ptr %i.ac, align 4, !tbaa !12
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next64.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = uitofp i8 %i.ah to float
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next64.i ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fmul float %i.b, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.a, float %i.al)
  store float %i.am, ptr %i.aj, align 4, !tbaa !12
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %exitcond67.not.i.1 = icmp eq i64 %indvars.iv.next64.i.1, %wide.trip.count66.i
  br i1 %exitcond67.not.i.1, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i, !llvm.loop !278

bb.c:                                             ; preds = %bb.a
  %i.an = icmp sgt i32 %3, 0
  br i1 %i.an, label %.lr.ph53.i, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit

.lr.ph53.i:                                       ; preds = %bb.c
  %i.ao = icmp sgt i32 %4, 0
  %i.ap = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ao, label %.lr.ph53.split.us.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit

.lr.ph53.split.us.preheader.i:                    ; preds = %.lr.ph53.i
  %wide.trip.count61.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.aq = add nsw i64 %wide.trip.count61.i, -1    ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = add i64 %i.ar, %wide.trip.count.i
  %i.at = shl i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.at
  %6 = mul nsw i64 %i.aq, %i.ap
  %i.au = getelementptr i8, ptr %0, i64 %6
  %scevgep13 = getelementptr i8, ptr %i.au, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep13
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph53.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %indvars.iv.next59.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04351.us.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i ], [ %i.cf, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i ], [ %i.cg, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph53.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader43, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %wide.load = load <4 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !279
  %wide.load16 = load <4 x i8>, ptr %i.az, align 1, !tbaa !8, !alias.scope !279
  %i.ba = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bb = uitofp <4 x i8> %wide.load16 to <4 x float>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load17 = load <4 x float>, ptr %i.bc, align 4, !tbaa !12, !alias.scope !282, !noalias !279
  %wide.load18 = load <4 x float>, ptr %i.bd, align 4, !tbaa !12, !alias.scope !282, !noalias !279
  %i.be = fmul <4 x float> %broadcast.splat, %wide.load17
  %i.bf = fmul <4 x float> %broadcast.splat, %wide.load18
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %broadcast.splat15, <4 x float> %i.be)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %broadcast.splat15, <4 x float> %i.bf)
  store <4 x float> %i.bg, ptr %i.bc, align 4, !tbaa !12, !alias.scope !282, !noalias !279
  store <4 x float> %i.bh, ptr %i.bd, align 4, !tbaa !12, !alias.scope !282, !noalias !279
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader43

.preheader.us.i.preheader43:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader43
  %i.bj = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fmul float %i.b, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.a, float %i.bo)
  store float %i.bp, ptr %i.bm, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader43
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader43 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bq = icmp eq i64 %indvars.iv.i.ph, %i.av
  br i1 %i.bq, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = fmul float %i.b, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.a, float %i.bw)
  store float %i.bx, ptr %i.bu, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = uitofp i8 %i.bz to float
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !12
  %i.cd = fmul float %i.b, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.a, float %i.cd)
  store float %i.ce, ptr %i.cb, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !285

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph53.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %i.ap
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %i.ap
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph53.split.us.i, !llvm.loop !286

_ZN2cv12cpu_baseline13accW_general_IhfEEvPKT_PT0_PKhiidi.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block40, %bb.b, %bb.c, %.lr.ph53.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline10accW_simd_EPKtPfPKhiid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %5 to float               ; 5 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %4, %3                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_ItfEEvPKT_PT0_PKhiidi.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count66.i = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check19 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check19, label %.lr.ph.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.preheader.i
  %n.vec21 = and i64 %wide.trip.count66.i, 2147483640 ; 3 uses
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat23 = shufflevector <4 x float> %broadcast.splatinsert22, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat25 = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph20
  %index27 = phi i64 [ 0, %vector.ph20 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load28 = load <4 x i16>, ptr %i.e, align 2, !tbaa !29
  %wide.load29 = load <4 x i16>, ptr %i.f, align 2, !tbaa !29
  %i.g = uitofp <4 x i16> %wide.load28 to <4 x float>
  %i.h = uitofp <4 x i16> %wide.load29 to <4 x float>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.i, align 4, !tbaa !12
  %wide.load31 = load <4 x float>, ptr %i.j, align 4, !tbaa !12
  %i.k = fmul <4 x float> %broadcast.splat23, %wide.load30
  %i.l = fmul <4 x float> %broadcast.splat23, %wide.load31
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %broadcast.splat25, <4 x float> %i.k)
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %broadcast.splat25, <4 x float> %i.l)
  store <4 x float> %i.m, ptr %i.i, align 4, !tbaa !12
  store <4 x float> %i.n, ptr %i.j, align 4, !tbaa !12
  %index.next32 = add nuw i64 %index27, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next32, %n.vec21
  br i1 %i.o, label %middle.block33, label %vector.body26, !llvm.loop !287

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec21, %wide.trip.count66.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline13accW_general_ItfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block33
  %indvars.iv63.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec21, %middle.block33 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph.i ], [ %indvars.iv63.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv63.i
  %i.q = load i16, ptr %i.p, align 2, !tbaa !29
  %i.r = uitofp i16 %i.q to float
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !12
  %i.u = fmul float %i.b, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.a, float %i.u)
  store float %i.v, ptr %i.s, align 4, !tbaa !12
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %_ZN2cv12cpu_baseline13accW_general_ItfEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i, !llvm.loop !288

bb.c:                                             ; preds = %bb.a
  %i.w = icmp sgt i32 %3, 0
  br i1 %i.w, label %.lr.ph53.i, label %_ZN2cv12cpu_baseline13accW_general_ItfEEvPKT_PT0_PKhiidi.exit

.lr.ph53.i:                                       ; preds = %bb.c
  %i.x = icmp sgt i32 %4, 0
  %i.y = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.x, label %.lr.ph53.split.us.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_ItfEEvPKT_PT0_PKhiidi.exit

.lr.ph53.split.us.preheader.i:                    ; preds = %.lr.ph53.i
  %wide.trip.count61.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph53.split.us.i

end_hunk_6
begin_hunk_7_@_ZN2cv12cpu_baseline10accW_simd_EPKfPfPKhiid:bb.a
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %indvars.iv.next59.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04351.us.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i ], [ %i.bu, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i ], [ %i.bv, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.ar, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph53.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader43, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x float>, ptr %i.as, align 4, !tbaa !12, !alias.scope !299
  %wide.load16 = load <4 x float>, ptr %i.at, align 4, !tbaa !12, !alias.scope !299
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load17 = load <4 x float>, ptr %i.au, align 4, !tbaa !12, !alias.scope !302, !noalias !299
  %wide.load18 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !302, !noalias !299
  %i.aw = fmul <4 x float> %broadcast.splat, %wide.load17
  %i.ax = fmul <4 x float> %broadcast.splat, %wide.load18
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat15, <4 x float> %i.aw)
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load16, <4 x float> %broadcast.splat15, <4 x float> %i.ax)
  store <4 x float> %i.ay, ptr %i.au, align 4, !tbaa !12, !alias.scope !302, !noalias !299
  store <4 x float> %i.az, ptr %i.av, align 4, !tbaa !12, !alias.scope !302, !noalias !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader43

.preheader.us.i.preheader43:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader43
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fmul float %i.b, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.a, float %i.bf)
  store float %i.bg, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader43
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader43 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bh = icmp eq i64 %indvars.iv.i.ph, %i.ap
  br i1 %i.bh, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fmul float %i.b, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.a, float %i.bm)
  store float %i.bn, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fmul float %i.b, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.a, float %i.bs)
  store float %i.bt, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !305

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph53.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.04351.us.i, i64 %i.ak
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i, i64 %i.ak
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %_ZN2cv12cpu_baseline13accW_general_IffEEvPKT_PT0_PKhiidi.exit, label %.lr.ph53.split.us.i, !llvm.loop !306

_ZN2cv12cpu_baseline13accW_general_IffEEvPKT_PT0_PKhiidi.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block40, %bb.b, %bb.c, %.lr.ph53.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double 1.000000e+00, %5             ; 8 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count66.i = zext nneg i32 %i.b to i64 ; 7 uses
  %min.iters.check26 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check26, label %.lr.ph.i.preheader, label %vector.memcheck19

vector.memcheck19:                                ; preds = %.lr.ph.preheader.i
  %i.d = shl nuw nsw i64 %wide.trip.count66.i, 3
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.d
  %scevgep21 = getelementptr i8, ptr %0, i64 %wide.trip.count66.i
  %bound022 = icmp ult ptr %1, %scevgep21
  %bound123 = icmp ult ptr %0, %scevgep20
  %found.conflict24 = and i1 %bound022, %bound123
  br i1 %found.conflict24, label %.lr.ph.i.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %vector.memcheck19
  %n.vec28 = and i64 %wide.trip.count66.i, 2147483644 ; 3 uses
  %broadcast.splatinsert29 = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat30 = shufflevector <2 x double> %broadcast.splatinsert29, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert31 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat32 = shufflevector <2 x double> %broadcast.splatinsert31, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph27
  %index34 = phi i64 [ 0, %vector.ph27 ], [ %index.next39, %vector.body33 ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index34 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %wide.load35 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !307
  %wide.load36 = load <2 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !307
  %i.g = uitofp <2 x i8> %wide.load35 to <2 x double>
  %i.h = uitofp <2 x i8> %wide.load36 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index34 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load37 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !310, !noalias !307
  %wide.load38 = load <2 x double>, ptr %i.j, align 8, !tbaa !57, !alias.scope !310, !noalias !307
  %i.k = fmul <2 x double> %broadcast.splat30, %wide.load37
  %i.l = fmul <2 x double> %broadcast.splat30, %wide.load38
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %broadcast.splat32, <2 x double> %i.k)
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %broadcast.splat32, <2 x double> %i.l)
  store <2 x double> %i.m, ptr %i.i, align 8, !tbaa !57, !alias.scope !310, !noalias !307
  store <2 x double> %i.n, ptr %i.j, align 8, !tbaa !57, !alias.scope !310, !noalias !307
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next39, %n.vec28
  br i1 %i.o, label %middle.block40, label %vector.body33, !llvm.loop !312

middle.block40:                                   ; preds = %vector.body33
  %cmp.n41 = icmp eq i64 %n.vec28, %wide.trip.count66.i
  br i1 %cmp.n41, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck19, %.lr.ph.preheader.i, %middle.block40
  %indvars.iv63.i.ph = phi i64 [ 0, %vector.memcheck19 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec28, %middle.block40 ] ; 5 uses
  %xtraiter45 = and i64 %wide.trip.count66.i, 1
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.ph
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = uitofp i8 %i.q to double
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i.ph ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !57
  %i.u = fmul double %i.a, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %5, double %i.u)
  store double %i.v, ptr %i.s, align 8, !tbaa !57
  %indvars.iv.next64.i.prol = or disjoint i64 %indvars.iv63.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv63.i.unr = phi i64 [ %indvars.iv63.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next64.i.prol, %.lr.ph.i.prol ]
  %i.w = add nsw i64 %wide.trip.count66.i, -1
  %i.x = icmp eq i64 %indvars.iv63.i.ph, %i.w
  br i1 %i.x, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.lr.ph.i ], [ %indvars.iv63.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = uitofp i8 %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !57
  %i.ad = fmul double %i.a, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.aa, double %5, double %i.ad)
  store double %i.ae, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next64.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = uitofp i8 %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next64.i ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !57
  %i.ak = fmul double %i.a, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %5, double %i.ak)
  store double %i.al, ptr %i.ai, align 8, !tbaa !57
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %exitcond67.not.i.1 = icmp eq i64 %indvars.iv.next64.i.1, %wide.trip.count66.i
  br i1 %exitcond67.not.i.1, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i, !llvm.loop !313

bb.c:                                             ; preds = %bb.a
  %i.am = icmp sgt i32 %3, 0
  br i1 %i.am, label %.lr.ph53.i, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit

.lr.ph53.i:                                       ; preds = %bb.c
  %i.an = icmp sgt i32 %4, 0
  %i.ao = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.an, label %.lr.ph53.split.us.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit

.lr.ph53.split.us.preheader.i:                    ; preds = %.lr.ph53.i
  %wide.trip.count61.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 7 uses
  %i.ap = add nsw i64 %wide.trip.count61.i, -1    ; 2 uses
  %i.aq = mul nsw i64 %i.ap, %i.ao
  %i.ar = add i64 %i.aq, %wide.trip.count.i
  %i.as = shl i64 %i.ar, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.as
  %6 = mul nsw i64 %i.ap, %i.ao
  %i.at = getelementptr i8, ptr %0, i64 %6
  %scevgep13 = getelementptr i8, ptr %i.at, i64 %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep13
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat15 = shufflevector <2 x double> %broadcast.splatinsert14, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph53.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %indvars.iv.next59.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04351.us.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i ], [ %i.ce, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i ], [ %i.cf, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.aw, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph53.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader43, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %wide.load = load <2 x i8>, ptr %i.ax, align 1, !tbaa !8, !alias.scope !314
  %wide.load16 = load <2 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !314
  %i.az = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ba = uitofp <2 x i8> %wide.load16 to <2 x double>
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load17 = load <2 x double>, ptr %i.bb, align 8, !tbaa !57, !alias.scope !317, !noalias !314
  %wide.load18 = load <2 x double>, ptr %i.bc, align 8, !tbaa !57, !alias.scope !317, !noalias !314
  %i.bd = fmul <2 x double> %broadcast.splat, %wide.load17
  %i.be = fmul <2 x double> %broadcast.splat, %wide.load18
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %broadcast.splat15, <2 x double> %i.bd)
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %broadcast.splat15, <2 x double> %i.be)
  store <2 x double> %i.bf, ptr %i.bb, align 8, !tbaa !57, !alias.scope !317, !noalias !314
  store <2 x double> %i.bg, ptr %i.bc, align 8, !tbaa !57, !alias.scope !317, !noalias !314
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !319

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader43

.preheader.us.i.preheader43:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader43
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !57
  %i.bn = fmul double %i.a, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bk, double %5, double %i.bn)
  store double %i.bo, ptr %i.bl, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader43
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader43 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bp = icmp eq i64 %indvars.iv.i.ph, %i.au
  br i1 %i.bp, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = uitofp i8 %i.br to double
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !57
  %i.bv = fmul double %i.a, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bs, double %5, double %i.bv)
  store double %i.bw, ptr %i.bt, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = uitofp i8 %i.by to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !57
  %i.cc = fmul double %i.a, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bz, double %5, double %i.cc)
  store double %i.cd, ptr %i.ca, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !320

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph53.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04351.us.i, i64 %i.ao
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %i.ao
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph53.split.us.i, !llvm.loop !321

_ZN2cv12cpu_baseline13accW_general_IhdEEvPKT_PT0_PKhiidi.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block40, %bb.b, %bb.c, %.lr.ph53.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12cpu_baseline10accW_simd_EPKtPdPKhiid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double 1.000000e+00, %5             ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_ItdEEvPKT_PT0_PKhiidi.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count66.i = zext nneg i32 %i.b to i64 ; 3 uses
  %min.iters.check19 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check19, label %.lr.ph.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %.lr.ph.preheader.i
  %n.vec21 = and i64 %wide.trip.count66.i, 2147483644 ; 3 uses
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph20
  %index27 = phi i64 [ 0, %vector.ph20 ], [ %index.next32, %vector.body26 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load28 = load <2 x i16>, ptr %i.d, align 2, !tbaa !29
  %wide.load29 = load <2 x i16>, ptr %i.e, align 2, !tbaa !29
  %i.f = uitofp <2 x i16> %wide.load28 to <2 x double>
  %i.g = uitofp <2 x i16> %wide.load29 to <2 x double>
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load30 = load <2 x double>, ptr %i.h, align 8, !tbaa !57
  %wide.load31 = load <2 x double>, ptr %i.i, align 8, !tbaa !57
  %i.j = fmul <2 x double> %broadcast.splat23, %wide.load30
  %i.k = fmul <2 x double> %broadcast.splat23, %wide.load31
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %broadcast.splat25, <2 x double> %i.j)
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %broadcast.splat25, <2 x double> %i.k)
  store <2 x double> %i.l, ptr %i.h, align 8, !tbaa !57
  store <2 x double> %i.m, ptr %i.i, align 8, !tbaa !57
  %index.next32 = add nuw i64 %index27, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next32, %n.vec21
  br i1 %i.n, label %middle.block33, label %vector.body26, !llvm.loop !322

middle.block33:                                   ; preds = %vector.body26
  %cmp.n34 = icmp eq i64 %n.vec21, %wide.trip.count66.i
  br i1 %cmp.n34, label %_ZN2cv12cpu_baseline13accW_general_ItdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block33
  %indvars.iv63.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec21, %middle.block33 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph.i ], [ %indvars.iv63.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv63.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !29
  %i.q = uitofp i16 %i.p to double
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !57
  %i.t = fmul double %i.a, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %5, double %i.t)
  store double %i.u, ptr %i.r, align 8, !tbaa !57
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %_ZN2cv12cpu_baseline13accW_general_ItdEEvPKT_PT0_PKhiidi.exit, label %.lr.ph.i, !llvm.loop !323

bb.c:                                             ; preds = %bb.a
  %i.v = icmp sgt i32 %3, 0
  br i1 %i.v, label %.lr.ph53.i, label %_ZN2cv12cpu_baseline13accW_general_ItdEEvPKT_PT0_PKhiidi.exit

.lr.ph53.i:                                       ; preds = %bb.c
  %i.w = icmp sgt i32 %4, 0
  %i.x = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.w, label %.lr.ph53.split.us.preheader.i, label %_ZN2cv12cpu_baseline13accW_general_ItdEEvPKT_PT0_PKhiidi.exit

.lr.ph53.split.us.preheader.i:                    ; preds = %.lr.ph53.i
  %wide.trip.count61.i = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph53.split.us.preheader.i
end_hunk_7
begin_hunk_8_@_ZN2cv12cpu_baseline10accW_simd_EPKdPdPKhiid:bb.a
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat15 = shufflevector <2 x double> %broadcast.splatinsert14, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph53.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %indvars.iv.next59.i, %..loopexit47_crit_edge.us.i ] ; 2 uses
  %.04351.us.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i ], [ %i.bt, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %.04450.us.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i ], [ %i.bu, %..loopexit47_crit_edge.us.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not46.us.i = icmp eq i8 %i.aq, 0
  br i1 %.not46.us.i, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.lr.ph53.split.us.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.preheader43, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !57, !alias.scope !339
  %wide.load16 = load <2 x double>, ptr %i.as, align 8, !tbaa !57, !alias.scope !339
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %index ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load17 = load <2 x double>, ptr %i.at, align 8, !tbaa !57, !alias.scope !342, !noalias !339
  %wide.load18 = load <2 x double>, ptr %i.au, align 8, !tbaa !57, !alias.scope !342, !noalias !339
  %i.av = fmul <2 x double> %broadcast.splat, %wide.load17
  %i.aw = fmul <2 x double> %broadcast.splat, %wide.load18
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat15, <2 x double> %i.av)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load16, <2 x double> %broadcast.splat15, <2 x double> %i.aw)
  store <2 x double> %i.ax, ptr %i.at, align 8, !tbaa !57, !alias.scope !342, !noalias !339
  store <2 x double> %i.ay, ptr %i.au, align 8, !tbaa !57, !alias.scope !342, !noalias !339
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i.preheader43

.preheader.us.i.preheader43:                      ; preds = %.preheader.us.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader43
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.i.ph
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !57
  %i.be = fmul double %i.a, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bb, double %5, double %i.be)
  store double %i.bf, ptr %i.bc, align 8, !tbaa !57
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.preheader.us.i.prol.loopexit

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader43
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.preheader.us.i.preheader43 ], [ %indvars.iv.next.i.prol, %.preheader.us.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.us.i ], [ %indvars.iv.i.unr, %.preheader.us.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.i ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !57
  %i.bl = fmul double %i.a, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bi, double %5, double %i.bl)
  store double %i.bm, ptr %i.bj, align 8, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %indvars.iv.next.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !57
  %i.br = fmul double %i.a, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bo, double %5, double %i.br)
  store double %i.bs, ptr %i.bp, align 8, !tbaa !57
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %..loopexit47_crit_edge.us.i, label %.preheader.us.i, !llvm.loop !345

..loopexit47_crit_edge.us.i:                      ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block, %.lr.ph53.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.04351.us.i, i64 %i.aj
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i, i64 %i.aj
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %_ZN2cv12cpu_baseline13accW_general_IddEEvPKT_PT0_PKhiidi.exit, label %.lr.ph53.split.us.i, !llvm.loop !346

_ZN2cv12cpu_baseline13accW_general_IddEEvPKT_PT0_PKhiidi.exit: ; preds = %..loopexit47_crit_edge.us.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block40, %bb.b, %bb.c, %.lr.ph53.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv9acc_8u32fEPKhPfS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count56.i.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check22 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count56.i.i, 2
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep17 = getelementptr i8, ptr %0, i64 %wide.trip.count56.i.i
  %bound018 = icmp ult ptr %1, %scevgep17
  %bound119 = icmp ult ptr %0, %scevgep16
  %found.conflict20 = and i1 %bound018, %bound119
  br i1 %found.conflict20, label %.lr.ph.i.i.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck15
  %n.vec24 = and i64 %wide.trip.count56.i.i, 2147483640 ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load27 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !347
  %wide.load28 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !347
  %i.f = uitofp <4 x i8> %wide.load27 to <4 x float>
  %i.g = uitofp <4 x i8> %wide.load28 to <4 x float>
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index26 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load29 = load <4 x float>, ptr %i.h, align 4, !tbaa !12, !alias.scope !350, !noalias !347
  %wide.load30 = load <4 x float>, ptr %i.i, align 4, !tbaa !12, !alias.scope !350, !noalias !347
  %i.j = fadd <4 x float> %wide.load29, %i.f
  %i.k = fadd <4 x float> %wide.load30, %i.g
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12, !alias.scope !350, !noalias !347
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !12, !alias.scope !350, !noalias !347
  %index.next31 = add nuw i64 %index26, 8         ; 2 uses
  %i.l = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.l, label %middle.block32, label %vector.body25, !llvm.loop !352

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count56.i.i
  br i1 %cmp.n33, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck15, %.lr.ph.preheader.i.i, %middle.block32
  %indvars.iv53.i.i.ph = phi i64 [ 0, %vector.memcheck15 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec24, %middle.block32 ] ; 5 uses
  %xtraiter37 = and i64 %wide.trip.count56.i.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to float
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i.i.ph ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = fadd float %i.q, %i.o
  store float %i.r, ptr %i.p, align 4, !tbaa !12
  %indvars.iv.next54.i.i.prol = or disjoint i64 %indvars.iv53.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv53.i.i.unr = phi i64 [ %indvars.iv53.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next54.i.i.prol, %.lr.ph.i.i.prol ]
  %i.s = add nsw i64 %wide.trip.count56.i.i, -1
  %i.t = icmp eq i64 %indvars.iv53.i.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ %indvars.iv.next54.i.i.1, %.lr.ph.i.i ], [ %indvars.iv53.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to float
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = fadd float %i.y, %i.w
  store float %i.z, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next54.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next54.i.i ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fadd float %i.ae, %i.ac
  store float %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next54.i.i.1 = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %exitcond57.not.i.i.1 = icmp eq i64 %indvars.iv.next54.i.i.1, %wide.trip.count56.i.i
  br i1 %exitcond57.not.i.i.1, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !353

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph43.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit

.lr.ph43.i.i:                                     ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph43.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.lr.ph43.i.i
  %wide.trip.count51.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count51.i.i, -1  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i.i
  %i.am = shl i64 %i.al, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep11 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep11
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit37_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv48.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next49.i.i, %..loopexit37_crit_edge.us.i.i ] ; 2 uses
  %.03341.us.i.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i.i ], [ %i.bt, %..loopexit37_crit_edge.us.i.i ] ; 5 uses
  %.03440.us.i.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i.i ], [ %i.bu, %..loopexit37_crit_edge.us.i.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not36.us.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not36.us.i.i, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph43.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader35, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !354
  %wide.load12 = load <4 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !354
  %i.at = uitofp <4 x i8> %wide.load to <4 x float>
  %i.au = uitofp <4 x i8> %wide.load12 to <4 x float>
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !357, !noalias !354
  %wide.load14 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !357, !noalias !354
  %i.ax = fadd <4 x float> %wide.load13, %i.at
  %i.ay = fadd <4 x float> %wide.load14, %i.au
  store <4 x float> %i.ax, ptr %i.av, align 4, !tbaa !12, !alias.scope !357, !noalias !354
  store <4 x float> %i.ay, ptr %i.aw, align 4, !tbaa !12, !alias.scope !357, !noalias !354
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i.preheader35

.preheader.us.i.i.preheader35:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader35
  %i.ba = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fadd float %i.be, %i.bc
  store float %i.bf, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader35
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader35 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = fadd float %i.bl, %i.bj
  store float %i.bm, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.next.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fadd float %i.br, %i.bp
  store float %i.bs, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !360

..loopexit37_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph43.split.us.i.i
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03440.us.i.i, i64 %i.ai
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %wide.trip.count51.i.i
  br i1 %exitcond52.not.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit, label %.lr.ph43.split.us.i.i, !llvm.loop !28

_ZN2cv12cpu_baseline9acc_simd_EPKhPfS2_ii.exit:   ; preds = %..loopexit37_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block32, %bb.b, %bb.c, %.lr.ph43.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12accSqr_8u32fEPKhPfS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count60.i.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check22 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep17 = getelementptr i8, ptr %0, i64 %wide.trip.count60.i.i
  %bound018 = icmp ult ptr %1, %scevgep17
  %bound119 = icmp ult ptr %0, %scevgep16
  %found.conflict20 = and i1 %bound018, %bound119
  br i1 %found.conflict20, label %.lr.ph.i.i.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck15
  %n.vec24 = and i64 %wide.trip.count60.i.i, 2147483640 ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load27 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !361
  %wide.load28 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !361
  %i.f = uitofp <4 x i8> %wide.load27 to <4 x float> ; 2 uses
  %i.g = uitofp <4 x i8> %wide.load28 to <4 x float> ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index26 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load29 = load <4 x float>, ptr %i.h, align 4, !tbaa !12, !alias.scope !364, !noalias !361
  %wide.load30 = load <4 x float>, ptr %i.i, align 4, !tbaa !12, !alias.scope !364, !noalias !361
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.f, <4 x float> %wide.load29)
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.g, <4 x float> %wide.load30)
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12, !alias.scope !364, !noalias !361
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !12, !alias.scope !364, !noalias !361
  %index.next31 = add nuw i64 %index26, 8         ; 2 uses
  %i.l = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.l, label %middle.block32, label %vector.body25, !llvm.loop !366

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count60.i.i
  br i1 %cmp.n33, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck15, %.lr.ph.preheader.i.i, %middle.block32
  %indvars.iv57.i.i.ph = phi i64 [ 0, %vector.memcheck15 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec24, %middle.block32 ] ; 5 uses
  %xtraiter37 = and i64 %wide.trip.count60.i.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to float                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv57.i.i.ph ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.q)
  store float %i.r, ptr %i.p, align 4, !tbaa !12
  %indvars.iv.next58.i.i.prol = or disjoint i64 %indvars.iv57.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv57.i.i.unr = phi i64 [ %indvars.iv57.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next58.i.i.prol, %.lr.ph.i.i.prol ]
  %i.s = add nsw i64 %wide.trip.count60.i.i, -1
  %i.t = icmp eq i64 %indvars.iv57.i.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i.1, %.lr.ph.i.i ], [ %indvars.iv57.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to float                  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv57.i.i ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.y)
  store float %i.z, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next58.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to float                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next58.i.i ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.ae)
  store float %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next58.i.i.1 = add nuw nsw i64 %indvars.iv57.i.i, 2 ; 2 uses
  %exitcond61.not.i.i.1 = icmp eq i64 %indvars.iv.next58.i.i.1, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i.1, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !367

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph47.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit

.lr.ph47.i.i:                                     ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph47.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit

.lr.ph47.split.us.preheader.i.i:                  ; preds = %.lr.ph47.i.i
  %wide.trip.count55.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count55.i.i, -1  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i.i
  %i.am = shl i64 %i.al, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep11 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep11
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph47.split.us.i.i

.lr.ph47.split.us.i.i:                            ; preds = %..loopexit41_crit_edge.us.i.i, %.lr.ph47.split.us.preheader.i.i
  %indvars.iv52.i.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i.i ], [ %indvars.iv.next53.i.i, %..loopexit41_crit_edge.us.i.i ] ; 2 uses
  %.03745.us.i.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i.i ], [ %i.bt, %..loopexit41_crit_edge.us.i.i ] ; 5 uses
  %.03844.us.i.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i.i ], [ %i.bu, %..loopexit41_crit_edge.us.i.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not40.us.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not40.us.i.i, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph47.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader35, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %wide.load = load <4 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !368
  %wide.load12 = load <4 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !368
  %i.at = uitofp <4 x i8> %wide.load to <4 x float> ; 2 uses
  %i.au = uitofp <4 x i8> %wide.load12 to <4 x float> ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.av, align 4, !tbaa !12, !alias.scope !371, !noalias !368
  %wide.load14 = load <4 x float>, ptr %i.aw, align 4, !tbaa !12, !alias.scope !371, !noalias !368
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.at, <4 x float> %wide.load13)
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.au, <4 x float> %wide.load14)
  store <4 x float> %i.ax, ptr %i.av, align 4, !tbaa !12, !alias.scope !371, !noalias !368
  store <4 x float> %i.ay, ptr %i.aw, align 4, !tbaa !12, !alias.scope !371, !noalias !368
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i.preheader35

.preheader.us.i.i.preheader35:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader35
  %i.ba = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to float                ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.be)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !12
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader35
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader35 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to float                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !12
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.next.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to float                ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.br)
  store float %i.bs, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !374

..loopexit41_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph47.split.us.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.03844.us.i.i, i64 %i.ai
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count55.i.i
  br i1 %exitcond56.not.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit, label %.lr.ph47.split.us.i.i, !llvm.loop !112

_ZN2cv12cpu_baseline12accSqr_simd_EPKhPfS2_ii.exit: ; preds = %..loopexit41_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block32, %bb.b, %bb.c, %.lr.ph47.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv13accProd_8u32fEPKhS1_PfS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count67.i.i = zext nneg i32 %i.a to i64 ; 8 uses
  %min.iters.check34 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check34, label %.lr.ph.i.i.preheader, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count67.i.i, 2
  %scevgep23 = getelementptr i8, ptr %2, i64 %i.c ; 2 uses
  %scevgep24 = getelementptr i8, ptr %0, i64 %wide.trip.count67.i.i
  %scevgep25 = getelementptr i8, ptr %1, i64 %wide.trip.count67.i.i
  %bound026 = icmp ult ptr %2, %scevgep24
  %bound127 = icmp ult ptr %0, %scevgep23
  %found.conflict28 = and i1 %bound026, %bound127
  %bound029 = icmp ult ptr %2, %scevgep25
  %bound130 = icmp ult ptr %1, %scevgep23
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx32 = or i1 %found.conflict28, %found.conflict31
  br i1 %conflict.rdx32, label %.lr.ph.i.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck22
  %n.vec36 = and i64 %wide.trip.count67.i.i, 2147483640 ; 3 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next45, %vector.body37 ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index38 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load39 = load <4 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !375
  %wide.load40 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !375
  %i.f = uitofp <4 x i8> %wide.load39 to <4 x float>
  %i.g = uitofp <4 x i8> %wide.load40 to <4 x float>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index38 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %wide.load41 = load <4 x i8>, ptr %i.h, align 1, !tbaa !8, !alias.scope !378
  %wide.load42 = load <4 x i8>, ptr %i.i, align 1, !tbaa !8, !alias.scope !378
  %i.j = uitofp <4 x i8> %wide.load41 to <4 x float>
  %i.k = uitofp <4 x i8> %wide.load42 to <4 x float>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index38 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load43 = load <4 x float>, ptr %i.l, align 4, !tbaa !12, !alias.scope !380, !noalias !382
  %wide.load44 = load <4 x float>, ptr %i.m, align 4, !tbaa !12, !alias.scope !380, !noalias !382
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.f, <4 x float> %i.j, <4 x float> %wide.load43)
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.k, <4 x float> %wide.load44)
  store <4 x float> %i.n, ptr %i.l, align 4, !tbaa !12, !alias.scope !380, !noalias !382
  store <4 x float> %i.o, ptr %i.m, align 4, !tbaa !12, !alias.scope !380, !noalias !382
  %index.next45 = add nuw i64 %index38, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next45, %n.vec36
  br i1 %i.p, label %middle.block46, label %vector.body37, !llvm.loop !383

middle.block46:                                   ; preds = %vector.body37
  %cmp.n47 = icmp eq i64 %n.vec36, %wide.trip.count67.i.i
  br i1 %cmp.n47, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck22, %.lr.ph.preheader.i.i, %middle.block46
  %indvars.iv64.i.i.ph = phi i64 [ 0, %vector.memcheck22 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec36, %middle.block46 ] ; 6 uses
  %xtraiter51 = and i64 %wide.trip.count67.i.i, 1
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.i.ph
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = uitofp i8 %i.r to float
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.i.ph
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = uitofp i8 %i.u to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.i.i.ph ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = tail call float @llvm.fmuladd.f32(float %i.s, float %i.v, float %i.x)
  store float %i.y, ptr %i.w, align 4, !tbaa !12
  %indvars.iv.next65.i.i.prol = or disjoint i64 %indvars.iv64.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv64.i.i.unr = phi i64 [ %indvars.iv64.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next65.i.i.prol, %.lr.ph.i.i.prol ]
  %i.z = add nsw i64 %wide.trip.count67.i.i, -1
  %i.aa = icmp eq i64 %indvars.iv64.i.i.ph, %i.z
  br i1 %i.aa, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv64.i.i = phi i64 [ %indvars.iv.next65.i.i.1, %.lr.ph.i.i ], [ %indvars.iv64.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = uitofp i8 %i.af to float
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv64.i.i ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ag, float %i.ai)
  store float %i.aj, ptr %i.ah, align 4, !tbaa !12
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next65.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = uitofp i8 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next65.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = uitofp i8 %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !12
  %indvars.iv.next65.i.i.1 = add nuw nsw i64 %indvars.iv64.i.i, 2 ; 2 uses
  %exitcond68.not.i.i.1 = icmp eq i64 %indvars.iv.next65.i.i.1, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i.1, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !384

bb.c:                                             ; preds = %bb.a
  %i.at = icmp sgt i32 %4, 0
  br i1 %i.at, label %.lr.ph54.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit

.lr.ph54.i.i:                                     ; preds = %bb.c
  %i.au = icmp sgt i32 %5, 0
  %i.av = sext i32 %5 to i64                      ; 5 uses
  br i1 %i.au, label %.lr.ph54.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit

.lr.ph54.split.us.preheader.i.i:                  ; preds = %.lr.ph54.i.i
  %wide.trip.count62.i.i = zext nneg i32 %4 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %5 to i64  ; 7 uses
  %i.aw = add nsw i64 %wide.trip.count62.i.i, -1  ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.av
  %i.ay = add i64 %i.ax, %wide.trip.count.i.i
  %i.az = shl i64 %i.ay, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.az  ; 2 uses
  %6 = mul nsw i64 %i.aw, %i.av
  %i.ba = add nsw i64 %6, %wide.trip.count.i.i    ; 2 uses
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.ba
  %scevgep13 = getelementptr i8, ptr %1, i64 %i.ba
  %min.iters.check = icmp ult i32 %5, 8
  %bound0 = icmp ult ptr %2, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %2, %scevgep13
  %bound115 = icmp ult ptr %1, %scevgep
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph54.split.us.i.i

.lr.ph54.split.us.i.i:                            ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph54.split.us.preheader.i.i
  %indvars.iv59.i.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i.i ], [ %indvars.iv.next60.i.i, %..loopexit47_crit_edge.us.i.i ] ; 2 uses
  %.04252.us.i.i = phi ptr [ %0, %.lr.ph54.split.us.preheader.i.i ], [ %i.ct, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04351.us.i.i = phi ptr [ %1, %.lr.ph54.split.us.preheader.i.i ], [ %i.cu, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04450.us.i.i = phi ptr [ %2, %.lr.ph54.split.us.preheader.i.i ], [ %i.cv, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv59.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %.not46.us.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not46.us.i.i, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph54.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.i.preheader49, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %wide.load = load <4 x i8>, ptr %i.be, align 1, !tbaa !8, !alias.scope !385
  %wide.load17 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !8, !alias.scope !385
  %i.bg = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bh = uitofp <4 x i8> %wide.load17 to <4 x float>
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !8, !alias.scope !388
  %wide.load19 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !8, !alias.scope !388
  %i.bk = uitofp <4 x i8> %wide.load18 to <4 x float>
  %i.bl = uitofp <4 x i8> %wide.load19 to <4 x float>
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load20 = load <4 x float>, ptr %i.bm, align 4, !tbaa !12, !alias.scope !390, !noalias !392
  %wide.load21 = load <4 x float>, ptr %i.bn, align 4, !tbaa !12, !alias.scope !390, !noalias !392
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bk, <4 x float> %wide.load20)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bl, <4 x float> %wide.load21)
  store <4 x float> %i.bo, ptr %i.bm, align 4, !tbaa !12, !alias.scope !390, !noalias !392
  store <4 x float> %i.bp, ptr %i.bn, align 4, !tbaa !12, !alias.scope !390, !noalias !392
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader49

.preheader.us.i.i.preheader49:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader49
  %i.br = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = uitofp i8 %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bw, float %i.by)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !12
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader49
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader49 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.ca = icmp eq i64 %indvars.iv.i.i.ph, %i.bb
  br i1 %i.ca, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = uitofp i8 %i.cc to float
  %i.ce = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = uitofp i8 %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cg, float %i.ci)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.next.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = uitofp i8 %i.cl to float
  %i.cn = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.next.i.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cp = uitofp i8 %i.co to float
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !12
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cp, float %i.cr)
  store float %i.cs, ptr %i.cq, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !394

..loopexit47_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph54.split.us.i.i
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %i.av
  %i.cu = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %i.av
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %i.av
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count62.i.i
  br i1 %exitcond63.not.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit, label %.lr.ph54.split.us.i.i, !llvm.loop !193

_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PfS2_ii.exit: ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block46, %bb.b, %bb.c, %.lr.ph54.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10accW_8u32fEPKhPfS1_iid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %5 to float               ; 9 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 8 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %4, %3                       ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count66.i.i = zext nneg i32 %i.c to i64 ; 7 uses
  %min.iters.check25 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check25, label %.lr.ph.i.i.preheader, label %vector.memcheck18

vector.memcheck18:                                ; preds = %.lr.ph.preheader.i.i
  %i.e = shl nuw nsw i64 %wide.trip.count66.i.i, 2
  %scevgep19 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep20 = getelementptr i8, ptr %0, i64 %wide.trip.count66.i.i
  %bound021 = icmp ult ptr %1, %scevgep20
  %bound122 = icmp ult ptr %0, %scevgep19
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph.i.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck18
  %n.vec27 = and i64 %wide.trip.count66.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat29 = shufflevector <4 x float> %broadcast.splatinsert28, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph26
  %index33 = phi i64 [ 0, %vector.ph26 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index33 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load34 = load <4 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !395
  %wide.load35 = load <4 x i8>, ptr %i.g, align 1, !tbaa !8, !alias.scope !395
  %i.h = uitofp <4 x i8> %wide.load34 to <4 x float>
  %i.i = uitofp <4 x i8> %wide.load35 to <4 x float>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index33 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %wide.load36 = load <4 x float>, ptr %i.j, align 4, !tbaa !12, !alias.scope !398, !noalias !395
  %wide.load37 = load <4 x float>, ptr %i.k, align 4, !tbaa !12, !alias.scope !398, !noalias !395
  %i.l = fmul <4 x float> %broadcast.splat29, %wide.load36
  %i.m = fmul <4 x float> %broadcast.splat29, %wide.load37
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %broadcast.splat31, <4 x float> %i.l)
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %broadcast.splat31, <4 x float> %i.m)
  store <4 x float> %i.n, ptr %i.j, align 4, !tbaa !12, !alias.scope !398, !noalias !395
  store <4 x float> %i.o, ptr %i.k, align 4, !tbaa !12, !alias.scope !398, !noalias !395
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.p = icmp eq i64 %index.next38, %n.vec27
  br i1 %i.p, label %middle.block39, label %vector.body32, !llvm.loop !400

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %n.vec27, %wide.trip.count66.i.i
  br i1 %cmp.n40, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck18, %.lr.ph.preheader.i.i, %middle.block39
  %indvars.iv63.i.i.ph = phi i64 [ 0, %vector.memcheck18 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec27, %middle.block39 ] ; 5 uses
  %xtraiter44 = and i64 %wide.trip.count66.i.i, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.i.ph
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = uitofp i8 %i.r to float
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63.i.i.ph ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = fmul float %i.b, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.a, float %i.v)
  store float %i.w, ptr %i.t, align 4, !tbaa !12
  %indvars.iv.next64.i.i.prol = or disjoint i64 %indvars.iv63.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv63.i.i.unr = phi i64 [ %indvars.iv63.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next64.i.i.prol, %.lr.ph.i.i.prol ]
  %i.x = add nsw i64 %wide.trip.count66.i.i, -1
  %i.y = icmp eq i64 %indvars.iv63.i.i.ph, %i.x
  br i1 %i.y, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i.1, %.lr.ph.i.i ], [ %indvars.iv63.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv63.i.i ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = fmul float %i.b, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.a, float %i.ae)
  store float %i.af, ptr %i.ac, align 4, !tbaa !12
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next64.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = uitofp i8 %i.ah to float
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next64.i.i ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = fmul float %i.b, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.a, float %i.al)
  store float %i.am, ptr %i.aj, align 4, !tbaa !12
  %indvars.iv.next64.i.i.1 = add nuw nsw i64 %indvars.iv63.i.i, 2 ; 2 uses
  %exitcond67.not.i.i.1 = icmp eq i64 %indvars.iv.next64.i.i.1, %wide.trip.count66.i.i
  br i1 %exitcond67.not.i.i.1, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit, label %.lr.ph.i.i, !llvm.loop !401

bb.c:                                             ; preds = %bb.a
  %i.an = icmp sgt i32 %3, 0
  br i1 %i.an, label %.lr.ph53.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit

.lr.ph53.i.i:                                     ; preds = %bb.c
  %i.ao = icmp sgt i32 %4, 0
  %i.ap = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ao, label %.lr.ph53.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit

.lr.ph53.split.us.preheader.i.i:                  ; preds = %.lr.ph53.i.i
  %wide.trip.count61.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.aq = add nsw i64 %wide.trip.count61.i.i, -1  ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = add i64 %i.ar, %wide.trip.count.i.i
  %i.at = shl i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.at
  %6 = mul nsw i64 %i.aq, %i.ap
  %i.au = getelementptr i8, ptr %0, i64 %6
  %scevgep12 = getelementptr i8, ptr %i.au, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.a, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph53.split.us.i.i

.lr.ph53.split.us.i.i:                            ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph53.split.us.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i.i ], [ %indvars.iv.next59.i.i, %..loopexit47_crit_edge.us.i.i ] ; 2 uses
  %.04351.us.i.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i.i ], [ %i.cf, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04450.us.i.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i.i ], [ %i.cg, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %.not46.us.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.us.i.i, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph53.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader42, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %wide.load = load <4 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !402
  %wide.load15 = load <4 x i8>, ptr %i.az, align 1, !tbaa !8, !alias.scope !402
  %i.ba = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bb = uitofp <4 x i8> %wide.load15 to <4 x float>
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.bc, align 4, !tbaa !12, !alias.scope !405, !noalias !402
  %wide.load17 = load <4 x float>, ptr %i.bd, align 4, !tbaa !12, !alias.scope !405, !noalias !402
  %i.be = fmul <4 x float> %broadcast.splat, %wide.load16
  %i.bf = fmul <4 x float> %broadcast.splat, %wide.load17
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> %broadcast.splat14, <4 x float> %i.be)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %broadcast.splat14, <4 x float> %i.bf)
  store <4 x float> %i.bg, ptr %i.bc, align 4, !tbaa !12, !alias.scope !405, !noalias !402
  store <4 x float> %i.bh, ptr %i.bd, align 4, !tbaa !12, !alias.scope !405, !noalias !402
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader42

.preheader.us.i.i.preheader42:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader42
  %i.bj = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = uitofp i8 %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = fmul float %i.b, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.a, float %i.bo)
  store float %i.bp, ptr %i.bm, align 4, !tbaa !12
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader42
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader42 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bq = icmp eq i64 %indvars.iv.i.i.ph, %i.av
  br i1 %i.bq, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = fmul float %i.b, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.a, float %i.bw)
  store float %i.bx, ptr %i.bu, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.next.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = uitofp i8 %i.bz to float
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !12
  %i.cd = fmul float %i.b, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.a, float %i.cd)
  store float %i.ce, ptr %i.cb, align 4, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !408

..loopexit47_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph53.split.us.i.i
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %i.ap
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.04450.us.i.i, i64 %i.ap
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit, label %.lr.ph53.split.us.i.i, !llvm.loop !286

_ZN2cv12cpu_baseline10accW_simd_EPKhPfS2_iid.exit: ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block39, %bb.b, %bb.c, %.lr.ph53.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv9acc_8u64fEPKhPdS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count56.i.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check22 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count56.i.i, 3
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep17 = getelementptr i8, ptr %0, i64 %wide.trip.count56.i.i
  %bound018 = icmp ult ptr %1, %scevgep17
  %bound119 = icmp ult ptr %0, %scevgep16
  %found.conflict20 = and i1 %bound018, %bound119
  br i1 %found.conflict20, label %.lr.ph.i.i.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck15
  %n.vec24 = and i64 %wide.trip.count56.i.i, 2147483644 ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %wide.load27 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !409
  %wide.load28 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !409
  %i.f = uitofp <2 x i8> %wide.load27 to <2 x double>
  %i.g = uitofp <2 x i8> %wide.load28 to <2 x double>
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index26 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load29 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !412, !noalias !409
  %wide.load30 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !412, !noalias !409
  %i.j = fadd <2 x double> %wide.load29, %i.f
  %i.k = fadd <2 x double> %wide.load30, %i.g
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57, !alias.scope !412, !noalias !409
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !57, !alias.scope !412, !noalias !409
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.l, label %middle.block32, label %vector.body25, !llvm.loop !414

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count56.i.i
  br i1 %cmp.n33, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck15, %.lr.ph.preheader.i.i, %middle.block32
  %indvars.iv53.i.i.ph = phi i64 [ 0, %vector.memcheck15 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec24, %middle.block32 ] ; 5 uses
  %xtraiter37 = and i64 %wide.trip.count56.i.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to double
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i.i.ph ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = fadd double %i.q, %i.o
  store double %i.r, ptr %i.p, align 8, !tbaa !57
  %indvars.iv.next54.i.i.prol = or disjoint i64 %indvars.iv53.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv53.i.i.unr = phi i64 [ %indvars.iv53.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next54.i.i.prol, %.lr.ph.i.i.prol ]
  %i.s = add nsw i64 %wide.trip.count56.i.i, -1
  %i.t = icmp eq i64 %indvars.iv53.i.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ %indvars.iv.next54.i.i.1, %.lr.ph.i.i ], [ %indvars.iv53.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv53.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to double
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53.i.i ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !57
  %i.z = fadd double %i.y, %i.w
  store double %i.z, ptr %i.x, align 8, !tbaa !57
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next54.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to double
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next54.i.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !57
  %i.af = fadd double %i.ae, %i.ac
  store double %i.af, ptr %i.ad, align 8, !tbaa !57
  %indvars.iv.next54.i.i.1 = add nuw nsw i64 %indvars.iv53.i.i, 2 ; 2 uses
  %exitcond57.not.i.i.1 = icmp eq i64 %indvars.iv.next54.i.i.1, %wide.trip.count56.i.i
  br i1 %exitcond57.not.i.i.1, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !415

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph43.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit

.lr.ph43.i.i:                                     ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph43.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.lr.ph43.i.i
  %wide.trip.count51.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count51.i.i, -1  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i.i
  %i.am = shl i64 %i.al, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep11 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep11
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit37_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv48.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next49.i.i, %..loopexit37_crit_edge.us.i.i ] ; 2 uses
  %.03341.us.i.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i.i ], [ %i.bt, %..loopexit37_crit_edge.us.i.i ] ; 5 uses
  %.03440.us.i.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i.i ], [ %i.bu, %..loopexit37_crit_edge.us.i.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not36.us.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not36.us.i.i, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph43.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader35, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %wide.load = load <2 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !416
  %wide.load12 = load <2 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !416
  %i.at = uitofp <2 x i8> %wide.load to <2 x double>
  %i.au = uitofp <2 x i8> %wide.load12 to <2 x double>
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !419, !noalias !416
  %wide.load14 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !419, !noalias !416
  %i.ax = fadd <2 x double> %wide.load13, %i.at
  %i.ay = fadd <2 x double> %wide.load14, %i.au
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !57, !alias.scope !419, !noalias !416
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !57, !alias.scope !419, !noalias !416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i.preheader35

.preheader.us.i.i.preheader35:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader35
  %i.ba = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to double
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57
  %i.bf = fadd double %i.be, %i.bc
  store double %i.bf, ptr %i.bd, align 8, !tbaa !57
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader35
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader35 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to double
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = fadd double %i.bl, %i.bj
  store double %i.bm, ptr %i.bk, align 8, !tbaa !57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %indvars.iv.next.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to double
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !57
  %i.bs = fadd double %i.br, %i.bp
  store double %i.bs, ptr %i.bq, align 8, !tbaa !57
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !422

..loopexit37_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph43.split.us.i.i
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03341.us.i.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.03440.us.i.i, i64 %i.ai
  %exitcond52.not.i.i = icmp eq i64 %indvars.iv.next49.i.i, %wide.trip.count51.i.i
  br i1 %exitcond52.not.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit, label %.lr.ph43.split.us.i.i, !llvm.loop !70

_ZN2cv12cpu_baseline9acc_simd_EPKhPdS2_ii.exit:   ; preds = %..loopexit37_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block32, %bb.b, %bb.c, %.lr.ph43.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv12accSqr_8u64fEPKhPdS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count60.i.i = zext nneg i32 %i.a to i64 ; 7 uses
  %min.iters.check22 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check22, label %.lr.ph.i.i.preheader, label %vector.memcheck15

vector.memcheck15:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count60.i.i, 3
  %scevgep16 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep17 = getelementptr i8, ptr %0, i64 %wide.trip.count60.i.i
  %bound018 = icmp ult ptr %1, %scevgep17
  %bound119 = icmp ult ptr %0, %scevgep16
  %found.conflict20 = and i1 %bound018, %bound119
  br i1 %found.conflict20, label %.lr.ph.i.i.preheader, label %vector.ph23

vector.ph23:                                      ; preds = %vector.memcheck15
  %n.vec24 = and i64 %wide.trip.count60.i.i, 2147483644 ; 3 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph23
  %index26 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body25 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %wide.load27 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !423
  %wide.load28 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !423
  %i.f = uitofp <2 x i8> %wide.load27 to <2 x double> ; 2 uses
  %i.g = uitofp <2 x i8> %wide.load28 to <2 x double> ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index26 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %wide.load29 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !426, !noalias !423
  %wide.load30 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !426, !noalias !423
  %i.j = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.f, <2 x double> %wide.load29)
  %i.k = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.g, <2 x double> %wide.load30)
  store <2 x double> %i.j, ptr %i.h, align 8, !tbaa !57, !alias.scope !426, !noalias !423
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !57, !alias.scope !426, !noalias !423
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %i.l = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.l, label %middle.block32, label %vector.body25, !llvm.loop !428

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count60.i.i
  br i1 %cmp.n33, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck15, %.lr.ph.preheader.i.i, %middle.block32
  %indvars.iv57.i.i.ph = phi i64 [ 0, %vector.memcheck15 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec24, %middle.block32 ] ; 5 uses
  %xtraiter37 = and i64 %wide.trip.count60.i.i, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.i.ph
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = uitofp i8 %i.n to double                 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i.i.ph ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !57
  %i.r = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.q)
  store double %i.r, ptr %i.p, align 8, !tbaa !57
  %indvars.iv.next58.i.i.prol = or disjoint i64 %indvars.iv57.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv57.i.i.unr = phi i64 [ %indvars.iv57.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next58.i.i.prol, %.lr.ph.i.i.prol ]
  %i.s = add nsw i64 %wide.trip.count60.i.i, -1
  %i.t = icmp eq i64 %indvars.iv57.i.i.ph, %i.s
  br i1 %i.t, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i.1, %.lr.ph.i.i ], [ %indvars.iv57.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv57.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = uitofp i8 %i.v to double                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv57.i.i ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !57
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.y)
  store double %i.z, ptr %i.x, align 8, !tbaa !57
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next58.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = uitofp i8 %i.ab to double               ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next58.i.i ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !57
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ae)
  store double %i.af, ptr %i.ad, align 8, !tbaa !57
  %indvars.iv.next58.i.i.1 = add nuw nsw i64 %indvars.iv57.i.i, 2 ; 2 uses
  %exitcond61.not.i.i.1 = icmp eq i64 %indvars.iv.next58.i.i.1, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i.1, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !429

bb.c:                                             ; preds = %bb.a
  %i.ag = icmp sgt i32 %3, 0
  br i1 %i.ag, label %.lr.ph47.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit

.lr.ph47.i.i:                                     ; preds = %bb.c
  %i.ah = icmp sgt i32 %4, 0
  %i.ai = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.ah, label %.lr.ph47.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit

.lr.ph47.split.us.preheader.i.i:                  ; preds = %.lr.ph47.i.i
  %wide.trip.count55.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.aj = add nsw i64 %wide.trip.count55.i.i, -1  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ai
  %i.al = add i64 %i.ak, %wide.trip.count.i.i
  %i.am = shl i64 %i.al, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.am
  %5 = mul nsw i64 %i.aj, %i.ai
  %i.an = getelementptr i8, ptr %0, i64 %5
  %scevgep11 = getelementptr i8, ptr %i.an, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep11
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ao = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph47.split.us.i.i

.lr.ph47.split.us.i.i:                            ; preds = %..loopexit41_crit_edge.us.i.i, %.lr.ph47.split.us.preheader.i.i
  %indvars.iv52.i.i = phi i64 [ 0, %.lr.ph47.split.us.preheader.i.i ], [ %indvars.iv.next53.i.i, %..loopexit41_crit_edge.us.i.i ] ; 2 uses
  %.03745.us.i.i = phi ptr [ %0, %.lr.ph47.split.us.preheader.i.i ], [ %i.bt, %..loopexit41_crit_edge.us.i.i ] ; 5 uses
  %.03844.us.i.i = phi ptr [ %1, %.lr.ph47.split.us.preheader.i.i ], [ %i.bu, %..loopexit41_crit_edge.us.i.i ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv52.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %.not40.us.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not40.us.i.i, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph47.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader35, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %wide.load = load <2 x i8>, ptr %i.ar, align 1, !tbaa !8, !alias.scope !430
  %wide.load12 = load <2 x i8>, ptr %i.as, align 1, !tbaa !8, !alias.scope !430
  %i.at = uitofp <2 x i8> %wide.load to <2 x double> ; 2 uses
  %i.au = uitofp <2 x i8> %wide.load12 to <2 x double> ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i.i, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load13 = load <2 x double>, ptr %i.av, align 8, !tbaa !57, !alias.scope !433, !noalias !430
  %wide.load14 = load <2 x double>, ptr %i.aw, align 8, !tbaa !57, !alias.scope !433, !noalias !430
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> %wide.load13)
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %wide.load14)
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !57, !alias.scope !433, !noalias !430
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !57, !alias.scope !433, !noalias !430
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !435

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i.preheader35

.preheader.us.i.i.preheader35:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader35
  %i.ba = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = uitofp i8 %i.bb to double               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !57
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.be)
  store double %i.bf, ptr %i.bd, align 8, !tbaa !57
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader35
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader35 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bg = icmp eq i64 %indvars.iv.i.i.ph, %i.ao
  br i1 %i.bg, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = uitofp i8 %i.bi to double               ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !57
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bl)
  store double %i.bm, ptr %i.bk, align 8, !tbaa !57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %indvars.iv.next.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8
  %i.bp = uitofp i8 %i.bo to double               ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !57
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.br)
  store double %i.bs, ptr %i.bq, align 8, !tbaa !57
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit41_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !436

..loopexit41_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph47.split.us.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03745.us.i.i, i64 %i.ai
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.03844.us.i.i, i64 %i.ai
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count55.i.i
  br i1 %exitcond56.not.i.i, label %_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit, label %.lr.ph47.split.us.i.i, !llvm.loop !147

_ZN2cv12cpu_baseline12accSqr_simd_EPKhPdS2_ii.exit: ; preds = %..loopexit41_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block32, %bb.b, %bb.c, %.lr.ph47.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv13accProd_8u64fEPKhS1_PdS1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %5, %4                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count67.i.i = zext nneg i32 %i.a to i64 ; 8 uses
  %min.iters.check31 = icmp ult i32 %i.a, 6
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.memcheck19

vector.memcheck19:                                ; preds = %.lr.ph.preheader.i.i
  %i.c = shl nuw nsw i64 %wide.trip.count67.i.i, 3
  %scevgep20 = getelementptr i8, ptr %2, i64 %i.c ; 2 uses
  %scevgep21 = getelementptr i8, ptr %0, i64 %wide.trip.count67.i.i
  %scevgep22 = getelementptr i8, ptr %1, i64 %wide.trip.count67.i.i
  %bound023 = icmp ult ptr %2, %scevgep21
  %bound124 = icmp ult ptr %0, %scevgep20
  %found.conflict25 = and i1 %bound023, %bound124
  %bound026 = icmp ult ptr %2, %scevgep22
  %bound127 = icmp ult ptr %1, %scevgep20
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %found.conflict25, %found.conflict28
  br i1 %conflict.rdx29, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck19
  %n.vec33 = and i64 %wide.trip.count67.i.i, 2147483646 ; 3 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next39, %vector.body34 ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %index35
  %wide.load36 = load <2 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !437
  %i.e = uitofp <2 x i8> %wide.load36 to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index35
  %wide.load37 = load <2 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !440
  %i.g = uitofp <2 x i8> %wide.load37 to <2 x double>
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index35 ; 2 uses
  %wide.load38 = load <2 x double>, ptr %i.h, align 8, !tbaa !57, !alias.scope !442, !noalias !444
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.g, <2 x double> %wide.load38)
  store <2 x double> %i.i, ptr %i.h, align 8, !tbaa !57, !alias.scope !442, !noalias !444
  %index.next39 = add nuw i64 %index35, 2         ; 2 uses
  %i.j = icmp eq i64 %index.next39, %n.vec33
  br i1 %i.j, label %middle.block40, label %vector.body34, !llvm.loop !445

middle.block40:                                   ; preds = %vector.body34
  %cmp.n41 = icmp eq i64 %n.vec33, %wide.trip.count67.i.i
  br i1 %cmp.n41, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck19, %.lr.ph.preheader.i.i, %middle.block40
  %indvars.iv64.i.i.ph = phi i64 [ 0, %vector.memcheck19 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec33, %middle.block40 ] ; 6 uses
  %xtraiter45 = and i64 %wide.trip.count67.i.i, 1
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.i.ph
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = uitofp i8 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.i.ph
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = uitofp i8 %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64.i.i.ph ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !57
  %i.s = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double %i.r)
  store double %i.s, ptr %i.q, align 8, !tbaa !57
  %indvars.iv.next65.i.i.prol = or disjoint i64 %indvars.iv64.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv64.i.i.unr = phi i64 [ %indvars.iv64.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next65.i.i.prol, %.lr.ph.i.i.prol ]
  %i.t = add nsw i64 %wide.trip.count67.i.i, -1
  %i.u = icmp eq i64 %indvars.iv64.i.i.ph, %i.t
  br i1 %i.u, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv64.i.i = phi i64 [ %indvars.iv.next65.i.i.1, %.lr.ph.i.i ], [ %indvars.iv64.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv64.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = uitofp i8 %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv64.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = uitofp i8 %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv64.i.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !57
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.x, double %i.aa, double %i.ac)
  store double %i.ad, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next65.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = uitofp i8 %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next65.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = uitofp i8 %i.ai to double
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !57
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.aj, double %i.al)
  store double %i.am, ptr %i.ak, align 8, !tbaa !57
  %indvars.iv.next65.i.i.1 = add nuw nsw i64 %indvars.iv64.i.i, 2 ; 2 uses
  %exitcond68.not.i.i.1 = icmp eq i64 %indvars.iv.next65.i.i.1, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i.1, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit, label %.lr.ph.i.i, !llvm.loop !446

bb.c:                                             ; preds = %bb.a
  %i.an = icmp sgt i32 %4, 0
  br i1 %i.an, label %.lr.ph54.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit

.lr.ph54.i.i:                                     ; preds = %bb.c
  %i.ao = icmp sgt i32 %5, 0
  %i.ap = sext i32 %5 to i64                      ; 5 uses
  br i1 %i.ao, label %.lr.ph54.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit

.lr.ph54.split.us.preheader.i.i:                  ; preds = %.lr.ph54.i.i
  %wide.trip.count62.i.i = zext nneg i32 %4 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %5 to i64  ; 7 uses
  %i.aq = add nsw i64 %wide.trip.count62.i.i, -1  ; 2 uses
  %i.ar = mul nsw i64 %i.aq, %i.ap
  %i.as = add i64 %i.ar, %wide.trip.count.i.i
  %i.at = shl i64 %i.as, 3
  %scevgep = getelementptr i8, ptr %2, i64 %i.at  ; 2 uses
  %6 = mul nsw i64 %i.aq, %i.ap
  %i.au = add nsw i64 %6, %wide.trip.count.i.i    ; 2 uses
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.au
  %scevgep13 = getelementptr i8, ptr %1, i64 %i.au
  %min.iters.check = icmp eq i32 %5, 1
  %bound0 = icmp ult ptr %2, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %2, %scevgep13
  %bound115 = icmp ult ptr %1, %scevgep
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  %n.vec = and i64 %wide.trip.count.i.i, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph54.split.us.i.i

.lr.ph54.split.us.i.i:                            ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph54.split.us.preheader.i.i
  %indvars.iv59.i.i = phi i64 [ 0, %.lr.ph54.split.us.preheader.i.i ], [ %indvars.iv.next60.i.i, %..loopexit47_crit_edge.us.i.i ] ; 2 uses
  %.04252.us.i.i = phi ptr [ %0, %.lr.ph54.split.us.preheader.i.i ], [ %i.ch, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04351.us.i.i = phi ptr [ %1, %.lr.ph54.split.us.preheader.i.i ], [ %i.ci, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04450.us.i.i = phi ptr [ %2, %.lr.ph54.split.us.preheader.i.i ], [ %i.cj, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv59.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %.not46.us.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.us.i.i, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph54.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.preheader.us.i.i.preheader43, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %index
  %wide.load = load <2 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !447
  %i.az = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ba = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %index
  %wide.load17 = load <2 x i8>, ptr %i.ba, align 1, !tbaa !8, !alias.scope !450
  %i.bb = uitofp <2 x i8> %wide.load17 to <2 x double>
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %index ; 2 uses
  %wide.load18 = load <2 x double>, ptr %i.bc, align 8, !tbaa !57, !alias.scope !452, !noalias !454
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> %wide.load18)
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !57, !alias.scope !452, !noalias !454
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader43

.preheader.us.i.i.preheader43:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader43
  %i.bf = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = uitofp i8 %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !57
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bk, double %i.bm)
  store double %i.bn, ptr %i.bl, align 8, !tbaa !57
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader43
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader43 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bo = icmp eq i64 %indvars.iv.i.i.ph, %i.av
  br i1 %i.bo, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = uitofp i8 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = uitofp i8 %i.bt to double
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !57
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bu, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %indvars.iv.next.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = uitofp i8 %i.bz to double
  %i.cb = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.next.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = uitofp i8 %i.cc to double
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !57
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cd, double %i.cf)
  store double %i.cg, ptr %i.ce, align 8, !tbaa !57
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !456

..loopexit47_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph54.split.us.i.i
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.04252.us.i.i, i64 %i.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %i.ap
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %i.ap
  %exitcond63.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count62.i.i
  br i1 %exitcond63.not.i.i, label %_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit, label %.lr.ph54.split.us.i.i, !llvm.loop !240

_ZN2cv12cpu_baseline13accProd_simd_EPKhS2_PdS2_ii.exit: ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block40, %bb.b, %bb.c, %.lr.ph54.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10accW_8u64fEPKhPdS1_iid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double 1.000000e+00, %5             ; 8 uses
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %4, %3                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count66.i.i = zext nneg i32 %i.b to i64 ; 7 uses
  %min.iters.check25 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check25, label %.lr.ph.i.i.preheader, label %vector.memcheck18

vector.memcheck18:                                ; preds = %.lr.ph.preheader.i.i
  %i.d = shl nuw nsw i64 %wide.trip.count66.i.i, 3
  %scevgep19 = getelementptr i8, ptr %1, i64 %i.d
  %scevgep20 = getelementptr i8, ptr %0, i64 %wide.trip.count66.i.i
  %bound021 = icmp ult ptr %1, %scevgep20
  %bound122 = icmp ult ptr %0, %scevgep19
  %found.conflict23 = and i1 %bound021, %bound122
  br i1 %found.conflict23, label %.lr.ph.i.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck18
  %n.vec27 = and i64 %wide.trip.count66.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat31 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph26
  %index33 = phi i64 [ 0, %vector.ph26 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %wide.load34 = load <2 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !457
  %wide.load35 = load <2 x i8>, ptr %i.f, align 1, !tbaa !8, !alias.scope !457
  %i.g = uitofp <2 x i8> %wide.load34 to <2 x double>
  %i.h = uitofp <2 x i8> %wide.load35 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index33 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load36 = load <2 x double>, ptr %i.i, align 8, !tbaa !57, !alias.scope !460, !noalias !457
  %wide.load37 = load <2 x double>, ptr %i.j, align 8, !tbaa !57, !alias.scope !460, !noalias !457
  %i.k = fmul <2 x double> %broadcast.splat29, %wide.load36
  %i.l = fmul <2 x double> %broadcast.splat29, %wide.load37
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %broadcast.splat31, <2 x double> %i.k)
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %broadcast.splat31, <2 x double> %i.l)
  store <2 x double> %i.m, ptr %i.i, align 8, !tbaa !57, !alias.scope !460, !noalias !457
  store <2 x double> %i.n, ptr %i.j, align 8, !tbaa !57, !alias.scope !460, !noalias !457
  %index.next38 = add nuw i64 %index33, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next38, %n.vec27
  br i1 %i.o, label %middle.block39, label %vector.body32, !llvm.loop !462

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %n.vec27, %wide.trip.count66.i.i
  br i1 %cmp.n40, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck18, %.lr.ph.preheader.i.i, %middle.block39
  %indvars.iv63.i.i.ph = phi i64 [ 0, %vector.memcheck18 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec27, %middle.block39 ] ; 5 uses
  %xtraiter44 = and i64 %wide.trip.count66.i.i, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.i.ph
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = uitofp i8 %i.q to double
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i.i.ph ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !57
  %i.u = fmul double %i.a, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %5, double %i.u)
  store double %i.v, ptr %i.s, align 8, !tbaa !57
  %indvars.iv.next64.i.i.prol = or disjoint i64 %indvars.iv63.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv63.i.i.unr = phi i64 [ %indvars.iv63.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next64.i.i.prol, %.lr.ph.i.i.prol ]
  %i.w = add nsw i64 %wide.trip.count66.i.i, -1
  %i.x = icmp eq i64 %indvars.iv63.i.i.ph, %i.w
  br i1 %i.x, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv63.i.i = phi i64 [ %indvars.iv.next64.i.i.1, %.lr.ph.i.i ], [ %indvars.iv63.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv63.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = uitofp i8 %i.z to double
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63.i.i ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !57
  %i.ad = fmul double %i.a, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.aa, double %5, double %i.ad)
  store double %i.ae, ptr %i.ab, align 8, !tbaa !57
  %indvars.iv.next64.i.i = add nuw nsw i64 %indvars.iv63.i.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next64.i.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = uitofp i8 %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next64.i.i ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !57
  %i.ak = fmul double %i.a, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %5, double %i.ak)
  store double %i.al, ptr %i.ai, align 8, !tbaa !57
  %indvars.iv.next64.i.i.1 = add nuw nsw i64 %indvars.iv63.i.i, 2 ; 2 uses
  %exitcond67.not.i.i.1 = icmp eq i64 %indvars.iv.next64.i.i.1, %wide.trip.count66.i.i
  br i1 %exitcond67.not.i.i.1, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit, label %.lr.ph.i.i, !llvm.loop !463

bb.c:                                             ; preds = %bb.a
  %i.am = icmp sgt i32 %3, 0
  br i1 %i.am, label %.lr.ph53.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit

.lr.ph53.i.i:                                     ; preds = %bb.c
  %i.an = icmp sgt i32 %4, 0
  %i.ao = sext i32 %4 to i64                      ; 4 uses
  br i1 %i.an, label %.lr.ph53.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit

.lr.ph53.split.us.preheader.i.i:                  ; preds = %.lr.ph53.i.i
  %wide.trip.count61.i.i = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 7 uses
  %i.ap = add nsw i64 %wide.trip.count61.i.i, -1  ; 2 uses
  %i.aq = mul nsw i64 %i.ap, %i.ao
  %i.ar = add i64 %i.aq, %wide.trip.count.i.i
  %i.as = shl i64 %i.ar, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.as
  %6 = mul nsw i64 %i.ap, %i.ao
  %i.at = getelementptr i8, ptr %0, i64 %6
  %scevgep12 = getelementptr i8, ptr %i.at, i64 %wide.trip.count.i.i
  %min.iters.check = icmp ult i32 %4, 4
  %bound0 = icmp ult ptr %1, %scevgep12
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.a, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph53.split.us.i.i

.lr.ph53.split.us.i.i:                            ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph53.split.us.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph53.split.us.preheader.i.i ], [ %indvars.iv.next59.i.i, %..loopexit47_crit_edge.us.i.i ] ; 2 uses
  %.04351.us.i.i = phi ptr [ %0, %.lr.ph53.split.us.preheader.i.i ], [ %i.ce, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %.04450.us.i.i = phi ptr [ %1, %.lr.ph53.split.us.preheader.i.i ], [ %i.cf, %..loopexit47_crit_edge.us.i.i ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv58.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not46.us.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not46.us.i.i, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph53.split.us.i.i
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.us.i.i.preheader42, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.i.i.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %wide.load = load <2 x i8>, ptr %i.ax, align 1, !tbaa !8, !alias.scope !464
  %wide.load15 = load <2 x i8>, ptr %i.ay, align 1, !tbaa !8, !alias.scope !464
  %i.az = uitofp <2 x i8> %wide.load to <2 x double>
  %i.ba = uitofp <2 x i8> %wide.load15 to <2 x double>
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %index ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load16 = load <2 x double>, ptr %i.bb, align 8, !tbaa !57, !alias.scope !467, !noalias !464
  %wide.load17 = load <2 x double>, ptr %i.bc, align 8, !tbaa !57, !alias.scope !467, !noalias !464
  %i.bd = fmul <2 x double> %broadcast.splat, %wide.load16
  %i.be = fmul <2 x double> %broadcast.splat, %wide.load17
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %broadcast.splat14, <2 x double> %i.bd)
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %broadcast.splat14, <2 x double> %i.be)
  store <2 x double> %i.bf, ptr %i.bb, align 8, !tbaa !57, !alias.scope !467, !noalias !464
  store <2 x double> %i.bg, ptr %i.bc, align 8, !tbaa !57, !alias.scope !467, !noalias !464
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !469

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i.preheader42

.preheader.us.i.i.preheader42:                    ; preds = %.preheader.us.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.preheader.us.i.i.prol.loopexit, label %.preheader.us.i.i.prol

.preheader.us.i.i.prol:                           ; preds = %.preheader.us.i.i.preheader42
  %i.bi = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i.ph
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = uitofp i8 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !57
  %i.bn = fmul double %i.a, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bk, double %5, double %i.bn)
  store double %i.bo, ptr %i.bl, align 8, !tbaa !57
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.preheader.us.i.i.prol.loopexit

.preheader.us.i.i.prol.loopexit:                  ; preds = %.preheader.us.i.i.prol, %.preheader.us.i.i.preheader42
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.preheader.us.i.i.preheader42 ], [ %indvars.iv.next.i.i.prol, %.preheader.us.i.i.prol ]
  %i.bp = icmp eq i64 %indvars.iv.i.i.ph, %i.au
  br i1 %i.bp, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.us.i.i ], [ %indvars.iv.i.i.unr, %.preheader.us.i.i.prol.loopexit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.i.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = uitofp i8 %i.br to double
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.i.i ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !57
  %i.bv = fmul double %i.a, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bs, double %5, double %i.bv)
  store double %i.bw, ptr %i.bt, align 8, !tbaa !57
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %indvars.iv.next.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !8
  %i.bz = uitofp i8 %i.by to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !57
  %i.cc = fmul double %i.a, %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bz, double %5, double %i.cc)
  store double %i.cd, ptr %i.ca, align 8, !tbaa !57
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %..loopexit47_crit_edge.us.i.i, label %.preheader.us.i.i, !llvm.loop !470

..loopexit47_crit_edge.us.i.i:                    ; preds = %.preheader.us.i.i.prol.loopexit, %.preheader.us.i.i, %middle.block, %.lr.ph53.split.us.i.i
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.04351.us.i.i, i64 %i.ao
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.04450.us.i.i, i64 %i.ao
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %wide.trip.count61.i.i
  br i1 %exitcond62.not.i.i, label %_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit, label %.lr.ph53.split.us.i.i, !llvm.loop !321

_ZN2cv12cpu_baseline10accW_simd_EPKhPdS2_iid.exit: ; preds = %..loopexit47_crit_edge.us.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block39, %bb.b, %bb.c, %.lr.ph53.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10acc_16u32fEPKtPfPKhii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = mul nsw i32 %4, %3                       ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count56.i.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check15 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check15, label %.lr.ph.i.i.preheader, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec17 = and i64 %wide.trip.count56.i.i, 2147483640 ; 3 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph16
  %index19 = phi i64 [ 0, %vector.ph16 ], [ %index.next24, %vector.body18 ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.load20 = load <4 x i16>, ptr %i.c, align 2, !tbaa !29
  %wide.load21 = load <4 x i16>, ptr %i.d, align 2, !tbaa !29
  %i.e = uitofp <4 x i16> %wide.load20 to <4 x float>
  %i.f = uitofp <4 x i16> %wide.load21 to <4 x float>
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index19 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load22 = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %wide.load23 = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.i = fadd <4 x float> %wide.load22, %i.e
  %i.j = fadd <4 x float> %wide.load23, %i.f
  store <4 x float> %i.i, ptr %i.g, align 4, !tbaa !12
  store <4 x float> %i.j, ptr %i.h, align 4, !tbaa !12
  %index.next24 = add nuw i64 %index19, 8         ; 2 uses
  %i.k = icmp eq i64 %index.next24, %n.vec17
  br i1 %i.k, label %middle.block25, label %vector.body18, !llvm.loop !471

middle.block25:                                   ; preds = %vector.body18
  %cmp.n26 = icmp eq i64 %n.vec17, %wide.trip.count56.i.i
  br i1 %cmp.n26, label %_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block25
  %indvars.iv53.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec17, %middle.block25 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ %indvars.iv.next54.i.i, %.lr.ph.i.i ], [ %indvars.iv53.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv53.i.i
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = uitofp i16 %i.m to float
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv53.i.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = fadd float %i.p, %i.n
  store float %i.q, ptr %i.o, align 4, !tbaa !12
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond57.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count56.i.i
  br i1 %exitcond57.not.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii.exit, label %.lr.ph.i.i, !llvm.loop !472

bb.c:                                             ; preds = %bb.a
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph43.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii.exit

.lr.ph43.i.i:                                     ; preds = %bb.c
  %i.s = icmp sgt i32 %4, 0
  %i.t = sext i32 %4 to i64                       ; 2 uses
  br i1 %i.s, label %.lr.ph43.split.us.preheader.i.i, label %_ZN2cv12cpu_baseline9acc_simd_EPKtPfPKhii.exit

.lr.ph43.split.us.preheader.i.i:                  ; preds = %.lr.ph43.i.i
  %wide.trip.count51.i.i = zext nneg i32 %3 to i64
  %wide.trip.count.i.i = zext nneg i32 %4 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph43.split.us.i.i

.lr.ph43.split.us.i.i:                            ; preds = %..loopexit37_crit_edge.us.i.i, %.lr.ph43.split.us.preheader.i.i
  %indvars.iv48.i.i = phi i64 [ 0, %.lr.ph43.split.us.preheader.i.i ], [ %indvars.iv.next49.i.i, %..loopexit37_crit_edge.us.i.i ] ; 2 uses
  %.03341.us.i.i = phi ptr [ %0, %.lr.ph43.split.us.preheader.i.i ], [ %i.al, %..loopexit37_crit_edge.us.i.i ] ; 3 uses
  %.03440.us.i.i = phi ptr [ %1, %.lr.ph43.split.us.preheader.i.i ], [ %i.am, %..loopexit37_crit_edge.us.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv48.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %.not36.us.i.i = icmp eq i8 %i.v, 0
  br i1 %.not36.us.i.i, label %..loopexit37_crit_edge.us.i.i, label %.preheader.us.i.i.preheader

.preheader.us.i.i.preheader:                      ; preds = %.lr.ph43.split.us.i.i
  br i1 %min.iters.check, label %.preheader.us.i.i.preheader28, label %vector.body

vector.body:                                      ; preds = %.preheader.us.i.i.preheader, %vector.body
end_hunk_8
