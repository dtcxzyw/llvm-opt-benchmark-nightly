Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/split-index?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.git_hash_algo = type { ptr, i32, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [43 x i8] c"cannot use split index with a sparse index\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"corrupt link extension (too short)\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"corrupt delete bitmap in link extension\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"corrupt replace bitmap in link extension\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"garbage at the end of link extension\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"corrupt link extension, entry %d should have non-zero length name\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"split-index.c\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"ce refers to a shared ce at %d, which is beyond the shared index size %d\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"!(ce->ce_flags & CE_STRIP_NAME)\00", align 1
@__PRETTY_FUNCTION__.prepare_to_write_split_index = private unnamed_addr constant [56 x i8] c"void prepare_to_write_split_index(struct index_state *)\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@hash_algos = external constant [3 x %struct.git_hash_algo], align 16
@.str.10 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"position for replacement %d exceeds base index size %d\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"too many replacements (%d vs %d)\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"entry %d is marked as both replaced and deleted\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"corrupt link extension, entry %d should have zero length name\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"position for delete %d exceeds base index size %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @init_split_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !31
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @_()
  tail call void (ptr, ...) @die(ptr noundef %i.e) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #13 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i32 1, ptr %i.g, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @git_gettext_enabled, align 4, !tbaa !35
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ @.str, %bb.a ]
  ret ptr %.0
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @read_link_extension(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %init_split_index.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %.not5.i = icmp eq i32 %i.k, 0
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc ptr @_()
  tail call void (ptr, ...) @die(ptr noundef %i.l) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 88) #13 ; 3 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  store i32 1, ptr %i.n, align 4, !tbaa !32
  %.pre = load i64, ptr %i.e, align 8, !tbaa !57
  br label %init_split_index.exit

init_split_index.exit:                            ; preds = %bb.b, %bb.e
  %i.o = phi i64 [ %.pre, %bb.e ], [ %i.f, %bb.b ]
  %i.p = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.b ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr readonly align 1 %1, i64 %i.o, i1 false)
  %i.q = load i64, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.r = icmp ult i64 %i.q, 32
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %init_split_index.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.t = sub nuw nsw i64 32, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %init_split_index.exit
  %.not.i.i = icmp eq ptr %i.d, @hash_algos
  br i1 %.not.i.i, label %oidread.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.1.i.i = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i, label %oidread.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.2.i.i = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  br i1 %.not.2.i.i, label %.split.loop.exit9.i.i, label %oidread.exit

.split.loop.exit9.i.i:                            ; preds = %bb.i
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.g, %bb.h, %bb.i, %.split.loop.exit9.i.i
  %.2.i.i = phi i32 [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %.split.loop.exit9.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 %.2.i.i, ptr %i.u, align 4, !tbaa !60
  %i.v = load i64, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = sub i64 %2, %i.v                         ; 2 uses
  %.not = icmp eq i64 %2, %i.v
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %oidread.exit
  %i.y = tail call ptr @ewah_new() #13            ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = tail call i64 @ewah_read_mmap(ptr noundef %i.y, ptr noundef %i.w, i64 noundef %i.x) #13 ; 2 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not33 = icmp eq i64 %i.ab, 0
  br i1 %.not33, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ac = and i64 %i.aa, 2147483647               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = sub i64 %i.x, %i.ac                     ; 2 uses
  %i.af = tail call ptr @ewah_new() #13           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !62
  %i.ah = tail call i64 @ewah_read_mmap(ptr noundef %i.af, ptr noundef %i.ad, i64 noundef %i.ae) #13 ; 2 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not34 = icmp eq i64 %i.ai, 0
  br i1 %.not34, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.aj = and i64 %i.ah, 2147483647
  %.not35 = icmp eq i64 %i.aj, %i.ae
  br i1 %.not35, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.a
  %.str.4.sink = phi ptr [ @.str.3, %bb.k ], [ @.str.2, %bb.j ], [ @.str.1, %bb.a ], [ @.str.4, %bb.l ]
  %i.ak = tail call i32 (ptr, ...) @error(ptr noundef nonnull %.str.4.sink) #13 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %oidread.exit
  %.0 = phi i32 [ 0, %oidread.exit ], [ 0, %bb.l ], [ -1, %.sink.split ]
  ret i32 %.0
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @ewah_new() local_unnamed_addr #3

declare i64 @ewah_read_mmap(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @write_link_extension(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call i32 @ewah_serialize_strbuf(ptr noundef %i.j, ptr noundef %0) #13 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = tail call i32 @ewah_serialize_strbuf(ptr noundef %i.o, ptr noundef %0) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i32 0
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ewah_serialize_strbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @move_cache_to_base_index(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not46 = icmp eq ptr %i.f, null
  br i1 %.not46, label %.thread70, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not47 = icmp eq ptr %i.h, null
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @xmalloc(i64 noundef 24) #13 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !64
  tail call void @mem_pool_init(ptr noundef %i.i, i64 noundef 0) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !64
  %.pre55 = load ptr, ptr %i.a, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre55, i64 40
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !63
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre56, i64 224
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %.pre58, %bb.d ], [ %i.f, %bb.c ]
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.h, %bb.c ]
  tail call void @mem_pool_combine(ptr noundef %i.k, ptr noundef %i.j) #13
  %.pr.pre = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %.not48 = icmp eq ptr %.pr.pre, null
  br i1 %.not48, label %.thread, label %.thread70

.thread70:                                        ; preds = %bb.b, %bb.e
  %.pr73 = phi ptr [ %.pr.pre, %bb.e ], [ %i.d, %bb.b ]
  tail call void @release_index(ptr noundef nonnull %.pr73) #13
  %.pre60 = load ptr, ptr %i.c, align 8, !tbaa !63
  br label %bb.f

.thread:                                          ; preds = %bb.a, %bb.e
  %i.l = tail call ptr @xmalloc(i64 noundef 256) #13 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.thread70
  %i.m = phi ptr [ %i.l, %.thread ], [ %.pre60, %.thread70 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  tail call void @index_state_init(ptr noundef %i.m, ptr noundef %i.o) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !65
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.q, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66   ; 3 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.ab = icmp ugt i32 %i.x, %i.aa
  br i1 %i.ab, label %st_mult.exit, label %bb.g

st_mult.exit:                                     ; preds = %bb.f
  %i.ac = mul i32 %i.aa, 3
  %i.ad = add i32 %i.ac, 48
  %i.ae = lshr i32 %i.ad, 1
  %. = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 %i.x) ; 2 uses
  store i32 %., ptr %i.z, align 8, !tbaa !67
  %i.af = zext i32 %. to i64
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ah = shl nuw nsw i64 %i.af, 3
  %i.ai = tail call ptr @xrealloc(ptr noundef %i.ag, i64 noundef %i.ah) #13
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !68
  %.pre61 = load i32, ptr %i.w, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %st_mult.exit, %bb.f
  %i.ak = phi ptr [ %i.aj, %st_mult.exit ], [ %i.y, %bb.f ] ; 4 uses
  %i.al = phi i32 [ %.pre61, %st_mult.exit ], [ %i.x, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !64
  store ptr null, ptr %i.an, align 8, !tbaa !64
  %i.aq = load i32, ptr %i.w, align 4, !tbaa !66  ; 2 uses
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %copy_array.exit, label %st_mult.exit.i

st_mult.exit.i:                                   ; preds = %bb.g
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %0, align 8, !tbaa !68
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.au = shl nuw nsw i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr readonly align 1 %i.as, i64 %i.au, i1 false)
  %.pre62 = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %.pre62, i64 12
end_hunk_0
