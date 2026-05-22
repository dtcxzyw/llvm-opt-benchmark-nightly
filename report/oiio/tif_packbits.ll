begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PackBitsDecode.module = internal constant [15 x i8] c"PackBitsDecode\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"Discarding %ld bytes to avoid buffer overrun\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Terminating PackBitsDecode due to lack of data.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Not enough data for scanline %u\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i32 @TIFFInitPackBits(ptr noundef writeonly captures(none) initializes((968, 1032)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr @PackBitsDecode, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr @PackBitsDecode, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr @PackBitsDecode, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr @PackBitsPreEncode, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr @PackBitsPostEncode, ptr %i.e, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr @PackBitsEncode, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @PackBitsEncodeChunk, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @PackBitsEncodeChunk, ptr %i.h, align 8, !tbaa !33
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsDecode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = icmp sgt i64 %2, 0
  br i1 %i.e, label %.outer.split, label %.split.us.thread

.outer.split:                                     ; preds = %bb.a, %.outer
  %.054.ph121 = phi i64 [ %.155, %.outer ], [ %i.d, %bb.a ] ; 3 uses
  %.057.ph120 = phi ptr [ %.158, %.outer ], [ %i.b, %bb.a ] ; 2 uses
  %.060.ph119 = phi ptr [ %.262, %.outer ], [ %1, %bb.a ] ; 4 uses
  %.063.ph118 = phi i64 [ %.164, %.outer ], [ %2, %bb.a ] ; 8 uses
  %i.f = icmp sgt i64 %.054.ph121, 0
  br i1 %i.f, label %.lr.ph, label %.split.us

bb.b:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %.054197, 1
  br i1 %i.g, label %.lr.ph, label %.split.us

.lr.ph:                                           ; preds = %.outer.split, %bb.b
  %.054197 = phi i64 [ %i.j, %bb.b ], [ %.054.ph121, %.outer.split ] ; 4 uses
  %.057196 = phi ptr [ %i.h, %bb.b ], [ %.057.ph120, %.outer.split ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.057196, i64 1 ; 6 uses
  %i.i = load i8, ptr %.057196, align 1, !tbaa !36 ; 4 uses
  %i.j = add nsw i64 %.054197, -1                 ; 4 uses
  %i.k = icmp slt i8 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i8 %i.i, -128
  br i1 %i.l, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i8 %i.i to i64
  %i.n = sub nsw i64 1, %i.m                      ; 3 uses
  %i.o = icmp samesign ult i64 %.063.ph118, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw nsw i64 %i.n, %.063.ph118
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str, i64 noundef %i.p) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.053 = phi i64 [ %.063.ph118, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %.thread.a, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.r = add nsw i64 %.054197, -2
  %i.s = load i8, ptr %i.h, align 1, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.057196, i64 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %.060.ph119, i8 %i.s, i64 %.053, i1 false), !tbaa !36
  br label %.outer

bb.g:                                             ; preds = %.lr.ph
  %i.u = zext nneg i8 %i.i to i64                 ; 3 uses
  %.not = icmp samesign ugt i64 %.063.ph118, %i.u
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %reass.sub = sub nuw nsw i64 %i.u, %.063.ph118
  %i.v = add nuw nsw i64 %reass.sub, 1
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str, i64 noundef %i.v) #5
  %i.w = add nsw i64 %.063.ph118, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i64 [ %i.w, %bb.h ], [ %i.u, %bb.g ]
  %i.x = add nuw nsw i64 %.2, 1                   ; 5 uses
  %.not73 = icmp samesign ugt i64 %.054197, %i.x
  br i1 %.not73, label %bb.j, label %.thread.a

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFmemcpy(ptr noundef %.060.ph119, ptr noundef nonnull %i.h, i64 noundef %i.x) #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = sub nsw i64 %i.j, %i.x
  br label %.outer

.outer:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.053.pn = phi i64 [ %i.x, %bb.j ], [ %.053, %.lr.ph.preheader ]
  %.158 = phi ptr [ %i.y, %bb.j ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.155 = phi i64 [ %i.z, %bb.j ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.053.pn.fr = freeze i64 %.053.pn               ; 2 uses
  %.262 = getelementptr i8, ptr %.060.ph119, i64 %.053.pn.fr
  %.164 = sub i64 %.063.ph118, %.053.pn.fr        ; 2 uses
  %i.aa = icmp sgt i64 %.164, 0
  br i1 %i.aa, label %.outer.split, label %.split.us.thread

.thread.a:                                        ; preds = %bb.i, %bb.f
  %.256.ph = phi i64 [ 0, %bb.f ], [ %i.j, %bb.i ]
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.1) #5
  br label %bb.k

.split.us.thread:                                 ; preds = %.outer, %bb.a
  %.us-phi99.ph = phi ptr [ %i.b, %bb.a ], [ %.158, %.outer ]
  %.us-phi100.ph = phi i64 [ %i.d, %bb.a ], [ %.155, %.outer ]
  store ptr %.us-phi99.ph, ptr %i.a, align 8, !tbaa !34
  store i64 %.us-phi100.ph, ptr %i.c, align 8, !tbaa !35
  br label %bb.l

.split.us:                                        ; preds = %.outer.split, %bb.b
  %.057.lcssa = phi ptr [ %i.h, %bb.b ], [ %.057.ph120, %.outer.split ]
  %smin.le = tail call i64 @llvm.smin.i64(i64 %.054.ph121, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %.split.us, %.thread.a
  %.057.lcssa.sink = phi ptr [ %.057.lcssa, %.split.us ], [ %i.h, %.thread.a ]
  %smin.le.sink = phi i64 [ %smin.le, %.split.us ], [ %.256.ph, %.thread.a ]
  store ptr %.057.lcssa.sink, ptr %i.a, align 8, !tbaa !34
  store i64 %smin.le.sink, ptr %i.c, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.060.ph119, i8 0, i64 %.063.ph118, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 844
  %5 = load i32, ptr %4, align 4, !tbaa !37
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.2, i32 noundef %5) #5
  br label %bb.l

bb.l:                                             ; preds = %.split.us.thread, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ 1, %.split.us.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsPreEncode(ptr noundef %0, i16 zeroext %1) #1 {
bb.a:
  %i.a = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 8) #5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !38
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = and i32 %i.e, 1024
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @TIFFTileRowSize(ptr noundef nonnull %0) #5
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #5
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !38
  store i64 %.sink, ptr %i.i, align 8, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsPostEncode(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsEncode(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 2 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %bb.z
  %.0161 = phi i32 [ 0, %.lr.ph163 ], [ %.4, %bb.z ]
  %.091160 = phi ptr [ null, %.lr.ph163 ], [ %.495, %bb.z ]
  %.096159 = phi i64 [ %2, %.lr.ph163 ], [ %.197.lcssa, %bb.z ] ; 5 uses
  %.098158 = phi ptr [ %i.b, %.lr.ph163 ], [ %.4102, %bb.z ]
  %.0103157 = phi ptr [ %1, %.lr.ph163 ], [ %.1104.lcssa, %bb.z ] ; 3 uses
  %i.j = load i8, ptr %.0103157, align 1, !tbaa !36 ; 8 uses
  %.1104132 = getelementptr inbounds nuw i8, ptr %.0103157, i64 1 ; 2 uses
  %i.k = icmp samesign ugt i64 %.096159, 1
  br i1 %i.k, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.0103157, i64 %.096159
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.197136.in = phi i64 [ %.197136, %bb.c ], [ %.096159, %.lr.ph.preheader ]
  %.1104135 = phi ptr [ %.1104, %bb.c ], [ %.1104132, %.lr.ph.preheader ] ; 3 uses
  %.089134 = phi i64 [ %i.n, %bb.c ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.197136 = add nsw i64 %.197136.in, -1          ; 2 uses
  %i.l = load i8, ptr %.1104135, align 1, !tbaa !36
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.089134, 1                  ; 2 uses
  %.1104 = getelementptr inbounds nuw i8, ptr %.1104135, i64 1
  %exitcond.not = icmp eq i64 %i.n, %.096159
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.089.lcssa.ph = phi i64 [ %.089134, %.lr.ph ], [ %.096159, %bb.c ]
  %.1104.lcssa.ph = phi ptr [ %.1104135, %.lr.ph ], [ %scevgep, %bb.c ]
  %.197.lcssa.ph = phi i64 [ %.197136, %.lr.ph ], [ 0, %bb.c ]
  %i.o = freeze i64 %.089.lcssa.ph
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.089.lcssa = phi i64 [ 1, %bb.b ], [ %i.o, %.critedge.loopexit ]
  %.1104.lcssa = phi ptr [ %.1104132, %bb.b ], [ %.1104.lcssa.ph, %.critedge.loopexit ]
  %.197.lcssa = phi i64 [ 0, %bb.b ], [ %.197.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.critedge
  %.199.ph = phi ptr [ %.098158, %.critedge ], [ %i.cy, %.outer.backedge ] ; 2 uses
  %.192.ph = phi ptr [ %.091160, %.critedge ], [ %.394113, %.outer.backedge ] ; 2 uses
  %.190.ph = phi i64 [ %.089.lcssa, %.critedge ], [ %.190.ph.be, %.outer.backedge ] ; 11 uses
  %.1.ph = phi i32 [ %.0161, %.critedge ], [ %.1.ph.be, %.outer.backedge ] ; 2 uses
  %i.p = icmp eq i64 %.190.ph, 1
  br i1 %i.p, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %.outer.split.us.backedge
  %.199.us = phi ptr [ %.3101.us, %.outer.split.us.backedge ], [ %.199.ph, %.outer ] ; 4 uses
  %.192.us = phi ptr [ %.394.us, %.outer.split.us.backedge ], [ %.192.ph, %.outer ] ; 8 uses
  %.1.us = phi i32 [ %.1.us.be, %.outer.split.us.backedge ], [ %.1.ph, %.outer ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.199.us, i64 2
  %.not.us = icmp ult ptr %i.q, %i.g
  br i1 %.not.us, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %.outer.split.us
  %i.r = and i32 %.1.us, -3
  %or.cond.us = icmp eq i32 %i.r, 1
  %i.s = load i64, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  br i1 %or.cond.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.u = ptrtoint ptr %.199.us to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = add nsw i64 %i.w, %i.s
  store i64 %i.x, ptr %i.i, align 8, !tbaa !35
  %i.y = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not106.us = icmp eq i32 %i.y, 0
  br i1 %.not106.us, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge.us

bb.g:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %.192.us to i64            ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = add nsw i64 %i.ad, %i.s
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !35
  %i.af = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not107.us = icmp eq i32 %i.af, 0
  br i1 %.not107.us, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = ptrtoint ptr %.199.us to i64
  %i.ah = sub i64 %i.ag, %i.aa                    ; 11 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !34  ; 8 uses
  %i.aj = icmp sgt i64 %i.ah, 0
  br i1 %i.aj, label %iter.check, label %._crit_edge.us

iter.check:                                       ; preds = %bb.h
  %i.ak = ptrtoaddr ptr %i.ai to i64
  %min.iters.check = icmp ult i64 %i.ah, 4
  %i.al = sub i64 %i.ak, %i.aa
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond327 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond327, label %.lr.ph146.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, 9223372036854775776     ; 5 uses
  %i.am = and i64 %i.ah, 31
  %i.an = getelementptr i8, ptr %.192.us, i64 %n.vec
  %i.ao = getelementptr i8, ptr %i.ai, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.192.us, i64 %index ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load275 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !36
  %i.aq = getelementptr i8, ptr %next.gep274, i64 16
  store <16 x i8> %wide.load, ptr %next.gep274, align 1, !tbaa !36
  store <16 x i8> %wide.load275, ptr %i.aq, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
end_hunk_0
