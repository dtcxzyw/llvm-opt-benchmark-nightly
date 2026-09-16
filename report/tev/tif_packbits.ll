Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_packbits?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PackBitsDecode.module = internal constant [15 x i8] c"PackBitsDecode\00", align 1
@.str = private unnamed_addr constant [45 x i8] c"Discarding %ld bytes to avoid buffer overrun\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Terminating PackBitsDecode due to lack of data.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Not enough data for scanline %u\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @TIFFInitPackBits(ptr nofree noundef writeonly captures(none) initializes((968, 1032)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr @PackBitsDecode, ptr %i.a, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr @PackBitsDecode, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr @PackBitsDecode, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr @PackBitsPreEncode, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr @PackBitsPostEncode, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr @PackBitsEncode, ptr %i.f, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @PackBitsEncodeChunk, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @PackBitsEncodeChunk, ptr %i.h, align 8, !tbaa !40
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsDecode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp sgt i64 %2, 0
  br i1 %i.e, label %.outer.split.a, label %.split.thread

.outer.split.a:                                   ; preds = %bb.a, %.outer
  %.053.ph121 = phi i64 [ %.161, %.outer ], [ %2, %bb.a ] ; 8 uses
  %.053.ph207 = phi i64 [ %.154, %.outer ], [ %i.d, %bb.a ] ; 3 uses
  %.056.ph206 = phi ptr [ %.157, %.outer ], [ %i.b, %bb.a ] ; 2 uses
  %.062.ph118 = phi ptr [ %.264, %.outer ], [ %1, %bb.a ] ; 4 uses
  %i.f = icmp sgt i64 %.053.ph207, 0
  br i1 %i.f, label %.lr.ph, label %.thread.loopexit

.split.thread:                                    ; preds = %.outer, %bb.a
  %.056.ph.lcssa = phi ptr [ %i.b, %bb.a ], [ %.157, %.outer ]
  %.053.ph.lcssa = phi i64 [ %i.d, %bb.a ], [ %.154, %.outer ]
  store ptr %.056.ph.lcssa, ptr %i.a, align 8, !tbaa !28
  store i64 %.053.ph.lcssa, ptr %i.c, align 8, !tbaa !29
  br label %bb.k

bb.b:                                             ; preds = %bb.c
  %i.g = icmp sgt i64 %.053196, 1
  br i1 %i.g, label %.lr.ph, label %.thread.loopexit

.lr.ph:                                           ; preds = %.outer.split.a, %bb.b
  %.053196 = phi i64 [ %i.j, %bb.b ], [ %.053.ph207, %.outer.split.a ] ; 4 uses
  %.056195 = phi ptr [ %i.h, %bb.b ], [ %.056.ph206, %.outer.split.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.056195, i64 1 ; 6 uses
  %i.i = load i8, ptr %.056195, align 1, !tbaa !30 ; 4 uses
  %i.j = add nsw i64 %.053196, -1                 ; 4 uses
  %i.k = icmp slt i8 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i8 %i.i, -128
  br i1 %i.l, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i8 %i.i to i64
  %i.n = sub nsw i64 1, %i.m                      ; 3 uses
  %i.o = icmp samesign ult i64 %.053.ph121, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = sub nuw nsw i64 %i.n, %.053.ph121
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str, i64 noundef %i.p) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %.053.ph121, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.r = add nsw i64 %.053196, -2
  %i.s = load i8, ptr %i.h, align 1, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %.056195, i64 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %.062.ph118, i8 %i.s, i64 %.0, i1 false), !tbaa !30
  br label %.outer

bb.g:                                             ; preds = %.lr.ph
  %i.u = zext nneg i8 %i.i to i64                 ; 3 uses
  %.not = icmp samesign ugt i64 %.053.ph121, %i.u
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %reass.sub = sub nuw nsw i64 %i.u, %.053.ph121
  %i.v = add nuw nsw i64 %reass.sub, 1
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str, i64 noundef %i.v) #5
  %i.w = add nsw i64 %.053.ph121, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i64 [ %i.w, %bb.h ], [ %i.u, %bb.g ]
  %i.x = add nuw nsw i64 %.2, 1                   ; 5 uses
  %.not73 = icmp samesign ugt i64 %.053196, %i.x
  br i1 %.not73, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFmemcpy(ptr noundef %.062.ph118, ptr noundef nonnull %i.h, i64 noundef %i.x) #5
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = sub nuw nsw i64 %i.j, %i.x
  br label %.outer

