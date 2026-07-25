inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@WebPRescalerImportRowShrink = hidden local_unnamed_addr global ptr null, align 8
@WebPRescalerImportRowExpand = hidden local_unnamed_addr global ptr null, align 8
@WebPRescalerExportRowExpand = hidden local_unnamed_addr global ptr null, align 8
@WebPRescalerExportRowShrink = hidden local_unnamed_addr global ptr null, align 8
@WebPRescalerDspInit.WebPRescalerDspInit_body_last_cpuinfo_used = internal global ptr @WebPRescalerDspInit.WebPRescalerDspInit_body_last_cpuinfo_used, align 8
@WebPRescalerDspInit.WebPRescalerDspInit_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@VP8GetCPUInfo = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerImportRowExpand_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = mul nsw i32 %i.d, %i.b                   ; 4 uses
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = icmp sgt i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = zext nneg i32 %i.b to i64                ; 7 uses
  br i1 %i.k, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57, %._crit_edge.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %._crit_edge.us ], [ 0, %.lr.ph57 ] ; 4 uses
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %._crit_edge.us ], [ %i.o, %.lr.ph57 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv71
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv71, %i.o      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16
  %i.v = mul i32 %i.h, %i.r
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv71
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  %i.x = trunc nuw i64 %i.s to i32                ; 2 uses
  %.not50.us = icmp sgt i32 %i.e, %i.x
  br i1 %.not50.us, label %.lr.ph.us, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %.lr.ph57.split.us
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.o
  br i1 %exitcond75.not, label %._crit_edge58, label %.lr.ph57.split.us, !llvm.loop !17

bb.b:                                             ; preds = %.lr.ph.us, %bb.d
  %indvars.iv68 = phi i64 [ %indvars.iv66, %.lr.ph.us ], [ %indvars.iv.next69, %bb.d ] ; 2 uses
  %.054.us = phi i32 [ %i.am, %.lr.ph.us ], [ %.1.us, %bb.d ] ; 2 uses
  %.03853.us = phi i32 [ %i.r, %.lr.ph.us ], [ %.139.us, %bb.d ]
  %.04052.us = phi i32 [ %i.h, %.lr.ph.us ], [ %.141.us, %bb.d ]
  %.04351.us = phi i32 [ %i.x, %.lr.ph.us ], [ %.144.us, %bb.d ] ; 2 uses
  %i.y = sub nsw i32 %.04052.us, %i.an            ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %.04351.us, %i.b            ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.y, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.144.us = phi i32 [ %i.aa, %bb.c ], [ %.04351.us, %bb.b ]
  %.141.us = phi i32 [ %i.af, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %.139.us = phi i32 [ %.054.us, %bb.c ], [ %.03853.us, %bb.b ] ; 2 uses
  %.1.us = phi i32 [ %i.ae, %bb.c ], [ %.054.us, %bb.b ] ; 3 uses
  %i.ag = mul i32 %.1.us, %i.h
  %i.ah = sub nsw i32 %.139.us, %.1.us
  %i.ai = mul i32 %i.ah, %.141.us
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv68
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, %i.o ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv.next69 to i32
  %.not.us = icmp sgt i32 %i.e, %i.al
  br i1 %.not.us, label %bb.b, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %.lr.ph57.split.us
  %i.am = zext i8 %i.u to i32
  %i.an = load i32, ptr %i.n, align 8, !tbaa !19
  br label %bb.b

.lr.ph57.split:                                   ; preds = %.lr.ph57, %._crit_edge
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %._crit_edge ], [ 0, %.lr.ph57 ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %i.o, %.lr.ph57 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv63
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  %i.ar = mul i32 %i.h, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv63
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = trunc i64 %indvars.iv63 to i32
  %i.au = add i32 %i.b, %i.at                     ; 2 uses
  %.not50 = icmp slt i32 %i.au, %i.e
  br i1 %.not50, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph57.split
  %i.av = load i32, ptr %i.n, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv60 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next61, %bb.g ] ; 2 uses
  %.054 = phi i32 [ %i.aq, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.03853 = phi i32 [ %i.aq, %.lr.ph ], [ %.139, %bb.g ]
  %.04052 = phi i32 [ %i.h, %.lr.ph ], [ %.141, %bb.g ]
  %.04351 = phi i32 [ %i.au, %.lr.ph ], [ %.144, %bb.g ] ; 2 uses
  %i.aw = sub nsw i32 %.04052, %i.av              ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %.04351, %i.b               ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.aw, %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.144 = phi i32 [ %i.ay, %bb.f ], [ %.04351, %bb.e ]
  %.141 = phi i32 [ %i.bd, %bb.f ], [ %i.aw, %bb.e ] ; 2 uses
  %.139 = phi i32 [ %.054, %bb.f ], [ %.03853, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.f ], [ %.054, %bb.e ] ; 3 uses
  %i.be = mul i32 %.1, %i.h
  %i.bf = sub nsw i32 %.139, %.1
  %i.bg = mul i32 %i.bf, %.141
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv60
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, %i.o ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv.next61 to i32
  %.not = icmp sgt i32 %i.e, %i.bj
  br i1 %.not, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %.lr.ph57.split
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next64, %i.o
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57.split, !llvm.loop !17

._crit_edge58:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerImportRowShrink_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = mul nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = zext nneg i32 %i.b to i64
  %i.l = zext nneg i32 %i.b to i64                ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge50
  %indvars.iv57 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next58, %._crit_edge50 ] ; 3 uses
  %indvars62 = trunc i64 %indvars.iv57 to i32     ; 2 uses
  %i.m = icmp sgt i32 %i.e, %indvars62
  br i1 %i.m, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader
  %i.n = load i32, ptr %i.g, align 4, !tbaa !13
  %i.o = load i32, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.q = load i32, ptr %i.j, align 4, !tbaa !20
  %i.r = zext i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %._crit_edge
  %indvars.iv59 = phi i64 [ %indvars.iv57, %.lr.ph49 ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %.03248 = phi i32 [ 0, %.lr.ph49 ], [ %.1.lcssa, %._crit_edge ]
  %.03347 = phi i32 [ 0, %.lr.ph49 ], [ %i.al, %._crit_edge ] ; 2 uses
  %.03645 = phi i32 [ %indvars62, %.lr.ph49 ], [ %.137.lcssa, %._crit_edge ] ; 2 uses
  %i.s = add nsw i32 %i.n, %.03248                ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.u = sext i32 %.03645 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.141 = phi i32 [ %i.s, %.lr.ph ], [ %i.v, %bb.c ]
  %.13440 = phi i32 [ %.03347, %.lr.ph ], [ %i.z, %bb.c ]
  %i.v = sub nsw i32 %.141, %i.o                  ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = add i32 %.13440, %i.y                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.k ; 2 uses
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !21

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
  %i.ac = mul i32 %i.v, %i.y
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.137.lcssa = phi i32 [ %.03645, %bb.b ], [ %i.ab, %._crit_edge.loopexit ]
  %.134.lcssa = phi i32 [ %.03347, %bb.b ], [ %i.z, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %i.s, %bb.b ], [ %i.v, %._crit_edge.loopexit ]
  %.031.lcssa = phi i32 [ 0, %bb.b ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = sub i32 0, %.031.lcssa
  %i.ae = mul i32 %i.o, %.134.lcssa
  %i.af = add i32 %i.ae, %.031.lcssa
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv59
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = zext i32 %i.ad to i64
  %i.ai = mul nuw i64 %i.r, %i.ah
  %i.aj = add nuw i64 %i.ai, 2147483648
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, %i.l ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv.next60 to i32
  %i.an = icmp sgt i32 %i.e, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge50, !llvm.loop !22

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %i.l
  br i1 %exitcond.not, label %._crit_edge52, label %.preheader, !llvm.loop !23

._crit_edge52:                                    ; preds = %._crit_edge50, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPRescalerExportRowExpand_C(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !7
  %i.i = mul i32 %i.h, %i.f                       ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.o = icmp sgt i32 %i.i, 0
  br i1 %i.o, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count45 = zext nneg i32 %i.i to i64  ; 7 uses
  %min.iters.check77 = icmp ult i32 %i.i, 8
  br i1 %min.iters.check77, label %scalar.ph76.preheader, label %vector.memcheck65

vector.memcheck65:                                ; preds = %.lr.ph39
  %scevgep66 = getelementptr i8, ptr %i.b, i64 %wide.trip.count45 ; 2 uses
  %i.q = shl nuw nsw i64 %wide.trip.count45, 2
  %scevgep67 = getelementptr i8, ptr %i.k, i64 %i.q
  %scevgep68 = getelementptr i8, ptr %0, i64 20
  %bound069 = icmp ult ptr %i.b, %scevgep67
  %bound170 = icmp ult ptr %i.k, %scevgep66
  %found.conflict71 = and i1 %bound069, %bound170
  %bound072 = icmp ult ptr %i.b, %scevgep68
end_hunk_0
