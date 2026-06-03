inline.NumInlined: 15
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c" \0Aend\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"begin 640 \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"uuencode.c\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Usage: uuencode [infile]\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 32, 96) i32 @encode_char(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, 63
  %narrow = add nuw nsw i8 %i.a, 32
  %i.b = zext nneg i8 %narrow to i32
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @encode_line(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %2 to i8
  %i.b = and i8 %i.a, 63
  %narrow.i = add nuw nsw i8 %i.b, 32
  store i8 %narrow.i, ptr %3, align 1, !tbaa !8
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv84 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next85, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.07181 = phi i32 [ %2, %.lr.ph.preheader ], [ %i.aw, %bb.e ] ; 4 uses
  %i.e = icmp samesign ugt i32 %.07181, 2
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i32 %.07181, 1
  %i.g = getelementptr inbounds i8, ptr %0, i64 %indvars.iv84 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = lshr i8 %i.h, 2
  %narrow.i76 = add nuw nsw i8 %i.i, 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 5 uses
  store i8 %narrow.i76, ptr %i.j, align 1, !tbaa !8
  %i.k = load i8, ptr %i.g, align 1, !tbaa !8
  %i.l = shl i8 %i.k, 4                           ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i8 %i.l, 48
  %narrow.i77 = add nuw nsw i8 %i.m, 32
  %i.n = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i77, ptr %i.n, align 1, !tbaa !8
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = ashr i8 %i.p, 4
  %i.r = or i8 %i.q, %i.l
  %i.s = and i8 %i.r, 63
  %narrow.i79 = add nuw nsw i8 %i.s, 32
  %i.t = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i79, ptr %i.t, align 1, !tbaa !8
  %i.u = load i8, ptr %i.o, align 1, !tbaa !8
  %i.v = shl i8 %i.u, 2
  %i.w = and i8 %i.v, 60
  %narrow.i80 = add nuw nsw i8 %i.w, 32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 61, %bb.c ], [ %narrow.i80, %bb.d ]
  %i.x = getelementptr i8, ptr %i.j, i64 2
  store i8 %.sink, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr i8, ptr %i.j, i64 3
  store i8 61, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv, 4
  br label %._crit_edge.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds i8, ptr %0, i64 %indvars.iv84 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = lshr i8 %i.aa, 2
  %narrow.i72 = add nuw nsw i8 %i.ab, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 4 uses
  store i8 %narrow.i72, ptr %i.ac, align 1, !tbaa !8
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ae = shl i8 %i.ad, 4
  %i.af = getelementptr i8, ptr %i.z, i64 1       ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = ashr i8 %i.ag, 4
  %i.ai = or i8 %i.ah, %i.ae
  %i.aj = and i8 %i.ai, 63
  %narrow.i73 = add nuw nsw i8 %i.aj, 32
  %i.ak = getelementptr i8, ptr %i.ac, i64 1
  store i8 %narrow.i73, ptr %i.ak, align 1, !tbaa !8
  %i.al = load i8, ptr %i.af, align 1, !tbaa !8
  %i.am = shl i8 %i.al, 2
  %i.an = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = ashr i8 %i.ao, 6
  %i.aq = or i8 %i.ap, %i.am
  %i.ar = and i8 %i.aq, 63
  %narrow.i74 = add nuw nsw i8 %i.ar, 32
  %i.as = getelementptr i8, ptr %i.ac, i64 2
  store i8 %narrow.i74, ptr %i.as, align 1, !tbaa !8
  %i.at = load i8, ptr %i.an, align 1, !tbaa !8
  %i.au = and i8 %i.at, 63
  %narrow.i75 = add nuw nsw i8 %i.au, 32
  %i.av = getelementptr i8, ptr %i.ac, i64 3
  store i8 %narrow.i75, ptr %i.av, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 3
  %i.aw = add nsw i32 %.07181, -3
  %.not = icmp eq i32 %.07181, 3
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %bb.e, %.thread
  %indvars.iv.next91 = phi i64 [ %indvars.iv.next89, %.thread ], [ %indvars.iv.next, %bb.e ]
  %i.ax = and i64 %indvars.iv.next91, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.ax, %._crit_edge.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa ; 2 uses
  store i8 10, ptr %i.ay, align 1, !tbaa !8
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 0, ptr %i.az, align 1, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @encode(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.019 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]    ; 4 uses
  %.01518 = phi ptr [ %i.h, %bb.d ], [ %2, %bb.a ] ; 3 uses
  %i.c = sub nsw i32 %1, %.019                    ; 2 uses
  %i.d = icmp sgt i32 %i.c, 44
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @encode_line(ptr noundef %0, i32 noundef %.019, i32 noundef 45, ptr noundef nonnull %i.a)
  %i.e = add nuw nsw i32 %.019, 45
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @encode_line(ptr noundef %0, i32 noundef %.019, i32 noundef %i.c, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.c ]    ; 2 uses
  %i.f = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518, ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 0 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518) #13
  %i.h = getelementptr inbounds nuw i8, ptr %.01518, i64 %i.g ; 2 uses
  %i.i = icmp slt i32 %.1, %1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %bb.d ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.015.lcssa)
  %endptr = getelementptr inbounds i8, ptr %.015.lcssa, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @do_encode(ptr noundef readonly captures(none) %0, ptr noundef initializes((0, 11)) %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %i.b = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3) #12 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr = getelementptr inbounds i8, ptr %1, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.i, label %encode.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.019.i = phi i32 [ %.1.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %.01518.i = phi ptr [ %i.k, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = sub nsw i32 %2, %.019.i                  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 44
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @encode_line(ptr noundef readonly %0, i32 noundef %.019.i, i32 noundef 45, ptr noundef nonnull %i.a)
  %i.h = add nuw nsw i32 %.019.i, 45
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  call void @encode_line(ptr noundef readonly %0, i32 noundef %.019.i, i32 noundef %i.f, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i32 [ %i.h, %bb.b ], [ %2, %bb.c ]  ; 2 uses
  %i.i = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518.i, ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 0 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518.i) #13
  %i.k = getelementptr inbounds nuw i8, ptr %.01518.i, i64 %i.j ; 2 uses
  %i.l = icmp slt i32 %.1.i, %2
  br i1 %i.l, label %.lr.ph.i, label %encode.exit, !llvm.loop !11

