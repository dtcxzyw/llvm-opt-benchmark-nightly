inline.NumInlined: 176
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__func__.cadical_kitten_track_antecedents = private unnamed_addr constant [33 x i8] c"cadical_kitten_track_antecedents\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"solver argument zero\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid status '%s' (expected '%s')\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"can not start tracking antecedents after learning\00", align 1
@__func__.cadical_kitten_randomize_phases = private unnamed_addr constant [32 x i8] c"cadical_kitten_randomize_phases\00", align 1
@__func__.cadical_kitten_flip_phases = private unnamed_addr constant [27 x i8] c"cadical_kitten_flip_phases\00", align 1
@__func__.cadical_kitten_no_ticks_limit = private unnamed_addr constant [30 x i8] c"cadical_kitten_no_ticks_limit\00", align 1
@__func__.cadical_kitten_current_ticks = private unnamed_addr constant [29 x i8] c"cadical_kitten_current_ticks\00", align 1
@__func__.cadical_kitten_set_ticks_limit = private unnamed_addr constant [31 x i8] c"cadical_kitten_set_ticks_limit\00", align 1
@__func__.cadical_kitten_no_terminator = private unnamed_addr constant [29 x i8] c"cadical_kitten_no_terminator\00", align 1
@__func__.cadical_kitten_set_terminator = private unnamed_addr constant [30 x i8] c"cadical_kitten_set_terminator\00", align 1
@__func__.cadical_kitten_shuffle_clauses = private unnamed_addr constant [31 x i8] c"cadical_kitten_shuffle_clauses\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"out of memory reallocating '%zu' bytes\00", align 1
@__func__.cadical_kitten_assume = private unnamed_addr constant [22 x i8] c"cadical_kitten_assume\00", align 1
@__func__.cadical_kitten_clause_with_id_and_exception = private unnamed_addr constant [44 x i8] c"cadical_kitten_clause_with_id_and_exception\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"variable '%u' of literal '%u' occurs twice\00", align 1
@__func__.citten_clause_with_id_and_exception = private unnamed_addr constant [36 x i8] c"citten_clause_with_id_and_exception\00", align 1
@__func__.citten_clause_with_id_and_equivalence = private unnamed_addr constant [38 x i8] c"citten_clause_with_id_and_equivalence\00", align 1
@__func__.cadical_kitten_solve = private unnamed_addr constant [21 x i8] c"cadical_kitten_solve\00", align 1
@__func__.cadical_kitten_compute_clausal_core = private unnamed_addr constant [36 x i8] c"cadical_kitten_compute_clausal_core\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"antecedents not tracked\00", align 1
@__func__.cadical_kitten_traverse_core_ids = private unnamed_addr constant [33 x i8] c"cadical_kitten_traverse_core_ids\00", align 1
@__func__.cadical_kitten_traverse_core_clauses = private unnamed_addr constant [37 x i8] c"cadical_kitten_traverse_core_clauses\00", align 1
@__func__.cadical_kitten_traverse_core_clauses_with_id = private unnamed_addr constant [45 x i8] c"cadical_kitten_traverse_core_clauses_with_id\00", align 1
@__func__.cadical_kitten_trace_core = private unnamed_addr constant [26 x i8] c"cadical_kitten_trace_core\00", align 1
@__func__.cadical_kitten_shrink_to_clausal_core = private unnamed_addr constant [38 x i8] c"cadical_kitten_shrink_to_clausal_core\00", align 1
@__func__.cadical_kitten_signed_value = private unnamed_addr constant [28 x i8] c"cadical_kitten_signed_value\00", align 1
@__func__.cadical_kitten_value = private unnamed_addr constant [21 x i8] c"cadical_kitten_value\00", align 1
@__func__.cadical_kitten_flip_literal = private unnamed_addr constant [28 x i8] c"cadical_kitten_flip_literal\00", align 1
@__func__.cadical_kitten_flip_signed_literal = private unnamed_addr constant [35 x i8] c"cadical_kitten_flip_signed_literal\00", align 1
@__func__.cadical_kitten_failed = private unnamed_addr constant [22 x i8] c"cadical_kitten_failed\00", align 1
@__func__.cadical_kitten_add_prime_implicant = private unnamed_addr constant [35 x i8] c"cadical_kitten_add_prime_implicant\00", align 1
@__func__.cadical_kitten_compute_prime_implicant = private unnamed_addr constant [39 x i8] c"cadical_kitten_compute_prime_implicant\00", align 1
@__func__.cadical_kitten_flip_and_implicant_for_signed_literal = private unnamed_addr constant [53 x i8] c"cadical_kitten_flip_and_implicant_for_signed_literal\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"out of memory allocating '%zu * %zu' bytes\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [57 x i8] c"cadical_kitten: fatal error: invalid API usage in '%s': \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"formula satisfied\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"formula satisfied and prime implicant computed\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"formula inconsistent\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"formula inconsistent and core computed\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"formula unsolved\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"maximum number of literals exhausted\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cadical_kitten: error: \00", align 1

