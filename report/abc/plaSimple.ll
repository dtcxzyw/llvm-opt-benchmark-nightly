Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/plaSimple?download=true
inline.NumInlined: 122
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot open file \22%s\22 for writing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"# PLA file written via PLA package in ABC on \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".i %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".o %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".p %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".e\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Written file \22%s\22.\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"# BLIF file written via PLA package in ABC on \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c".model %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c".inputs\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" i%d\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".outputs o\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c".names\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" o\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" i%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%d%d 1\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"10 1\0A01 1\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%d-0 1\0A-11 1\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c".end\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Truth = %d. \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Cover = %d. \00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Count: \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%d=%d \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Cubes: \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"primes%02d\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"primesmin%02d.pla\00", align 1

; Function Attrs: nounwind uwtable
define void @Pla_ManDumpPla(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 45, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.c = tail call ptr (...) @Extra_TimeStamp() #16
  %fputs = tail call i32 @fputs(ptr %i.c, ptr nonnull %i.a) ; 0 uses
  %fwrite40 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %.val44 = load i32, ptr %i.d, align 4, !tbaa !18
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef %.val44) #16 ; 0 uses
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, i32 noundef 1) #16 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 108        ; 3 uses
  %.val46 = load i32, ptr %i.g, align 4, !tbaa !19
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, i32 noundef %.val46) #16 ; 0 uses
  %.val43 = load i32, ptr %i.d, align 4, !tbaa !18 ; 2 uses
  %i.i = add nsw i32 %.val43, 1                   ; 2 uses
  %or.cond.i.i = icmp ult i32 %.val43, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.i ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_StrStart.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %spec.store.select.i.i to i64
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17
  br label %Vec_StrStart.exit

Vec_StrStart.exit:                                ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ] ; 6 uses
  %i.m = sext i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 0, i64 %i.m, i1 false)
  %.val4559 = load i32, ptr %i.g, align 4, !tbaa !19 ; 2 uses
  %i.n = icmp sgt i32 %.val4559, 0
  br i1 %i.n, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %Vec_StrStart.exit
  %i.o = getelementptr i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph61, %bb.f
  %.val4568 = phi i32 [ %.val4559, %.lr.ph61 ], [ %.val45, %bb.f ]
  %indvars.iv64 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next65, %bb.f ] ; 2 uses
  %.val47 = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.val47, i64 %indvars.iv64 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4        ; 3 uses
  %.val49 = load i32, ptr %i.q, align 4, !tbaa !21 ; 2 uses
  %.not = icmp eq i32 %.val49, 0
  br i1 %.not, label %bb.f, label %.preheader54

.preheader54:                                     ; preds = %bb.d
  %.val = load i32, ptr %i.d, align 4, !tbaa !18  ; 2 uses
  %i.r = icmp sgt i32 %.val, 0
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader54
  %i.s = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 45, i64 %i.s, i1 false), !tbaa !22
  %.val4856.pre = load i32, ptr %i.q, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader54
  %.val4856 = phi i32 [ %.val4856.pre, %.lr.ph.preheader ], [ %.val49, %.preheader54 ]
  %i.t = icmp sgt i32 %.val4856, 0
  br i1 %i.t, label %.lr.ph58, label %.critedge2

.lr.ph58:                                         ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.p, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph58, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.val52 = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24   ; 2 uses
  %i.x = ashr i32 %i.w, 1
  %2 = and i32 %i.w, 1
  %.not42 = icmp eq i32 %2, 0
  %3 = select i1 %.not42, i8 49, i8 48
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 %i.y
  store i8 %3, ptr %i.z, align 1, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val48 = load i32, ptr %i.q, align 4, !tbaa !21
  %i.aa = sext i32 %.val48 to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge2, !llvm.loop !37

