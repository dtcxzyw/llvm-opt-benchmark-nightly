Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/queryjumblefuncs?download=true
inline.NumInlined: 64
inline.NumDeleted: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScanKeywordList = type { ptr, ptr, ptr, i32, i32 }
%struct.core_yy_extra_type = type { ptr, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i8 }
%union.core_YYSTYPE = type { ptr }

@compute_query_id = dso_local local_unnamed_addr global i32 2, align 4
@query_id_enabled = dso_local local_unnamed_addr global i8 0, align 1
@ScanKeywords = external constant %struct.ScanKeywordList, align 8
@ScanKeywordTokens = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"queryjumblefuncs.c\00", align 1
@__func__._jumbleNode = private unnamed_addr constant [12 x i8] c"_jumbleNode\00", align 1
@__func__._jumbleA_Const = private unnamed_addr constant [15 x i8] c"_jumbleA_Const\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unrecognized list node type: %d\00", align 1
@__func__._jumbleList = private unnamed_addr constant [12 x i8] c"_jumbleList\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @CleanQuerytext(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4                ; 2 uses
  %i.d = zext nneg i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = icmp slt i32 %i.c, 1
  br i1 %i.f, label %bb.c, label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink63 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.023 = phi i32 [ %i.a, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink63) #10
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.051 = phi i32 [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.02350 = phi i32 [ %.023, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.02549 = phi ptr [ %.sink63, %bb.c ], [ %i.e, %bb.b ]
  %i.j = add nuw i32 %.051, %.02350
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.131 = phi i32 [ %i.o, %bb.d ], [ %.051, %.lr.ph.preheader ] ; 3 uses
  %.12430 = phi i32 [ %i.n, %bb.d ], [ %.02350, %.lr.ph.preheader ] ; 3 uses
  %.12629 = phi ptr [ %i.m, %bb.d ], [ %.02549, %.lr.ph.preheader ] ; 5 uses
  %i.k = load i8, ptr %.12629, align 1
  %i.l = tail call zeroext i1 @scanner_isspace(i8 noundef signext %i.k) #11
  br i1 %i.l, label %bb.d, label %.lr.ph39.preheader

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.12629, i64 1 ; 2 uses
  %i.n = add i32 %.12430, 1
  %i.o = add nsw i32 %.131, -1
  %i.p = icmp sgt i32 %.131, 1
  br i1 %i.p, label %.lr.ph, label %.critedge2, !llvm.loop !4

.lr.ph39.preheader:                               ; preds = %.lr.ph
  %i.q = zext nneg i32 %.131 to i64
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.q, %.lr.ph39.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.r = getelementptr i8, ptr %.12629, i64 %indvars.iv
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = tail call zeroext i1 @scanner_isspace(i8 noundef signext %i.t) #11
  br i1 %i.u, label %bb.e, label %.critedge2.loopexit.split.loop.exit61

bb.e:                                             ; preds = %.lr.ph39
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.v = icmp sgt i64 %indvars.iv, 1
  br i1 %i.v, label %.lr.ph39, label %.critedge2, !llvm.loop !6

.critedge2.loopexit.split.loop.exit61:            ; preds = %.lr.ph39
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.d, %bb.e, %.critedge2.loopexit.split.loop.exit61, %bb.c
  %.124.lcssa56 = phi i32 [ %.12430, %.critedge2.loopexit.split.loop.exit61 ], [ %.023, %bb.c ], [ %.12430, %bb.e ], [ %i.j, %bb.d ]
  %.126.lcssa55 = phi ptr [ %.12629, %.critedge2.loopexit.split.loop.exit61 ], [ %.sink63, %bb.c ], [ %.12629, %bb.e ], [ %i.m, %bb.d ]
  %.2.lcssa = phi i32 [ %i.w, %.critedge2.loopexit.split.loop.exit61 ], [ %i.h, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  store i32 %.124.lcssa56, ptr %1, align 4
  store i32 %.2.lcssa, ptr %2, align 4
  ret ptr %.126.lcssa55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare zeroext i1 @scanner_isspace(i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @JumbleQuery(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 48) #11 ; 12 uses
  %i.b = tail call ptr @palloc(i64 noundef 1024) #11
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.d, align 8
  %i.e = tail call ptr @palloc(i64 noundef 384) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store i32 0, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.g, i8 0, i64 9, i1 false)
  tail call fastcc void @_jumbleNode(ptr noundef nonnull %i.a, ptr noundef %0)
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.k = load i64, ptr %i.c, align 8              ; 3 uses
  %i.l = add i64 %i.k, -1021
  %.not.i.i = icmp ult i64 %i.l, 4
  br i1 %.not.i.i, label %.preheader.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i32 %i.i, ptr %i.m, align 1
  %i.n = load i64, ptr %i.c, align 8
  %i.o = add i64 %i.n, 4
  br label %AppendJumbleInternal.exit.i

.preheader.i:                                     ; preds = %bb.b, %bb.e
  %.030.i.i = phi i64 [ %i.w, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i.i = phi i64 [ %i.u, %bb.e ], [ %i.k, %bb.b ] ; 2 uses
  %.0.i.i = phi ptr [ %i.v, %bb.e ], [ %i.h, %bb.b ] ; 2 uses
  %i.p = icmp ugt i64 %.029.i.i, 1023
  br i1 %i.p, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader.i
  %i.q = tail call i64 @hash_bytes_extended(ptr noundef %i.j, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.q, ptr %i.j, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %.1.i.i = phi i64 [ 8, %bb.d ], [ %.029.i.i, %.preheader.i ] ; 3 uses
  %i.r = sub nuw nsw i64 1024, %.1.i.i
  %i.s = tail call i64 @llvm.umin.i64(i64 %.030.i.i, i64 %i.r) ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i64 %i.s, i1 false)
  %i.u = add nuw nsw i64 %i.s, %.1.i.i            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %i.w = sub nuw nsw i64 %.030.i.i, %i.s          ; 2 uses
  %.not34.i.i = icmp eq i64 %i.w, 0
  br i1 %.not34.i.i, label %AppendJumbleInternal.exit.i, label %.preheader.i, !llvm.loop !8

AppendJumbleInternal.exit.i:                      ; preds = %bb.e, %bb.c
  %storemerge.i.i = phi i64 [ %i.o, %bb.c ], [ %i.u, %bb.e ]
  store i64 %storemerge.i.i, ptr %i.c, align 8
  store i32 0, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %AppendJumbleInternal.exit.i, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.y = load i8, ptr %i.x, align 4, !range !9, !noundef !10
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %DoJumble.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.aa, align 8
  br label %DoJumble.exit

DoJumble.exit:                                    ; preds = %bb.f, %bb.g
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load i64, ptr %i.c, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = tail call i64 @hash_bytes_extended(ptr noundef %i.ab, i32 noundef %i.ad, i64 noundef 0) #11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %DoJumble.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not = icmp eq ptr %i.ai, null
  %. = select i1 %.not, i64 1, i64 2
  store i64 %., ptr %i.af, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %DoJumble.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @EnableQueryId() local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @compute_query_id, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @query_id_enabled, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ComputeConstantLengths(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.core_yy_extra_type, align 8 ; 4 uses
  %4 = alloca %union.core_YYSTYPE, align 8        ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.c to i64
  %i.f = tail call ptr @palloc_mul(i64 noundef 12, i64 noundef %i.e) #11 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i32, ptr %i.b, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.j, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %i.h, i64 %i.k, i1 false)
  %i.l = load i32, ptr %i.b, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64
  tail call void @pg_qsort(ptr noundef %i.f, i64 noundef %i.n, i64 noundef 12, ptr noundef nonnull @CompLocation) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = call ptr @scanner_init(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull @ScanKeywords, ptr noundef nonnull @ScanKeywordTokens) #11 ; 3 uses
  %i.p = load i32, ptr %i.b, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.d ] ; 5 uses
  %.not59 = icmp eq i64 %indvars.iv, 0
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %i.r, i64 -12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 4, !range !9, !noundef !10
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.w, align 4
  %i.ab = sub i32 %i.aa, %2                       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ac = call i32 @core_yylex(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.o) #11
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.a, align 4
  %.not = icmp slt i32 %i.ae, %i.ab
  br i1 %.not, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = sext i32 %i.ab to i64                   ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 45
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = call i32 @core_yylex(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.o) #11
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.al = load ptr, ptr %3, align 8
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.af
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #10
  %i.ao = trunc i64 %i.an to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.l
  %.sink = phi i32 [ %i.ao, %bb.l ], [ -1, %bb.e ]
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %.sink, ptr %i.aq, align 4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.b, align 4
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.h, %bb.d
  call void @scanner_finish(ptr noundef %i.o) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.loopexit
  %.040 = phi ptr [ %i.f, %.loopexit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %.040
}

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @CompLocation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

declare ptr @scanner_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @core_yylex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @scanner_finish(ptr noundef) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@_jumbleNode:bb.a
  br label %.loopexit

bb.ik:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePropGraphEdge(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.il:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePropGraphLabelAndProperties(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.im:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePropGraphProperties(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.in:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleAlterPropGraphStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.io:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleCreateTransformStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.ip:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePrepareStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iq:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleExecuteStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.ir:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleDeallocateStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.is:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleDropOwnedStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.it:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleReassignOwnedStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iu:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleAlterTSDictionaryStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iv:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleAlterTSConfigurationStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iw:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePublicationTable(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.ix:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePublicationObjSpec(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iy:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumblePublicationAllObjSpec(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.iz:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleCreatePublicationStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.ja:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleAlterPublicationStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jb:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleCreateSubscriptionStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jc:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleAlterSubscriptionStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jd:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleDropSubscriptionStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.je:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleWaitStmt(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jf:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleGroupByOrdering(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jg:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleSubPlanRTInfo(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jh:                                            ; preds = %.lr.ph
  tail call fastcc void @_jumbleElidedNode(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.ji:                                            ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %.tr586862, i64 8
  %.val582 = load ptr, ptr %i.ae, align 8
  tail call fastcc void @_jumbleExtensibleNode(ptr noundef %0, ptr %.val582)
  br label %.loopexit

bb.jj:                                            ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.tr586862, i64 4
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull readonly %i.af)
  br label %.loopexit

bb.jk:                                            ; preds = %.lr.ph
  %i.ag = getelementptr i8, ptr %.tr586862, i64 8
  %.val583 = load ptr, ptr %i.ag, align 8
  tail call fastcc void @_jumbleFloat(ptr noundef %0, ptr %.val583)
  br label %.loopexit

bb.jl:                                            ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr586862, i64 4
  tail call fastcc void @AppendJumble8(ptr noundef %0, ptr noundef readonly %i.ah)
  br label %.loopexit

bb.jm:                                            ; preds = %.lr.ph
  %i.ai = getelementptr i8, ptr %.tr586862, i64 8
  %.val584 = load ptr, ptr %i.ai, align 8
  tail call fastcc void @_jumbleString(ptr noundef %0, ptr %.val584)
  br label %.loopexit

bb.jn:                                            ; preds = %.lr.ph
  %i.aj = getelementptr i8, ptr %.tr586862, i64 8
  %.val585 = load ptr, ptr %i.aj, align 8
  tail call fastcc void @_jumbleBitString(ptr noundef %0, ptr %.val585)
  br label %.loopexit

bb.jo:                                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  tail call fastcc void @_jumbleList(ptr noundef %0, ptr noundef %.tr586862)
  br label %.loopexit

bb.jp:                                            ; preds = %.lr.ph
  %i.ak = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #11
  br i1 %i.ak, label %bb.jq, label %.loopexit

bb.jq:                                            ; preds = %bb.jp
  %i.al = load i32, ptr %.tr586862, align 4
  %i.am = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.al) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 599, ptr noundef nonnull @__func__._jumbleNode) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %bb.gq, %bb.gr, %bb.gs, %bb.gt, %bb.gu, %bb.gv, %bb.gw, %bb.gx, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh, %bb.hi, %bb.hj, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hr, %bb.hs, %bb.ht, %bb.hu, %bb.hv, %bb.hw, %bb.hx, %bb.hy, %bb.hz, %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.im, %bb.in, %bb.io, %bb.ip, %bb.iq, %bb.ir, %bb.is, %bb.it, %bb.iu, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.iz, %bb.ja, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf, %bb.jg, %bb.jh, %bb.ji, %bb.jj, %bb.jk, %bb.jl, %bb.jm, %bb.jn, %bb.jo, %bb.jq, %bb.jp, %tailrecurse._crit_edge
  ret void
}

declare void @check_stack_depth() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @AppendJumble32(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, -1021
  %.not.i = icmp ult i64 %i.f, 4
  br i1 %.not.i, label %.preheader12, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i32 %i.b, ptr %i.g, align 1
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 4
  br label %AppendJumbleInternal.exit

.preheader12:                                     ; preds = %bb.b, %bb.e
  %.030.i = phi i64 [ %i.q, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = icmp ugt i64 %.029.i, 1023
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader12
  %i.k = tail call i64 @hash_bytes_extended(ptr noundef %i.c, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.k, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.1.i = phi i64 [ 8, %bb.d ], [ %.029.i, %.preheader12 ] ; 3 uses
  %i.l = sub nuw nsw i64 1024, %.1.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i64 %i.m, i1 false)
  %i.o = add nuw nsw i64 %i.m, %.1.i              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  %i.q = sub nuw nsw i64 %.030.i, %i.m            ; 2 uses
  %.not34.i = icmp eq i64 %i.q, 0
  br i1 %.not34.i, label %AppendJumbleInternal.exit, label %.preheader12, !llvm.loop !8

AppendJumbleInternal.exit:                        ; preds = %bb.e, %bb.c
  %storemerge.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  store i64 %storemerge.i, ptr %i.d, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %AppendJumbleInternal.exit
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %storemerge.i, %AppendJumbleInternal.exit ] ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = add i64 %i.r, -1021
  %.not.i4 = icmp ult i64 %i.u, 4
  br i1 %.not.i4, label %.preheader, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.w = load i32, ptr %1, align 1
  store i32 %i.w, ptr %i.v, align 1
  %i.x = load i64, ptr %i.t, align 8
  %i.y = add i64 %i.x, 4
  br label %AppendJumbleInternal.exit11

.preheader:                                       ; preds = %bb.f, %bb.i
  %.030.i6 = phi i64 [ %i.ag, %bb.i ], [ 4, %bb.f ] ; 2 uses
  %.029.i7 = phi i64 [ %i.ae, %bb.i ], [ %i.r, %bb.f ] ; 2 uses
  %.0.i8 = phi ptr [ %i.af, %bb.i ], [ %1, %bb.f ] ; 2 uses
  %i.z = icmp ugt i64 %.029.i7, 1023
  br i1 %i.z, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %.preheader
  %i.aa = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.aa, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader
  %.1.i9 = phi i64 [ 8, %bb.h ], [ %.029.i7, %.preheader ] ; 3 uses
  %i.ab = sub nuw nsw i64 1024, %.1.i9
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.030.i6, i64 %i.ab) ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %.0.i8, i64 %i.ac, i1 false)
  %i.ae = add nuw nsw i64 %i.ac, %.1.i9           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.ac
  %i.ag = sub nuw nsw i64 %.030.i6, %i.ac         ; 2 uses
  %.not34.i10 = icmp eq i64 %i.ag, 0
  br i1 %.not34.i10, label %AppendJumbleInternal.exit11, label %.preheader, !llvm.loop !8

AppendJumbleInternal.exit11:                      ; preds = %bb.i, %bb.g
  %storemerge.i5 = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  store i64 %storemerge.i5, ptr %i.t, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleAlias(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10
  %i.d = add i64 %i.c, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.i)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleRangeVar(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10
  %i.d = add i64 %i.c, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #10
  %i.k = add i64 %i.j, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.i, i64 noundef %i.k)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #10
  %i.r = add i64 %i.q, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.r)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call fastcc void @AppendJumble8(ptr noundef %0, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 33
  tail call fastcc void @AppendJumble8(ptr noundef %0, ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.y)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleTableFunc(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.g)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleIntoClause(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #10
  %i.h = add i64 %i.g, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.f, i64 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.p, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #10
  %i.r = add i64 %i.q, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %i.p, i64 noundef %i.r)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call fastcc void @AppendJumble8(ptr noundef %0, ptr noundef %i.v)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleVar(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @AppendJumble16(ptr noundef %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleConst(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef nonnull %i.a)
end_hunk_1
begin_hunk_2_@_jumbleString:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleBitString(ptr nofree noundef captures(none) %0, ptr nofree readonly captures(address_is_null) %.8.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.8.val, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.8.val) #10
  %i.b = add i64 %i.a, 1
  tail call fastcc void @AppendJumble(ptr noundef %0, ptr noundef %.8.val, i64 noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleList(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  switch i32 %i.a, label %bb.f [
    i32 1, label %.preheader
    i32 494, label %.preheader52
    i32 495, label %.preheader54
    i32 496, label %.preheader56
  ]

.preheader56:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not58 = icmp sgt i32 %i.c, 0
  br i1 %.not58, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

.preheader54:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not4160 = icmp sgt i32 %i.f, 0
  br i1 %.not4160, label %.lr.ph62, label %.critedge

.lr.ph62:                                         ; preds = %.preheader54
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

.preheader52:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %.not4363 = icmp sgt i32 %i.i, 0
  br i1 %.not4363, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %.preheader52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %.not4566 = icmp sgt i32 %i.l, 0
  br i1 %.not4566, label %.lr.ph68, label %.critedge

.lr.ph68:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %bb.b
  %indvars.iv79 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next80, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv79
  %i.p = load ptr, ptr %i.o, align 8
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %i.p)
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.q = load i32, ptr %i.k, align 4
  %i.r = sext i32 %i.q to i64
  %.not45 = icmp slt i64 %indvars.iv.next80, %i.r
  br i1 %.not45, label %bb.b, label %.critedge, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph65, %bb.c
  %indvars.iv76 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next77, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv76
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef %i.t)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %i.u = load i32, ptr %i.h, align 4
  %i.v = sext i32 %i.u to i64
  %.not43 = icmp slt i64 %indvars.iv.next77, %i.v
  br i1 %.not43, label %bb.c, label %.critedge, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph62, %bb.d
  %indvars.iv73 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next74, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv73
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef %i.x)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.y = load i32, ptr %i.e, align 4
  %i.z = sext i32 %i.y to i64
  %.not41 = icmp slt i64 %indvars.iv.next74, %i.z
  br i1 %.not41, label %bb.d, label %.critedge, !llvm.loop !15

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.aa = load ptr, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  tail call fastcc void @AppendJumble32(ptr noundef %0, ptr noundef %i.ab)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = sext i32 %i.ac to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %bb.e, label %.critedge, !llvm.loop !16

bb.f:                                             ; preds = %bb.a
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.af = load i32, ptr %1, align 8
  %i.ag = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %i.af) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 633, ptr noundef nonnull @__func__._jumbleList) #11
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.preheader56, %.preheader54, %.preheader52, %.preheader
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @AppendJumble(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, -1021
  %.not.i = icmp ult i64 %i.f, 4
  br i1 %.not.i, label %.preheader12, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i32 %i.b, ptr %i.g, align 1
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 4
  br label %AppendJumbleInternal.exit

.preheader12:                                     ; preds = %bb.b, %bb.e
  %.030.i = phi i64 [ %i.q, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = icmp ugt i64 %.029.i, 1023
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader12
  %i.k = tail call i64 @hash_bytes_extended(ptr noundef %i.c, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.k, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.1.i = phi i64 [ 8, %bb.d ], [ %.029.i, %.preheader12 ] ; 3 uses
  %i.l = sub nuw nsw i64 1024, %.1.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i64 %i.m, i1 false)
  %i.o = add nuw nsw i64 %i.m, %.1.i              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  %i.q = sub nuw nsw i64 %.030.i, %i.m            ; 2 uses
  %.not34.i = icmp eq i64 %i.q, 0
  br i1 %.not34.i, label %AppendJumbleInternal.exit, label %.preheader12, !llvm.loop !8

AppendJumbleInternal.exit:                        ; preds = %bb.e, %bb.c
  %storemerge.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  store i64 %storemerge.i, ptr %i.d, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %AppendJumbleInternal.exit
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %storemerge.i, %AppendJumbleInternal.exit ] ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = sub i64 1024, %i.r
  %.not.i4 = icmp ugt i64 %2, %i.u
  br i1 %.not.i4, label %.preheader, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %1, i64 %2, i1 false)
  %i.w = load i64, ptr %i.t, align 8
  %i.x = add i64 %i.w, %2
  br label %AppendJumbleInternal.exit11

.preheader:                                       ; preds = %bb.f, %bb.i
  %.030.i6 = phi i64 [ %i.af, %bb.i ], [ %2, %bb.f ] ; 2 uses
  %.029.i7 = phi i64 [ %i.ad, %bb.i ], [ %i.r, %bb.f ] ; 2 uses
  %.0.i8 = phi ptr [ %i.ae, %bb.i ], [ %1, %bb.f ] ; 2 uses
  %i.y = icmp ugt i64 %.029.i7, 1023
  br i1 %i.y, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %.preheader
  %i.z = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.z, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader
  %.1.i9 = phi i64 [ 8, %bb.h ], [ %.029.i7, %.preheader ] ; 3 uses
  %i.aa = sub nuw nsw i64 1024, %.1.i9
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.030.i6, i64 %i.aa) ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %.0.i8, i64 %i.ab, i1 false)
  %i.ad = add nuw nsw i64 %i.ab, %.1.i9           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.ab
  %i.af = sub nuw i64 %.030.i6, %i.ab             ; 2 uses
  %.not34.i10 = icmp eq i64 %i.af, 0
  br i1 %.not34.i10, label %AppendJumbleInternal.exit11, label %.preheader, !llvm.loop !8

AppendJumbleInternal.exit11:                      ; preds = %bb.i, %bb.g
  %storemerge.i5 = phi i64 [ %i.x, %bb.g ], [ %i.ad, %bb.i ]
  store i64 %storemerge.i5, ptr %i.t, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @AppendJumble8(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, -1021
  %.not.i = icmp ult i64 %i.f, 4
  br i1 %.not.i, label %.preheader12, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i32 %i.b, ptr %i.g, align 1
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 4
  br label %AppendJumbleInternal.exit

.preheader12:                                     ; preds = %bb.b, %bb.e
  %.030.i = phi i64 [ %i.q, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = icmp ugt i64 %.029.i, 1023
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader12
  %i.k = tail call i64 @hash_bytes_extended(ptr noundef %i.c, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.k, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.1.i = phi i64 [ 8, %bb.d ], [ %.029.i, %.preheader12 ] ; 3 uses
  %i.l = sub nuw nsw i64 1024, %.1.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i64 %i.m, i1 false)
  %i.o = add nuw nsw i64 %i.m, %.1.i              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  %i.q = sub nuw nsw i64 %.030.i, %i.m            ; 2 uses
  %.not34.i = icmp eq i64 %i.q, 0
  br i1 %.not34.i, label %AppendJumbleInternal.exit, label %.preheader12, !llvm.loop !8

AppendJumbleInternal.exit:                        ; preds = %bb.e, %bb.c
  %storemerge.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  store i64 %storemerge.i, ptr %i.d, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %AppendJumbleInternal.exit
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %storemerge.i, %AppendJumbleInternal.exit ] ; 2 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i4 = icmp eq i64 %i.r, 1024
  br i1 %.not.i4, label %AppendJumbleInternal.exit11.loopexit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.v = load i8, ptr %1, align 1
  store i8 %i.v, ptr %i.u, align 1
  %i.w = load i64, ptr %i.t, align 8
  %i.x = add i64 %i.w, 1
  br label %AppendJumbleInternal.exit11

AppendJumbleInternal.exit11.loopexit:             ; preds = %bb.f
  %i.y = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.y, ptr %i.s, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load i8, ptr %1, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %AppendJumbleInternal.exit11

AppendJumbleInternal.exit11:                      ; preds = %AppendJumbleInternal.exit11.loopexit, %bb.g
  %storemerge.i5 = phi i64 [ %i.x, %bb.g ], [ 9, %AppendJumbleInternal.exit11.loopexit ]
  store i64 %storemerge.i5, ptr %i.t, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @AppendJumble16(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, -1021
  %.not.i = icmp ult i64 %i.f, 4
  br i1 %.not.i, label %.preheader12, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i32 %i.b, ptr %i.g, align 1
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 4
  br label %AppendJumbleInternal.exit

.preheader12:                                     ; preds = %bb.b, %bb.e
  %.030.i = phi i64 [ %i.q, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = icmp ugt i64 %.029.i, 1023
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader12
  %i.k = tail call i64 @hash_bytes_extended(ptr noundef %i.c, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.k, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.1.i = phi i64 [ 8, %bb.d ], [ %.029.i, %.preheader12 ] ; 3 uses
  %i.l = sub nuw nsw i64 1024, %.1.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i64 %i.m, i1 false)
  %i.o = add nuw nsw i64 %i.m, %.1.i              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  %i.q = sub nuw nsw i64 %.030.i, %i.m            ; 2 uses
  %.not34.i = icmp eq i64 %i.q, 0
  br i1 %.not34.i, label %AppendJumbleInternal.exit, label %.preheader12, !llvm.loop !8

AppendJumbleInternal.exit:                        ; preds = %bb.e, %bb.c
  %storemerge.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  store i64 %storemerge.i, ptr %i.d, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %AppendJumbleInternal.exit
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %storemerge.i, %AppendJumbleInternal.exit ] ; 4 uses
  %i.s = load ptr, ptr %0, align 8                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = add i64 %i.r, -1023
  %.not.i4 = icmp ult i64 %i.u, 2
  br i1 %.not.i4, label %.preheader.peel, label %.preheader, !prof !7

.preheader.peel:                                  ; preds = %bb.f
  %2 = icmp ugt i64 %i.r, 1023
  br i1 %2, label %3, label %bb.g, !prof !7

3:                                                ; preds = %.preheader.peel
  %4 = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %4, ptr %i.s, align 1
  br label %bb.g

bb.g:                                             ; preds = %3, %.preheader.peel
  %.1.i9.peel = phi i64 [ 8, %3 ], [ %i.r, %.preheader.peel ] ; 4 uses
  %5 = sub nuw nsw i64 1024, %.1.i9.peel
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 2) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i9.peel
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %6, i1 false)
  %7 = add nuw nsw i64 %6, %.1.i9.peel            ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %6
  %.not34.i10.not.peel = icmp eq i64 %.1.i9.peel, 1023
  br i1 %.not34.i10.not.peel, label %.preheader.preheader.peel.newph, label %AppendJumbleInternal.exit11

.preheader.preheader.peel.newph:                  ; preds = %bb.g
  %9 = icmp samesign ugt i64 %7, 1023
  br i1 %9, label %bb.h, label %bb.i, !prof !7

.preheader:                                       ; preds = %bb.f
  %10 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %11 = load i16, ptr %1, align 1
  store i16 %11, ptr %10, align 1
  %12 = load i64, ptr %i.t, align 8
  %13 = add i64 %12, 2
  br label %AppendJumbleInternal.exit11

bb.h:                                             ; preds = %.preheader.preheader.peel.newph
  %i.w = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.w, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader.preheader.peel.newph
  %.1.i9 = phi i64 [ 8, %bb.h ], [ %7, %.preheader.preheader.peel.newph ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i9
  %14 = load i8, ptr %8, align 1
  store i8 %14, ptr %i.x, align 1
  %15 = add nuw nsw i64 %.1.i9, 1
  br label %AppendJumbleInternal.exit11

AppendJumbleInternal.exit11:                      ; preds = %bb.g, %bb.i, %.preheader
  %storemerge.i5 = phi i64 [ %13, %.preheader ], [ %7, %bb.g ], [ %15, %bb.i ]
  store i64 %storemerge.i5, ptr %i.t, align 8
  ret void
}

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_jumbleElements(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %.critedge, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %list_length.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = load i32, ptr %i.a, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next.i, %i.f
  br i1 %i.g, label %bb.c, label %IsSquashableConstantList.exit, !llvm.loop !17

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call fastcc zeroext i1 @IsSquashableConstant(ptr noundef %i.j)
  br i1 %i.k, label %bb.b, label %.critedge

IsSquashableConstantList.exit:                    ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4
  %i.m = icmp eq i32 %i.l, 35
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %IsSquashableConstantList.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i32 %i.o, 1                      ; 2 uses
  %i.u = xor i32 %i.o, -1
  %i.v = add nsw i32 %i.r, %i.u                   ; 2 uses
  %i.w = icmp sgt i32 %i.t, -1
  br i1 %i.w, label %bb.g, label %RecordConstLocation.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp slt i32 %i.y, %i.aa
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = shl i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = sext i32 %i.ab to i64
  %i.af = mul nsw i64 %i.ae, 12
  %i.ag = tail call ptr @repalloc(ptr noundef %i.ad, i64 noundef %i.af) #11 ; 2 uses
  store ptr %i.ag, ptr %i.ac, align 8
  %.pre20.i = load i32, ptr %i.x, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ah = phi i32 [ %i.y, %._crit_edge.i ], [ %.pre20.i, %bb.h ]
  %i.ai = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.t, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = load i32, ptr %i.x, align 4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.v, ptr %i.aq, align 4
  %i.ar = icmp sgt i32 %i.v, -1
  %i.as = load ptr, ptr %i.aj, align 8
  %i.at = load i32, ptr %i.x, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [12 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = zext i1 %i.ar to i8
  store i8 %i.ax, ptr %i.aw, align 4
  %i.ay = load ptr, ptr %i.aj, align 8
  %i.az = load i32, ptr %i.x, align 4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  store i8 0, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.x, align 4
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.x, align 4
  br label %RecordConstLocation.exit

RecordConstLocation.exit:                         ; preds = %bb.f, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.bf, align 4
  br label %bb.j

.critedge:                                        ; preds = %bb.c, %list_length.exit.i, %bb.a, %bb.d, %bb.e, %IsSquashableConstantList.exit
  tail call fastcc void @_jumbleNode(ptr noundef %0, ptr noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %RecordConstLocation.exit, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @IsSquashableConstant(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi ptr [ %0, %bb.a ], [ %.021.be, %.backedge ] ; 6 uses
  %i.a = load i32, ptr %.021, align 4
  switch i32 %i.a, label %.thread [
    i32 27, label %.backedge
    i32 28, label %.backedge
    i32 7, label %.thread.loopexit68
    i32 8, label %bb.c
    i32 15, label %bb.d
  ]

.backedge:                                        ; preds = %bb.b, %bb.b
  %.021.be.in = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %.021.be = load ptr, ptr %.021.be.in, align 8
  br label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.off = add i32 %i.f, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.021, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ugt i32 %i.h, 10000
  br i1 %i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph47.preheader, label %.thread

.lr.ph47.preheader:                               ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 7
  br i1 %i.s, label %.critedge.peel, label %bb.g

bb.g:                                             ; preds = %.lr.ph47.preheader
  %i.t = tail call zeroext i1 @stack_is_too_deep() #11
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc zeroext i1 @IsSquashableConstant(ptr noundef nonnull %i.q)
  br i1 %i.u, label %..critedge.peel_crit_edge, label %.thread

..critedge.peel_crit_edge:                        ; preds = %bb.h
  %.pre = load i32, ptr %i.l, align 4
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %..critedge.peel_crit_edge, %.lr.ph47.preheader
  %i.v = phi i32 [ %.pre, %..critedge.peel_crit_edge ], [ %i.n, %.lr.ph47.preheader ] ; 2 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph47, label %.thread

.lr.ph47:                                         ; preds = %.critedge.peel, %.critedge
  %i.x = phi i32 [ %i.ae, %.critedge ], [ %i.v, %.critedge.peel ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 1, %.critedge.peel ] ; 2 uses
  %i.y = load ptr, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, 7
  br i1 %i.ac, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph47
  %i.ad = tail call fastcc zeroext i1 @IsSquashableConstant(ptr noundef nonnull %i.aa)
  br i1 %i.ad, label %..critedge_crit_edge, label %.thread

..critedge_crit_edge:                             ; preds = %bb.i
  %.pre56 = load i32, ptr %i.l, align 4
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph47
  %i.ae = phi i32 [ %.pre56, %..critedge_crit_edge ], [ %i.x, %.lr.ph47 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph47, label %.thread, !llvm.loop !18

.thread.loopexit68:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.i, %.critedge, %bb.b, %.thread.loopexit68, %bb.g, %bb.h, %.critedge.peel, %bb.f, %.lr.ph, %bb.d, %bb.e, %bb.c
  %.4 = phi i1 [ true, %.thread.loopexit68 ], [ false, %bb.b ], [ %i.d, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.f ], [ true, %.lr.ph ], [ false, %bb.g ], [ false, %bb.h ], [ true, %.critedge.peel ], [ true, %.critedge ], [ false, %bb.i ]
  ret i1 %.4
}

declare zeroext i1 @stack_is_too_deep() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @AppendJumble64(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, -1021
  %.not.i = icmp ult i64 %i.f, 4
  br i1 %.not.i, label %.preheader12, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i32 %i.b, ptr %i.g, align 1
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 4
  br label %AppendJumbleInternal.exit

.preheader12:                                     ; preds = %bb.b, %bb.e
  %.030.i = phi i64 [ %i.q, %bb.e ], [ 4, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.o, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.0.i = phi ptr [ %i.p, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = icmp ugt i64 %.029.i, 1023
  br i1 %i.j, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.preheader12
  %i.k = tail call i64 @hash_bytes_extended(ptr noundef %i.c, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.k, ptr %i.c, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.1.i = phi i64 [ 8, %bb.d ], [ %.029.i, %.preheader12 ] ; 3 uses
  %i.l = sub nuw nsw i64 1024, %.1.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i64 %i.m, i1 false)
  %i.o = add nuw nsw i64 %i.m, %.1.i              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.m
  %i.q = sub nuw nsw i64 %.030.i, %i.m            ; 2 uses
  %.not34.i = icmp eq i64 %i.q, 0
  br i1 %.not34.i, label %AppendJumbleInternal.exit, label %.preheader12, !llvm.loop !8

AppendJumbleInternal.exit:                        ; preds = %bb.e, %bb.c
  %storemerge.i = phi i64 [ %i.i, %bb.c ], [ %i.o, %bb.e ] ; 2 uses
  store i64 %storemerge.i, ptr %i.d, align 8
  store i32 0, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %AppendJumbleInternal.exit
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %storemerge.i, %AppendJumbleInternal.exit ] ; 3 uses
  %i.s = load ptr, ptr %0, align 8                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = add i64 %i.r, -1017
  %.not.i4 = icmp ult i64 %i.u, 8
  br i1 %.not.i4, label %.preheader, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.w = load i64, ptr %1, align 1
  store i64 %i.w, ptr %i.v, align 1
  %i.x = load i64, ptr %i.t, align 8
  %i.y = add i64 %i.x, 8
  br label %AppendJumbleInternal.exit11

.preheader:                                       ; preds = %bb.f, %bb.i
  %.030.i6 = phi i64 [ %i.ag, %bb.i ], [ 8, %bb.f ] ; 2 uses
  %.029.i7 = phi i64 [ %i.ae, %bb.i ], [ %i.r, %bb.f ] ; 2 uses
  %.0.i8 = phi ptr [ %i.af, %bb.i ], [ %1, %bb.f ] ; 2 uses
  %i.z = icmp ugt i64 %.029.i7, 1023
  br i1 %i.z, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %.preheader
  %i.aa = tail call i64 @hash_bytes_extended(ptr noundef %i.s, i32 noundef 1024, i64 noundef 0) #11
  store i64 %i.aa, ptr %i.s, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader
  %.1.i9 = phi i64 [ 8, %bb.h ], [ %.029.i7, %.preheader ] ; 3 uses
  %i.ab = sub nuw nsw i64 1024, %.1.i9
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.030.i6, i64 %i.ab) ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %.1.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %.0.i8, i64 %i.ac, i1 false)
  %i.ae = add nuw nsw i64 %i.ac, %.1.i9           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.ac
  %i.ag = sub nuw nsw i64 %.030.i6, %i.ac         ; 2 uses
  %.not34.i10 = icmp eq i64 %i.ag, 0
  br i1 %.not34.i10, label %AppendJumbleInternal.exit11, label %.preheader, !llvm.loop !8

AppendJumbleInternal.exit11:                      ; preds = %bb.i, %bb.g
  %storemerge.i5 = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  store i64 %storemerge.i5, ptr %i.t, align 8
  ret void
}

declare i64 @hash_bytes_extended(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !5}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !5}
!12 = distinct !{null}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_2
