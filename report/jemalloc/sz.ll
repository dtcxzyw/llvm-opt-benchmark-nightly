Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/sz?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@je_sz_large_pad = hidden local_unnamed_addr global i64 0, align 8
@je_sz_pind2sz_tab = hidden local_unnamed_addr global [200 x i64] zeroinitializer, align 64
@je_sz_index2size_tab = hidden local_unnamed_addr global [232 x i64] zeroinitializer, align 64
@je_sz_size2index_tab = hidden local_unnamed_addr global [513 x i8] zeroinitializer, align 64

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write, target_mem: none) uwtable
define hidden i64 @je_sz_psz_quantize_floor(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_sz_large_pad, align 8, !tbaa !13 ; 2 uses
  %i.b = sub i64 %0, %i.a                         ; 4 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.d, label %sz_psz2ind.exit.thread, label %sz_psz2ind.exit, !prof !14

sz_psz2ind.exit:                                  ; preds = %bb.a
  %i.e = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.g) ; 2 uses
  %i.i = icmp ult i64 %i.b, 16384
  %i.j = add nuw nsw i32 %i.h, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = select i1 %i.i, i64 12, i64 %i.k
  %i.m = lshr i64 %i.b, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, 2
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %sz_psz2ind.exit.thread

sz_psz2ind.exit.thread:                           ; preds = %bb.a, %sz_psz2ind.exit
  %.0.i8 = phi i32 [ %i.q, %sz_psz2ind.exit ], [ 199, %bb.a ]
  %i.s = zext nneg i32 %.0.i8 to i64
  %i.t = getelementptr [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = add i64 %i.v, %i.a
  br label %bb.b

bb.b:                                             ; preds = %sz_psz2ind.exit, %sz_psz2ind.exit.thread
  %.0 = phi i64 [ %i.w, %sz_psz2ind.exit.thread ], [ %0, %sz_psz2ind.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write, target_mem: none) uwtable
define hidden i64 @je_sz_psz_quantize_ceil(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_sz_large_pad, align 8, !tbaa !13 ; 3 uses
  %i.b = sub i64 %0, %i.a                         ; 4 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8070450532247928832
  br i1 %i.d, label %je_sz_psz_quantize_floor.exit, label %sz_psz2ind.exit.i, !prof !14

sz_psz2ind.exit.i:                                ; preds = %bb.a
  %i.e = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 false)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.g) ; 2 uses
  %i.i = icmp ult i64 %i.b, 16384
  %i.j = add nuw nsw i32 %i.h, 11
  %i.k = zext nneg i32 %i.j to i64
  %i.l = select i1 %i.i, i64 12, i64 %i.k
  %i.m = lshr i64 %i.b, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  %i.p = shl nuw nsw i32 %i.h, 2
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %je_sz_psz_quantize_floor.exit.thread, label %je_sz_psz_quantize_floor.exit

