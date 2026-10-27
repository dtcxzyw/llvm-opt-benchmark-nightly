Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/uuencode?download=true
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
define dso_local void @encode_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %2 to i8
  %i.b = and i8 %i.a, 63
  %narrow.i = add nuw nsw i8 %i.b, 32
  store i8 %narrow.i, ptr %3, align 1, !tbaa !10
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = lshr i8 %i.h, 2
  %narrow.i76 = add nuw nsw i8 %i.i, 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 5 uses
  store i8 %narrow.i76, ptr %i.j, align 1, !tbaa !10
  %i.k = load i8, ptr %i.g, align 1, !tbaa !10
  %i.l = shl i8 %i.k, 4                           ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i8 %i.l, 48
  %narrow.i77 = add nuw nsw i8 %i.m, 32
  %i.n = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i77, ptr %i.n, align 1, !tbaa !10
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = ashr i8 %i.p, 4
  %i.r = or i8 %i.q, %i.l
  %i.s = and i8 %i.r, 63
  %narrow.i79 = add nuw nsw i8 %i.s, 32
  %i.t = getelementptr i8, ptr %i.j, i64 1
  store i8 %narrow.i79, ptr %i.t, align 1, !tbaa !10
  %i.u = load i8, ptr %i.o, align 1, !tbaa !10
  %i.v = shl i8 %i.u, 2
  %i.w = and i8 %i.v, 60
  %narrow.i80 = add nuw nsw i8 %i.w, 32
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 61, %bb.c ], [ %narrow.i80, %bb.d ]
  %i.x = getelementptr i8, ptr %i.j, i64 2
  store i8 %.sink, ptr %i.x, align 1, !tbaa !10
  %i.y = getelementptr i8, ptr %i.j, i64 3
  store i8 61, ptr %i.y, align 1, !tbaa !10
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv, 4
  br label %._crit_edge

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds i8, ptr %0, i64 %indvars.iv84 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = lshr i8 %i.aa, 2
  %narrow.i72 = add nuw nsw i8 %i.ab, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv ; 4 uses
  store i8 %narrow.i72, ptr %i.ac, align 1, !tbaa !10
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ae = shl i8 %i.ad, 4
  %i.af = getelementptr i8, ptr %i.z, i64 1       ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = ashr i8 %i.ag, 4
  %i.ai = or i8 %i.ah, %i.ae
  %i.aj = and i8 %i.ai, 63
  %narrow.i73 = add nuw nsw i8 %i.aj, 32
  %i.ak = getelementptr i8, ptr %i.ac, i64 1
  store i8 %narrow.i73, ptr %i.ak, align 1, !tbaa !10
  %i.al = load i8, ptr %i.af, align 1, !tbaa !10
  %i.am = shl i8 %i.al, 2
  %i.an = getelementptr i8, ptr %i.z, i64 2       ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = ashr i8 %i.ao, 6
  %i.aq = or i8 %i.ap, %i.am
  %i.ar = and i8 %i.aq, 63
  %narrow.i74 = add nuw nsw i8 %i.ar, 32
  %i.as = getelementptr i8, ptr %i.ac, i64 2
  store i8 %narrow.i74, ptr %i.as, align 1, !tbaa !10
  %i.at = load i8, ptr %i.an, align 1, !tbaa !10
  %i.au = and i8 %i.at, 63
  %narrow.i75 = add nuw nsw i8 %i.au, 32
  %i.av = getelementptr i8, ptr %i.ac, i64 3
  store i8 %narrow.i75, ptr %i.av, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 3
  %i.aw = add nsw i32 %.07181, -3
  %.not = icmp eq i32 %.07181, 3
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.e, %.thread, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %indvars.iv.next89, %.thread ], [ %indvars.iv.next, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %.0.lcssa ; 2 uses
  store i8 10, ptr %i.ax, align 1, !tbaa !10
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @encode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [63 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.022 = phi i32 [ %.1, %bb.e ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.01521 = phi ptr [ %i.af, %bb.e ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %i.e = sub nsw i32 %1, %.022                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 44
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  store i8 77, ptr %i.a, align 16, !tbaa !10
  %i.g = zext nneg i32 %.022 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv84.i = phi i64 [ %i.g, %bb.b ], [ %indvars.iv.next85.i, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.07181.i = phi i32 [ 45, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv84.i ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.k = shl i8 %i.i, 4
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10    ; 2 uses
  %i.n = ashr i8 %i.m, 4
  %i.o = or i8 %i.n, %i.k
  %i.p = shl i8 %i.m, 2
  %i.q = getelementptr i8, ptr %i.h, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10    ; 2 uses
  %i.s = ashr i8 %i.r, 6
  %i.t = or i8 %i.s, %i.p
  %i.u = lshr i8 %i.i, 2
  %i.v = insertelement <4 x i8> poison, i8 %i.u, i64 0
  %i.w = insertelement <4 x i8> %i.v, i8 %i.o, i64 1
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 2
  %i.y = insertelement <4 x i8> %i.x, i8 %i.r, i64 3
  %i.z = and <4 x i8> %i.y, <i8 -1, i8 63, i8 63, i8 63>
  %i.aa = add nuw nsw <4 x i8> %i.z, splat (i8 32)
  store <4 x i8> %i.aa, ptr %i.j, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 3
  %i.ab = add nsw i32 %.07181.i, -3
  %.not.i = icmp eq i32 %.07181.i, 3
  br i1 %.not.i, label %encode_line.exit, label %bb.c, !llvm.loop !0

encode_line.exit:                                 ; preds = %bb.c
  store i8 10, ptr %i.c, align 1, !tbaa !10
  store i8 0, ptr %i.d, align 2, !tbaa !10
  %i.ac = add nuw nsw i32 %.022, 45
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  call void @encode_line(ptr noundef %0, i32 noundef %.022, i32 noundef %i.e, ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %encode_line.exit
  %.1 = phi i32 [ %i.ac, %encode_line.exit ], [ %1, %bb.d ] ; 2 uses
  %i.ad = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01521, ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 0 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01521) #12
  %i.af = getelementptr inbounds nuw i8, ptr %.01521, i64 %i.ae ; 2 uses
  %i.ag = icmp slt i32 %.1, %1
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %bb.e ] ; 2 uses
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
define dso_local i32 @do_encode(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 11)) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #11
  %i.a = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %3) #11 ; 0 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr = getelementptr inbounds i8, ptr %1, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  tail call void @encode(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.c)
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.e = trunc i64 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call noalias ptr @fopen(ptr noundef %i.f, ptr noundef nonnull @.str.3) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !15
  tail call void @perror(ptr noundef %i.i) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stdin, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi ptr [ %i.g, %bb.d ], [ %i.k, %bb.e ]
  %.0 = phi i32 [ %i.j, %bb.d ], [ %0, %bb.e ]
  %.not = icmp eq i32 %.0, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 2) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = tail call noundef i64 @fread(ptr noundef %i.b, i64 noundef 1, i64 noundef 1000000, ptr noundef %.015)
  %i.m = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #11 ; 0 uses
  %i.n = trunc i64 %i.l to i32                    ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  br i1 %i.o, label %.lr.ph.preheader.i.us, label %encode.exit

.lr.ph.preheader.i.us:                            ; preds = %bb.h, %encode.exit.loopexit.us
  %.01425.us = phi i32 [ %i.cp, %encode.exit.loopexit.us ], [ 0, %bb.h ]
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
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.p, %.lr.ph.preheader.i.us
  %.022.i.us = phi i32 [ %.1.i.us, %bb.p ], [ 0, %.lr.ph.preheader.i.us ] ; 4 uses
  %.01521.i.us = phi ptr [ %i.cn, %bb.p ], [ %i.s, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.t = sub nsw i32 %i.n, %.022.i.us             ; 4 uses
  %i.u = icmp sgt i32 %i.t, 44
  br i1 %i.u, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us
  %i.v = trunc i32 %i.t to i8
  %i.w = and i8 %i.v, 63
  %narrow.i.i.us = add nuw nsw i8 %i.w, 32
  store i8 %narrow.i.i.us, ptr %i.a, align 16, !tbaa !10
  %i.x = icmp sgt i32 %i.t, 0
  br i1 %i.x, label %.lr.ph.preheader.i20.us, label %encode_line.exit.us

.lr.ph.preheader.i20.us:                          ; preds = %bb.i
  %i.y = zext nneg i32 %.022.i.us to i64
  br label %.lr.ph.i21.us

.lr.ph.i21.us:                                    ; preds = %bb.j, %.lr.ph.preheader.i20.us
  %indvars.iv84.i.us = phi i64 [ %i.y, %.lr.ph.preheader.i20.us ], [ %indvars.iv.next85.i.us, %bb.j ] ; 3 uses
  %indvars.iv.i.us = phi i64 [ 1, %.lr.ph.preheader.i20.us ], [ %indvars.iv.next.i.us, %bb.j ] ; 4 uses
  %.07181.i.us = phi i32 [ %i.t, %.lr.ph.preheader.i20.us ], [ %i.au, %bb.j ] ; 4 uses
  %i.z = icmp samesign ugt i32 %.07181.i.us, 2
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i21.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us
  %i.ad = shl i8 %i.ab, 4
  %i.ae = getelementptr i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 2 uses
  %i.ag = ashr i8 %i.af, 4
  %i.ah = or i8 %i.ag, %i.ad
  %i.ai = shl i8 %i.af, 2
  %i.aj = getelementptr i8, ptr %i.aa, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10  ; 2 uses
  %i.al = ashr i8 %i.ak, 6
  %i.am = or i8 %i.al, %i.ai
  %i.an = lshr i8 %i.ab, 2
  %i.ao = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ah, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.ak, i64 3
  %i.as = and <4 x i8> %i.ar, <i8 -1, i8 63, i8 63, i8 63>
  %i.at = add nuw nsw <4 x i8> %i.as, splat (i8 32)
  store <4 x i8> %i.at, ptr %i.ac, align 1, !tbaa !10
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %indvars.iv.next85.i.us = add nuw nsw i64 %indvars.iv84.i.us, 3
  %i.au = add nsw i32 %.07181.i.us, -3
  %.not.i.us = icmp eq i32 %.07181.i.us, 3
  br i1 %.not.i.us, label %encode_line.exit.us, label %.lr.ph.i21.us, !llvm.loop !0

bb.k:                                             ; preds = %.lr.ph.i21.us
  %i.av = icmp eq i32 %.07181.i.us, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.us ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.ay = lshr i8 %i.ax, 2
  %narrow.i76.i.us = add nuw nsw i8 %i.ay, 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.us ; 4 uses
  store i8 %narrow.i76.i.us, ptr %i.az, align 1, !tbaa !10
  %i.ba = shl i8 %i.ax, 4                         ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10  ; 2 uses
  %i.bd = ashr i8 %i.bc, 4
  %i.be = or i8 %i.bd, %i.ba
  %i.bf = and i8 %i.be, 63
  %i.bg = shl i8 %i.bc, 2
  %i.bh = and i8 %i.bg, 60
  %narrow.i80.i.us = add nuw nsw i8 %i.bh, 32
  br label %.thread.i.us

bb.m:                                             ; preds = %bb.k
  %i.bi = and i8 %i.ba, 48
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.m, %bb.l
  %narrow.i79.i.us.sink.in = phi i8 [ %i.bi, %bb.m ], [ %i.bf, %bb.l ]
  %.sink.i.us = phi i8 [ 61, %bb.m ], [ %narrow.i80.i.us, %bb.l ]
  %narrow.i79.i.us.sink = add nuw nsw i8 %narrow.i79.i.us.sink.in, 32
  %i.bj = getelementptr i8, ptr %i.az, i64 1
  store i8 %narrow.i79.i.us.sink, ptr %i.bj, align 1, !tbaa !10
  %i.bk = getelementptr i8, ptr %i.az, i64 2
  store i8 %.sink.i.us, ptr %i.bk, align 1, !tbaa !10
  %i.bl = getelementptr i8, ptr %i.az, i64 3
  store i8 61, ptr %i.bl, align 1, !tbaa !10
  %indvars.iv.next89.i.us = add nuw nsw i64 %indvars.iv.i.us, 4
  br label %encode_line.exit.us

encode_line.exit.us:                              ; preds = %bb.j, %.thread.i.us, %bb.i
  %.0.lcssa.i.us = phi i64 [ 1, %bb.i ], [ %indvars.iv.next89.i.us, %.thread.i.us ], [ %indvars.iv.next.i.us, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i.us ; 2 uses
  store i8 10, ptr %i.bm, align 1, !tbaa !10
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bn, align 1, !tbaa !10
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.us
  store i8 77, ptr %i.a, align 16, !tbaa !10
  %i.bo = zext nneg i32 %.022.i.us to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv84.i.i.us = phi i64 [ %i.bo, %bb.n ], [ %indvars.iv.next85.i.i.us, %bb.o ] ; 2 uses
  %indvars.iv.i.i.us = phi i64 [ 1, %bb.n ], [ %indvars.iv.next.i.i.us, %bb.o ] ; 2 uses
  %.07181.i.i.us = phi i32 [ 45, %bb.n ], [ %i.cj, %bb.o ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv84.i.i.us ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.us
  %i.bs = shl i8 %i.bq, 4
  %i.bt = getelementptr i8, ptr %i.bp, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10  ; 2 uses
  %i.bv = ashr i8 %i.bu, 4
  %i.bw = or i8 %i.bv, %i.bs
  %i.bx = shl i8 %i.bu, 2
  %i.by = getelementptr i8, ptr %i.bp, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10  ; 2 uses
  %i.ca = ashr i8 %i.bz, 6
  %i.cb = or i8 %i.ca, %i.bx
  %i.cc = lshr i8 %i.bq, 2
  %i.cd = insertelement <4 x i8> poison, i8 %i.cc, i64 0
  %i.ce = insertelement <4 x i8> %i.cd, i8 %i.bw, i64 1
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cb, i64 2
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.bz, i64 3
  %i.ch = and <4 x i8> %i.cg, <i8 -1, i8 63, i8 63, i8 63>
  %i.ci = add nuw nsw <4 x i8> %i.ch, splat (i8 32)
  store <4 x i8> %i.ci, ptr %i.br, align 1, !tbaa !10
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 4
  %indvars.iv.next85.i.i.us = add nuw nsw i64 %indvars.iv84.i.i.us, 3
  %i.cj = add nsw i32 %.07181.i.i.us, -3
  %.not.i.i.us = icmp eq i32 %.07181.i.i.us, 3
  br i1 %.not.i.i.us, label %encode_line.exit.i.us, label %bb.o, !llvm.loop !0

encode_line.exit.i.us:                            ; preds = %bb.o
  store i8 10, ptr %i.p, align 1, !tbaa !10
  store i8 0, ptr %i.q, align 2, !tbaa !10
  %i.ck = add nuw nsw i32 %.022.i.us, 45
  br label %bb.p

bb.p:                                             ; preds = %encode_line.exit.i.us, %encode_line.exit.us
  %.1.i.us = phi i32 [ %i.ck, %encode_line.exit.i.us ], [ %i.n, %encode_line.exit.us ] ; 2 uses
  %i.cl = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %.01521.i.us, ptr noundef nonnull dereferenceable(1) %i.a) #11 ; 0 uses
  %i.cm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01521.i.us) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %.01521.i.us, i64 %i.cm ; 3 uses
  %i.co = icmp slt i32 %.1.i.us, %i.n
  br i1 %i.co, label %.lr.ph.i.us, label %encode.exit.loopexit.us, !llvm.loop !1

encode.exit.loopexit.us:                          ; preds = %bb.p
  %strlen.i18.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cn)
  %endptr.i19.us = getelementptr inbounds i8, ptr %i.cn, i64 %strlen.i18.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i19.us, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cp = add nuw nsw i32 %.01425.us, 1           ; 2 uses
  %exitcond33.not = icmp eq i32 %i.cp, 1000
  br i1 %exitcond33.not, label %.split28.us, label %.lr.ph.preheader.i.us, !llvm.loop !12

encode.exit:                                      ; preds = %bb.h, %encode.exit
  %.01425 = phi i32 [ %i.cs, %encode.exit ], [ 0, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.c, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false) #11
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr = getelementptr inbounds i8, ptr %i.c, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr, ptr noundef nonnull align 1 dereferenceable(11) @.str.5, i64 11, i1 false)
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr.i = getelementptr inbounds i8, ptr %i.c, i64 %strlen.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.cq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %strlen.i18 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.cr)
  %endptr.i19 = getelementptr inbounds i8, ptr %i.cr, i64 %strlen.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr.i19, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cs = add nuw nsw i32 %.01425, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, 1000
  br i1 %exitcond.not, label %.split28.us, label %encode.exit, !llvm.loop !12

.split28.us:                                      ; preds = %encode.exit, %encode.exit.loopexit.us
  %i.ct = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #12
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #11 ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cu) ; 0 uses
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

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!17 = !{!16, !16, i64 0}
end_hunk_0