.outer:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.0.pn = phi i64 [ %i.x, %bb.j ], [ %.0, %.lr.ph.preheader ]
  %.157 = phi ptr [ %i.y, %bb.j ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.154 = phi i64 [ %i.z, %bb.j ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.0.pn.fr = freeze i64 %.0.pn                   ; 2 uses
  %.264 = getelementptr i8, ptr %.062.ph118, i64 %.0.pn.fr
  %.161 = sub i64 %.053.ph121, %.0.pn.fr          ; 2 uses
  %i.aa = icmp sgt i64 %.161, 0
  br i1 %i.aa, label %.outer.split.a, label %.split.thread

.thread:                                          ; preds = %bb.i, %bb.f
  %.255.ph = phi i64 [ 0, %bb.f ], [ %i.j, %bb.i ]
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.1) #5
  br label %.thread.a

.thread.loopexit:                                 ; preds = %.outer.split.a, %bb.b
  %.056.lcssa = phi ptr [ %i.h, %bb.b ], [ %.056.ph206, %.outer.split.a ]
  %smin.le = tail call i64 @llvm.smin.i64(i64 %.053.ph207, i64 0)
  br label %.thread.a

.thread.a:                                        ; preds = %.thread.loopexit, %.thread
  %storemerge211 = phi ptr [ %i.h, %.thread ], [ %.056.lcssa, %.thread.loopexit ]
  %storemerge = phi i64 [ %.255.ph, %.thread ], [ %smin.le, %.thread.loopexit ]
  store ptr %storemerge211, ptr %i.a, align 8, !tbaa !28
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.062.ph118, i8 0, i64 %.053.ph121, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PackBitsDecode.module, ptr noundef nonnull @.str.2, i32 noundef %i.ac) #5
  br label %bb.k