.critedge2:                                       ; preds = %bb.e, %.preheader
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef %i.l) #16 ; 0 uses
  %.val45.pre = load i32, ptr %i.g, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.critedge2
  %.val45 = phi i32 [ %.val4568, %bb.d ], [ %.val45.pre, %.critedge2 ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ad = sext i32 %.val45 to i64
  %i.ae = icmp slt i64 %indvars.iv.next65, %i.ad
  br i1 %i.ae, label %bb.d, label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %bb.f, %Vec_StrStart.exit
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.l) #16
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge, %bb.g
  %fwrite41 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %Vec_StrFree.exit
  %.str.10.sink = phi ptr [ @.str.10, %Vec_StrFree.exit ], [ @.str.1, %bb.a ]
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.10.sink, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Pla_ManDumpBlif(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 140        ; 3 uses
  %.val112 = load i32, ptr %i.a, align 4, !tbaa !21 ; 4 uses
  %.not = icmp eq i32 %.val112, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %.val112, 0
  br i1 %i.b, label %.lr.ph.i, label %Vec_IntCountZero.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.val112 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val112, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi145 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !24
  %wide.load146 = load <4 x i32>, ptr %i.f, align 4, !tbaa !24
  %i.g = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.h = icmp eq <4 x i32> %wide.load146, zeroinitializer
  %i.i = zext <4 x i1> %i.g to <4 x i32>
  %i.j = zext <4 x i1> %i.h to <4 x i32>
  %i.k = add <4 x i32> %vec.phi, %i.i             ; 2 uses
  %i.l = add <4 x i32> %vec.phi145, %i.j          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntCountZero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.s, %scalar.ph ], [ %.08.i.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = add nuw nsw i32 %.08.i, %i.r             ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntCountZero.exit, label %scalar.ph, !llvm.loop !40

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 20
  %.val102 = load i32, ptr %i.t, align 4, !tbaa !18
  br label %Vec_IntCountZero.exit

Vec_IntCountZero.exit:                            ; preds = %scalar.ph, %middle.block, %bb.b, %bb.c
  %i.u = phi i32 [ %.val102, %bb.c ], [ 0, %bb.b ], [ %i.n, %middle.block ], [ %i.s, %scalar.ph ] ; 4 uses
  %i.v = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 25 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.d

bb.d:                                             ; preds = %Vec_IntCountZero.exit
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.11, i64 46, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.x = tail call ptr (...) @Extra_TimeStamp() #16
  %fputs = tail call i32 @fputs(ptr %i.x, ptr nonnull %i.v) ; 0 uses
  %fwrite85 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 2, i64 1, ptr nonnull %i.v) ; 0 uses
  %.val113 = load ptr, ptr %0, align 8, !tbaa !28
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.12, ptr noundef %.val113) #16 ; 0 uses
  %fwrite86 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 7, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.z = icmp sgt i32 %i.u, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.080116 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %.080116) #16 ; 0 uses
  %i.ab = add nuw nsw i32 %.080116, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.v) ; 0 uses
  %fwrite88 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 10, i64 1, ptr nonnull %i.v) ; 0 uses
  %fputc90 = tail call i32 @fputc(i32 10, ptr nonnull %i.v) ; 0 uses
  %fwrite91 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.ac = getelementptr i8, ptr %0, i64 20        ; 4 uses
  %.val101117 = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ad = icmp sgt i32 %.val101117, 0
  br i1 %i.ad, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %._crit_edge, %.lr.ph120
  %.181118 = phi i32 [ %i.af, %.lr.ph120 ], [ 0, %._crit_edge ] ; 2 uses
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %.181118) #16 ; 0 uses
  %i.af = add nuw nsw i32 %.181118, 1             ; 2 uses
  %.val101 = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ag = icmp slt i32 %i.af, %.val101
  br i1 %i.ag, label %.lr.ph120, label %._crit_edge121, !llvm.loop !42

._crit_edge121:                                   ; preds = %.lr.ph120, %._crit_edge
  %fwrite92 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 3, i64 1, ptr nonnull %i.v) ; 0 uses
  %.val100 = load i32, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.ah = add nsw i32 %.val100, 1                 ; 2 uses
  %or.cond.i.i = icmp ult i32 %.val100, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.ah ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_StrStart.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge121
  %i.ai = sext i32 %spec.store.select.i.i to i64
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #17
  br label %Vec_StrStart.exit

Vec_StrStart.exit:                                ; preds = %._crit_edge121, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.e ], [ null, %._crit_edge121 ] ; 6 uses
  %i.al = sext i32 %i.ah to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.al, i1 false)
  %i.am = getelementptr i8, ptr %0, i64 108       ; 2 uses
  %.val103128 = load i32, ptr %i.am, align 4, !tbaa !19
  %i.an = icmp sgt i32 %.val103128, 0
  br i1 %i.an, label %.lr.ph130, label %.critedge

.lr.ph130:                                        ; preds = %Vec_StrStart.exit
  %i.ao = getelementptr i8, ptr %0, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph130, %.critedge2
  %indvars.iv136 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next137, %.critedge2 ] ; 2 uses
  %.val104 = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.val104, i64 %indvars.iv136 ; 2 uses
  %.val = load i32, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %i.aq = icmp sgt i32 %.val, 0
  br i1 %i.aq, label %.lr.ph124.preheader, label %.preheader

.lr.ph124.preheader:                              ; preds = %bb.f
  %i.ar = zext nneg i32 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 45, i64 %i.ar, i1 false), !tbaa !22
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph124.preheader, %bb.f
  %i.as = getelementptr i8, ptr %i.ap, i64 4      ; 2 uses
  %.val106125 = load i32, ptr %i.as, align 4, !tbaa !21
  %i.at = icmp sgt i32 %.val106125, 0
  br i1 %i.at, label %.lr.ph127, label %.critedge2