; Function Attrs: nofree nounwind uwtable
define nonnull ptr @cadical_kitten_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(632) ptr @calloc(i64 noundef 1, i64 noundef 632) #21 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %cadical_kitten_calloc.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.6, i64 noundef 1, i64 noundef 632)
  unreachable

cadical_kitten_calloc.exit:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 -1, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 -1, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 -1, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 -1, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 -1, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store i64 1, ptr %i.h, align 8, !tbaa !27
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_track_antecedents(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_track_antecedents, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  switch i32 %i.a, label %bb.g [
    i32 0, label %bb.h
    i32 10, label %status_to_string.exit
    i32 11, label %bb.d
    i32 20, label %bb.e
    i32 21, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.g:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ @.str.12, %bb.g ], [ @.str.11, %bb.f ], [ @.str.9, %bb.d ], [ @.str.10, %bb.e ], [ @.str.8, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_track_antecedents, ptr noundef nonnull @.str.1, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.12)
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29, !range !30, !noundef !31
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_track_antecedents, ptr noundef nonnull @.str.2)
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.e, align 4, !tbaa !32
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal void @invalid_api_usage(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.7, ptr noundef %0) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.d = call i32 @vfprintf(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %2) #22 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.f = call i32 @fputc(i32 noundef 10, ptr noundef %i.e) ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.h = call i32 @fflush(ptr noundef %i.g)       ; 0 uses
  call void @abort() #24
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_randomize_phases(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_randomize_phases, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = mul i64 %i.h, 6364136223846793005
  %i.j = add i64 %i.i, 1442695040888963407        ; 3 uses
  store i64 %i.j, ptr %i.g, align 8, !tbaa !37
  %i.k = and i32 %i.f, -64                        ; 10 uses
  %.not3436 = icmp eq i32 %i.k, 0
  br i1 %.not3436, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.033.lcssa = phi i64 [ %i.j, %bb.c ], [ %i.bu, %.lr.ph ] ; 7 uses
  %.not3540 = icmp eq i32 %i.k, %i.f
  br i1 %.not3540, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %i.l, %i.f                       ; 3 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 7
  %i.p = add i32 %i.f, -1
  %i.q = icmp ult i32 %i.p, %i.k
  %or.cond = or i1 %min.iters.check, %i.q
  br i1 %or.cond, label %.lr.ph43.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check52 = icmp ult i32 %i.m, 15
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.o, 8
  %n.vec = and i64 %i.o, 8589934576               ; 5 uses
  %i.s = trunc i64 %n.vec to i32
  %i.t = add i32 %i.k, %i.s
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.033.lcssa, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.u = trunc i64 %index to i32
  %i.v = add i32 %i.k, %i.u
  %i.w = lshr <16 x i64> %broadcast.splat, %vec.ind
  %i.x = trunc <16 x i64> %i.w to <16 x i8>
  %i.y = and <16 x i8> %i.x, splat (i8 1)
  %i.z = zext i32 %i.v to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.z
  store <16 x i8> %i.y, ptr %i.aa, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph43.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec53 = and i64 %i.o, 8589934584             ; 4 uses
  %i.ac = trunc i64 %n.vec53 to i32
  %i.ad = add i32 %i.k, %i.ac
  %broadcast.splatinsert54 = insertelement <8 x i64> poison, i64 %.033.lcssa, i64 0
  %broadcast.splat55 = shufflevector <8 x i64> %broadcast.splatinsert54, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat57 = shufflevector <8 x i64> %broadcast.splatinsert56, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat57, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind59 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.ae = trunc i64 %index58 to i32
  %i.af = add i32 %i.k, %i.ae
  %i.ag = lshr <8 x i64> %broadcast.splat55, %vec.ind59
  %i.ah = trunc <8 x i64> %i.ag to <8 x i8>
  %i.ai = and <8 x i8> %i.ah, splat (i8 1)
  %i.aj = zext i32 %i.af to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  store <8 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !38
  %index.next60 = add nuw i64 %index58, 8         ; 2 uses
  %vec.ind.next61 = add nuw nsw <8 x i64> %vec.ind59, splat (i64 8)
  %i.al = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.o, %n.vec53
  br i1 %cmp.n62, label %._crit_edge, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv46.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec53, %vec.epilog.middle.block ] ; 2 uses
  %.141.ph = phi i32 [ %i.k, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 4 uses
  %i.am = sub i32 %i.f, %.141.ph
  %xtraiter = and i32 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol

.lr.ph43.prol:                                    ; preds = %.lr.ph43.preheader, %.lr.ph43.prol
  %indvars.iv46.prol = phi i64 [ %indvars.iv.next47.prol, %.lr.ph43.prol ], [ %indvars.iv46.ph, %.lr.ph43.preheader ] ; 2 uses
  %.141.prol = phi i32 [ %i.aq, %.lr.ph43.prol ], [ %.141.ph, %.lr.ph43.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph43.prol ], [ 0, %.lr.ph43.preheader ]
  %indvars.iv.next47.prol = add nuw nsw i64 %indvars.iv46.prol, 1 ; 2 uses
  %i.an = lshr i64 %.033.lcssa, %indvars.iv46.prol
  %i.ao = trunc i64 %i.an to i8
  %i.ap = and i8 %i.ao, 1
  %i.aq = add i32 %.141.prol, 1                   ; 2 uses
  %i.ar = zext i32 %.141.prol to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !38
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph43.prol.loopexit, label %.lr.ph43.prol, !llvm.loop !45

.lr.ph43.prol.loopexit:                           ; preds = %.lr.ph43.prol, %.lr.ph43.preheader
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph43.preheader ], [ %indvars.iv.next47.prol, %.lr.ph43.prol ]
  %.141.unr = phi i32 [ %.141.ph, %.lr.ph43.preheader ], [ %i.aq, %.lr.ph43.prol ]
  %i.at = sub i32 %.141.ph, %i.f
  %i.au = icmp ugt i32 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph43

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.03337 = phi i64 [ %i.bu, %.lr.ph ], [ %i.j, %bb.c ] ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 8 uses
  %i.aw = and i64 %.03337, 72340172838076673
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !37
  %i.ax = lshr i64 %.03337, 1
  %i.ay = and i64 %i.ax, 72340172838076673
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !37
  %i.ba = lshr i64 %.03337, 2
  %i.bb = and i64 %i.ba, 72340172838076673
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !37
  %i.bd = lshr i64 %.03337, 3
  %i.be = and i64 %i.bd, 72340172838076673
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !37
  %i.bg = lshr i64 %.03337, 4
  %i.bh = and i64 %i.bg, 72340172838076673
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !37
  %i.bj = lshr i64 %.03337, 5
  %i.bk = and i64 %i.bj, 72340172838076673
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !37
  %i.bm = lshr i64 %.03337, 6
  %i.bn = and i64 %i.bm, 72340172838076673
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !37
  %i.bp = lshr i64 %.03337, 7
  %i.bq = and i64 %i.bp, 72340172838076673
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !37
  %i.bs = load i64, ptr %i.g, align 8, !tbaa !37
  %i.bt = mul i64 %i.bs, 6364136223846793005
  %i.bu = add i64 %i.bt, 1442695040888963407      ; 3 uses
  store i64 %i.bu, ptr %i.g, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 64 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not34 = icmp eq i32 %i.k, %indvars
  br i1 %.not34, label %.preheader, label %.lr.ph, !llvm.loop !47