encode.exit:                                      ; preds = %bb.d, %bb.a
  %.015.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.015.lcssa.i)
  %endptr.i = getelementptr inbounds i8, ptr %.015.lcssa.i, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.n = trunc i64 %i.m to i32
  ret i32 %i.n
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 14 uses
  %2 = alloca %struct.timeval, align 8            ; 2 uses
  %3 = alloca %struct.timeval, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #14 ; 20 uses
  %i.c = tail call noalias dereferenceable_or_null(2000000) ptr @malloc(i64 noundef 2000000) #14 ; 15 uses
  %i.d = icmp sgt i32 %0, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call noalias ptr @fopen(ptr noundef %i.f, ptr noundef nonnull @.str.3) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !12
  tail call void @perror(ptr noundef %i.i) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stdin, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013 = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %.0 = phi i32 [ %i.j, %bb.d ], [ %0, %bb.e ]
  %.not = icmp eq i32 %.0, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 2) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = tail call noundef i64 @fread(ptr noundef %i.b, i64 noundef 1, i64 noundef 1000000, ptr noundef %.013)
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #12 ; 0 uses
  %i.n = trunc i64 %i.l to i32                    ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader.us.preheader, label %do_encode.exit

.lr.ph.i.i.preheader.us.preheader:                ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br label %.lr.ph.i.i.preheader.us

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.i.i.preheader.us.preheader, %do_encode.exit.loopexit.us
  %.01447.us = phi i32 [ %i.cq, %do_encode.exit.loopexit.us ], [ 0, %.lr.ph.i.i.preheader.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %strlen.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr.us, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i.us, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %bb.p
  %.019.i.i.us = phi i32 [ %.1.i.i.us, %bb.p ], [ 0, %.lr.ph.i.i.preheader.us ] ; 5 uses
  %.01518.i.i.us = phi ptr [ %i.co, %bb.p ], [ %i.s, %.lr.ph.i.i.preheader.us ] ; 3 uses
  %i.t = sub nsw i32 %i.n, %.019.i.i.us           ; 6 uses
  %i.u = icmp sgt i32 %i.t, 44
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.us
  %i.v = trunc i32 %i.t to i8
  %i.w = and i8 %i.v, 63
  %narrow.i.i.us = add nuw nsw i8 %i.w, 32
  store i8 %narrow.i.i.us, ptr %i.a, align 16, !tbaa !8
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %.lr.ph.preheader.i.us, label %encode_line.exit.us

.lr.ph.preheader.i.us:                            ; preds = %bb.i
  %4 = zext nneg i32 %.019.i.i.us to i64          ; 3 uses
  %5 = udiv i32 %i.t, 3
  %reass.sub = sub i32 %.019.i.i.us, %i.n
  %6 = mul i32 %reass.sub, 1431655765
  %7 = add i32 %6, -1
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) ; 2 uses
  %min.iters.check = icmp samesign ult i32 %8, 16
  br i1 %min.iters.check, label %.lr.ph.i.us.preheader, label %.lr.ph.preheader.i.us.a

