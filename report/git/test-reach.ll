Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-reach?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.strvec = type { ptr, i64, i64 }
%struct.anon = type { %struct.contains_cache, %struct.contains_cache }
%struct.contains_cache = type { i32, i32, i32, ptr }
%struct.string_list = type { ptr, i64, i64, i8, ptr }
%struct.object_id = type { [32 x i8], i32 }
%struct.object_array = type { i32, i32, ptr }
%struct.commit_stack = type { ptr, i64, i64 }
%struct.ref_filter = type { ptr, ptr, %struct.strvec, %struct.oid_array, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, %struct.anon }
%struct.oid_array = type { ptr, i64, i64, i32 }

@strbuf_slopbuf = external global [0 x i8], align 1
@__const.cmd__reach.buf = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@the_repository = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"t/helper/test-reach.c\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to resolve %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"failed to load commit for input %s resulting in oid %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unexpected start of line: %c\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ref_newer\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s(A,B):%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"in_merge_bases\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"in_merge_bases_many\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s(A,X):%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"is_descendant_of\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"get_branch_base_for_tip\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"get_merge_bases_many\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s(A,X):\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"reduce_heads\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s(X):\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"can_all_from_reach\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s(X,Y):%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"can_all_from_reach_with_flag\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s(X,_,_,0,0):%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"commit_contains\00", align 1
@empty_strvec = external global [0 x ptr], align 8
@__const.cmd__reach.filter = private unnamed_addr constant { ptr, ptr, %struct.strvec, { ptr, i64, i64, i32, [4 x i8] }, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, i32, i32, i32, [4 x i8], %struct.anon } { ptr null, ptr null, %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, { ptr, i64, i64, i32, [4 x i8] } zeroinitializer, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, %struct.anon zeroinitializer }, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"--tag\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"%s(_,A,X,_):%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"get_reachable_subset\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"commit %s is not marked reachable\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"too many commits marked reachable\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [26 x i8] c"get_reachable_subset(X,Y)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cmd__reach(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.string_list, align 8        ; 9 uses
  %3 = alloca %struct.string_list, align 8        ; 9 uses
  %4 = alloca %struct.object_id, align 4          ; 5 uses
  %5 = alloca %struct.object_id, align 4          ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %6 = alloca %struct.object_array, align 8       ; 6 uses
  %7 = alloca %struct.commit_stack, align 8       ; 13 uses
  %8 = alloca %struct.commit_stack, align 8       ; 8 uses
  %9 = alloca %struct.strbuf, align 8             ; 9 uses
  %10 = alloca %struct.object_id, align 4         ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %struct.ref_filter, align 8        ; 5 uses
  %12 = alloca %struct.contains_cache, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd__reach.buf, i64 24, i1 false)
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !40 ; 4 uses
  %i.e = tail call ptr @setup_git_directory(ptr noundef %i.d) #14 ; 0 uses
  %i.f = icmp slt i32 %0, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @common_exit(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 1) #14
  tail call void @exit(i32 noundef %i.g) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !41
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !43
  %i.i = call i32 @strbuf_getline(ptr noundef nonnull %9, ptr noundef %i.h) #14
  %.not118 = icmp eq i32 %i.i, -1
  br i1 %.not118, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.promoted = load i32, ptr %i.m, align 4
  %.promoted127 = load i32, ptr %i.n, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %13 = phi i32 [ %.promoted127, %.lr.ph ], [ %15, %bb.q ] ; 4 uses
  %14 = phi i32 [ %.promoted, %.lr.ph ], [ %16, %bb.q ] ; 4 uses
  %.065120 = phi ptr [ null, %.lr.ph ], [ %.267, %bb.q ] ; 4 uses
  %.068119 = phi ptr [ null, %.lr.ph ], [ %.270, %bb.q ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.o = load i64, ptr %i.j, align 8, !tbaa !45
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %bb.q, label %bb.e, !llvm.loop !34

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = call i32 @repo_get_oid_committish(ptr noundef %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %10) #14
  %.not91 = icmp eq i32 %i.t, 0
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  call void (ptr, ...) @die(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.v) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = call ptr @parse_object(ptr noundef %i.d, ptr noundef nonnull %10) #14 ; 2 uses
  %i.x = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.y = call ptr @deref_tag(ptr noundef %i.x, ptr noundef %i.w, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not92 = icmp eq ptr %i.y, null
  br i1 %.not92, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.aa = call ptr @oid_to_hex(ptr noundef nonnull %10) #14
  call void (ptr, ...) @die(ptr noundef nonnull @.str.2, ptr noundef %i.z, ptr noundef %i.aa) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = call ptr @object_as_type(ptr noundef nonnull %i.y, i32 noundef 1, i32 noundef 0) #14 ; 7 uses
  %.not93 = icmp eq ptr %i.ab, null
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !46  ; 2 uses
  br i1 %.not93, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = call ptr @oid_to_hex(ptr noundef nonnull %10) #14
  call void (ptr, ...) @die(ptr noundef nonnull @.str.2, ptr noundef %i.ac, ptr noundef %i.ad) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.ae, label %bb.p [
    i8 65, label %bb.l
    i8 66, label %bb.m
    i8 88, label %bb.n
    i8 89, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %10, i64 32, i1 false)
  %i.af = load i32, ptr %i.l, align 4, !tbaa !48
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull readonly align 4 dereferenceable(32) %10, i64 32, i1 false)
  %i.ag = load i32, ptr %i.l, align 4, !tbaa !48
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ah = call ptr @commit_list_insert(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @commit_stack_push(ptr noundef nonnull %7, ptr noundef nonnull %i.ab) #14
  call void @add_object_array(ptr noundef %i.w, ptr noundef null, ptr noundef nonnull %6) #14
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.ai = call ptr @commit_list_insert(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.b) #14 ; 0 uses
  call void @commit_stack_push(ptr noundef nonnull %8, ptr noundef nonnull %i.ab) #14
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.aj = sext i8 %i.ae to i32
  call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i32 noundef %i.aj) #15
  unreachable

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.d
  %15 = phi i32 [ %13, %bb.d ], [ %i.af, %bb.l ], [ %13, %bb.m ], [ %13, %bb.n ], [ %13, %bb.o ] ; 2 uses
  %16 = phi i32 [ %14, %bb.d ], [ %14, %bb.l ], [ %i.ag, %bb.m ], [ %14, %bb.n ], [ %14, %bb.o ] ; 2 uses
  %.270 = phi ptr [ %.068119, %bb.d ], [ %.068119, %bb.l ], [ %i.ab, %bb.m ], [ %.068119, %bb.n ], [ %.068119, %bb.o ] ; 2 uses
  %.267 = phi ptr [ %.065120, %bb.d ], [ %i.ab, %bb.l ], [ %.065120, %bb.m ], [ %.065120, %bb.n ], [ %.065120, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ak = load ptr, ptr @stdin, align 8, !tbaa !43
  %i.al = call i32 @strbuf_getline(ptr noundef nonnull %9, ptr noundef %i.ak) #14
  %.not = icmp eq i32 %i.al, -1
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.q
  store i32 %16, ptr %i.m, align 4
  store i32 %15, ptr %i.n, align 4
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %bb.c
  %.068.lcssa = phi ptr [ %.270, %._crit_edge ], [ null, %bb.c ]
  %.065.lcssa = phi ptr [ %.267, %._crit_edge ], [ null, %bb.c ] ; 6 uses
  call void @strbuf_release(ptr noundef nonnull %9) #14
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49 ; 19 uses
  %i.ao = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(10) @.str.4) #16
  %.not74 = icmp eq i32 %i.ao, 0
  br i1 %.not74, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.a
  %i.ap = call i32 @ref_newer(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.an, i32 noundef %i.ap) ; 0 uses
  br label %bb.au

bb.s:                                             ; preds = %._crit_edge.a
  %i.ar = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(15) @.str.6) #16
  %.not75 = icmp eq i32 %i.ar, 0
  br i1 %.not75, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.at = call i32 @repo_in_merge_bases(ptr noundef %i.as, ptr noundef %.065.lcssa, ptr noundef %.068.lcssa) #14
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.an, i32 noundef %i.at) ; 0 uses
  br label %bb.au

