inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN13duckdb_brotli16kBrotliShellGapsE = hidden local_unnamed_addr constant [6 x i64] [i64 132, i64 57, i64 23, i64 10, i64 4, i64 1], align 16
@_ZZL17BrotliReverseBitsmtE4kLut = internal unnamed_addr constant [16 x i64] [i64 0, i64 8, i64 4, i64 12, i64 2, i64 10, i64 6, i64 14, i64 1, i64 9, i64 5, i64 13, i64 3, i64 11, i64 7, i64 15], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 16, !tbaa !3
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.021 = phi i32 [ 0, %bb.a ], [ %.021.be, %.backedge.backedge ] ; 5 uses
  %.0 = phi i32 [ %0, %bb.a ], [ %.0.be, %.backedge.backedge ]
  %i.b = sext i32 %.0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i16, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.f = icmp sgt i16 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.backedge
  %.not = icmp slt i32 %.021, %3
  br i1 %.not, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.021, 1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.k
  store i32 %i.j, ptr %i.l, align 4, !tbaa !3
  %i.m = zext nneg i16 %i.e to i32
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.c, %.critedge
  %.021.be = phi i32 [ %i.g, %bb.c ], [ %5, %.critedge ]
  %.0.be = phi i32 [ %i.m, %bb.c ], [ %i.u, %.critedge ]
  br label %.backedge, !llvm.loop !11

bb.d:                                             ; preds = %.backedge
  %i.n = trunc i32 %.021 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %2, i64 %i.q
  store i8 %i.n, ptr %i.r, align 1, !tbaa !13
  %i.s = icmp sgt i32 %.021, -1
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %4 = zext nneg i32 %.021 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.w = icmp sgt i64 %indvars.iv, 0
  br i1 %i.w, label %.lr.ph, label %.critedge.thread, !llvm.loop !14

.critedge:                                        ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 -1, ptr %i.x, align 4, !tbaa !3
  br label %.backedge.backedge

