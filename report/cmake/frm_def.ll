Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/frm_def?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_nc_Default_Form = dso_local local_unnamed_addr global ptr @default_form, align 8
@default_form = internal global { i16, i16, i16, [2 x i8], i32, i32, i32, i32, i16, i16, i16, [2 x i8], i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i16 0, i16 0, i16 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i16 -1, i16 -1, i16 -1, [2 x i8] zeroinitializer, i32 3, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @new_form(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #11 ; 19 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = tail call ptr @__errno_location() #12
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_nc_Default_Form, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false), !tbaa.struct !39
  %i.c = tail call fastcc i32 @Connect_Fields(ptr noundef nonnull %i.a, ptr noundef %0) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %Associate_Fields.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.f = load i16, ptr %i.e, align 2, !tbaa !20
  %i.g = icmp sgt i16 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr %i.h, align 4, !tbaa !21
  %i.i = tail call i32 @form_driver(ptr noundef nonnull %i.a, i32 noundef -291056) #13 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  store i16 -1, ptr %i.h, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !22
  br label %bb.j

Associate_Fields.exit:                            ; preds = %bb.b
  %i.k = load i16, ptr %i.a, align 8, !tbaa !23
  %i.l = and i16 %i.k, 1
  %.not8.i = icmp eq i16 %i.l, 0
  br i1 %.not8.i, label %bb.f, label %free_form.exit

bb.f:                                             ; preds = %Associate_Fields.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %Disconnect_Fields.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %.not1820.i.i = icmp eq ptr %i.o, null
  br i1 %.not1820.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.h
  %i.p = phi ptr [ %i.u, %bb.h ], [ %i.o, %.preheader.i.i ]
  %.021.i.i = phi ptr [ %i.t, %bb.h ], [ %i.n, %.preheader.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = icmp eq ptr %i.a, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.q, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %.not18.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.h, %.preheader.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.v, align 4, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.w, align 2, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 -1, ptr %i.x, align 2, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i16 -1, ptr %i.y, align 8, !tbaa !32
  store ptr null, ptr %i.m, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %.not19.i.i = icmp eq ptr %i.aa, null
  br i1 %.not19.i.i, label %Disconnect_Fields.exit.thread.i, label %Disconnect_Fields.exit.thread.sink.split.i

Disconnect_Fields.exit.i:                         ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !33 ; 2 uses
  %.not9.i = icmp eq ptr %.pre.i, null
  br i1 %.not9.i, label %Disconnect_Fields.exit.thread.i, label %Disconnect_Fields.exit.thread.sink.split.i

Disconnect_Fields.exit.thread.sink.split.i:       ; preds = %Disconnect_Fields.exit.i, %._crit_edge.i.i
  %.sink.i = phi ptr [ %i.aa, %._crit_edge.i.i ], [ %.pre.i, %Disconnect_Fields.exit.i ]
  tail call void @free(ptr noundef nonnull %.sink.i) #13
  br label %Disconnect_Fields.exit.thread.i

Disconnect_Fields.exit.thread.i:                  ; preds = %Disconnect_Fields.exit.thread.sink.split.i, %Disconnect_Fields.exit.i, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %free_form.exit

free_form.exit:                                   ; preds = %Associate_Fields.exit, %Disconnect_Fields.exit.thread.i
  %.sink17.i = phi i32 [ 0, %Disconnect_Fields.exit.thread.i ], [ -3, %Associate_Fields.exit ]
  %i.ab = tail call ptr @__errno_location() #12   ; 2 uses
  store i32 %.sink17.i, ptr %i.ab, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %free_form.exit
  %.pre-phi = phi ptr [ %.pre, %._crit_edge ], [ %i.ab, %free_form.exit ]
  %.07.ph = phi i32 [ -1, %._crit_edge ], [ %i.c, %free_form.exit ]
  store i32 %.07.ph, ptr %.pre-phi, align 4, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.i
  %.017 = phi ptr [ null, %bb.i ], [ %i.a, %bb.d ], [ %i.a, %bb.e ]
  ret ptr %.017
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -3, 1) i32 @free_form(ptr noundef captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !23
  %i.b = and i16 %i.a, 1
  %.not8 = icmp eq i16 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Disconnect_Fields.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not1820.i = icmp eq ptr %i.e, null
  br i1 %.not1820.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.f = phi ptr [ %i.k, %bb.e ], [ %i.e, %.preheader.i ]
  %.021.i = phi ptr [ %i.j, %bb.e ], [ %i.d, %.preheader.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.g, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not18.i = icmp eq ptr %i.k, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 -1, ptr %i.n, align 2, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 -1, ptr %i.o, align 8, !tbaa !32
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %Disconnect_Fields.exit.thread, label %Disconnect_Fields.exit.thread.sink.split

Disconnect_Fields.exit:                           ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33 ; 2 uses
  %.not9 = icmp eq ptr %.pre, null
  br i1 %.not9, label %Disconnect_Fields.exit.thread, label %Disconnect_Fields.exit.thread.sink.split

Disconnect_Fields.exit.thread.sink.split:         ; preds = %Disconnect_Fields.exit, %._crit_edge.i
  %.sink = phi ptr [ %i.q, %._crit_edge.i ], [ %.pre, %Disconnect_Fields.exit ]
  tail call void @free(ptr noundef nonnull %.sink) #13
  br label %Disconnect_Fields.exit.thread

Disconnect_Fields.exit.thread:                    ; preds = %Disconnect_Fields.exit.thread.sink.split, %._crit_edge.i, %Disconnect_Fields.exit
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %Disconnect_Fields.exit.thread
  %.sink17 = phi i32 [ 0, %Disconnect_Fields.exit.thread ], [ -2, %bb.a ], [ -3, %bb.b ] ; 2 uses
  %i.r = tail call ptr @__errno_location() #12
  store i32 %.sink17, ptr %i.r, align 4, !tbaa !13
  ret i32 %.sink17
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @set_form_fields(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %Associate_Fields.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %0, align 8, !tbaa !23
  %i.b = and i16 %i.a, 1
  %.not10 = icmp eq i16 %i.b, 0
  br i1 %.not10, label %bb.c, label %Associate_Fields.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Disconnect_Fields.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not1820.i = icmp eq ptr %i.e, null
  br i1 %.not1820.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.f = phi ptr [ %i.k, %bb.e ], [ %i.e, %.preheader.i ]
  %.021.i = phi ptr [ %i.j, %bb.e ], [ %i.d, %.preheader.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = icmp eq ptr %0, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.g, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not18.i = icmp eq ptr %i.k, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 0, ptr %i.m, align 2, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 -1, ptr %i.n, align 2, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 -1, ptr %i.o, align 8, !tbaa !32
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.q) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  store ptr null, ptr %i.p, align 8, !tbaa !33
  br label %Disconnect_Fields.exit

Disconnect_Fields.exit:                           ; preds = %bb.c, %bb.g
  %i.r = tail call fastcc i32 @Connect_Fields(ptr noundef nonnull %0, ptr noundef %1) ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %Associate_Fields.exit

bb.h:                                             ; preds = %Disconnect_Fields.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.u = load i16, ptr %i.t, align 2, !tbaa !20
  %i.v = icmp sgt i16 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i16 0, ptr %i.w, align 4, !tbaa !21
  %i.x = tail call i32 @form_driver(ptr noundef nonnull %0, i32 noundef -291056) #13 ; 0 uses
  br label %Associate_Fields.exit.thread

bb.j:                                             ; preds = %bb.h
  store i16 -1, ptr %i.w, align 4, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.y, align 8, !tbaa !22
  br label %Associate_Fields.exit.thread

Associate_Fields.exit:                            ; preds = %Disconnect_Fields.exit
  %i.z = tail call fastcc i32 @Connect_Fields(ptr noundef %0, ptr noundef %i.d) ; 0 uses
  br label %Associate_Fields.exit.thread

Associate_Fields.exit.thread:                     ; preds = %Associate_Fields.exit, %bb.i, %bb.j, %bb.b, %bb.a
  %.sink = phi i32 [ -3, %bb.b ], [ -2, %bb.a ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %Associate_Fields.exit ] ; 2 uses
  %i.aa = tail call ptr @__errno_location() #12
  store i32 %.sink, ptr %i.aa, align 4, !tbaa !13
  ret i32 %.sink
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -4, 1) i32 @Connect_Fields(ptr noundef nonnull initializes((24, 28), (64, 72)) %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 0, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !20
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %.not92100 = icmp eq ptr %i.d, null
  br i1 %.not92100, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %.not96.peel = icmp eq ptr %i.f, null
  br i1 %.not96.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.preheader
  store ptr %0, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not92.peel = icmp eq ptr %i.h, null
  br i1 %.not92.peel, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.b ]
  %i.i = phi ptr [ %i.q, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %.081102 = phi i32 [ %spec.select, %bb.c ], [ 1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %.not96 = icmp eq ptr %i.k, null
  br i1 %.not96, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i16, ptr %i.i, align 8, !tbaa !45
  %i.m = lshr i16 %i.l, 2
  %i.n = and i16 %i.m, 1
  %i.o = zext nneg i16 %i.n to i32
  %spec.select = add nuw nsw i32 %.081102, %i.o   ; 2 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.not92 = icmp eq ptr %i.q, null
  br i1 %.not92, label %._crit_edge.loopexit.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit.loopexit:                    ; preds = %bb.c
  %i.r = trunc nuw i64 %indvars.iv.next to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge.loopexit.loopexit
  %.085.lcssa.ph = phi i32 [ %i.r, %._crit_edge.loopexit.loopexit ], [ 1, %bb.b ] ; 3 uses
  %.081.lcssa.ph = phi i32 [ %spec.select, %._crit_edge.loopexit.loopexit ], [ 1, %bb.b ] ; 3 uses
  %i.s = sext i32 %.081.lcssa.ph to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #11 ; 6 uses
  %.not93 = icmp eq ptr %i.u, null
  br i1 %.not93, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.085.lcssa.ph, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  store i16 0, ptr %i.u, align 2, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !49
  %i.aa = sext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !50
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !51
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !52
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.ak, %i.ah                ; 2 uses
  %i.am = load i16, ptr %i.w, align 2, !tbaa !31  ; 2 uses
  %i.an = sext i16 %i.am to i32
  %i.ao = icmp sgt i32 %i.ae, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc i32 %i.ae to i16                  ; 2 uses
  store i16 %i.ap, ptr %i.w, align 2, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi i16 [ %i.ap, %bb.f ], [ %i.am, %bb.e ]
  %i.ar = load i16, ptr %i.x, align 4, !tbaa !30  ; 2 uses
  %i.as = sext i16 %i.ar to i32
  %i.at = icmp sgt i32 %i.al, %i.as
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = trunc i32 %i.al to i16                  ; 2 uses
  store i16 %i.au, ptr %i.x, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = phi i16 [ %i.au, %bb.h ], [ %i.ar, %bb.g ]
  %exitcond.peel.not = icmp slt i32 %.085.lcssa.ph, 2
  br i1 %exitcond.peel.not, label %.loopexit123, label %.peel.next

.peel.next:                                       ; preds = %bb.i, %bb.o
  %i.aw = phi i16 [ %i.cb, %bb.o ], [ %i.av, %bb.i ] ; 2 uses
  %i.ax = phi i16 [ %i.bx, %bb.o ], [ %i.aq, %bb.i ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %bb.o ], [ 1, %bb.i ] ; 3 uses
  %.080105 = phi ptr [ %.1, %bb.o ], [ %i.u, %bb.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv119
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 5 uses
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !45
  %i.bb = and i16 %i.ba, 4
  %.not95 = icmp eq i16 %i.bb, 0
  br i1 %.not95, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.peel.next
  %i.bc = trunc i64 %indvars.iv119 to i16         ; 2 uses
  %i.bd = add i16 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %.080105, i64 2
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %.080105, i64 8 ; 2 uses
  store i16 %i.bc, ptr %i.bf, align 2, !tbaa !48
  br label %bb.k

bb.k:                                             ; preds = %.peel.next, %bb.j
  %.1 = phi ptr [ %.080105, %.peel.next ], [ %i.bf, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !49
  %i.bi = sext i16 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !50
  %i.bl = sext i16 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, %i.bi                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !51
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !52
  %i.bs = sext i16 %i.br to i32
  %i.bt = add nsw i32 %i.bs, %i.bp                ; 2 uses
  %i.bu = sext i16 %i.ax to i32
  %i.bv = icmp sgt i32 %i.bm, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = trunc i32 %i.bm to i16                  ; 2 uses
  store i16 %i.bw, ptr %i.w, align 2, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi i16 [ %i.bw, %bb.l ], [ %i.ax, %bb.k ]
  %i.by = sext i16 %i.aw to i32
  %i.bz = icmp sgt i32 %i.bt, %i.by
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = trunc i32 %i.bt to i16                  ; 2 uses
  store i16 %i.ca, ptr %i.x, align 4, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cb = phi i16 [ %i.aw, %bb.m ], [ %i.ca, %bb.n ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit123, label %.peel.next, !llvm.loop !41

.loopexit123:                                     ; preds = %bb.o, %bb.i
  %.1.lcssa = phi ptr [ %i.u, %bb.i ], [ %.1, %bb.o ]
  %i.cc = trunc i32 %.085.lcssa.ph to i16         ; 2 uses
  %i.cd = add i16 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !53
  store i16 %i.cc, ptr %i.b, align 8, !tbaa !32
  %i.cf = trunc i32 %.081.lcssa.ph to i16
  store i16 %i.cf, ptr %i.c, align 2, !tbaa !20
  %sext = shl i32 %.081.lcssa.ph, 16
  %i.cg = ashr exact i32 %sext, 16                ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph115.preheader, label %.loopexit

.lr.ph115.preheader:                              ; preds = %.loopexit123
  %wide.trip.count132 = zext nneg i32 %i.cg to i64
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %._crit_edge111
  %indvars.iv129 = phi i64 [ 0, %.lr.ph115.preheader ], [ %indvars.iv.next130, %._crit_edge111 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv129 ; 4 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !48 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !53 ; 2 uses
  %i.cm = sext i16 %i.cl to i64
  %.not94106 = icmp sle i16 %i.cj, %i.cl
  tail call void @llvm.assume(i1 %.not94106)
  %i.cn = trunc i64 %indvars.iv129 to i16
  %i.co = sext i16 %i.cj to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph115, %Insert_Field_By_Position.exit
  %indvars.iv124 = phi i64 [ %i.co, %.lr.ph115 ], [ %indvars.iv.next125, %Insert_Field_By_Position.exit ] ; 4 uses
  %.0108 = phi ptr [ null, %.lr.ph115 ], [ %.0.i, %Insert_Field_By_Position.exit ] ; 6 uses
  %i.cp = trunc i64 %indvars.iv124 to i16
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv124
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 34
  store i16 %i.cp, ptr %i.cs, align 2, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store i16 %i.cn, ptr %i.ct, align 8, !tbaa !55
  %.not.i = icmp eq ptr %.0108, null
  br i1 %.not.i, label %bb.q, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !49 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  store ptr %i.cr, ptr %i.cx, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr %i.cr, ptr %i.cy, align 8, !tbaa !57
  br label %Insert_Field_By_Position.exit

bb.r:                                             ; preds = %.critedge.i, %.preheader.i
  %.028.i = phi ptr [ %i.di, %.critedge.i ], [ %.0108, %.preheader.i ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.028.i, i64 6
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !49 ; 2 uses
  %i.db = icmp slt i16 %i.da, %i.cv
  br i1 %i.db, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp eq i16 %i.da, %i.cv
  br i1 %i.dc, label %bb.t, label %.critedge2.i

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.028.i, i64 8
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !51
  %i.df = load i16, ptr %i.cw, align 8, !tbaa !51
  %i.dg = icmp slt i16 %i.de, %i.df
  br i1 %i.dg, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %bb.t, %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.028.i, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57 ; 3 uses
  %i.dj = icmp eq ptr %i.di, %.0108
  br i1 %i.dj, label %.critedge2.i, label %bb.r, !llvm.loop !42

.critedge2.i:                                     ; preds = %.critedge.i, %bb.t, %bb.s
  %.029.i = phi ptr [ %.0108, %bb.s ], [ %.0108, %bb.t ], [ null, %.critedge.i ]
  %.1.i = phi ptr [ %.028.i, %bb.s ], [ %.028.i, %bb.t ], [ %i.di, %.critedge.i ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  store ptr %.1.i, ptr %i.dk, align 8, !tbaa !57
  %i.dl = getelementptr inbounds nuw i8, ptr %.1.i, i64 64 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !56
  store ptr %i.cr, ptr %i.dl, align 8, !tbaa !56
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  store ptr %i.cr, ptr %i.dp, align 8, !tbaa !57
  %i.dq = icmp eq ptr %.1.i, %.029.i
  %spec.select.i = select i1 %i.dq, ptr %i.cr, ptr %.0108
  br label %Insert_Field_By_Position.exit

Insert_Field_By_Position.exit:                    ; preds = %bb.q, %.critedge2.i
  %.0.i = phi ptr [ %i.cr, %bb.q ], [ %spec.select.i, %.critedge2.i ] ; 3 uses
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1
  %exitcond128.not = icmp eq i64 %indvars.iv124, %i.cm
  br i1 %exitcond128.not, label %._crit_edge111, label %bb.p, !llvm.loop !43

._crit_edge111:                                   ; preds = %Insert_Field_By_Position.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 34
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !56
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 34
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !54
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ci, i64 6
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !59
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.loopexit, label %.lr.ph115, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge111, %.loopexit123, %bb.d, %.preheader, %.lr.ph.preheader, %bb.a
  %.sink = phi i32 [ -1, %bb.d ], [ -2, %.preheader ], [ -4, %.lr.ph.preheader ], [ 0, %bb.a ], [ 0, %._crit_edge111 ], [ 0, %.loopexit123 ], [ -4, %.lr.ph ] ; 2 uses
  %i.dz = tail call ptr @__errno_location() #12
  store i32 %.sink, ptr %i.dz, align 4, !tbaa !13
  ret i32 %.sink
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @form_fields(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr @_nc_Default_Form, align 8
  %i.b = select i1 %.not, ptr %i.a, ptr %0
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -32768, 32768) i32 @field_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr @_nc_Default_Form, align 8
  %i.b = select i1 %.not, ptr %i.a, ptr %0
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !32
  %i.e = sext i16 %i.d to i32
  ret i32 %i.e
}

declare i32 @form_driver(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !29}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS8formnode", !10, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"p1 _ZTS7_win_st", !10, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"p2 _ZTS9fieldnode", !15, i64 0}
!17 = !{!"p1 _ZTS9fieldnode", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"formnode", !12, i64 0, !12, i64 2, !12, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !12, i64 24, !12, i64 26, !12, i64 28, !7, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !16, i64 64, !17, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120}
!20 = !{!19, !12, i64 26}
!21 = !{!19, !12, i64 28}
!22 = !{!19, !17, i64 72}
!23 = !{!19, !12, i64 0}
!24 = !{!19, !16, i64 64}
!25 = !{!"p1 _ZTS8typenode", !10, i64 0}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!"fieldnode", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !11, i64 80, !25, i64 88, !10, i64 96, !26, i64 104, !10, i64 112}
!28 = !{!27, !11, i64 80}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!19, !12, i64 4}
!31 = !{!19, !12, i64 2}
!32 = !{!19, !12, i64 24}
!33 = !{!19, !10, i64 80}
!34 = !{!11, !11, i64 0}
!35 = !{!12, !12, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!16, !16, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 4, i64 2, !35, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 2, !35, i64 26, i64 2, !35, i64 28, i64 2, !35, i64 32, i64 4, !13, i64 40, i64 8, !36, i64 48, i64 8, !36, i64 56, i64 8, !36, i64 64, i64 8, !37, i64 72, i64 8, !18, i64 80, i64 8, !38, i64 88, i64 8, !38, i64 96, i64 8, !38, i64 104, i64 8, !38, i64 112, i64 8, !38, i64 120, i64 8, !38}
!40 = distinct !{!40, !29, !46}
!41 = distinct !{!41, !29, !46}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = !{!27, !12, i64 0}
!46 = !{!"llvm.loop.peeled.count", i32 1}
!47 = !{!"", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!48 = !{!47, !12, i64 0}
!49 = !{!27, !12, i64 6}
!50 = !{!27, !12, i64 2}
!51 = !{!27, !12, i64 8}
!52 = !{!27, !12, i64 4}
!53 = !{!47, !12, i64 2}
!54 = !{!27, !12, i64 34}
!55 = !{!27, !12, i64 32}
!56 = !{!27, !17, i64 64}
!57 = !{!27, !17, i64 56}
!58 = !{!47, !12, i64 4}
!59 = !{!47, !12, i64 6}
end_hunk_0
