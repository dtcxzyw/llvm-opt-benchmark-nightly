Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/param?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tbirds\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid request to pj_param, fatal\0A\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @_Z10pj_mkparamPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %i.b = add i64 %i.a, 16
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !8
  store ptr null, ptr %i.c, align 8, !tbaa !9
  %i.e = load i8, ptr %0, align 1, !tbaa !8
  %i.f = icmp eq i8 %i.e, 43
  %spec.select.idx = zext i1 %i.f to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %spec.select) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_Z13pj_mkparam_wsPKcPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #18
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %.038 = phi ptr [ %i.i, %bb.b ], [ %0, %.preheader ] ; 3 uses
  %i.d = load i8, ptr %.038, align 1, !tbaa !8    ; 2 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !14
  %i.h = and i16 %i.g, 8192
  %.not = icmp eq i16 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.038, i64 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i8 %i.d, 43
  %spec.select.idx = zext i1 %i.j to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.038, i64 %spec.select.idx ; 6 uses
  %i.k = load i8, ptr %spec.select, align 1, !tbaa !8 ; 2 uses
  %.not4452 = icmp eq i8 %i.k, 0
  br i1 %.not4452, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %i.l = phi i8 [ %i.ac, %bb.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = phi ptr [ %i.ab, %bb.i ], [ %spec.select, %bb.c ] ; 2 uses
  %.054 = phi i1 [ %.1, %bb.i ], [ false, %bb.c ]
  %.03453 = phi i64 [ %i.aa, %bb.i ], [ 0, %bb.c ] ; 6 uses
  br i1 %.054, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq i8 %i.l, 34
  br i1 %i.n, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %.03453, 1                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, 34                      ; 2 uses
  %spec.select48 = select i1 %i.r, i64 %i.o, i64 %.03453
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.s = icmp eq i8 %i.l, 61
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = icmp eq i8 %i.u, 34
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = sext i8 %i.l to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !14
  %i.z = and i16 %i.y, 8192
  %.not45 = icmp eq i16 %i.z, 0
  br i1 %.not45, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.h
  %.135 = phi i64 [ %.03453, %bb.h ], [ %spec.select48, %bb.e ], [ %.03453, %bb.g ], [ %.03453, %bb.d ]
  %.1 = phi i1 [ false, %bb.h ], [ %i.r, %bb.e ], [ true, %bb.g ], [ true, %bb.d ]
  %i.aa = add i64 %.135, 1                        ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.aa ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8   ; 2 uses
  %.not44 = icmp eq i8 %i.ac, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.i, %bb.h, %bb.c
  %.034.lcssa = phi i64 [ 0, %bb.c ], [ %.03453, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %.lcssa = phi ptr [ %spec.select, %bb.c ], [ %i.m, %bb.h ], [ %i.ab, %bb.i ]
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store ptr %.lcssa, ptr %1, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ad = add i64 %.034.lcssa, 17
  %i.ae = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.ad) #19 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %spec.select, i64 %.034.lcssa, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.a
  %.137 = phi ptr [ null, %bb.a ], [ %i.ae, %bb.l ], [ null, %bb.k ]
  ret ptr %.137
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 61) #15 ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %.not = icmp eq ptr %i.a, null
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %.0 = select i1 %.not, i64 %i.b, i64 %i.e       ; 2 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.e
  %.02027 = phi ptr [ %i.o, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02027, i64 9 ; 2 uses
  %i.h = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %i.g, i64 noundef %.0) #15
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  switch i8 %i.k, label %bb.d [
    i8 61, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.02027, i64 8
  store i8 1, ptr %i.l, align 8, !tbaa !8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %.preheader
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str) #15
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %.02027, align 8, !tbaa !9 ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %.loopexit, label %.preheader, !llvm.loop !21

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %bb.c
  %.021 = phi ptr [ null, %bb.a ], [ %.02027, %bb.c ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z18pj_get_default_ctxv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.048 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 6 uses
  %i.d = load i8, ptr %2, align 1, !tbaa !8       ; 3 uses
  %i.e = sext i8 %i.d to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.1, i32 %i.e, i64 7)
  %i.f = icmp eq ptr %memchr, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %i.g) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 61) #15 ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %.not.i = icmp eq ptr %i.i, null
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub i64 %i.k, %i.l
  %.0.i = select i1 %.not.i, i64 %i.j, i64 %i.m   ; 2 uses
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %_Z15pj_param_existsP8ARG_listPKc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.i
  %.02027.i = phi ptr [ %i.w, %bb.i ], [ %1, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02027.i, i64 9 ; 2 uses
  %i.p = tail call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.o, i64 noundef %.0.i) #15
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  switch i8 %i.s, label %bb.h [
    i8 61, label %bb.g
    i8 0, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02027.i, i64 8
  store i8 1, ptr %i.t, align 8, !tbaa !8
  br label %_Z15pj_param_existsP8ARG_listPKc.exit

bb.h:                                             ; preds = %bb.f, %.preheader.i
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str) #15
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_Z15pj_param_existsP8ARG_listPKc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %.02027.i, align 8, !tbaa !9 ; 2 uses
  %.not25.i = icmp eq ptr %i.w, null
  br i1 %.not25.i, label %_Z15pj_param_existsP8ARG_listPKc.exit, label %.preheader.i, !llvm.loop !21

_Z15pj_param_existsP8ARG_listPKc.exit:            ; preds = %bb.h, %bb.i, %bb.e, %bb.g
  %.021.i = phi ptr [ null, %bb.e ], [ %.02027.i, %bb.g ], [ null, %bb.i ], [ null, %bb.h ] ; 4 uses
  %i.x = icmp eq i8 %i.d, 116
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_Z15pj_param_existsP8ARG_listPKc.exit
  %i.y = icmp ne ptr %.021.i, null
  %.sroa.0.0.insert.ext = zext i1 %i.y to i64
  br label %.loopexit

bb.k:                                             ; preds = %_Z15pj_param_existsP8ARG_listPKc.exit
  %i.z = icmp eq ptr %.021.i, null
  br i1 %i.z, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !8
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !8
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #15
  %i.ae = getelementptr inbounds nuw i8, ptr %.021.i, i64 9
  %i.af = and i64 %i.ad, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ah, 61
  %spec.select.idx = zext i1 %i.ai to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ag, i64 %spec.select.idx ; 7 uses
  switch i8 %i.d, label %.loopexit [
    i8 105, label %bb.m
    i8 100, label %bb.p
    i8 114, label %bb.q
    i8 115, label %bb.r
    i8 98, label %bb.s
  ]

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i64 @__isoc23_strtol(ptr noundef nonnull %spec.select, ptr noundef null, i32 noundef 10) #17, !inline_history !24
  %.sroa.0.0.insert.ext32 = and i64 %i.aj, 4294967295 ; 2 uses
  %i.ak = load i8, ptr %spec.select, align 1, !tbaa !8 ; 2 uses
end_hunk_0