bb.u:                                             ; preds = %bb.s
  %i.av = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(20) @.str.7) #16
  %.not76 = icmp eq i32 %i.av, 0
  br i1 %.not76, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !52
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load ptr, ptr %7, align 8, !tbaa !53
  %i.bb = call i32 @repo_in_merge_bases_many(ptr noundef %i.aw, ptr noundef %.065.lcssa, i32 noundef %i.az, ptr noundef %i.ba, i32 noundef 0) #14
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.an, i32 noundef %i.bb) ; 0 uses
  br label %bb.au

bb.w:                                             ; preds = %bb.u
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(17) @.str.9) #16
  %.not77 = icmp eq i32 %i.bd, 0
  br i1 %.not77, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.bf = call i32 @repo_is_descendant_of(ptr noundef %i.d, ptr noundef %.065.lcssa, ptr noundef %i.be) #14
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.an, i32 noundef %i.bf) ; 0 uses
  br label %bb.au

bb.y:                                             ; preds = %bb.w
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(24) @.str.10) #16
  %.not78 = icmp eq i32 %i.bh, 0
  br i1 %.not78, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = load ptr, ptr %7, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !52
  %i.bl = call i32 @get_branch_base_for_tip(ptr noundef %i.d, ptr noundef %.065.lcssa, ptr noundef %i.bi, i64 noundef %i.bk) #14
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.an, i32 noundef %i.bl) ; 0 uses
  br label %bb.au