.critedge.thread:                                 ; preds = %bb.b, %bb.d, %bb.e
  %.022 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN13duckdb_brotli23BrotliCreateHuffmanTreeEPKjmiPNS_11HuffmanTreeEPh(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 7 uses
  %xtraiter = and i64 %1, 1
  %i.b = icmp eq i64 %1, 1                        ; 0 uses
  %unroll_iter = and i64 %1, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod193 = trunc i64 %1 to i1
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.do, %bb.t ]    ; 4 uses
  switch i64 %1, label %.lr.ph [
    i64 0, label %.lr.ph139
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.065120 = phi i64 [ %.1.1, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.069119 = phi i64 [ %i.l, %bb.e ], [ %1, %bb.b ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %bb.b ]
  %i.c = add i64 %.069119, -1                     ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = tail call noundef i32 @llvm.umax.i32(i32 range(i32 1, 0) %i.e, i32 %.0)
  %i.g = add i64 %.065120, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.065120 ; 3 uses
  %i.i = trunc i64 %i.c to i16
  store i32 %i.f, ptr %i.h, align 4, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i16 -1, ptr %i.j, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  store i16 %i.i, ptr %i.k, align 2, !tbaa !10
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.c, %.lr.ph
  %.1 = phi i64 [ %i.g, %bb.c ], [ %.065120, %.lr.ph ] ; 3 uses
  %i.l = add i64 %.069119, -2                     ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %.not77.1 = icmp eq i32 %i.n, 0
  br i1 %.not77.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.o = tail call noundef i32 @llvm.umax.i32(i32 range(i32 1, 0) %i.n, i32 %.0)
  %i.p = add i64 %.1, 1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1 ; 3 uses
  %i.r = trunc i64 %i.l to i16
  store i32 %i.o, ptr %i.q, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 -1, ptr %i.s, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.r, ptr %i.t, align 2, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %.1.1 = phi i64 [ %i.p, %bb.d ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.065120.epil.init = phi i64 [ 0, %bb.b ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.069119.epil.init = phi i64 [ %1, %bb.b ], [ %i.l, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.u = add i64 %.069119.epil.init, -1           ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %.not77.epil = icmp eq i32 %i.w, 0
  br i1 %.not77.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.x = tail call noundef i32 @llvm.umax.i32(i32 range(i32 1, 0) %i.w, i32 %.0)
  %i.y = add i64 %.065120.epil.init, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.065120.epil.init ; 3 uses
  %i.aa = trunc i64 %i.u to i16
  store i32 %i.x, ptr %i.z, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i16 -1, ptr %i.ab, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %._crit_edge.unr-lcssa ], [ %i.y, %bb.f ], [ %.065120.epil.init, %.lr.ph.epil.preheader ] ; 9 uses
  %i.ad = icmp eq i64 %.1.lcssa, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !10
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  store i8 1, ptr %i.ah, align 1, !tbaa !13
  br label %bb.u

bb.h:                                             ; preds = %._crit_edge
  %i.ai = icmp ult i64 %.1.lcssa, 13
  br i1 %i.ai, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.h
  %.not142 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not142, label %.lr.ph139, label %.lr.ph133

.lr.ph133:                                        ; preds = %.preheader, %bb.k
  %.048.i132 = phi i64 [ %i.au, %bb.k ], [ 1, %.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.048.i132
  %i.ak = load i64, ptr %i.aj, align 4            ; 3 uses
  %.sroa.0105.0.extract.trunc = trunc i64 %i.ak to i32 ; 2 uses
  %.sroa.5108.0.extract.shift = lshr i64 %i.ak, 48
  %.sroa.5108.0.extract.trunc = trunc nuw i64 %.sroa.5108.0.extract.shift to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph133
  %.047.i = phi i64 [ %.048.i132, %.lr.ph133 ], [ %.046.i, %bb.j ] ; 4 uses
  %.046.i = add i64 %.047.i, -1                   ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.046.i ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !15 ; 2 uses
  %.not.i78 = icmp eq i32 %i.am, %.sroa.0105.0.extract.trunc
  br i1 %.not.i78, label %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit, label %.split

.split:                                           ; preds = %bb.i
  %i.an = icmp ugt i32 %i.am, %.sroa.0105.0.extract.trunc
  br i1 %i.an, label %bb.j, label %bb.k

_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit: ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = icmp slt i16 %i.ap, %.sroa.5108.0.extract.trunc
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.047.i
  %i.as = load i64, ptr %i.al, align 4
  store i64 %i.as, ptr %i.ar, align 4
  %.not54.i = icmp eq i64 %.046.i, 0
  br i1 %.not54.i, label %bb.k, label %bb.i, !llvm.loop !17

bb.k:                                             ; preds = %.split, %bb.j, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit
  %.1.i = phi i64 [ 0, %bb.j ], [ %.047.i, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit ], [ %.047.i, %.split ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1.i
  store i64 %i.ak, ptr %i.at, align 4
  %i.au = add nuw i64 %.048.i132, 1               ; 2 uses
  %exitcond151.not = icmp eq i64 %i.au, %.1.lcssa
  br i1 %exitcond151.not, label %.lr.ph139, label %.lr.ph133, !llvm.loop !18

bb.l:                                             ; preds = %bb.h
  %i.av = icmp ult i64 %.1.lcssa, 57
  %i.aw = select i1 %i.av, i64 2, i64 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge130
  %indvars.iv = phi i64 [ %i.aw, %bb.l ], [ %indvars.iv.next, %._crit_edge130 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliShellGapsE, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19 ; 5 uses
  %i.az = icmp ult i64 %i.ay, %.1.lcssa
  br i1 %i.az, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %bb.m, %.critedge.i
  %.044.i127 = phi i64 [ %i.bm, %.critedge.i ], [ %i.ay, %bb.m ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.044.i127
  %i.bb = load i64, ptr %i.ba, align 4            ; 3 uses
  %.sroa.0101.0.extract.trunc = trunc i64 %i.bb to i32 ; 2 uses
  %.sroa.5104.0.extract.shift = lshr i64 %i.bb, 48
  %.sroa.5104.0.extract.trunc = trunc nuw i64 %.sroa.5104.0.extract.shift to i16
  %.not.i121 = icmp ult i64 %.044.i127, %i.ay
  br i1 %.not.i121, label %.critedge.i, label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph129, %bb.n
  %.0.i122 = phi i64 [ %i.bc, %bb.n ], [ %.044.i127, %.lr.ph129 ] ; 4 uses
  %i.bc = sub nuw i64 %.0.i122, %i.ay             ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bc ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15 ; 2 uses
  %.not.i80 = icmp eq i32 %i.be, %.sroa.0101.0.extract.trunc
  br i1 %.not.i80, label %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit83, label %.split172

.split172:                                        ; preds = %.lr.ph124
  %i.bf = icmp ugt i32 %i.be, %.sroa.0101.0.extract.trunc
  br i1 %i.bf, label %bb.n, label %.critedge.i

_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit83: ; preds = %.lr.ph124
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bi = icmp slt i16 %i.bh, %.sroa.5104.0.extract.trunc
  br i1 %i.bi, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.split172, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit83
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0.i122
  %i.bk = load i64, ptr %i.bd, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  %.not.i = icmp ult i64 %i.bc, %i.ay
  br i1 %.not.i, label %.critedge.i, label %.lr.ph124, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.n, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit83, %.split172, %.lr.ph129
  %.0.i.lcssa = phi i64 [ %.044.i127, %.lr.ph129 ], [ %.0.i122, %.split172 ], [ %.0.i122, %_ZL15SortHuffmanTreePKN13duckdb_brotli11HuffmanTreeES2_.exit83 ], [ %i.bc, %bb.n ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0.i.lcssa
  store i64 %i.bb, ptr %i.bl, align 4
  %i.bm = add nuw i64 %.044.i127, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %.1.lcssa
  br i1 %exitcond.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !22

._crit_edge130:                                   ; preds = %.critedge.i, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond150.not, label %.lr.ph139, label %bb.m, !llvm.loop !23

.lr.ph139:                                        ; preds = %._crit_edge130, %bb.k, %bb.b, %.preheader
  %.065.lcssa166168 = phi i64 [ 0, %bb.b ], [ %.1.lcssa, %bb.k ], [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge130 ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.065.lcssa166168
  store i64 -1, ptr %i.bn, align 4
  %i.bo = add i64 %.065.lcssa166168, 1            ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bo
  store i64 -1, ptr %i.bp, align 4
  %.066134 = add i64 %.065.lcssa166168, -1
  %i.bq = shl i64 %.065.lcssa166168, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph139, %bb.o
  %.066138 = phi i64 [ %.066134, %.lr.ph139 ], [ %.066, %bb.o ] ; 2 uses
  %.067137 = phi i64 [ %i.bo, %.lr.ph139 ], [ %.2, %bb.o ] ; 3 uses
  %.170136 = phi i64 [ 0, %.lr.ph139 ], [ %.3, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.170136
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !15
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.067137
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !15
  %.not75 = icmp ule i32 %i.bs, %i.bu             ; 3 uses
  %i.bv = zext i1 %.not75 to i64
  %.271 = add i64 %.170136, %i.bv                 ; 3 uses
  %not..not75 = xor i1 %.not75, true
  %i.bw = zext i1 %not..not75 to i64
  %.168 = add i64 %.067137, %i.bw                 ; 3 uses
  %.063 = select i1 %.not75, i64 %.170136, i64 %.067137 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.271
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.168
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !15
  %.not76 = icmp ule i32 %i.by, %i.ca             ; 3 uses
  %i.cb = zext i1 %.not76 to i64
  %.3 = add i64 %.271, %i.cb
  %not..not76 = xor i1 %.not76, true
  %i.cc = zext i1 %not..not76 to i64
  %.2 = add i64 %.168, %i.cc
  %.062 = select i1 %.not76, i64 %.271, i64 %.168 ; 2 uses
  %i.cd = sub i64 %i.bq, %.066138
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.063
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.062
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15
  %i.ci = add i32 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cd ; 4 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !15
  %i.ck = trunc i64 %.063 to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i16 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = trunc i64 %.062 to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !10
  %i.co = getelementptr i8, ptr %i.cj, i64 8
  store i64 -1, ptr %i.co, align 4
  %.066 = add i64 %.066138, -1                    ; 2 uses
  %.not73 = icmp eq i64 %.066, 0
  br i1 %.not73, label %._crit_edge140, label %bb.o, !llvm.loop !24

._crit_edge140:                                   ; preds = %bb.o
  %.065.tr = trunc i64 %.065.lcssa166168 to i32
  %i.cp = shl i32 %.065.tr, 1
  %i.cq = add i32 %i.cp, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 -1, ptr %i.a, align 16, !tbaa !3
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %._crit_edge140
  %.021.i = phi i32 [ 0, %._crit_edge140 ], [ %.021.i.be, %.backedge.i.backedge ] ; 5 uses
  %.0.i84 = phi i32 [ %i.cq, %._crit_edge140 ], [ %.0.i84.be, %.backedge.i.backedge ]
  %i.cr = sext i32 %.0.i84 to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !7  ; 2 uses
  %i.cv = icmp sgt i16 %i.cu, -1
  br i1 %i.cv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.backedge.i
  %.not.i86 = icmp slt i32 %.021.i, %2
  br i1 %.not.i86, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cw = add nsw i32 %.021.i, 1                  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = sext i16 %i.cy to i32
  %i.da = sext i32 %i.cw to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !3
  %i.dc = zext nneg i16 %i.cu to i32
  br label %.backedge.i.backedge

bb.r:                                             ; preds = %.backedge.i
  %i.dd = trunc i32 %.021.i to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !10
  %i.dg = sext i16 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %4, i64 %i.dg
  store i8 %i.dd, ptr %i.dh, align 1, !tbaa !13
  %i.di = icmp sgt i32 %.021.i, -1
  br i1 %i.di, label %.lr.ph.preheader.i, label %_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.r
  %5 = zext nneg i32 %.021.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %5, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3  ; 2 uses
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %bb.s, label %.critedge.i85

bb.s:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.dm = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.dm, label %.lr.ph.i, label %_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi.exit.thread, !llvm.loop !14

.critedge.i85:                                    ; preds = %.lr.ph.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %6 = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 -1, ptr %i.dn, align 4, !tbaa !3
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.critedge.i85, %bb.q
  %.021.i.be = phi i32 [ %i.cw, %bb.q ], [ %6, %.critedge.i85 ]
  %.0.i84.be = phi i32 [ %i.dc, %bb.q ], [ %i.dk, %.critedge.i85 ]
  br label %.backedge.i, !llvm.loop !11

_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi.exit.thread: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.do = shl i32 %.0, 1
  br label %bb.b, !llvm.loop !25

bb.u:                                             ; preds = %bb.g, %_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN13duckdb_brotli33BrotliOptimizeHuffmanCountsForRleEmPjPh(i64 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.critedge167, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader255, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %0, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi240 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <2 x i32>, ptr %i.a, align 4, !tbaa !3
  %wide.load241 = load <2 x i32>, ptr %i.b, align 4, !tbaa !3
  %i.c = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.d = icmp ne <2 x i32> %wide.load241, zeroinitializer
  %i.e = zext <2 x i1> %i.c to <2 x i64>
  %i.f = zext <2 x i1> %i.d to <2 x i64>
  %i.g = add <2 x i64> %vec.phi, %i.e             ; 2 uses
  %i.h = add <2 x i64> %vec.phi240, %i.f          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader255

.lr.ph.preheader255:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0136185.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0147184.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader255, %.lr.ph
  %.0136185 = phi i64 [ %i.n, %.lr.ph ], [ %.0136185.ph, %.lr.ph.preheader255 ] ; 2 uses
  %.0147184 = phi i64 [ %spec.select, %.lr.ph ], [ %.0147184.ph, %.lr.ph.preheader255 ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0136185
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %.not164 = icmp ne i32 %i.l, 0
  %i.m = zext i1 %.not164 to i64
  %spec.select = add i64 %.0147184, %i.m          ; 2 uses
  %i.n = add nuw i64 %.0136185, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %i.j, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.o = icmp ult i64 %spec.select.lcssa, 16
  br i1 %i.o, label %.critedge167, label %.lr.ph188

.lr.ph188:                                        ; preds = %._crit_edge, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %._crit_edge ] ; 4 uses
  %.0149187 = phi i64 [ %i.u, %bb.b ], [ %0, %._crit_edge ] ; 14 uses
  %i.p = getelementptr [4 x i8], ptr %1, i64 %.0149187
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph188
  %.neg = add i64 %indvar, 1
  %xtraiter = and i64 %.0149187, 1
  %i.t = icmp eq i64 %0, %.neg
  br i1 %i.t, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %.0149187, -2
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph188
  %i.u = add i64 %.0149187, -1                    ; 2 uses
  %cond = icmp eq i64 %i.u, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond, label %.critedge167, label %.lr.ph188, !llvm.loop !30

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %.0131191 = phi i32 [ 1073741824, %.critedge.preheader.new ], [ %.1132.1, %.critedge ] ; 2 uses
  %.0133190 = phi i64 [ 0, %.critedge.preheader.new ], [ %.1134.1, %.critedge ]
  %.1137189 = phi i64 [ 0, %.critedge.preheader.new ], [ %i.ac, %.critedge ] ; 3 uses
  %niter = phi i64 [ 0, %.critedge.preheader.new ], [ %niter.next.1, %.critedge ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1137189
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %.not163 = icmp ne i32 %i.w, 0                  ; 2 uses
  %spec.select165 = tail call i32 @llvm.umin.i32(i32 %.0131191, i32 %i.w)
  %i.x = zext i1 %.not163 to i64
  %.1134 = add i64 %.0133190, %i.x
  %.1132 = select i1 %.not163, i32 %spec.select165, i32 %.0131191 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1137189
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %.not163.1 = icmp ne i32 %i.aa, 0               ; 2 uses
  %spec.select165.1 = tail call i32 @llvm.umin.i32(i32 %.1132, i32 %i.aa)
  %i.ab = zext i1 %.not163.1 to i64
  %.1134.1 = add i64 %.1134, %i.ab                ; 3 uses
  %.1132.1 = select i1 %.not163.1, i32 %spec.select165.1, i32 %.1132 ; 3 uses
  %i.ac = add nuw i64 %.1137189, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.critedge, !llvm.loop !31

.unr-lcssa:                                       ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.unr-lcssa, %.critedge.preheader
  %.0131191.epil.init = phi i32 [ 1073741824, %.critedge.preheader ], [ %.1132.1, %.unr-lcssa ] ; 2 uses
  %.0133190.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %.1134.1, %.unr-lcssa ]
  %.1137189.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %i.ac, %.unr-lcssa ]
  %lcmp.mod261 = trunc i64 %.0149187 to i1
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1137189.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %.not163.epil = icmp ne i32 %i.ae, 0            ; 2 uses
  %spec.select165.epil = tail call i32 @llvm.umin.i32(i32 %.0131191.epil.init, i32 %i.ae)
  %i.af = zext i1 %.not163.epil to i64
  %.1134.epil = add i64 %.0133190.epil.init, %i.af
  %.1132.epil = select i1 %.not163.epil, i32 %spec.select165.epil, i32 %.0131191.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.critedge.epil.preheader
  %.1134.lcssa = phi i64 [ %.1134.1, %.unr-lcssa ], [ %.1134.epil, %.critedge.epil.preheader ] ; 3 uses
  %.1132.lcssa = phi i32 [ %.1132.1, %.unr-lcssa ], [ %.1132.epil, %.critedge.epil.preheader ]
  %i.ag = icmp ult i64 %.1134.lcssa, 5
  br i1 %i.ag, label %.critedge167, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ult i32 %.1132.lcssa, 4
  %i.ai = sub i64 %.0149187, %.1134.lcssa
  %i.aj = icmp ult i64 %i.ai, 6
  %or.cond170 = and i1 %i.ah, %i.aj
  %i.ak = icmp ugt i64 %.0149187, 2
  %or.cond235 = and i1 %or.cond170, %i.ak
  br i1 %or.cond235, label %.lr.ph193.preheader, label %.loopexit180

.lr.ph193.preheader:                              ; preds = %bb.d
  %i.al = add i64 %0, -2
  %i.am = sub i64 %i.al, %indvar                  ; 3 uses
  %i.an = add i64 %0, -3
  %xtraiter262 = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, %indvar
  br i1 %i.ao, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter265 = and i64 %i.am, -2
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.k, %.lr.ph193.preheader.new
  %.2192 = phi i64 [ 1, %.lr.ph193.preheader.new ], [ %i.bd, %bb.k ] ; 3 uses
  %niter266 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter266.next.1, %bb.k ]
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %.2192 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %.not153 = icmp eq i32 %i.ar, 0
  br i1 %.not153, label %.lr.ph193.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph193
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %.lr.ph193.1

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %.not154 = icmp eq i32 %i.av, 0
  br i1 %.not154, label %.lr.ph193.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.ap, align 4, !tbaa !3
  br label %.lr.ph193.1

.lr.ph193.1:                                      ; preds = %.lr.ph193, %bb.e, %bb.f, %bb.g
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %.2192 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
end_hunk_0
