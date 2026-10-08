Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/frame?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pk_current_vm = external thread_local local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define void @FastLocals__to_dict(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @py_pushtmp() #6     ; 3 uses
  tail call void @py_newdict(ptr noundef %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = load i32, ptr %i.d, align 8, !tbaa !14
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.g
  %.not1418 = icmp eq ptr %i.c, %i.h
  br i1 %.not1418, label %.critedge, label %.lr.ph20

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  %i.i = tail call ptr (...) @py_retval() #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !21
  tail call void (...) @py_pop() #6
  ret void

.lr.ph20:                                         ; preds = %.lr.ph, %bb.c
  %.01619 = phi ptr [ %i.r, %bb.c ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01619, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = tail call zeroext i1 @py_istype(ptr noundef %i.m, i16 noundef signext 0) #6
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph20
  %i.o = load ptr, ptr %.01619, align 8, !tbaa !25
  %i.p = tail call ptr @py_name2ref(ptr noundef %i.o) #6
  %i.q = tail call zeroext i1 @py_dict_setitem(ptr noundef %i.a, ptr noundef %i.p, ptr noundef %i.m) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph20
  %i.r = getelementptr inbounds nuw i8, ptr %.01619, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.t = load i32, ptr %i.d, align 8, !tbaa !14
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u
  %.not14 = icmp eq ptr %i.r, %i.v
  br i1 %.not14, label %.critedge, label %.lr.ph20
}

declare ptr @py_pushtmp(...) local_unnamed_addr #1

declare void @py_newdict(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare zeroext i1 @py_dict_setitem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @py_name2ref(ptr noundef) local_unnamed_addr #1

declare ptr @py_retval(...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @py_pop(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @FastLocals__to_namedict(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @NameDict__new(float noundef 6.700000e-01) #6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.f = load i32, ptr %i.d, align 8, !tbaa !14
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.g
  %.not1317 = icmp eq ptr %i.c, %i.h
  br i1 %.not1317, label %.critedge, label %.lr.ph19

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.a
  ret ptr %i.a

.lr.ph19:                                         ; preds = %.lr.ph, %bb.c
  %.01518 = phi ptr [ %i.o, %bb.c ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [24 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.m = tail call zeroext i1 @py_istype(ptr noundef %i.l, i16 noundef signext 0) #6
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.n = load ptr, ptr %.01518, align 8, !tbaa !25
  tail call void @NameDict__set(ptr noundef %i.a, ptr noundef %i.n, ptr noundef %i.l) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph19
  %i.o = getelementptr inbounds nuw i8, ptr %.01518, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.q = load i32, ptr %i.d, align 8, !tbaa !14
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.r
  %.not13 = icmp eq ptr %i.o, %i.s
  br i1 %.not13, label %.critedge, label %.lr.ph19
}

declare ptr @NameDict__new(float noundef) local_unnamed_addr #1

declare void @NameDict__set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @Frame__new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %5 to i8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 133320
  %i.e = tail call ptr @FixedMemoryPool__alloc(ptr noundef nonnull %i.d) #6 ; 10 uses
  store ptr null, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %2, ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %3, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %4, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 %i.a, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  store i32 -1, ptr %i.l, align 4, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  tail call void @c11_vector__ctor(ptr noundef nonnull %i.m, i32 noundef 32) #6
  ret ptr %i.e
}

declare ptr @FixedMemoryPool__alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #3

declare void @c11_vector__ctor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Frame__delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @c11_vector__dtor(ptr noundef nonnull %i.a) #6
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 133320
  tail call void @FixedMemoryPool__dealloc(ptr noundef nonnull %i.d, ptr noundef %0) #6
  ret void
}

declare void @c11_vector__dtor(ptr noundef) local_unnamed_addr #1

declare void @FixedMemoryPool__dealloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @Frame__goto_exception_handler(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr [32 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.h, i16 noundef signext 0) #6
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %3 = getelementptr i8, ptr %i.g, i64 -32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr i8, ptr %i.g, i64 -28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.n
  store ptr %i.o, ptr %1, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = load i32, ptr %3, align 8, !tbaa !43
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [20 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !60
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.y = load i32, ptr %i.c, align 8, !tbaa !39
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !39
  %4 = icmp slt i64 %indvars.iv, 2
  br i1 %4, label %.loopexit, label %.lr.ph, !llvm.loop !55

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %spec.select = phi i32 [ %i.x, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define void @Frame__begin_try(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Frame__iblock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  br label %Frame__iblock.exit

Frame__iblock.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = tail call ptr @c11_vector__emplace(ptr noundef nonnull %i.l) #6 ; 3 uses
  store i32 %.0.i, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = ptrtoint ptr %1 to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 24
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  tail call void @py_newnil(ptr noundef nonnull %i.v) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Frame__iblock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare ptr @c11_vector__emplace(ptr noundef) local_unnamed_addr #1

declare void @py_newnil(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @Frame__top_exc_info(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr [32 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @Frame__gc_mark(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i8, ptr %i.c, align 2, !tbaa !62, !range !47, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20    ; 3 uses
  %i.j = and i8 %i.i, 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = or disjoint i8 %i.i, 1
  store i8 %i.k, ptr %i.h, align 1, !tbaa !20
  %i.l = and i8 %i.i, 2
  %.not48 = icmp eq i8 %i.l, 0
  br i1 %.not48, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %1) #6
  tail call void @c11_vector__reserve(ptr noundef nonnull %1, i32 noundef %i.r) #6
  %.pre = load i32, ptr %i.m, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %.pre, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !65
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  store ptr %i.g, ptr %i.v, align 8, !tbaa !66
  %i.w = add nsw i32 %i.s, 1
  store i32 %i.w, ptr %i.m, align 8, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !36, !range !47, !noundef !48
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !62, !range !47, !noundef !48
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !20  ; 3 uses
  %i.aj = and i8 %i.ai, 1
  %.not49 = icmp eq i8 %i.aj, 0
  br i1 %.not49, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ak = or disjoint i8 %i.ai, 1
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !20
  %i.al = and i8 %i.ai, 2
  %.not50 = icmp eq i8 %i.al, 0
  br i1 %.not50, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !64
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %1) #6
  tail call void @c11_vector__reserve(ptr noundef nonnull %1, i32 noundef %i.ar) #6
  %.pre58 = load i32, ptr %i.am, align 8, !tbaa !63
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i32 [ %.pre58, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !65
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !66
  %i.aw = add nsw i32 %i.as, 1
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.j, %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
end_hunk_0