.lr.ph127:                                        ; preds = %.preheader
  %i.au = getelementptr i8, ptr %i.ap, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph127, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.val110 = load ptr, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val110, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.ax = ashr i32 %i.aw, 1
  %2 = and i32 %i.aw, 1
  %.not99 = icmp eq i32 %2, 0
  %3 = select i1 %.not99, i8 49, i8 48
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 %i.ay
  store i8 %3, ptr %i.az, align 1, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val106 = load i32, ptr %i.as, align 4, !tbaa !21
  %i.ba = sext i32 %.val106 to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.g, label %.critedge2, !llvm.loop !43

.critedge2:                                       ; preds = %bb.g, %.preheader
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.8, ptr noundef %i.ak) #16 ; 0 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %.val103 = load i32, ptr %i.am, align 4, !tbaa !19
  %i.bd = sext i32 %.val103 to i64
  %i.be = icmp slt i64 %indvars.iv.next137, %i.bd
  br i1 %i.be, label %bb.f, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %.critedge2, %Vec_StrStart.exit
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.ak) #16
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge, %bb.h
  %.val105131 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bf = icmp slt i32 %i.u, %.val105131
  br i1 %i.bf, label %.lr.ph133, label %.critedge4

.lr.ph133:                                        ; preds = %Vec_StrFree.exit
  %i.bg = getelementptr i8, ptr %0, i64 144
  %i.bh = sext i32 %i.u to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph133, %bb.n
  %indvars.iv139 = phi i64 [ %i.bh, %.lr.ph133 ], [ %indvars.iv.next140, %bb.n ] ; 4 uses
  %.val109 = load ptr, ptr %i.bg, align 8, !tbaa !23
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val109, i64 %indvars.iv139
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24 ; 6 uses
  %i.bk = lshr i32 %i.bj, 2                       ; 2 uses
  %i.bl = lshr i32 %i.bj, 12
  %fwrite94 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.bm = lshr i32 %i.bj, 3
  %i.bn = and i32 %i.bm, 511
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.bn) #16 ; 0 uses
  %i.bp = lshr i32 %i.bj, 13
  %i.bq = and i32 %i.bp, 511
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.bq) #16 ; 0 uses
  %i.bs = and i32 %i.bj, 3                        ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 3
  br i1 %i.bt, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = trunc nsw i64 %indvars.iv139 to i32
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.19, i32 noundef %i.bu) #16 ; 0 uses
  switch i32 %i.bs, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bw = and i32 %i.bk, 1
  %i.bx = xor i32 %i.bw, 1
  %i.by = and i32 %i.bl, 1
  %i.bz = xor i32 %i.by, 1
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.20, i32 noundef %i.bx, i32 noundef %i.bz) #16 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %fwrite96 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 10, i64 1, ptr nonnull %i.v) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.cb = lshr i32 %i.bj, 23
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.cb) #16 ; 0 uses
  %i.cd = trunc nsw i64 %indvars.iv139 to i32
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.19, i32 noundef %i.cd) #16 ; 0 uses
  %i.cf = and i32 %i.bk, 1
  %i.cg = xor i32 %i.cf, 1
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.22, i32 noundef %i.cg) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %.val105 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ci = sext i32 %.val105 to i64
  %i.cj = icmp slt i64 %indvars.iv.next140, %i.ci
  br i1 %i.cj, label %bb.i, label %.critedge4, !llvm.loop !45

.critedge4:                                       ; preds = %bb.n, %Vec_StrFree.exit
  %fwrite93 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 6, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.ck = tail call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntCountZero.exit, %.critedge4
  %.str.10.sink = phi ptr [ @.str.10, %.critedge4 ], [ @.str.1, %Vec_IntCountZero.exit ]
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.10.sink, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Pla_ManExpendDirNum(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %.0910 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.b = shl nuw i32 1, %.0910
  %i.c = xor i32 %i.b, %2                         ; 2 uses
  %i.d = ashr i32 %i.c, 6
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = and i32 %i.c, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.g, %i.j
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nsw i32 %.011, 1
  %i.m = sext i32 %.011 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %i.m
  store i32 %.0910, ptr %i.n, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.l, %bb.b ], [ %.011, %.lr.ph ] ; 2 uses
  %i.o = add nuw nsw i32 %.0910, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @Pla_PrintBinary(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.b = lshr i32 %.04, 6
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = and i32 %.04, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %i.e, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.j) ; 0 uses
  %i.l = add nuw nsw i32 %.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Pla_ManFxMinimize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 22 uses
  %i.b = alloca [32 x i32], align 16              ; 6 uses
  %i.c = alloca [32 x i32], align 16              ; 5 uses
  %i.d = shl nuw i32 1, %1                        ; 3 uses
  %i.e = ashr i32 %i.d, 6
  %i.f = icmp ult i32 %1, 6
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.e, %i.g                   ; 5 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !31
  store i32 1000, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = sext i32 %i.h to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #18 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !21
  store i32 1000, ptr %i.o, align 8, !tbaa !34
  %i.q = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !23
  %.not182 = icmp eq i32 %1, 31
  br i1 %.not182, label %._crit_edge161, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
end_hunk_0