.lr.ph.preheader.i.us.a:                          ; preds = %.lr.ph.preheader.i.us
  %narrow = add nuw nsw i32 %8, 1
  %i.y = zext nneg i32 %narrow to i64             ; 2 uses
  %n.mod.vf = and i64 %i.y, 15                    ; 2 uses
  %9 = icmp eq i64 %n.mod.vf, 0
  %10 = select i1 %9, i64 16, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.y, %10                  ; 4 uses
  %11 = mul nsw i64 %n.vec, 3
  %12 = add nsw i64 %11, %4
  %13 = shl nsw i64 %n.vec, 2
  %14 = or disjoint i64 %13, 1
  %15 = trunc i64 %n.vec to i32
  %16 = mul i32 %15, -3
  %17 = add i32 %i.t, %16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.us.a
  %index = phi i64 [ 0, %.lr.ph.preheader.i.us.a ], [ %index.next, %vector.body ] ; 3 uses
  %18 = mul i64 %index, 3
  %19 = add i64 %18, %4                           ; 16 uses
  %20 = shl i64 %index, 2
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 %19 ; 3 uses
  %22 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %23 = getelementptr i8, ptr %22, i64 3
  %24 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %25 = getelementptr i8, ptr %24, i64 6
  %26 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %27 = getelementptr i8, ptr %26, i64 9
  %28 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %29 = getelementptr i8, ptr %28, i64 12
  %30 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %31 = getelementptr i8, ptr %30, i64 15
  %32 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %33 = getelementptr i8, ptr %32, i64 18
  %34 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %35 = getelementptr i8, ptr %34, i64 21
  %36 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %37 = getelementptr i8, ptr %36, i64 24
  %38 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %39 = getelementptr i8, ptr %38, i64 27
  %40 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %41 = getelementptr i8, ptr %40, i64 30
  %42 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %43 = getelementptr i8, ptr %42, i64 33
  %44 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %45 = getelementptr i8, ptr %44, i64 36
  %46 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %47 = getelementptr i8, ptr %46, i64 39
  %48 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %49 = getelementptr i8, ptr %48, i64 42
  %50 = getelementptr i8, ptr %i.b, i64 %19       ; 3 uses
  %51 = getelementptr i8, ptr %50, i64 45
  %52 = load i8, ptr %21, align 1, !tbaa !8
  %53 = load i8, ptr %23, align 1, !tbaa !8
  %54 = load i8, ptr %25, align 1, !tbaa !8
  %55 = load i8, ptr %27, align 1, !tbaa !8
  %56 = load i8, ptr %29, align 1, !tbaa !8
  %57 = load i8, ptr %31, align 1, !tbaa !8
  %58 = load i8, ptr %33, align 1, !tbaa !8
  %59 = load i8, ptr %35, align 1, !tbaa !8
  %60 = load i8, ptr %37, align 1, !tbaa !8
  %61 = load i8, ptr %39, align 1, !tbaa !8
  %62 = load i8, ptr %41, align 1, !tbaa !8
  %63 = load i8, ptr %43, align 1, !tbaa !8
  %64 = load i8, ptr %45, align 1, !tbaa !8
  %65 = load i8, ptr %47, align 1, !tbaa !8
  %66 = load i8, ptr %49, align 1, !tbaa !8
  %67 = load i8, ptr %51, align 1, !tbaa !8
  %68 = insertelement <16 x i8> poison, i8 %52, i64 0
  %69 = insertelement <16 x i8> %68, i8 %53, i64 1
  %70 = insertelement <16 x i8> %69, i8 %54, i64 2
  %71 = insertelement <16 x i8> %70, i8 %55, i64 3
  %72 = insertelement <16 x i8> %71, i8 %56, i64 4
  %73 = insertelement <16 x i8> %72, i8 %57, i64 5
  %74 = insertelement <16 x i8> %73, i8 %58, i64 6
  %75 = insertelement <16 x i8> %74, i8 %59, i64 7
  %76 = insertelement <16 x i8> %75, i8 %60, i64 8
  %77 = insertelement <16 x i8> %76, i8 %61, i64 9
  %78 = insertelement <16 x i8> %77, i8 %62, i64 10
  %79 = insertelement <16 x i8> %78, i8 %63, i64 11
  %80 = insertelement <16 x i8> %79, i8 %64, i64 12
  %81 = insertelement <16 x i8> %80, i8 %65, i64 13
  %82 = insertelement <16 x i8> %81, i8 %66, i64 14
  %83 = insertelement <16 x i8> %82, i8 %67, i64 15 ; 2 uses
  %84 = lshr <16 x i8> %83, splat (i8 2)
  %85 = getelementptr inbounds nuw i8, ptr %i.a, i64 %20
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 1
  %87 = shl <16 x i8> %83, splat (i8 4)
  %88 = getelementptr i8, ptr %21, i64 1
  %89 = getelementptr i8, ptr %22, i64 4
  %90 = getelementptr i8, ptr %24, i64 7
  %91 = getelementptr i8, ptr %26, i64 10
  %92 = getelementptr i8, ptr %28, i64 13
  %93 = getelementptr i8, ptr %30, i64 16
  %94 = getelementptr i8, ptr %32, i64 19
  %95 = getelementptr i8, ptr %34, i64 22
  %96 = getelementptr i8, ptr %36, i64 25
  %97 = getelementptr i8, ptr %38, i64 28
  %98 = getelementptr i8, ptr %40, i64 31
  %99 = getelementptr i8, ptr %42, i64 34
  %100 = getelementptr i8, ptr %44, i64 37
  %101 = getelementptr i8, ptr %46, i64 40
  %102 = getelementptr i8, ptr %48, i64 43
  %103 = getelementptr i8, ptr %50, i64 46
  %104 = load i8, ptr %88, align 1, !tbaa !8
  %105 = load i8, ptr %89, align 1, !tbaa !8
  %106 = load i8, ptr %90, align 1, !tbaa !8
  %107 = load i8, ptr %91, align 1, !tbaa !8
  %108 = load i8, ptr %92, align 1, !tbaa !8
  %109 = load i8, ptr %93, align 1, !tbaa !8
  %110 = load i8, ptr %94, align 1, !tbaa !8
  %111 = load i8, ptr %95, align 1, !tbaa !8
  %112 = load i8, ptr %96, align 1, !tbaa !8
  %113 = load i8, ptr %97, align 1, !tbaa !8
  %114 = load i8, ptr %98, align 1, !tbaa !8
  %115 = load i8, ptr %99, align 1, !tbaa !8
  %116 = load i8, ptr %100, align 1, !tbaa !8
  %117 = load i8, ptr %101, align 1, !tbaa !8
  %118 = load i8, ptr %102, align 1, !tbaa !8
  %119 = load i8, ptr %103, align 1, !tbaa !8
  %120 = insertelement <16 x i8> poison, i8 %104, i64 0
  %121 = insertelement <16 x i8> %120, i8 %105, i64 1
  %122 = insertelement <16 x i8> %121, i8 %106, i64 2
  %123 = insertelement <16 x i8> %122, i8 %107, i64 3
  %124 = insertelement <16 x i8> %123, i8 %108, i64 4
  %125 = insertelement <16 x i8> %124, i8 %109, i64 5
  %126 = insertelement <16 x i8> %125, i8 %110, i64 6
  %127 = insertelement <16 x i8> %126, i8 %111, i64 7
  %128 = insertelement <16 x i8> %127, i8 %112, i64 8
  %129 = insertelement <16 x i8> %128, i8 %113, i64 9
  %130 = insertelement <16 x i8> %129, i8 %114, i64 10
  %131 = insertelement <16 x i8> %130, i8 %115, i64 11
  %132 = insertelement <16 x i8> %131, i8 %116, i64 12
  %133 = insertelement <16 x i8> %132, i8 %117, i64 13
  %134 = insertelement <16 x i8> %133, i8 %118, i64 14
  %135 = insertelement <16 x i8> %134, i8 %119, i64 15 ; 2 uses
  %136 = ashr <16 x i8> %135, splat (i8 4)
  %137 = or <16 x i8> %136, %87
  %138 = and <16 x i8> %137, splat (i8 63)
  %139 = shl <16 x i8> %135, splat (i8 2)
  %140 = getelementptr i8, ptr %21, i64 2
  %141 = getelementptr i8, ptr %22, i64 5
  %142 = getelementptr i8, ptr %24, i64 8
  %143 = getelementptr i8, ptr %26, i64 11
  %144 = getelementptr i8, ptr %28, i64 14
  %145 = getelementptr i8, ptr %30, i64 17
  %146 = getelementptr i8, ptr %32, i64 20
  %147 = getelementptr i8, ptr %34, i64 23
  %148 = getelementptr i8, ptr %36, i64 26
  %149 = getelementptr i8, ptr %38, i64 29
  %150 = getelementptr i8, ptr %40, i64 32
  %151 = getelementptr i8, ptr %42, i64 35
  %152 = getelementptr i8, ptr %44, i64 38
  %153 = getelementptr i8, ptr %46, i64 41
  %154 = getelementptr i8, ptr %48, i64 44
  %155 = getelementptr i8, ptr %50, i64 47
  %156 = load i8, ptr %140, align 1, !tbaa !8
  %157 = load i8, ptr %141, align 1, !tbaa !8
  %158 = load i8, ptr %142, align 1, !tbaa !8
  %159 = load i8, ptr %143, align 1, !tbaa !8
  %160 = load i8, ptr %144, align 1, !tbaa !8
  %161 = load i8, ptr %145, align 1, !tbaa !8
  %162 = load i8, ptr %146, align 1, !tbaa !8
  %163 = load i8, ptr %147, align 1, !tbaa !8
  %164 = load i8, ptr %148, align 1, !tbaa !8
  %165 = load i8, ptr %149, align 1, !tbaa !8
  %166 = load i8, ptr %150, align 1, !tbaa !8
  %167 = load i8, ptr %151, align 1, !tbaa !8
  %168 = load i8, ptr %152, align 1, !tbaa !8
  %169 = load i8, ptr %153, align 1, !tbaa !8
  %170 = load i8, ptr %154, align 1, !tbaa !8
  %171 = load i8, ptr %155, align 1, !tbaa !8
  %172 = insertelement <16 x i8> poison, i8 %156, i64 0
  %173 = insertelement <16 x i8> %172, i8 %157, i64 1
  %174 = insertelement <16 x i8> %173, i8 %158, i64 2
  %175 = insertelement <16 x i8> %174, i8 %159, i64 3
  %176 = insertelement <16 x i8> %175, i8 %160, i64 4
  %177 = insertelement <16 x i8> %176, i8 %161, i64 5
  %178 = insertelement <16 x i8> %177, i8 %162, i64 6
  %179 = insertelement <16 x i8> %178, i8 %163, i64 7
  %180 = insertelement <16 x i8> %179, i8 %164, i64 8
  %181 = insertelement <16 x i8> %180, i8 %165, i64 9
  %182 = insertelement <16 x i8> %181, i8 %166, i64 10
  %183 = insertelement <16 x i8> %182, i8 %167, i64 11
  %184 = insertelement <16 x i8> %183, i8 %168, i64 12
  %185 = insertelement <16 x i8> %184, i8 %169, i64 13
  %186 = insertelement <16 x i8> %185, i8 %170, i64 14
  %187 = insertelement <16 x i8> %186, i8 %171, i64 15 ; 2 uses
  %188 = ashr <16 x i8> %187, splat (i8 6)
  %189 = or <16 x i8> %188, %139
  %190 = shufflevector <16 x i8> %84, <16 x i8> %138, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %191 = shufflevector <16 x i8> %189, <16 x i8> %187, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %192 = and <32 x i8> %191, splat (i8 63)
  %193 = shufflevector <32 x i8> %190, <32 x i8> %192, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  %interleaved.vec = add nuw nsw <64 x i8> %193, splat (i8 32)
  store <64 x i8> %interleaved.vec, ptr %86, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %194 = icmp eq i64 %index.next, %n.vec
  br i1 %194, label %.lr.ph.i.us.preheader, label %vector.body, !llvm.loop !17

