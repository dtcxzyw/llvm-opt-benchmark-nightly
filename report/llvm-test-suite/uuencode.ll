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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
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
  %i.f = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518, ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 0 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518) #12
  %i.h = getelementptr inbounds nuw i8, ptr %.01518, i64 %i.g ; 2 uses
  %i.i = icmp slt i32 %.1, %1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.h, %bb.d ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.015.lcssa)
  %endptr = getelementptr inbounds i8, ptr %.015.lcssa, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #11
  %i.b = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3) #11 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr = getelementptr inbounds i8, ptr %1, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
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
  %i.i = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518.i, ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 0 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518.i) #12
  %i.k = getelementptr inbounds nuw i8, ptr %.01518.i, i64 %i.j ; 2 uses
  %i.l = icmp slt i32 %.1.i, %2
  br i1 %i.l, label %.lr.ph.i, label %encode.exit, !llvm.loop !11

encode.exit:                                      ; preds = %bb.d, %bb.a
  %.015.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.015.lcssa.i)
  %endptr.i = getelementptr inbounds i8, ptr %.015.lcssa.i, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.n = trunc i64 %i.m to i32
  ret i32 %i.n
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 13 uses
  %2 = alloca %struct.timeval, align 8            ; 2 uses
  %3 = alloca %struct.timeval, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #13 ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(2000000) ptr @malloc(i64 noundef 2000000) #13 ; 15 uses
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
  tail call void @perror(ptr noundef %i.i) #14
  tail call void @exit(i32 noundef 1) #15
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
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = tail call noundef i64 @fread(ptr noundef %i.b, i64 noundef 1, i64 noundef 1000000, ptr noundef %.013)
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #11 ; 0 uses
  %i.n = trunc i64 %i.l to i32                    ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.preheader.us.preheader, label %do_encode.exit

.lr.ph.i.i.preheader.us.preheader:                ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br label %.lr.ph.i.i.preheader.us

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.i.i.preheader.us.preheader, %do_encode.exit.loopexit.us
  %.01447.us = phi i32 [ %i.cq, %do_encode.exit.loopexit.us ], [ 0, %.lr.ph.i.i.preheader.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #11
  %strlen.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr.us, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i.us = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i.us, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %bb.p
  %.019.i.i.us = phi i32 [ %.1.i.i.us, %bb.p ], [ 0, %.lr.ph.i.i.preheader.us ] ; 4 uses
  %.01518.i.i.us = phi ptr [ %i.co, %bb.p ], [ %i.s, %.lr.ph.i.i.preheader.us ] ; 3 uses
  %i.t = sub nsw i32 %i.n, %.019.i.i.us           ; 4 uses
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
  %i.y = zext nneg i32 %.019.i.i.us to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.m, %.lr.ph.preheader.i.us
  %indvars.iv84.i.us = phi i64 [ %i.y, %.lr.ph.preheader.i.us ], [ %indvars.iv.next85.i.us, %bb.m ] ; 3 uses
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.m ] ; 4 uses
  %.07181.i.us = phi i32 [ %i.t, %.lr.ph.preheader.i.us ], [ %i.bl, %bb.m ] ; 4 uses
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
  br i1 %.not.i.us, label %._crit_edge.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !9

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
  %i.cm = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01518.i.i.us, ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 0 uses
  %i.cn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01518.i.i.us) #12
  %i.co = getelementptr inbounds nuw i8, ptr %.01518.i.i.us, i64 %i.cn ; 3 uses
  %i.cp = icmp slt i32 %.1.i.i.us, %i.n
  br i1 %i.cp, label %.lr.ph.i.i.us, label %do_encode.exit.loopexit.us, !llvm.loop !11

do_encode.exit.loopexit.us:                       ; preds = %bb.p
  %strlen.i.i.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.co)
  %endptr.i.i.us = getelementptr inbounds i8, ptr %i.co, i64 %strlen.i.i.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i.i.us, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cq = add nuw nsw i32 %.01447.us, 1           ; 2 uses
  %exitcond58.not = icmp eq i32 %i.cq, 1000
  br i1 %exitcond58.not, label %.split50.us, label %.lr.ph.i.i.preheader.us, !llvm.loop !17

do_encode.exit:                                   ; preds = %bb.h, %do_encode.exit
  %.01447 = phi i32 [ %i.ct, %do_encode.exit ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #11
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cs)
  %endptr.i.i = getelementptr inbounds i8, ptr %i.cs, i64 %strlen.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i.i, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ct = add nuw nsw i32 %.01447, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, 1000
  br i1 %exitcond.not, label %.split50.us, label %do_encode.exit, !llvm.loop !17

.split50.us:                                      ; preds = %do_encode.exit, %do_encode.exit.loopexit.us
  %i.cu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #11 ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cv) ; 0 uses
  tail call void @exit(i32 noundef 0) #16
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
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noreturn nounwind }

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
!17 = distinct !{!17, !10}
end_hunk_0
