inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ares_buf_append_num_hex.hexbytes = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_buf_create() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ares_malloc_zero(i64 noundef 48) #15 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -1, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ares_malloc_zero(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_buf_create_const(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ares_buf_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ares_malloc_zero(i64 noundef 48) #15 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ares_buf_create.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -1, ptr %i.e, align 8, !tbaa !12
  store ptr %0, ptr %i.c, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.f, align 8, !tbaa !18
  br label %ares_buf_create.exit.thread

ares_buf_create.exit.thread:                      ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ares_buf_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @ares_free(ptr noundef %i.c) #15
  tail call void @ares_free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @ares_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ares_buf_reclaim(ptr noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_is_const.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 3 uses
  %i.b = icmp eq ptr %.pre, null
  br i1 %i.b, label %ares_buf_is_const.exit, label %._crit_edge30

._crit_edge30:                                    ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not26 = icmp eq i64 %i.d, -1
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !tbaa !20 ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %.pre32)
  %.0 = select i1 %.not26, i64 %.pre32, i64 %spec.select ; 5 uses
  %i.e = icmp eq i64 %.0, 0
  br i1 %i.e, label %ares_buf_is_const.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = sub i64 %i.h, %.0                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 %.0
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.pre, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !19
  store ptr %i.k, ptr %0, align 8, !tbaa !17
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = sub i64 %i.m, %.0
  store i64 %i.n, ptr %i.l, align 8, !tbaa !20
  %i.o = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not27 = icmp eq i64 %i.o, -1
  br i1 %.not27, label %ares_buf_is_const.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %i.o, %.0
  store i64 %i.p, ptr %i.c, align 8, !tbaa !12
  br label %ares_buf_is_const.exit

ares_buf_is_const.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge30, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @ares_buf_set_length(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_is_const.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %ares_buf_is_const.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %.not10 = icmp ult i64 %1, %i.j
  br i1 %.not10, label %bb.e, label %ares_buf_is_const.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.i, %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !18
  br label %ares_buf_is_const.exit

ares_buf_is_const.exit:                           ; preds = %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 2, %bb.a ], [ 2, %bb.d ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load i64, ptr %i.g, align 8, !tbaa !18
  %i.k = add i64 %i.j, %2
  store i64 %i.k, ptr %i.g, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %bb.a ], [ 0, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16) i32 @ares_buf_ensure_space(ptr noundef captures(address_is_null) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_is_const.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %ares_buf_is_const.exit, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %1, 1                            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %.not32 = icmp ult i64 %i.k, %i.f
  br i1 %.not32, label %bb.e, label %ares_buf_is_const.exit

.thread:                                          ; preds = %bb.c
  %i.l = add i64 %1, 1                            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %.not3237 = icmp ult i64 %i.q, %i.l
  br i1 %.not3237, label %._crit_edge30.i, label %ares_buf_is_const.exit

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !19 ; 2 uses
  %i.r = icmp eq ptr %.pre.i, null
  br i1 %i.r, label %ares_buf_reclaim.exit, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %.thread, %bb.e
  %.pre.i44 = phi ptr [ %.pre.i, %bb.e ], [ %i.d, %.thread ] ; 3 uses
  %.phi.trans.insert.i41 = phi ptr [ %.phi.trans.insert.i, %bb.e ], [ %i.c, %.thread ]
  %i.s = phi i64 [ %i.f, %bb.e ], [ %i.l, %.thread ] ; 3 uses
  %i.t = phi ptr [ %i.g, %bb.e ], [ %i.m, %.thread ] ; 3 uses
  %i.u = phi ptr [ %i.i, %bb.e ], [ %i.o, %.thread ] ; 4 uses
  %i.v = phi i64 [ %i.j, %bb.e ], [ %i.p, %.thread ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %.not26.i = icmp eq i64 %i.x, -1
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !20 ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %.pre32.i)
  %.0.i34 = select i1 %.not26.i, i64 %.pre32.i, i64 %spec.select.i ; 5 uses
  %i.y = icmp eq i64 %.0.i34, 0
  br i1 %i.y, label %ares_buf_reclaim.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge30.i
  %i.z = sub i64 %i.v, %.0.i34                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i44, i64 %.0.i34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.pre.i44, ptr nonnull align 1 %i.aa, i64 %i.z, i1 false)
  %i.ab = load ptr, ptr %.phi.trans.insert.i41, align 8, !tbaa !19 ; 3 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !17
  store i64 %i.z, ptr %i.u, align 8, !tbaa !18
  %i.ac = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !20
  %i.ad = sub i64 %i.ac, %.0.i34
  store i64 %i.ad, ptr %.phi.trans.insert31.i, align 8, !tbaa !20
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !12  ; 2 uses
  %.not27.i = icmp eq i64 %i.ae, -1
  br i1 %.not27.i, label %ares_buf_reclaim.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub i64 %i.ae, %.0.i34
  store i64 %i.af, ptr %i.w, align 8, !tbaa !12
  br label %ares_buf_reclaim.exit