bb.aa:                                            ; preds = %bb.y
  %i.bn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(21) @.str.11) #16
  %.not79 = icmp eq i32 %i.bn, 0
  br i1 %.not79, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !41
  %i.bo = load ptr, ptr @the_repository, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !52
  %i.br = load ptr, ptr %7, align 8, !tbaa !53
  %i.bs = call i32 @repo_get_merge_bases_many(ptr noundef %i.bo, ptr noundef %.065.lcssa, i64 noundef %i.bq, ptr noundef %i.br, ptr noundef nonnull %i.c) #14
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bu = call i32 @common_exit(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 128) #14
  call void @exit(i32 noundef %i.bu) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.bv) ; 0 uses
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.by, align 8
  %.not6.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.057.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %i.bx, %bb.ad ] ; 2 uses
  %i.bz = load ptr, ptr %.057.i, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = call ptr @oid_to_hex(ptr noundef nonnull %i.ca) #14
  %i.cc = call ptr @string_list_append(ptr noundef nonnull %3, ptr noundef %i.cb) #14 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ad
  call void @string_list_sort(ptr noundef nonnull %3) #14
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !27
  %.not12.i = icmp eq i64 %i.cg, 0
  br i1 %.not12.i, label %print_sorted_commit_ids.exit, label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %._crit_edge.i, %.lr.ph10.i
  %.08.i = phi i64 [ %i.ck, %.lr.ph10.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !28
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.08.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.cj) ; 0 uses
  %i.ck = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !27
  %i.cm = icmp ult i64 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph10.i, label %print_sorted_commit_ids.exit, !llvm.loop !1

print_sorted_commit_ids.exit:                     ; preds = %.lr.ph10.i, %._crit_edge.i
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !41
  call void @commit_list_free(ptr noundef %i.cn) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.au

bb.ae:                                            ; preds = %bb.aa
  %i.co = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(13) @.str.13) #16
  %.not80 = icmp eq i32 %i.co, 0
  br i1 %.not80, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.cq = call ptr @reduce_heads(ptr noundef %i.cp) #14 ; 3 uses
  %i.cr = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %i.cr) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.ct, align 8
  %.not6.i94 = icmp eq ptr %i.cq, null
  br i1 %.not6.i94, label %._crit_edge.i98, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.af, %.lr.ph.i95
  %.057.i96 = phi ptr [ %i.cz, %.lr.ph.i95 ], [ %i.cq, %bb.af ] ; 2 uses
  %i.cu = load ptr, ptr %.057.i96, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = call ptr @oid_to_hex(ptr noundef nonnull %i.cv) #14
  %i.cx = call ptr @string_list_append(ptr noundef nonnull %2, ptr noundef %i.cw) #14 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i96, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %.not.i97 = icmp eq ptr %i.cz, null
  br i1 %.not.i97, label %._crit_edge.i98, label %.lr.ph.i95, !llvm.loop !0

._crit_edge.i98:                                  ; preds = %.lr.ph.i95, %bb.af
  call void @string_list_sort(ptr noundef nonnull %2) #14
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !27
  %.not12.i99 = icmp eq i64 %i.db, 0
  br i1 %.not12.i99, label %print_sorted_commit_ids.exit103, label %.lr.ph10.i100

.lr.ph10.i100:                                    ; preds = %._crit_edge.i98, %.lr.ph10.i100
  %.08.i101 = phi i64 [ %i.df, %.lr.ph10.i100 ], [ 0, %._crit_edge.i98 ] ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.08.i101
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !30
  %puts.i102 = call i32 @puts(ptr nonnull dereferenceable(1) %i.de) ; 0 uses
  %i.df = add nuw i64 %.08.i101, 1                ; 2 uses
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !27
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph10.i100, label %print_sorted_commit_ids.exit103, !llvm.loop !1

print_sorted_commit_ids.exit103:                  ; preds = %.lr.ph10.i100, %._crit_edge.i98
  call void @string_list_clear(ptr noundef nonnull %2, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @commit_list_free(ptr noundef %i.cq) #14
  br label %bb.au

bb.ag:                                            ; preds = %bb.ae
  %i.di = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(19) @.str.15) #16
  %.not81 = icmp eq i32 %i.di, 0
  br i1 %.not81, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.dl = call i32 @can_all_from_reach(ptr noundef %i.dj, ptr noundef %i.dk, i32 noundef 1) #14
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %i.an, i32 noundef %i.dl) ; 0 uses
  br label %bb.au

bb.ai:                                            ; preds = %bb.ag
  %i.dn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(29) @.str.17) #16
  %.not82 = icmp eq i32 %i.dn, 0
  br i1 %.not82, label %.preheader, label %bb.aj

end_hunk_0
