Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRMeta?download=true
inline.NumInlined: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@getbfdw:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -103, 1) i64 @getbfwbig(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 2
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i16
  %i.g = load i8, ptr %i.c, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i16
  %i.i = shl nuw i16 %i.h, 8
  %i.j = or disjoint i16 %i.i, %i.f
  store i16 %i.j, ptr %3, align 2, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -103, 1) i64 @getbfdwbig(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %2
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  store i32 %i.e, ptr %3, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -103, 1) i64 @getbfwe(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %4, 73
  %i.b = add i64 %2, 2
  %i.c = icmp ugt i64 %i.b, %1                    ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %getbfw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = load i16, ptr %i.d, align 1
  br label %getbfw.exit.sink.split

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %getbfw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11
  %i.i = zext i8 %i.h to i16
  %i.j = load i8, ptr %i.f, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i16
  %i.l = shl nuw i16 %i.k, 8
  %i.m = or disjoint i16 %i.l, %i.i
  br label %getbfw.exit.sink.split

getbfw.exit.sink.split:                           ; preds = %bb.c, %bb.e
  %.sink = phi i16 [ %i.m, %bb.e ], [ %i.e, %bb.c ]
  store i16 %.sink, ptr %3, align 2, !tbaa !9
  br label %getbfw.exit

getbfw.exit:                                      ; preds = %getbfw.exit.sink.split, %bb.d, %bb.b
  %.0 = phi i64 [ -103, %bb.b ], [ -103, %bb.d ], [ 0, %getbfw.exit.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -103, 1) i64 @getbfdwe(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %4, 73
  %i.b = add i64 %2, 4
  %i.c = icmp ugt i64 %i.b, %1                    ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %getbfdw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = load i32, ptr %i.d, align 1
  br label %getbfdw.exit.sink.split

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %getbfdw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 %2
  %i.g = load i32, ptr %i.f, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  br label %getbfdw.exit.sink.split

getbfdw.exit.sink.split:                          ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  store i32 %.sink, ptr %3, align 4, !tbaa !10
  br label %getbfdw.exit

getbfdw.exit:                                     ; preds = %getbfdw.exit.sink.split, %bb.d, %bb.b
  %.0 = phi i64 [ -103, %bb.b ], [ -103, %bb.d ], [ 0, %getbfdw.exit.sink.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 -103, 1) i64 @setbfcpy(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %4, %2
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfw(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 2
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  store i16 %3, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfdw(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  store i32 %3, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfwbig(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 2
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i16 %3 to i8
  %i.d = getelementptr i8, ptr %0, i64 %2         ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 %i.c, ptr %i.e, align 1, !tbaa !11
  %i.f = lshr i16 %3, 8
  %i.g = trunc nuw i16 %i.f to i8
  store i8 %i.g, ptr %i.d, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i64 -103, 1) i64 @setbfdwbig(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = trunc i32 %3 to i8
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 4 uses
  %5 = getelementptr i8, ptr %i.c, i64 3
  store i8 %4, ptr %5, align 1, !tbaa !11
  %6 = lshr i32 %3, 8
  %7 = trunc i32 %6 to i8
  %8 = getelementptr i8, ptr %i.c, i64 2
  store i8 %7, ptr %8, align 1, !tbaa !11
  %9 = lshr i32 %3, 16
  %10 = trunc i32 %9 to i8
  %11 = getelementptr i8, ptr %i.c, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !11
  %12 = lshr i32 %3, 24
  %13 = trunc nuw i32 %12 to i8
  store i8 %13, ptr %i.c, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ 0, %bb.b ], [ -103, %bb.a ]
  ret i64 %i.d
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i64 @BufferCalcIFDSize(ptr noundef %0, i64 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !10
  store i32 0, ptr %4, align 4, !tbaa !10
  %i.d = zext i32 %2 to i64                       ; 3 uses
  %i.e = icmp eq i8 %3, 73
  %i.f = add nuw nsw i64 %i.d, 2
  %i.g = icmp ugt i64 %i.f, %1                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %getbfwe.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %getbfwe.exit.thread, label %getbfwe.exit.thread204

getbfwe.exit:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.i = load i16, ptr %i.h, align 1              ; 3 uses
  %i.j = zext i16 %i.i to i32
  %i.k = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 2 uses
  %i.l = mul i32 %i.k, %i.j
  %i.m = add i32 %i.l, 6                          ; 2 uses
  %.not181 = icmp eq i16 %i.i, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph.split.us.preheader

getbfwe.exit.thread204:                           ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 %i.d       ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i16
  %i.r = load i8, ptr %i.n, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = or disjoint i16 %i.t, %i.q               ; 3 uses
  %i.v = zext i16 %i.u to i32
  %i.w = load i32, ptr @SizeofIFDEntry, align 4, !tbaa !10 ; 2 uses
  %i.x = mul i32 %i.w, %i.v
  %i.y = add i32 %i.x, 6                          ; 2 uses
  %.not181206 = icmp eq i16 %i.u, 0
  br i1 %.not181206, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %getbfwe.exit.thread204
  %i.z = add i32 %2, 2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %getbfwe.exit
  %i.aa = add i32 %2, 2
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.k
  %.065177.us = phi i32 [ %.1.us, %bb.k ], [ %i.m, %.lr.ph.split.us.preheader ] ; 4 uses
  %.066176.us = phi i32 [ %i.bg, %bb.k ], [ %i.aa, %.lr.ph.split.us.preheader ] ; 2 uses
  %.068175.us = phi i16 [ %i.bh, %bb.k ], [ 0, %.lr.ph.split.us.preheader ]
  %i.ab = zext i32 %.066176.us to i64             ; 5 uses
  %i.ac = add nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %1
  br i1 %i.ad, label %getbfwe.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 3 uses
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = add nuw nsw i64 %i.ab, 4
  %i.ah = icmp ugt i64 %i.ag, %1
  br i1 %i.ah, label %getbfwe.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nuw nsw i64 %i.ab, 8
  %i.aj = icmp ugt i64 %i.ai, %1
  %i.ak = add nuw nsw i64 %i.ab, 12
  %i.al = icmp ugt i64 %i.ak, %1
  %or.cond.us = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond.us, label %getbfwe.exit.thread, label %getbfdwe.exit107.us

getbfdwe.exit107.us:                              ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.an = load i16, ptr %i.am, align 1            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ar = load i32, ptr %i.aq, align 1            ; 3 uses
  %i.as = zext nneg i16 %i.an to i64
  %i.at = add i16 %i.an, -13
  %i.au = icmp ult i16 %i.at, -12
  br i1 %i.au, label %getbfwe.exit.thread, label %bb.f

bb.f:                                             ; preds = %getbfdwe.exit107.us
  switch i16 %i.af, label %bb.j [
    i16 -30871, label %bb.i
    i16 -30683, label %bb.h
    i16 -24571, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.c) ; 3 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %getbfwe.exit.thread, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ax = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.b) ; 3 uses
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %getbfwe.exit.thread, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.az = call i64 @BufferCalcIFDSize(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.ar, i8 noundef zeroext 73, ptr noundef nonnull %i.a) ; 3 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %getbfwe.exit.thread, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @IFDEntryTypeSizes, i64 %i.as
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10
  %i.bd = mul i32 %i.bc, %i.ap                    ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 4
  %i.bf = select i1 %i.be, i32 %i.bd, i32 0
  %spec.select.us = add i32 %i.bf, %.065177.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.170.us = phi i64 [ 0, %bb.j ], [ %i.az, %bb.i ], [ %i.ax, %bb.h ], [ %i.av, %bb.g ]
  %.1.us = phi i32 [ %spec.select.us, %bb.j ], [ %.065177.us, %bb.i ], [ %.065177.us, %bb.h ], [ %.065177.us, %bb.g ] ; 2 uses
  %i.bg = add i32 %.066176.us, %i.k
  %i.bh = add nuw i16 %.068175.us, 1              ; 2 uses
  %exitcond185.not = icmp eq i16 %i.bh, %i.i
  br i1 %exitcond185.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.s
  %.065177 = phi i32 [ %.1, %bb.s ], [ %i.y, %.lr.ph.split.preheader ] ; 4 uses
  %.066176 = phi i32 [ %i.ef, %bb.s ], [ %i.z, %.lr.ph.split.preheader ] ; 2 uses
  %.068175 = phi i16 [ %i.eg, %bb.s ], [ 0, %.lr.ph.split.preheader ]
  %i.bi = zext i32 %.066176 to i64                ; 5 uses
  %i.bj = add nuw nsw i64 %i.bi, 2                ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, %1
  br i1 %i.bk, label %getbfwe.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.bl = getelementptr i8, ptr %0, i64 %i.bi     ; 10 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = zext i8 %i.bn to i16
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = or disjoint i16 %i.br, %i.bo
  %i.bt = add nuw nsw i64 %i.bi, 4
  %i.bu = icmp ugt i64 %i.bt, %1
  br i1 %i.bu, label %getbfwe.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add nuw nsw i64 %i.bi, 8
  %i.bw = icmp ugt i64 %i.bv, %1
  %i.bx = add nuw nsw i64 %i.bi, 12
  %i.by = icmp ugt i64 %i.bx, %1
  %or.cond172 = select i1 %i.bw, i1 true, i1 %i.by
  br i1 %or.cond172, label %getbfwe.exit.thread, label %getbfdwe.exit107

getbfdwe.exit107:                                 ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %0, i64 %i.bj     ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i16
  %i.cc = shl nuw i16 %i.cb, 8
  %i.cd = getelementptr i8, ptr %i.bz, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = zext i8 %i.ce to i16
  %i.cg = or disjoint i16 %i.cc, %i.cf            ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bl, i64 6
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = getelementptr i8, ptr %i.bl, i64 7
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.ck, %i.cn
  %i.cp = getelementptr i8, ptr %i.bl, i64 5
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 16
  %i.ct = or disjoint i32 %i.co, %i.cs
  %i.cu = getelementptr i8, ptr %i.bl, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw i32 %i.cw, 24
  %i.cy = or disjoint i32 %i.ct, %i.cx
  %i.cz = getelementptr i8, ptr %i.bl, i64 8
  %i.da = getelementptr i8, ptr %i.bl, i64 11
end_hunk_0