ares_buf_reclaim.exit:                            ; preds = %bb.e, %._crit_edge30.i, %bb.f, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.g ], [ null, %bb.e ], [ %.pre.i44, %._crit_edge30.i ], [ %i.ab, %bb.f ]
  %i.ah = phi i64 [ %i.s, %bb.g ], [ %i.f, %bb.e ], [ %i.s, %._crit_edge30.i ], [ %i.s, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.t, %bb.g ], [ %i.g, %bb.e ], [ %i.t, %._crit_edge30.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %i.u, %bb.g ], [ %i.i, %bb.e ], [ %i.u, %._crit_edge30.i ], [ %i.u, %bb.f ]
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !21 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %.not33 = icmp ult i64 %i.am, %i.ah
  br i1 %.not33, label %bb.h, label %ares_buf_is_const.exit

bb.h:                                             ; preds = %ares_buf_reclaim.exit
  %i.an = icmp eq i64 %i.ak, 0
  %spec.store.select = select i1 %i.an, i64 16, i64 %i.ak
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.028 = phi i64 [ %spec.store.select, %bb.h ], [ %i.ao, %bb.i ]
  %i.ao = shl i64 %.028, 1                        ; 4 uses
  %i.ap = sub i64 %i.ao, %i.al
  %i.aq = icmp ult i64 %i.ap, %i.ah
  br i1 %i.aq, label %bb.i, label %bb.j, !llvm.loop !22

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call ptr @ares_realloc(ptr noundef %i.ag, i64 noundef %i.ao) #15 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %ares_buf_is_const.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !19
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !21
  store ptr %i.ar, ptr %0, align 8, !tbaa !17
  br label %ares_buf_is_const.exit