je_sz_psz_quantize_floor.exit:                    ; preds = %bb.a, %sz_psz2ind.exit.i
  %.0.i8.i = phi i32 [ %i.q, %sz_psz2ind.exit.i ], [ 199, %bb.a ]
  %i.s = zext nneg i32 %.0.i8.i to i64
  %i.t = getelementptr [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13   ; 5 uses
  %i.w = add i64 %i.v, %i.a                       ; 2 uses
  %i.x = icmp ult i64 %i.w, %0
  br i1 %i.x, label %bb.b, label %je_sz_psz_quantize_floor.exit.thread

bb.b:                                             ; preds = %je_sz_psz_quantize_floor.exit
  %i.y = add i64 %i.v, 1                          ; 2 uses
  %i.z = icmp ugt i64 %i.y, 8070450532247928832
  br i1 %i.z, label %sz_psz2ind.exit, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.ac) ; 2 uses
  %i.ae = icmp ult i64 %i.v, 16384
  %i.af = add nuw nsw i32 %i.ad, 11
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = select i1 %i.ae, i64 12, i64 %i.ag
  %i.ai = lshr i64 %i.v, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 3
  %i.al = shl nuw nsw i32 %i.ad, 2
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.an, %bb.c ], [ 199, %bb.b ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @je_sz_pind2sz_tab, i64 %.0.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.aq = add i64 %i.ap, %i.a
  br label %je_sz_psz_quantize_floor.exit.thread

je_sz_psz_quantize_floor.exit.thread:             ; preds = %sz_psz2ind.exit.i, %sz_psz2ind.exit, %je_sz_psz_quantize_floor.exit
  %.0 = phi i64 [ %i.aq, %sz_psz2ind.exit ], [ %i.w, %je_sz_psz_quantize_floor.exit ], [ %0, %sz_psz2ind.exit.i ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @je_sz_boot(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = select i1 %1, i64 4096, i64 0
  store i64 %i.a, ptr @je_sz_large_pad, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  br label %bb.b

.preheader.i:                                     ; preds = %bb.d
  %i.c = icmp slt i32 %.1.i, 200
  br i1 %i.c, label %.lr.ph.i, label %sz_boot_pind2sz_tab.exit.preheader

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = sext i32 %.1.i to i64                    ; 7 uses
  %i.f = add i32 %.1.i, 1
  %i.g = zext i32 %i.f to i64
  %i.h = sub nsw i64 201, %i.g                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 22
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i
  %i.i = add i32 %.1.i, 1
  %i.j = zext i32 %i.i to i64
  %i.k = sub nsw i64 200, %i.j                    ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = sub i32 -2, %.1.i
  %i.n = icmp ult i32 %i.m, %i.l
  %i.o = icmp ugt i64 %i.k, 4294967295
  %i.p = or i1 %i.n, %i.o
  br i1 %i.p, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.q = shl nsw i64 %i.e, 3
  %scevgep = getelementptr i8, ptr @je_sz_pind2sz_tab, i64 %i.q
  %2 = add i32 %.1.i, 1
  %3 = zext i32 %2 to i64
  %i.r = sub nsw i64 %i.e, %3
  %4 = shl nsw i64 %i.r, 3
  %scevgep9 = getelementptr i8, ptr getelementptr (i8, ptr @je_sz_pind2sz_tab, i64 1608), i64 %4
  %scevgep10 = getelementptr i8, ptr %0, i64 72
  %bound0 = icmp ult ptr %scevgep, %scevgep10
  %bound1 = icmp ult ptr %i.d, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.e
  %i.t = load i64, ptr %i.d, align 8, !tbaa !25, !alias.scope !26
  %i.u = add i64 %i.t, 4096
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !13, !alias.scope !27, !noalias !26
  store <2 x i64> %broadcast.splat, ptr %i.v, align 8, !tbaa !13, !alias.scope !27, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %sz_boot_pind2sz_tab.exit.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i, %middle.block
  %indvars.iv22.i.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %vector.scevcheck ], [ %i.e, %.lr.ph.i ], [ %i.s, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.01517.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw [28 x i8], ptr %i.b, i64 %indvars.iv.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 4, !tbaa !32, !range !33, !noundef !34
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !36
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !37
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %i.ah, %i.ak
  %i.am = add i64 %i.al, %i.ae
  %i.an = sext i32 %.01517.i to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr @je_sz_pind2sz_tab, i64 %i.an
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !13
  %i.ap = add nsw i32 %.01517.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.ap, %bb.c ], [ %.01517.i, %bb.b ] ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 232
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !19

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %scalar.ph ], [ %indvars.iv22.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 4096
  %i.as = getelementptr inbounds [8 x i8], ptr @je_sz_pind2sz_tab, i64 %indvars.iv22.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !13
  %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %i.at = and i64 %indvars.iv.next23.i, 4294967295
  %exitcond25.not.i = icmp eq i64 %i.at, 200
  br i1 %exitcond25.not.i, label %sz_boot_pind2sz_tab.exit.preheader, label %scalar.ph, !llvm.loop !20

sz_boot_pind2sz_tab.exit.preheader:               ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %sz_boot_pind2sz_tab.exit

sz_boot_pind2sz_tab.exit:                         ; preds = %sz_boot_pind2sz_tab.exit, %sz_boot_pind2sz_tab.exit.preheader
  %indvars.iv.i3 = phi i64 [ 0, %sz_boot_pind2sz_tab.exit.preheader ], [ %indvars.iv.next.i4.1, %sz_boot_pind2sz_tab.exit ] ; 4 uses
  %i.au = getelementptr inbounds nuw [28 x i8], ptr %i.b, i64 %indvars.iv.i3 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !36
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl i64 %i.bb, %i.be
  %i.bg = add i64 %i.bf, %i.ay
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv.i3
  store i64 %i.bg, ptr %i.bh, align 16, !tbaa !13
  %indvars.iv.next.i4 = or disjoint i64 %indvars.iv.i3, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [28 x i8], ptr %i.b, i64 %indvars.iv.next.i4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !37
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bp, %i.bs
  %i.bu = add i64 %i.bt, %i.bm
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv.next.i4
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !13
  %indvars.iv.next.i4.1 = add nuw nsw i64 %indvars.iv.i3, 2 ; 2 uses
  %exitcond.not.i5.1 = icmp eq i64 %indvars.iv.next.i4.1, 232
  br i1 %exitcond.not.i5.1, label %sz_boot_index2size_tab.exit, label %sz_boot_pind2sz_tab.exit, !llvm.loop !21

sz_boot_index2size_tab.exit:                      ; preds = %sz_boot_pind2sz_tab.exit, %._crit_edge.i
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %._crit_edge.i ], [ 0, %sz_boot_pind2sz_tab.exit ] ; 4 uses
  %.01619.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %sz_boot_pind2sz_tab.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [28 x i8], ptr %i.b, i64 %indvars.iv.i6 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !35
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !37
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl i64 %i.cd, %i.cg
  %i.ci = add nuw i64 %i.ca, 7
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = lshr i64 %i.cj, 3                       ; 2 uses
  %.not.i = icmp samesign ugt i64 %.01619.i, %i.ck
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %sz_boot_index2size_tab.exit
  %i.cl = trunc nuw i64 %indvars.iv.i6 to i8
  %scevgep.i = getelementptr i8, ptr @je_sz_size2index_tab, i64 %.01619.i
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 512) ; 2 uses
  %reass.sub = sub nsw i64 %i.cm, %.01619.i
  %i.cn = add nsw i64 %reass.sub, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 %i.cl, i64 %i.cn, i1 false), !tbaa !38
  %i.co = add nuw nsw i64 %i.cm, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i7, %sz_boot_index2size_tab.exit
  %.1.lcssa.i = phi i64 [ %.01619.i, %sz_boot_index2size_tab.exit ], [ %i.co, %.lr.ph.i7 ] ; 2 uses
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1
  %i.cp = icmp samesign ult i64 %indvars.iv.i6, 231
  %i.cq = icmp ult i64 %.1.lcssa.i, 513
  %i.cr = and i1 %i.cp, %i.cq
  br i1 %i.cr, label %sz_boot_index2size_tab.exit, label %sz_boot_size2index_tab.exit, !llvm.loop !22

sz_boot_size2index_tab.exit:                      ; preds = %._crit_edge.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !28, !29, !30}
!19 = distinct !{!19, !28}
!20 = distinct !{!20, !28, !29}
!21 = distinct !{!21, !28}
!22 = distinct !{!22, !28}
!23 = !{!"_Bool", !8, i64 0}
!24 = !{!"sc_data_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !12, i64 32, !12, i64 40, !9, i64 48, !12, i64 56, !12, i64 64, !23, i64 72, !8, i64 76}
!25 = !{!24, !12, i64 64}
!26 = !{!16}
!27 = !{!17}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"sc_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !23, i64 16, !23, i64 17, !9, i64 20, !9, i64 24}
!32 = !{!31, !23, i64 16}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!31, !9, i64 4}
!36 = !{!31, !9, i64 12}
!37 = !{!31, !9, i64 8}
!38 = !{!8, !8, i64 0}
end_hunk_0