bb.k:                                             ; preds = %.split.thread, %.thread.a
  %.059 = phi i32 [ 0, %.thread.a ], [ 1, %.split.thread ]
  ret i32 %.059
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsPreEncode(ptr noundef %0, i16 zeroext %1) #1 {
bb.a:
  %i.a = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 8) #5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !31
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
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
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !31
  store i64 %.sink, ptr %i.i, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PackBitsPostEncode(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PackBitsEncode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f ; 4 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %bb.aa
  %.0161 = phi i32 [ 0, %.lr.ph163 ], [ %spec.select, %bb.aa ] ; 2 uses
  %.090160 = phi ptr [ null, %.lr.ph163 ], [ %.us-phi152, %bb.aa ] ; 2 uses
  %.095159 = phi ptr [ %i.b, %.lr.ph163 ], [ %i.ex, %bb.aa ] ; 2 uses
  %.0100158 = phi ptr [ %1, %.lr.ph163 ], [ %.1101.lcssa234, %bb.aa ] ; 3 uses
  %.0103157 = phi i64 [ %2, %.lr.ph163 ], [ %.1104.lcssa249, %bb.aa ] ; 2 uses
  %i.j = load i8, ptr %.0100158, align 1, !tbaa !30 ; 2 uses
  %.1101132 = getelementptr inbounds nuw i8, ptr %.0100158, i64 1 ; 2 uses
  %i.k = icmp samesign ugt i64 %.0103157, 1
  br i1 %i.k, label %.lr.ph.preheader, label %.outer

bb.c:                                             ; preds = %bb.ab
  %i.l = load i8, ptr %.1101.lcssa234, align 1, !tbaa !30 ; 2 uses
  %.1101132.jt3 = getelementptr inbounds nuw i8, ptr %.1101.lcssa234, i64 1 ; 2 uses
  %.not291 = icmp eq i64 %.1104.lcssa249, 1
  br i1 %.not291, label %.outer.jt3, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.ac
  %i.m = load i8, ptr %.1101.lcssa237, align 1, !tbaa !30 ; 2 uses
  %.1101132.jt2 = getelementptr inbounds nuw i8, ptr %.1101.lcssa237, i64 1 ; 2 uses
  %.not293 = icmp eq i64 %.1104.lcssa252, 1
  br i1 %.not293, label %.outer.jt2, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.ad
  %i.n = load i8, ptr %.1101.lcssa236, align 1, !tbaa !30 ; 2 uses
  %.1101132.jt1 = getelementptr inbounds nuw i8, ptr %.1101.lcssa236, i64 1 ; 2 uses
  %.not292 = icmp eq i64 %.1104.lcssa251, 1
  br i1 %.not292, label %.outer.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.1101132222 = phi ptr [ %.1101132.jt3, %bb.c ], [ %.1101132.jt2, %bb.d ], [ %.1101132.jt1, %bb.e ], [ %.1101132, %bb.b ]
  %i.o = phi i8 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %.0103157221 = phi i64 [ %.1104.lcssa249, %bb.c ], [ %.1104.lcssa252, %bb.d ], [ %.1104.lcssa251, %bb.e ], [ %.0103157, %bb.b ] ; 4 uses
  %.0100158220 = phi ptr [ %.1101.lcssa234, %bb.c ], [ %.1101.lcssa237, %bb.d ], [ %.1101.lcssa236, %bb.e ], [ %.0100158, %bb.b ]
  %.095159218 = phi ptr [ %i.fc, %bb.c ], [ %i.fh, %bb.d ], [ %i.fk, %bb.e ], [ %.095159, %bb.b ]
  %.090160216 = phi ptr [ %.us-phi152, %bb.c ], [ %.494.jt2, %bb.d ], [ %.us-phi.sink290, %bb.e ], [ %.090160, %bb.b ]
  %.0161214 = phi i32 [ 3, %bb.c ], [ 2, %bb.d ], [ 1, %bb.e ], [ %.0161, %bb.b ]
  %scevgep = getelementptr i8, ptr %.0100158220, i64 %.0103157221
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.1104136.in = phi i64 [ %.1104136, %bb.f ], [ %.0103157221, %.lr.ph.preheader ]
  %.1101135 = phi ptr [ %.1101, %bb.f ], [ %.1101132222, %.lr.ph.preheader ] ; 3 uses
  %.088134 = phi i64 [ %i.r, %bb.f ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.1104136 = add nsw i64 %.1104136.in, -1        ; 2 uses
  %i.p = load i8, ptr %.1101135, align 1, !tbaa !30
  %i.q = icmp eq i8 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.088134, 1                  ; 2 uses
  %.1101 = getelementptr inbounds nuw i8, ptr %.1101135, i64 1
  %exitcond.not = icmp eq i64 %i.r, %.0103157221
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph
  %.088.lcssa.ph = phi i64 [ %.088134, %.lr.ph ], [ %.0103157221, %bb.f ]
  %.1101.lcssa.ph = phi ptr [ %.1101135, %.lr.ph ], [ %scevgep, %bb.f ]
  %.1104.lcssa.ph = phi i64 [ %.1104136, %.lr.ph ], [ 0, %bb.f ]
  %i.s = freeze i64 %.088.lcssa.ph
  br label %.outer

.outer:                                           ; preds = %bb.b, %.critedge.loopexit
  %i.t = phi i8 [ %i.o, %.critedge.loopexit ], [ %i.j, %bb.b ] ; 5 uses
  %.095159219 = phi ptr [ %.095159218, %.critedge.loopexit ], [ %.095159, %bb.b ] ; 5 uses
  %.090160217 = phi ptr [ %.090160216, %.critedge.loopexit ], [ %.090160, %bb.b ] ; 5 uses
  %.0161215 = phi i32 [ %.0161214, %.critedge.loopexit ], [ %.0161, %bb.b ] ; 6 uses
  %.088.lcssa = phi i64 [ %i.s, %.critedge.loopexit ], [ 1, %bb.b ] ; 5 uses
  %.1101.lcssa = phi ptr [ %.1101.lcssa.ph, %.critedge.loopexit ], [ %.1101132, %bb.b ] ; 5 uses
  %.1104.lcssa = phi i64 [ %.1104.lcssa.ph, %.critedge.loopexit ], [ 0, %bb.b ] ; 5 uses
  %i.u = icmp eq i64 %.088.lcssa, 1
  br i1 %i.u, label %.outer.split.us.preheader, label %.outer.split

.outer.jt3:                                       ; preds = %bb.c, %.outer.backedge.jt3
  %.1104.lcssa239 = phi i64 [ %.1104.lcssa249, %.outer.backedge.jt3 ], [ 0, %bb.c ] ; 4 uses
  %.1101.lcssa224 = phi ptr [ %.1101.lcssa234, %.outer.backedge.jt3 ], [ %.1101132.jt3, %bb.c ] ; 4 uses
  %i.v = phi i8 [ %i.eo, %.outer.backedge.jt3 ], [ %i.l, %bb.c ] ; 4 uses
  %.196.ph.jt3 = phi ptr [ %i.el, %.outer.backedge.jt3 ], [ %i.fc, %bb.c ] ; 3 uses
  %.189.ph.jt3 = phi i64 [ %.189.ph.be.jt3, %.outer.backedge.jt3 ], [ 1, %bb.c ] ; 4 uses
  %i.w = icmp eq i64 %.189.ph.jt3, 1
  br i1 %i.w, label %.outer.split.us.preheader, label %.outer.split.jt3

.outer.jt2:                                       ; preds = %bb.d, %.outer.backedge.jt2
  %.1104.lcssa244 = phi i64 [ %.1104.lcssa253, %.outer.backedge.jt2 ], [ 0, %bb.d ] ; 2 uses
  %.1101.lcssa229 = phi ptr [ %.1101.lcssa238, %.outer.backedge.jt2 ], [ %.1101132.jt2, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.sink, %.outer.backedge.jt2 ], [ %i.m, %bb.d ] ; 2 uses
  %.196.ph.jt2 = phi ptr [ %i.en, %.outer.backedge.jt2 ], [ %i.fh, %bb.d ] ; 2 uses
  %.191.ph.jt2 = phi ptr [ %.393113.jt2, %.outer.backedge.jt2 ], [ %.494.jt2, %bb.d ] ; 2 uses
  %.189.ph.jt2 = phi i64 [ %.189.ph.be.jt2, %.outer.backedge.jt2 ], [ 1, %bb.d ] ; 2 uses
  %i.y = icmp eq i64 %.189.ph.jt2, 1
  br i1 %i.y, label %.outer.split.us.preheader, label %.outer.split.jt2

.outer.split.us.preheader:                        ; preds = %bb.e, %.outer.jt3, %.outer.jt2, %.outer
  %.1.ph267 = phi i32 [ 3, %.outer.jt3 ], [ 2, %.outer.jt2 ], [ %.0161215, %.outer ], [ 1, %bb.e ]
  %.191.ph255 = phi ptr [ %.us-phi152, %.outer.jt3 ], [ %.191.ph.jt2, %.outer.jt2 ], [ %.090160217, %.outer ], [ %.us-phi.sink290, %bb.e ]
  %.196.ph254 = phi ptr [ %.196.ph.jt3, %.outer.jt3 ], [ %.196.ph.jt2, %.outer.jt2 ], [ %.095159219, %.outer ], [ %i.fk, %bb.e ]
  %.1104.lcssa240 = phi i64 [ %.1104.lcssa239, %.outer.jt3 ], [ %.1104.lcssa244, %.outer.jt2 ], [ %.1104.lcssa, %.outer ], [ 0, %bb.e ] ; 3 uses
  %.1101.lcssa225 = phi ptr [ %.1101.lcssa224, %.outer.jt3 ], [ %.1101.lcssa229, %.outer.jt2 ], [ %.1101.lcssa, %.outer ], [ %.1101132.jt1, %bb.e ] ; 3 uses
  %i.z = phi i8 [ %i.v, %.outer.jt3 ], [ %i.x, %.outer.jt2 ], [ %i.t, %.outer ], [ %i.n, %bb.e ] ; 3 uses
  br label %.outer.split.us

.outer.split.us:                                  ; preds = %.outer.split.us.backedge, %.outer.split.us.preheader
  %.196.us = phi ptr [ %.196.ph254, %.outer.split.us.preheader ], [ %.398.us, %.outer.split.us.backedge ] ; 4 uses
  %.191.us = phi ptr [ %.191.ph255, %.outer.split.us.preheader ], [ %.393.us, %.outer.split.us.backedge ] ; 8 uses
  %.1.us = phi i32 [ %.1.ph267, %.outer.split.us.preheader ], [ %.1.us.be, %.outer.split.us.backedge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.196.us, i64 2
  %.not.us = icmp ult ptr %i.aa, %i.g
  br i1 %.not.us, label %._crit_edge.us, label %bb.g

bb.g:                                             ; preds = %.outer.split.us
  %i.ab = and i32 %.1.us, -3
  %or.cond.us = icmp eq i32 %i.ab, 1
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  br i1 %or.cond.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.ae = ptrtoint ptr %.196.us to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !29
  %i.ai = tail call i32 @TIFFFlushData1(ptr noundef %0) #5
  %.not106.us = icmp eq i32 %i.ai, 0
  br i1 %.not106.us, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.us
end_hunk_0