ares_buf_is_const.exit:                           ; preds = %.thread, %bb.c, %bb.j, %ares_buf_reclaim.exit, %bb.d, %bb.a, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ 2, %bb.a ], [ 15, %bb.j ], [ 0, %bb.d ], [ 0, %ares_buf_reclaim.exit ], [ 2, %bb.c ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_byte(ptr noundef captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %ares_buf_append.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i8 %1, ptr %i.f, align 1
  %i.g = load i64, ptr %i.d, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.d, align 8, !tbaa !18
  br label %ares_buf_append.exit

ares_buf_append.exit:                             ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_be16(ptr noundef captures(address_is_null) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %ares_buf_append_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i16 %1, 8
  %i.c = trunc nuw i16 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i8 %i.c, ptr %i.h, align 1
  %i.i = load i64, ptr %i.f, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !18
  %i.k = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i11, label %bb.c, label %ares_buf_append_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i16 %1 to i8
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.n = load i64, ptr %i.f, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 %i.l, ptr %i.o, align 1
  %i.p = load i64, ptr %i.f, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.f, align 8, !tbaa !18
  br label %ares_buf_append_byte.exit

ares_buf_append_byte.exit:                        ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_be32(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %ares_buf_append_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 24
  %i.c = trunc nuw i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i8 %i.c, ptr %i.h, align 1
  %i.i = load i64, ptr %i.f, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !18
  %i.k = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i23 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i23, label %bb.c, label %ares_buf_append_byte.exit

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i32 %1, 16
  %i.m = trunc i32 %i.l to i8
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.o = load i64, ptr %i.f, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 %i.m, ptr %i.p, align 1
  %i.q = load i64, ptr %i.f, align 8, !tbaa !18
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.f, align 8, !tbaa !18
  %i.s = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %.not.i.i25 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i25, label %bb.d, label %ares_buf_append_byte.exit

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i32 %1, 8
  %i.u = trunc i32 %i.t to i8
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.w = load i64, ptr %i.f, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1
  %i.y = load i64, ptr %i.f, align 8, !tbaa !18
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.f, align 8, !tbaa !18
  %i.aa = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1) ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i27, label %bb.e, label %ares_buf_append_byte.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc i32 %1 to i8
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1
  %i.af = load i64, ptr %i.f, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !18
  br label %ares_buf_append_byte.exit

ares_buf_append_byte.exit:                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.s, %bb.c ], [ %i.a, %bb.a ], [ %i.aa, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_buf_append_start(ptr noundef captures(address_is_null) %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef %i.b)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = xor i64 %i.h, -1
  %i.j = add i64 %i.f, %i.i
  store i64 %i.j, ptr %1, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = load i64, ptr %i.g, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ares_buf_append_finish(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = add i64 %i.c, %1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_buf_finish_bin(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ares_buf_is_const.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.c, null
  %.phi.trans.insert.i19 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre.i20 = load ptr, ptr %.phi.trans.insert.i19, align 8, !tbaa !19 ; 4 uses
  %i.d = icmp eq ptr %.pre.i20, null              ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %ares_buf_is_const.exit, label %._crit_edge30.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %ares_buf_reclaim.exit.thread, label %._crit_edge30.i

._crit_edge30.i:                                  ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %.not26.i = icmp eq i64 %i.f, -1
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !20 ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %.pre32.i)
  %.0.i16 = select i1 %.not26.i, i64 %.pre32.i, i64 %spec.select.i ; 5 uses
  %i.g = icmp eq i64 %.0.i16, 0
  br i1 %i.g, label %ares_buf_reclaim.exit.thread30, label %bb.e

bb.e:                                             ; preds = %._crit_edge30.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = sub i64 %i.i, %.0.i16                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i20, i64 %.0.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.pre.i20, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %i.l = load ptr, ptr %.phi.trans.insert.i19, align 8, !tbaa !19 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  store i64 %i.j, ptr %i.h, align 8, !tbaa !18
  %i.m = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !20
  %i.n = sub i64 %i.m, %.0.i16
  store i64 %i.n, ptr %.phi.trans.insert31.i, align 8, !tbaa !20
  %i.o = load i64, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %.not27.i = icmp eq i64 %i.o, -1
  br i1 %.not27.i, label %ares_buf_reclaim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sub i64 %i.o, %.0.i16
  store i64 %i.p, ptr %i.e, align 8, !tbaa !12
  br label %ares_buf_reclaim.exit

ares_buf_reclaim.exit:                            ; preds = %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, null
  br i1 %i.q, label %ares_buf_reclaim.exit.thread, label %ares_buf_reclaim.exit.thread30

ares_buf_reclaim.exit.thread:                     ; preds = %bb.d, %ares_buf_reclaim.exit
  %i.r = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1)
  %.not15 = icmp eq i32 %i.r, 0
  br i1 %.not15, label %._crit_edge, label %ares_buf_is_const.exit

._crit_edge:                                      ; preds = %ares_buf_reclaim.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !19
  br label %ares_buf_reclaim.exit.thread30

ares_buf_reclaim.exit.thread30:                   ; preds = %._crit_edge30.i, %._crit_edge, %ares_buf_reclaim.exit
  %i.t = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %ares_buf_reclaim.exit ], [ %.pre.i20, %._crit_edge30.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  store i64 %i.v, ptr %1, align 8, !tbaa !24
  tail call void @ares_free(ptr noundef nonnull %0) #15
  br label %ares_buf_is_const.exit

ares_buf_is_const.exit:                           ; preds = %bb.c, %ares_buf_reclaim.exit.thread, %bb.a, %ares_buf_reclaim.exit.thread30
  %.0 = phi ptr [ %i.t, %ares_buf_reclaim.exit.thread30 ], [ null, %bb.a ], [ null, %ares_buf_reclaim.exit.thread ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_buf_finish_str(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_finish_bin.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.b, null
  %.phi.trans.insert.i19.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre.i20.i = load ptr, ptr %.phi.trans.insert.i19.i, align 8, !tbaa !19 ; 4 uses
  %i.c = icmp eq ptr %.pre.i20.i, null            ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %ares_buf_finish_bin.exit.thread, label %._crit_edge30.i.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.c, label %ares_buf_reclaim.exit.thread.i, label %._crit_edge30.i.i

._crit_edge30.i.i:                                ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not26.i.i = icmp eq i64 %i.e, -1
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre32.i.i = load i64, ptr %.phi.trans.insert31.i.i, align 8, !tbaa !20 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %.pre32.i.i)
  %.0.i16.i = select i1 %.not26.i.i, i64 %.pre32.i.i, i64 %spec.select.i.i ; 5 uses
  %i.f = icmp eq i64 %.0.i16.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 2 uses
  br i1 %i.f, label %ares_buf_finish_bin.exit.thread14, label %bb.e

bb.e:                                             ; preds = %._crit_edge30.i.i
  %i.g = sub i64 %.pre, %.0.i16.i                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i20.i, i64 %.0.i16.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.pre.i20.i, ptr nonnull align 1 %i.h, i64 %i.g, i1 false)
  %i.i = load ptr, ptr %.phi.trans.insert.i19.i, align 8, !tbaa !19 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !17
  store i64 %i.g, ptr %.phi.trans.insert, align 8, !tbaa !18
  %i.j = load i64, ptr %.phi.trans.insert31.i.i, align 8, !tbaa !20
  %i.k = sub i64 %i.j, %.0.i16.i
  store i64 %i.k, ptr %.phi.trans.insert31.i.i, align 8, !tbaa !20
  %i.l = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not27.i.i = icmp eq i64 %i.l, -1
  br i1 %.not27.i.i, label %ares_buf_reclaim.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = sub i64 %i.l, %.0.i16.i
  store i64 %i.m, ptr %i.d, align 8, !tbaa !12
  br label %ares_buf_reclaim.exit.i

ares_buf_reclaim.exit.i:                          ; preds = %bb.f, %bb.e
  %i.n = icmp eq ptr %i.i, null
  br i1 %i.n, label %ares_buf_reclaim.exit.thread.i, label %ares_buf_finish_bin.exit.thread14

ares_buf_reclaim.exit.thread.i:                   ; preds = %bb.d, %ares_buf_reclaim.exit.i
  %i.o = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef 1)
  %.not15.i = icmp eq i32 %i.o, 0
  br i1 %.not15.i, label %ares_buf_finish_bin.exit, label %ares_buf_finish_bin.exit.thread

ares_buf_finish_bin.exit.thread14:                ; preds = %._crit_edge30.i.i, %ares_buf_reclaim.exit.i
  %i.p = phi i64 [ %i.g, %ares_buf_reclaim.exit.i ], [ %.pre, %._crit_edge30.i.i ]
  %.ph = phi ptr [ %i.i, %ares_buf_reclaim.exit.i ], [ %.pre.i20.i, %._crit_edge30.i.i ]
  tail call void @ares_free(ptr noundef nonnull %0) #15
  br label %bb.g

ares_buf_finish_bin.exit:                         ; preds = %ares_buf_reclaim.exit.thread.i
  %.pre.i = load ptr, ptr %.phi.trans.insert.i19.i, align 8, !tbaa !19 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  tail call void @ares_free(ptr noundef nonnull %0) #15
  %i.s = icmp eq ptr %.pre.i, null
  br i1 %i.s, label %ares_buf_finish_bin.exit.thread, label %bb.g

bb.g:                                             ; preds = %ares_buf_finish_bin.exit.thread14, %ares_buf_finish_bin.exit
  %i.t = phi i64 [ %i.p, %ares_buf_finish_bin.exit.thread14 ], [ %i.r, %ares_buf_finish_bin.exit ] ; 2 uses
  %i.u = phi ptr [ %.ph, %ares_buf_finish_bin.exit.thread14 ], [ %.pre.i, %ares_buf_finish_bin.exit ] ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.t, ptr %1, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !25
  br label %ares_buf_finish_bin.exit.thread

ares_buf_finish_bin.exit.thread:                  ; preds = %bb.c, %ares_buf_reclaim.exit.thread.i, %bb.a, %ares_buf_finish_bin.exit, %bb.i
  %.0 = phi ptr [ %i.u, %bb.i ], [ null, %ares_buf_finish_bin.exit ], [ null, %bb.a ], [ null, %ares_buf_reclaim.exit.thread.i ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ares_buf_tag(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.c, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @ares_buf_tag_rollback(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.c, ptr %i.e, align 8, !tbaa !20
  store i64 -1, ptr %i.b, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @ares_buf_tag_clear(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @ares_buf_tag_fetch(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = sub i64 %i.g, %i.c
  store i64 %i.h, ptr %1, align 8, !tbaa !24
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  %i.j = load i64, ptr %i.b, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ares_buf_tag_length(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = sub i64 %i.f, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 3) i32 @ares_buf_tag_fetch_bytes(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_tag_fetch.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %ares_buf_tag_fetch.exit.thread, label %ares_buf_tag_fetch.exit

ares_buf_tag_fetch.exit:                          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = sub i64 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  %i.j = icmp eq ptr %i.h, null
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  %i.l = icmp eq ptr %2, null
  %or.cond3 = or i1 %i.l, %or.cond
  br i1 %or.cond3, label %ares_buf_tag_fetch.exit.thread, label %bb.c

bb.c:                                             ; preds = %ares_buf_tag_fetch.exit
  %i.m = load i64, ptr %2, align 8, !tbaa !24
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %ares_buf_tag_fetch.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.g, ptr %2, align 8, !tbaa !24
  %.not = icmp eq i64 %i.f, %i.c
  br i1 %.not, label %ares_buf_tag_fetch.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %ares_buf_tag_fetch.exit.thread

ares_buf_tag_fetch.exit.thread:                   ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.c, %ares_buf_tag_fetch.exit
  %.0 = phi i32 [ 2, %bb.c ], [ 2, %ares_buf_tag_fetch.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ 2, %bb.b ], [ 2, %bb.a ]
end_hunk_0
begin_hunk_1_@ares_buf_replace:bb.a
  %i.bf = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef nonnull %0, i64 noundef %i.h) ; 2 uses
  %.not.us = icmp eq i32 %i.bf, 0
  br i1 %.not.us, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be ; 2 uses
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !18
  %i.bm = add i64 %2, %i.be
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = sub i64 %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.bq, i64 %i.bo, i1 false)
  %i.br = load i64, ptr %i.j, align 8, !tbaa !18
  %i.bs = add i64 %i.h, %i.br                     ; 2 uses
  store i64 %i.bs, ptr %i.j, align 8, !tbaa !18
  %i.bt = add i64 %4, %i.be                       ; 2 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  %i.by = add i64 %i.bv, %i.bt
  %i.bz = sub i64 %i.bs, %i.by
  %i.ca = tail call ptr @ares_memmem(ptr noundef %i.bx, i64 noundef %i.bz, ptr noundef nonnull %1, i64 noundef %2) #15 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread, label %.lr.ph.split.us.split

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %or.cond7, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.g
  %i.cc = phi ptr [ %i.db, %bb.g ], [ %i.o, %.lr.ph.split.split ]
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.split.split.us
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cc, i64 %i.ci
  %i.ck = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck ; 3 uses
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !18
  %i.cn = add i64 %2, %i.ck
  %i.co = add i64 %i.cn, %i.cf
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %i.cr, i64 %i.cp, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull align 1 %3, i64 %4, i1 false)
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !18
  %i.ct = add i64 %i.h, %i.cs                     ; 2 uses
  store i64 %i.ct, ptr %i.j, align 8, !tbaa !18
  %i.cu = add i64 %4, %i.ck                       ; 2 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.cw = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  %i.cz = add i64 %i.cw, %i.cu
  %i.da = sub i64 %i.ct, %i.cz
  %i.db = tail call ptr @ares_memmem(ptr noundef %i.cy, i64 noundef %i.da, ptr noundef nonnull %1, i64 noundef %2) #15 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %.thread, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.h
  %i.dd = phi ptr [ %i.ec, %bb.h ], [ %i.o, %.lr.ph.split.split ]
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split.split
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 0, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dd, i64 %i.dj
  %i.dl = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.j, align 8, !tbaa !18
  %i.do = add i64 %2, %i.dl
  %i.dp = add i64 %i.do, %i.dg
  %i.dq = sub i64 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %i.ds, i64 %i.dq, i1 false)
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !18
  %i.du = add i64 %i.h, %i.dt                     ; 2 uses
  store i64 %i.du, ptr %i.j, align 8, !tbaa !18
  %i.dv = add i64 %4, %i.dl                       ; 2 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.dx = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.ea = add i64 %i.dx, %i.dv
  %i.eb = sub i64 %i.du, %i.ea
  %i.ec = tail call ptr @ares_memmem(ptr noundef %i.dz, i64 noundef %i.eb, ptr noundef nonnull %1, i64 noundef %2) #15 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread, label %.lr.ph.split.split.split

.thread:                                          ; preds = %bb.h, %.lr.ph.split.split.split, %bb.g, %.lr.ph.split.split.split.us, %bb.f, %.lr.ph.split.us.split, %bb.e, %bb.d, %.lr.ph.split.us.split.us, %bb.c, %.preheader, %bb.a, %bb.b
  %.2 = phi i32 [ 2, %bb.a ], [ 2, %bb.b ], [ 0, %bb.g ], [ %i.bf, %.lr.ph.split.us.split ], [ 0, %.preheader ], [ 0, %bb.d ], [ %i.aa, %.lr.ph.split.us.split.us ], [ 15, %bb.c ], [ 0, %bb.f ], [ 15, %bb.e ], [ 15, %.lr.ph.split.split.split.us ], [ 15, %.lr.ph.split.split.split ], [ 0, %bb.h ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 11) i32 @ares_buf_peek_byte(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_fetch.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %ares_buf_fetch.exit.thread11, label %ares_buf_fetch.exit

ares_buf_fetch.exit:                              ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %ares_buf_fetch.exit.thread, label %bb.c

ares_buf_fetch.exit.thread11:                     ; preds = %bb.b
  %i.h = icmp eq ptr %1, null
  %spec.select19 = select i1 %i.h, i32 2, i32 10
  br label %ares_buf_fetch.exit.thread

bb.c:                                             ; preds = %ares_buf_fetch.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %ares_buf_fetch.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !25
  store i8 %i.l, ptr %1, align 1, !tbaa !25
  br label %ares_buf_fetch.exit.thread

ares_buf_fetch.exit.thread:                       ; preds = %ares_buf_fetch.exit.thread11, %bb.a, %bb.c, %ares_buf_fetch.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 2, %ares_buf_fetch.exit ], [ 10, %bb.c ], [ 2, %bb.a ], [ %spec.select19, %ares_buf_fetch.exit.thread11 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ares_buf_get_position(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 3) i32 @ares_buf_set_position(ptr noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.e, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 18) i32 @ares_buf_parse_dns_binstr(ptr noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @ares_buf_parse_dns_binstr_int(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 18) i32 @ares_buf_parse_dns_binstr_int(ptr noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca i64, align 8                        ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_buf_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %ares_buf_create.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @ares_malloc_zero(i64 noundef 48) #15 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ares_buf_create.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 -1, ptr %i.e, align 8, !tbaa !12
  %i.f = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ares_buf_destroy.exit, label %ares_buf_fetch.exit.i

ares_buf_fetch.exit.i:                            ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %ares_buf_destroy.exit, label %bb.e

bb.e:                                             ; preds = %ares_buf_fetch.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.0.copyload = load i8, ptr %i.m, align 1       ; 2 uses
  %i.n = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.n, ptr %i.j, align 8, !tbaa !20
  %i.o = add i64 %1, -1
  %i.p = zext i8 %.0.copyload to i64              ; 6 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %ares_buf_destroy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not31 = icmp eq i8 %.0.copyload, 0
  br i1 %.not31, label %ares_buf_consume.exit.thread58, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not32 = icmp eq i32 %4, 0
  %i.r = sub i64 %i.i, %i.n
  %.not33 = icmp ult i64 %i.r, %i.p
  %or.cond = or i1 %.not32, %.not33
  br i1 %or.cond, label %bb.h, label %ares_buf_peek.exit

ares_buf_peek.exit:                               ; preds = %bb.g
  %i.s = icmp eq i64 %i.i, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %spec.select = select i1 %i.s, ptr null, ptr %i.t
  %i.u = tail call i32 @ares_str_isprint(ptr noundef %spec.select, i64 noundef %i.p) #15
  %.not34 = icmp eq i32 %i.u, 0
  br i1 %.not34, label %ares_buf_destroy.exit, label %bb.h

bb.h:                                             ; preds = %ares_buf_peek.exit, %bb.g
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %ares_buf_len.exit.i, label %ares_buf_consume.exit

ares_buf_len.exit.i:                              ; preds = %bb.h
  %i.v = load i64, ptr %i.h, align 8, !tbaa !18
  %i.w = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, %i.p
  br i1 %i.y, label %ares_buf_destroy.exit, label %ares_buf_consume.exit.thread58.thread

ares_buf_consume.exit.thread58.thread:            ; preds = %ares_buf_len.exit.i
  %i.z = add i64 %i.w, %i.p
  store i64 %i.z, ptr %i.j, align 8, !tbaa !20
  br label %ares_buf_create.exit.thread

ares_buf_consume.exit:                            ; preds = %bb.h
  %i.aa = tail call i32 @ares_buf_fetch_bytes_into_buf(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %i.p) ; 2 uses
  %.not36 = icmp eq i32 %i.aa, 0
  br i1 %.not36, label %ares_buf_consume.exit.thread58.thread74, label %ares_buf_destroy.exit

ares_buf_destroy.exit:                            ; preds = %ares_buf_peek.exit, %bb.d, %ares_buf_fetch.exit.i, %ares_buf_len.exit.i, %bb.e, %ares_buf_consume.exit
  %.156 = phi i32 [ %i.aa, %ares_buf_consume.exit ], [ 10, %bb.e ], [ 10, %ares_buf_len.exit.i ], [ 10, %bb.d ], [ 10, %ares_buf_fetch.exit.i ], [ 17, %ares_buf_peek.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  tail call void @ares_free(ptr noundef %i.ac) #15
  tail call void @ares_free(ptr noundef nonnull %i.c) #15
  br label %ares_buf_create.exit.thread

ares_buf_consume.exit.thread58:                   ; preds = %bb.f
  %.not37 = icmp eq ptr %2, null
  br i1 %.not37, label %ares_buf_create.exit.thread, label %ares_buf_consume.exit.thread58.thread74

ares_buf_consume.exit.thread58.thread74:          ; preds = %ares_buf_consume.exit, %ares_buf_consume.exit.thread58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !tbaa !24
  %6 = call ptr @ares_buf_finish_str(ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  store ptr %6, ptr %2, align 8, !tbaa !29
  %i.ad = load i64, ptr %5, align 8, !tbaa !24
  store i64 %i.ad, ptr %3, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %ares_buf_create.exit.thread

ares_buf_create.exit.thread:                      ; preds = %ares_buf_consume.exit.thread58.thread, %bb.c, %ares_buf_destroy.exit, %ares_buf_consume.exit.thread58.thread74, %ares_buf_consume.exit.thread58, %bb.b, %bb.a
  %.0 = phi i32 [ %.156, %ares_buf_destroy.exit ], [ 2, %bb.a ], [ 10, %bb.b ], [ 0, %ares_buf_consume.exit.thread58.thread74 ], [ 0, %ares_buf_consume.exit.thread58 ], [ 15, %bb.c ], [ 0, %ares_buf_consume.exit.thread58.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 18) i32 @ares_buf_parse_dns_str(ptr noundef captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = call fastcc i32 @ares_buf_parse_dns_binstr_int(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_num_dec(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.thread39

.thread39:                                        ; preds = %bb.a
  %i.b = tail call i64 @ares_pow(i64 noundef 10, i64 noundef %2) #15
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @ares_count_digits(i64 noundef %1) #15 ; 3 uses
  %i.d = tail call i64 @ares_pow(i64 noundef 10, i64 noundef %i.c) #15
  %.not30 = icmp eq i64 %i.c, 0
  br i1 %.not30, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.thread39, %bb.b
  %i.e = phi i64 [ %i.b, %.thread39 ], [ %i.d, %bb.b ]
  %.02042 = phi i64 [ %2, %.thread39 ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.01832 = phi i64 [ %i.e, %.lr.ph ], [ %i.h, %bb.e ] ; 3 uses
  %.01931 = phi i64 [ %.02042, %.lr.ph ], [ %i.t, %bb.e ]
  %i.h = udiv i64 %.01832, 10                     ; 2 uses
  %i.i = icmp ult i64 %.01832, 10
  br i1 %i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = urem i64 %1, %.01832
  %i.l = udiv i64 %i.k, %i.h
  %i.m = trunc i64 %i.l to i8
  %i.n = add i8 %i.m, 48
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.p = load i64, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 %i.n, ptr %i.q, align 1
  %i.r = load i64, ptr %i.g, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.g, align 8, !tbaa !18
  %i.t = add i64 %.01931, -1                      ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.thread, label %bb.c, !llvm.loop !49

.thread:                                          ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.d ], [ 2, %bb.c ], [ 0, %bb.e ]
  ret i32 %.2
}

declare i64 @ares_count_digits(i64 noundef) local_unnamed_addr #2

declare i64 @ares_pow(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_num_hex(ptr noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ares_count_hexdigits(i64 noundef %1) #15 ; 2 uses
  %.not19 = icmp eq i64 %i.b, 0
  br i1 %.not19, label %ares_buf_append_byte.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01327 = phi i64 [ %i.b, %bb.b ], [ %2, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.01220 = phi i64 [ %.01327, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %i.e = shl i64 %.01220, 2
  %i.f = add i64 %i.e, -4
  %i.g = lshr i64 %1, %i.f
  %i.h = and i64 %i.g, 15
  %i.i = getelementptr inbounds nuw i8, ptr @ares_buf_append_num_hex.hexbytes, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25
  %i.k = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %ares_buf_append_byte.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.m = load i64, ptr %i.d, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.j, ptr %i.n, align 1
  %i.o = load i64, ptr %i.d, align 8, !tbaa !18
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.d, align 8, !tbaa !18
  %i.q = add i64 %.01220, -1                      ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %ares_buf_append_byte.exit, label %bb.c, !llvm.loop !50

ares_buf_append_byte.exit:                        ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ %i.k, %bb.c ], [ 0, %bb.d ]
  ret i32 %.2
}

declare i64 @ares_count_hexdigits(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_append_str(ptr noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @ares_strlen(ptr noundef %1) #15 ; 5 uses
  %i.b = icmp eq ptr %1, null
  %i.c = icmp ne i64 %i.a, 0
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %ares_buf_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %ares_buf_append.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef %i.a) ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %ares_buf_append.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr readonly align 1 %1, i64 %i.a, i1 false)
  %i.k = load i64, ptr %i.h, align 8, !tbaa !18
  %i.l = add i64 %i.k, %i.a
  store i64 %i.l, ptr %i.h, align 8, !tbaa !18
  br label %ares_buf_append.exit

ares_buf_append.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ 2, %bb.a ], [ 0, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0.i
}

declare i64 @ares_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @ares_buf_hexdump(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %ares_buf_hexdump_line.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.01323 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.u ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.01323 ; 2 uses
  %i.d = sub nuw i64 %2, %.01323                  ; 2 uses
  %i.e = lshr i64 %.01323, 20
  %i.f = and i64 %i.e, 15
  %i.g = getelementptr inbounds nuw i8, ptr @ares_buf_append_num_hex.hexbytes, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25
  %i.i = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %ares_buf_hexdump_line.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.k = load i64, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %i.h, ptr %i.l, align 1
  %i.m = load i64, ptr %i.b, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.b, align 8, !tbaa !18
  %i.o = lshr i64 %.01323, 16
  %i.p = and i64 %i.o, 15
  %i.q = getelementptr inbounds nuw i8, ptr @ares_buf_append_num_hex.hexbytes, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25
  %i.s = tail call fastcc i32 @ares_buf_ensure_space(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not.i.i.i.1.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.1.i, label %bb.d, label %ares_buf_hexdump_line.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.u = load i64, ptr %i.b, align 8, !tbaa !18
end_hunk_1