.lr.ph43:                                         ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43
  %indvars.iv46 = phi i64 [ %indvars.iv.next47.3, %.lr.ph43 ], [ %indvars.iv46.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %.141 = phi i32 [ %i.cq, %.lr.ph43 ], [ %.141.unr, %.lr.ph43.prol.loopexit ] ; 5 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %i.bv = lshr i64 %.033.lcssa, %indvars.iv46
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = and i8 %i.bw, 1
  %i.by = add i32 %.141, 1
  %i.bz = zext i32 %.141 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bz
  store i8 %i.bx, ptr %i.ca, align 1, !tbaa !38
  %indvars.iv.next47.1 = add nuw nsw i64 %indvars.iv46, 2
  %i.cb = lshr i64 %.033.lcssa, %indvars.iv.next47
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = and i8 %i.cc, 1
  %i.ce = add i32 %.141, 2
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1, !tbaa !38
  %indvars.iv.next47.2 = add nuw nsw i64 %indvars.iv46, 3
  %i.ch = lshr i64 %.033.lcssa, %indvars.iv.next47.1
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  %i.ck = add i32 %.141, 3
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !38
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4
  %i.cn = lshr i64 %.033.lcssa, %indvars.iv.next47.2
  %i.co = trunc i64 %i.cn to i8
  %i.cp = and i8 %i.co, 1
  %i.cq = add i32 %.141, 4                        ; 2 uses
  %i.cr = zext i32 %i.ck to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  store i8 %i.cp, ptr %i.cs, align 1, !tbaa !38
  %.not35.3 = icmp eq i32 %i.cq, %i.f
  br i1 %.not35.3, label %._crit_edge, label %.lr.ph43, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph43.prol.loopexit, %.lr.ph43, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_flip_phases(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_flip_phases, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = and i32 %i.f, -8                         ; 6 uses
  %.not1315 = icmp eq i32 %i.g, 0
  br i1 %.not1315, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %1 = add nuw i64 %i.e, 4294967288
  %2 = lshr i64 %1, 3
  %3 = and i64 %2, 536870911                      ; 2 uses
  %i.h = add nuw nsw i64 %3, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %3, 3
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 1073741820               ; 3 uses
  %i.i = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl nuw i64 %index, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !tbaa !37
  %wide.load23 = load <2 x i64>, ptr %i.l, align 8, !tbaa !37
  %i.m = xor <2 x i64> %wide.load, splat (i64 72340172838076673)
  %i.n = xor <2 x i64> %wide.load23, splat (i64 72340172838076673)
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !37
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.c
  %.not1417 = icmp eq i32 %i.g, %i.f
  br i1 %.not1417, label %._crit_edge, label %.lr.ph19.preheader

.lr.ph19.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph19.prol.loopexit, label %.lr.ph19.prol

.lr.ph19.prol:                                    ; preds = %.lr.ph19.preheader, %.lr.ph19.prol
  %.118.prol = phi i32 [ %i.p, %.lr.ph19.prol ], [ %i.g, %.lr.ph19.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph19.prol ], [ 0, %.lr.ph19.preheader ]
  %i.p = add i32 %.118.prol, 1                    ; 2 uses
  %i.q = zext i32 %.118.prol to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !38
  %i.t = xor i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 1, !tbaa !38
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph19.prol.loopexit, label %.lr.ph19.prol, !llvm.loop !50

.lr.ph19.prol.loopexit:                           ; preds = %.lr.ph19.prol, %.lr.ph19.preheader
  %.118.unr = phi i32 [ %i.g, %.lr.ph19.preheader ], [ %i.p, %.lr.ph19.prol ]
  %i.u = sub i32 %i.g, %i.f
  %i.v = icmp ugt i32 %i.u, -4
  br i1 %i.v, label %._crit_edge, label %.lr.ph19

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !37
  %i.y = xor i64 %i.x, 72340172838076673
  store i64 %i.y, ptr %i.w, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %.not13 = icmp eq i32 %i.g, %indvars
  br i1 %.not13, label %.preheader, label %.lr.ph, !llvm.loop !51

.lr.ph19:                                         ; preds = %.lr.ph19.prol.loopexit, %.lr.ph19
  %.118 = phi i32 [ %i.ao, %.lr.ph19 ], [ %.118.unr, %.lr.ph19.prol.loopexit ] ; 5 uses
  %i.z = add i32 %.118, 1
  %i.aa = zext i32 %.118 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.ad = xor i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !38
  %i.ae = add i32 %.118, 2
  %i.af = zext i32 %i.z to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ai = xor i8 %i.ah, 1
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !38
  %i.aj = add i32 %.118, 3
  %i.ak = zext i32 %i.ae to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !38
  %i.an = xor i8 %i.am, 1
  store i8 %i.an, ptr %i.al, align 1, !tbaa !38
  %i.ao = add i32 %.118, 4                        ; 2 uses
  %i.ap = zext i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !38
  %i.as = xor i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !38
  %.not14.3 = icmp eq i32 %i.ao, %i.f
  br i1 %.not14.3, label %._crit_edge, label %.lr.ph19, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph19.prol.loopexit, %.lr.ph19, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_no_ticks_limit(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_no_ticks_limit, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 -1, ptr %i.a, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define i64 @cadical_kitten_current_ticks(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_current_ticks, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  ret i64 %i.b
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_set_ticks_limit(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_set_ticks_limit, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %.0 = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %.0, ptr %i.c, align 8, !tbaa !26
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_no_terminator(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_no_terminator, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_set_terminator(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_set_terminator, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %2, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %1, ptr %i.b, align 8, !tbaa !55
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @cadical_kitten_shuffle_clauses(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_shuffle_clauses, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  switch i32 %i.a, label %bb.g [
    i32 0, label %bb.h
    i32 10, label %status_to_string.exit
    i32 11, label %bb.d
    i32 20, label %bb.e
    i32 21, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.g:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ @.str.12, %bb.g ], [ @.str.11, %bb.f ], [ @.str.9, %bb.d ], [ @.str.10, %bb.e ], [ @.str.8, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_shuffle_clauses, ptr noundef nonnull @.str.1, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.12)
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %._crit_edge16.i, label %kissat_pick_random.exit.lr.ph.i

._crit_edge16.i:                                  ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  br label %bb.i

kissat_pick_random.exit.lr.ph.i:                  ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = uitofp i32 %i.e to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.promoted.i = load i32, ptr %i.k, align 4, !tbaa !22
  %.promoted13.i = load i64, ptr %i.l, align 8, !tbaa !58
  br label %kissat_pick_random.exit.i

._crit_edge.i:                                    ; preds = %enqueue.exit.i
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !22
  store i64 %i.ar, ptr %i.l, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %._crit_edge16.i
  %i.m = phi i32 [ %.pre.i, %._crit_edge16.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %i.p = icmp eq i32 %i.o, %i.m
  br i1 %i.p, label %shuffle_queue.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.m, ptr %i.n, align 8, !tbaa !25
  br label %shuffle_queue.exit

kissat_pick_random.exit.i:                        ; preds = %enqueue.exit.i, %kissat_pick_random.exit.lr.ph.i
  %i.q = phi i64 [ %.promoted13.i, %kissat_pick_random.exit.lr.ph.i ], [ %i.ar, %enqueue.exit.i ] ; 2 uses
end_hunk_0
