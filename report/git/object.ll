Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/object?download=true
inline.NumInlined: 35
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@object_type_strings = internal unnamed_addr constant [5 x ptr] [ptr null, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16
@.str = private unnamed_addr constant [25 x i8] c"invalid object type \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"object %s is a %s, not a %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"object.c\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unknown object type %d\00", align 1
@save_commit_buffer = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"object %s has unknown type id %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unable to parse object: %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"unable to open object stream for %s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hash mismatch %s\00", align 1
@object_array_slopbuf = internal global [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"./hashmap.h\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"hashmap_get_size: size not set\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_max_object_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @get_indexed_object(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @type_name(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @object_type_strings, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 5) i32 @type_from_string_gently(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi i64 [ %i.b, %bb.b ], [ %1, %bb.a ]  ; 4 uses
  %i.c = tail call i32 @xstrncmpz(ptr noundef nonnull @.str.8, ptr noundef %0, i64 noundef %.011) #17
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @xstrncmpz(ptr noundef nonnull @.str.9, ptr noundef %0, i64 noundef %.011) #17
  %.not14.1 = icmp eq i32 %i.d, 0
  br i1 %.not14.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @xstrncmpz(ptr noundef nonnull @.str.10, ptr noundef %0, i64 noundef %.011) #17
  %.not14.2 = icmp eq i32 %i.e, 0
  br i1 %.not14.2, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @xstrncmpz(ptr noundef nonnull @.str.11, ptr noundef %0, i64 noundef %.011) #17
  %.not14.3 = icmp eq i32 %i.f, 0
  br i1 %.not14.3, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.g = tail call fastcc ptr @_(ptr noundef nonnull @.str)
  tail call void (ptr, ...) @die(ptr noundef %i.g, ptr noundef %0) #18
  unreachable

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.010 = phi i32 [ -1, %bb.g ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @xstrncmpz(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !53
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.12, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lookup_object(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 2 uses
  %.val = load i32, ptr %1, align 4
  %i.g = add i32 %i.f, -1
  %i.h = and i32 %i.g, %.val                      ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not2633 = icmp eq ptr %i.k, null
  %i.l = ptrtoint ptr %i.k to i64
  br i1 %.not2633, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i128, ptr %1, align 1
  %i.o = load i128, ptr %i.m, align 1
  %i.p = xor i128 %i.n, %i.o
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = load i128, ptr %i.q, align 1
  %i.t = load i128, ptr %i.r, align 1
  %i.u = xor i128 %i.s, %i.t
  %i.v = or i128 %i.p, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not.i.not54 = icmp eq i32 %i.x, 0
  br i1 %.not.i.not54, label %bb.c, label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph56
  %i.y = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.z = load i128, ptr %1, align 1
  %i.aa = load i128, ptr %i.y, align 1
  %i.ab = xor i128 %i.z, %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i128, ptr %i.ac, align 1
  %i.af = load i128, ptr %i.ad, align 1
  %i.ag = xor i128 %i.ae, %i.af
  %i.ah = or i128 %i.ab, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.not = icmp eq i32 %i.aj, 0
  br i1 %.not.i.not, label %.lr.ph._crit_edge, label %.lr.ph56, !llvm.loop !0

.lr.ph56:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0233455 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %i.ak = add i32 %.0233455, 1                    ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.f
  %spec.store.select = select i1 %i.al, i32 0, i32 %i.ak ; 3 uses
  %i.am = zext i32 %spec.store.select to i64      ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not26 = icmp eq ptr %i.ao, null
  br i1 %.not26, label %.critedge, label %.lr.ph, !llvm.loop !0

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.ap = icmp eq i32 %spec.store.select, %i.h
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge, %.lr.ph.preheader
  %.lcssa50 = phi ptr [ %i.ao, %.lr.ph._crit_edge ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.lcssa = phi i64 [ %i.am, %.lr.ph._crit_edge ], [ %i.i, %.lr.ph.preheader ]
  %.02334.lcssa = phi i1 [ %i.ap, %.lr.ph._crit_edge ], [ true, %.lr.ph.preheader ]
  br i1 %.02334.lcssa, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.le = ptrtoint ptr %.lcssa50 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.lcssa
  store i64 %i.l, ptr %i.aq, align 1
  store i64 %.sroa.0.0.copyload.le, ptr %i.j, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph56, %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.lcssa50, %bb.c ], [ %.lcssa50, %bb.d ], [ null, %bb.b ], [ null, %.lr.ph56 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @create_object(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef returned initializes((8, 44)) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -2305843004918726658
  store i64 %i.b, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.e, ptr %i.f, align 4, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48   ; 4 uses
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !85
  %i.n = shl nsw i32 %i.m, 1
  %.not = icmp sgt i32 %i.k, %i.n
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %i.j, 32
  %i.p = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.o, i32 32, i32 %i.p ; 5 uses
  %i.q = zext nneg i32 %spec.select.i to i64
  %i.r = tail call ptr @xcalloc(i64 noundef %i.q, i64 noundef 8) #17 ; 5 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.y = add nsw i32 %spec.select.i, -1           ; 2 uses
  br i1 %i.v, label %.lr.ph.i, label %grow_object_hash.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.u to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i.i = load i32, ptr %i.ab, align 4
  %i.ac = and i32 %.val.i.i, %i.y                 ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  %.not11.i.i = icmp eq ptr %i.af, null
  br i1 %.not11.i.i, label %insert_obj_hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %spec.store.select.i.i, %.lr.ph.i.i ], [ %i.ac, %bb.d ]
  %i.ag = add i32 %.012.i.i, 1                    ; 2 uses
  %.not9.i.i = icmp ult i32 %i.ag, %spec.select.i
  %spec.store.select.i.i = select i1 %.not9.i.i, i32 %i.ag, i32 0 ; 2 uses
  %i.ah = zext i32 %spec.store.select.i.i to i64  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %insert_obj_hash.exit.i, label %.lr.ph.i.i, !llvm.loop !83

insert_obj_hash.exit.i:                           ; preds = %.lr.ph.i.i, %bb.d
  %.lcssa10.i.i = phi i64 [ %i.ad, %bb.d ], [ %i.ah, %.lr.ph.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.lcssa10.i.i
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %insert_obj_hash.exit.i, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %grow_object_hash.exit, label %bb.c, !llvm.loop !84

grow_object_hash.exit:                            ; preds = %bb.e, %bb.b
  tail call void @free(ptr noundef %i.x) #17
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !40  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.r, ptr %i.am, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 %spec.select.i, ptr %i.an, align 4, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %grow_object_hash.exit
  %.pre-phi = phi i32 [ %i.k, %._crit_edge ], [ %i.y, %grow_object_hash.exit ]
  %i.ao = phi i32 [ %i.j, %._crit_edge ], [ %spec.select.i, %grow_object_hash.exit ]
  %i.ap = phi ptr [ %.pre, %._crit_edge ], [ %i.r, %grow_object_hash.exit ] ; 3 uses
  %i.aq = phi ptr [ %i.h, %._crit_edge ], [ %i.al, %grow_object_hash.exit ]
  %.val.i = load i32, ptr %i.c, align 4
  %i.ar = and i32 %.val.i, %.pre-phi              ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  %.not11.i = icmp eq ptr %i.au, null
  br i1 %.not11.i, label %insert_obj_hash.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f, %.lr.ph.i13
  %.012.i = phi i32 [ %spec.store.select.i, %.lr.ph.i13 ], [ %i.ar, %bb.f ]
  %i.av = add i32 %.012.i, 1                      ; 2 uses
  %.not9.i = icmp ult i32 %i.av, %i.ao
  %spec.store.select.i = select i1 %.not9.i, i32 %i.av, i32 0 ; 2 uses
  %i.aw = zext i32 %spec.store.select.i to i64    ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  %.not.i14 = icmp eq ptr %i.ay, null
  br i1 %.not.i14, label %insert_obj_hash.exit, label %.lr.ph.i13, !llvm.loop !83

insert_obj_hash.exit:                             ; preds = %.lr.ph.i13, %bb.f
  %.lcssa10.i = phi i64 [ %i.as, %bb.f ], [ %i.aw, %.lr.ph.i13 ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.lcssa10.i
  store ptr %2, ptr %i.az, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !85
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !85
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @object_as_type(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 4                ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 1
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, %1
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @init_commit_node(ptr noundef nonnull %0) #17
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = shl i32 %1, 1
  %i.i = and i32 %i.h, 14
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i64 %i.a, -15
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %0, align 4
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.n, %bb.h ], [ @.str.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = tail call ptr @oid_to_hex(ptr noundef nonnull %i.o) #17
  %i.q = load i64, ptr %0, align 4
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 1
  %i.t = and i32 %i.s, 7                          ; 2 uses
  %i.u = icmp samesign ugt i32 %i.t, 4
  br i1 %i.u, label %type_name.exit, label %bb.i

bb.i:                                             ; preds = %_.exit
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @object_type_strings, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  br label %type_name.exit
end_hunk_0