.lr.ph.i.us.preheader:                            ; preds = %vector.body, %.lr.ph.preheader.i.us
  %indvars.iv84.i.us.ph = phi i64 [ %4, %.lr.ph.preheader.i.us ], [ %12, %vector.body ]
  %indvars.iv.i.us.ph = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %14, %vector.body ]
  %.07181.i.us.ph = phi i32 [ %i.t, %.lr.ph.preheader.i.us ], [ %17, %vector.body ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %bb.m
  %indvars.iv84.i.us = phi i64 [ %indvars.iv.next85.i.us, %bb.m ], [ %indvars.iv84.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.m ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 4 uses
  %.07181.i.us = phi i32 [ %i.bl, %bb.m ], [ %.07181.i.us.ph, %.lr.ph.i.us.preheader ] ; 4 uses
  %i.z = icmp samesign ugt i32 %.07181.i.us, 2
  br i1 %i.z, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.us
  %i.aa = icmp eq i32 %.07181.i.us, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8   ; 2 uses
  %i.ad = lshr i8 %i.ac, 2
  %narrow.i76.i.us = add nuw nsw i8 %i.ad, 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us ; 4 uses
  store i8 %narrow.i76.i.us, ptr %i.ae, align 1, !tbaa !8
  %i.af = shl i8 %i.ac, 4                         ; 2 uses
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.ab, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8   ; 2 uses
  %i.ai = ashr i8 %i.ah, 4
  %i.aj = or i8 %i.ai, %i.af
  %i.ak = and i8 %i.aj, 63
  %i.al = shl i8 %i.ah, 2
  %i.am = and i8 %i.al, 60
  %narrow.i80.i.us = add nuw nsw i8 %i.am, 32
  br label %.thread.i.us

bb.l:                                             ; preds = %bb.j
  %i.an = and i8 %i.af, 48
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.l, %bb.k
  %narrow.i79.i.us.sink.in = phi i8 [ %i.an, %bb.l ], [ %i.ak, %bb.k ]
  %.sink.i.us = phi i8 [ 61, %bb.l ], [ %narrow.i80.i.us, %bb.k ]
  %narrow.i79.i.us.sink = add nuw nsw i8 %narrow.i79.i.us.sink.in, 32
  %i.ao = getelementptr i8, ptr %i.ae, i64 1
  store i8 %narrow.i79.i.us.sink, ptr %i.ao, align 1, !tbaa !8
  %i.ap = getelementptr i8, ptr %i.ae, i64 2
  store i8 %.sink.i.us, ptr %i.ap, align 1, !tbaa !8
  %i.aq = getelementptr i8, ptr %i.ae, i64 3
  store i8 61, ptr %i.aq, align 1, !tbaa !8
  %indvars.iv.next89.i.us = add nuw nsw i64 %indvars.iv.i.us, 4
  br label %._crit_edge.loopexit.i.us

bb.m:                                             ; preds = %.lr.ph.i.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us
  %i.au = shl i8 %i.as, 4
  %i.av = getelementptr i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8   ; 2 uses
  %i.ax = ashr i8 %i.aw, 4
  %i.ay = or i8 %i.ax, %i.au
  %i.az = shl i8 %i.aw, 2
  %i.ba = getelementptr i8, ptr %i.ar, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8   ; 2 uses
  %i.bc = ashr i8 %i.bb, 6
  %i.bd = or i8 %i.bc, %i.az
  %i.be = lshr i8 %i.as, 2
  %i.bf = insertelement <4 x i8> poison, i8 %i.be, i64 0
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.ay, i64 1
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 2
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.bb, i64 3
  %i.bj = and <4 x i8> %i.bi, <i8 -1, i8 63, i8 63, i8 63>
  %i.bk = add nuw nsw <4 x i8> %i.bj, splat (i8 32)
  store <4 x i8> %i.bk, ptr %i.at, align 1, !tbaa !8
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %indvars.iv.next85.i.us = add nuw nsw i64 %indvars.iv84.i.us, 3
  %i.bl = add nsw i32 %.07181.i.us, -3
  %.not.i.us = icmp eq i32 %.07181.i.us, 3
  br i1 %.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !20

._crit_edge.loopexit.i.us:                        ; preds = %bb.m, %.thread.i.us
  %indvars.iv.next91.i.us = phi i64 [ %indvars.iv.next89.i.us, %.thread.i.us ], [ %indvars.iv.next.i.us, %bb.m ]
  %i.bm = and i64 %indvars.iv.next91.i.us, 4294967295
  br label %encode_line.exit.us

encode_line.exit.us:                              ; preds = %._crit_edge.loopexit.i.us, %bb.i
  %.0.lcssa.i.us = phi i64 [ 1, %bb.i ], [ %i.bm, %._crit_edge.loopexit.i.us ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.us ; 2 uses
  store i8 10, ptr %i.bn, align 1, !tbaa !8
  %i.bo = getelementptr i8, ptr %i.bn, i64 1
  store i8 0, ptr %i.bo, align 1, !tbaa !8
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i.us
  store i8 77, ptr %i.a, align 16, !tbaa !8
  %i.bp = zext nneg i32 %.019.i.i.us to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.o
  %indvars.iv84.i20.us = phi i64 [ %i.bp, %bb.n ], [ %indvars.iv.next85.i38.us, %bb.o ] ; 2 uses
  %indvars.iv.i21.us = phi i64 [ 1, %bb.n ], [ %indvars.iv.next.i37.us, %bb.o ] ; 2 uses
  %.07181.i22.us = phi i32 [ 45, %bb.n ], [ %i.ck, %bb.o ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i20.us ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i21.us
  %i.bt = shl i8 %i.br, 4
  %i.bu = getelementptr i8, ptr %i.bq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8   ; 2 uses
  %i.bw = ashr i8 %i.bv, 4
  %i.bx = or i8 %i.bw, %i.bt
  %i.by = shl i8 %i.bv, 2
  %i.bz = getelementptr i8, ptr %i.bq, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8   ; 2 uses
  %i.cb = ashr i8 %i.ca, 6
  %i.cc = or i8 %i.cb, %i.by
  %i.cd = lshr i8 %i.br, 2
  %i.ce = insertelement <4 x i8> poison, i8 %i.cd, i64 0
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.bx, i64 1
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 2
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.ca, i64 3
  %i.ci = and <4 x i8> %i.ch, <i8 -1, i8 63, i8 63, i8 63>
  %i.cj = add nuw nsw <4 x i8> %i.ci, splat (i8 32)
  store <4 x i8> %i.cj, ptr %i.bs, align 1, !tbaa !8
  %indvars.iv.next.i37.us = add nuw nsw i64 %indvars.iv.i21.us, 4
  %indvars.iv.next85.i38.us = add nuw nsw i64 %indvars.iv84.i20.us, 3
  %i.ck = add nsw i32 %.07181.i22.us, -3
  %.not.i39.us = icmp eq i32 %.07181.i22.us, 3
  br i1 %.not.i39.us, label %encode_line.exit40.us, label %bb.o, !llvm.loop !9

encode_line.exit40.us:                            ; preds = %bb.o
  store i8 10, ptr %i.p, align 1, !tbaa !8
  store i8 0, ptr %i.q, align 2, !tbaa !8
  %i.cl = add nuw nsw i32 %.019.i.i.us, 45
  br label %bb.p

bb.p:                                             ; preds = %encode_line.exit40.us, %encode_line.exit.us
  %.1.i.i.us = phi i32 [ %i.cl, %encode_line.exit40.us ], [ %i.n, %encode_line.exit.us ] ; 2 uses
  %i.cm = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518.i.i.us, ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 0 uses
  %i.cn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518.i.i.us) #13
  %i.co = getelementptr inbounds nuw i8, ptr %.01518.i.i.us, i64 %i.cn ; 3 uses
  %i.cp = icmp slt i32 %.1.i.i.us, %i.n
  br i1 %i.cp, label %.lr.ph.i.i.us, label %do_encode.exit.loopexit.us, !llvm.loop !11

do_encode.exit.loopexit.us:                       ; preds = %bb.p
  %strlen.i.i.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.co)
  %endptr.i.i.us = getelementptr inbounds i8, ptr %i.co, i64 %strlen.i.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i.i.us, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.cq = add nuw nsw i32 %.01447.us, 1           ; 2 uses
  %exitcond58.not = icmp eq i32 %i.cq, 1000
  br i1 %exitcond58.not, label %.split50.us, label %.lr.ph.i.i.preheader.us, !llvm.loop !21

do_encode.exit:                                   ; preds = %bb.h, %do_encode.exit
  %.01447 = phi i32 [ %i.ct, %do_encode.exit ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #12
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cs)
  %endptr.i.i = getelementptr inbounds i8, ptr %i.cs, i64 %strlen.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ct = add nuw nsw i32 %.01447, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, 1000
  br i1 %exitcond.not, label %.split50.us, label %do_encode.exit, !llvm.loop !21

.split50.us:                                      ; preds = %do_encode.exit, %do_encode.exit.loopexit.us
  %i.cu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #12 ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cv) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noreturn nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!17 = distinct !{!17, !10, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !19, !18}
!21 = distinct !{!21, !10}
end_hunk_0
