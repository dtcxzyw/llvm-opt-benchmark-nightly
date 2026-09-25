Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.07?download=true
inline.NumInlined: 10851
inline.NumDeleted: 5377
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnECsfcROwRM8ZtH_11polars_plan:bb.a
  %.not52.i.not.i.i.i = icmp eq i64 %i.ap, 0, !dbg !3423
  br i1 %.not52.i.not.i.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %.preheader56.i.i.i.i.preheader, !dbg !3423

.preheader56.i.i.i.i.preheader:                   ; preds = %bb.f, %.preheader56.i.i.i.i
  %.sroa.0.1.i.i.i.i92 = phi ptr [ %i.ao, %.preheader56.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ] ; 2 uses
  %.sroa.15.1.i.i.i.i91 = phi i64 [ %i.ap, %.preheader56.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %bb.f ]
  %.sroa.042.0.i.i.i.i90 = phi i64 [ %i.ay, %.preheader56.i.i.i.i ], [ 0, %bb.f ]
  %i.aq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i90, i64 10), !dbg !3424 ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1, !dbg !3424
  br i1 %i.ar, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %bb.g, !dbg !3425, !prof !2004

bb.g:                                             ; preds = %.preheader56.i.i.i.i.preheader
  %i.as = extractvalue { i64, i1 } %i.aq, 0, !dbg !3424 ; 2 uses
  %i.at = load i8, ptr %.sroa.0.1.i.i.i.i92, align 1, !dbg !3426, !alias.scope !3323, !noalias !3324, !noundef !1971
  %i.au = zext i8 %i.at to i32, !dbg !3427
  %i.av = add nsw i32 %i.au, -48, !dbg !3428      ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9, !dbg !3429
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = add i64 %i.as, %i.ax                    ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.as
  %or.cond.i.i.i = select i1 %i.aw, i1 true, i1 %i.az, !dbg !3430, !prof !3325
  br i1 %or.cond.i.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %.preheader56.i.i.i.i, !dbg !3430, !prof !3325

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.bg, %bb.h ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.bf, %bb.h ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ 0, %.preheader.i.i.i.i ]
  %i.ba = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !dbg !3431, !alias.scope !3323, !noalias !3324, !noundef !1971
  %i.bb = zext i8 %i.ba to i32, !dbg !3432
  %i.bc = add nsw i32 %i.bb, -48, !dbg !3433      ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10, !dbg !3434      ; 3 uses
  br i1 %i.bd, label %bb.h, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, !dbg !3435

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = mul i64 %.sroa.042.267.i.i.i.i, 10, !dbg !3436
  %i.bf = add nsw i64 %.sroa.15.268.i.i.i.i, -1, !dbg !3437 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i, i64 1, !dbg !3437
  %i.bh = zext nneg i32 %i.bc to i64, !dbg !3438
  %i.bi = add i64 %i.be, %i.bh, !dbg !3439        ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.bf, 0, !dbg !3421
  br i1 %.not53.i.i.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !3421

_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.preheader, %.preheader56.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.h ], [ undef, %bb.g ], [ undef, %.preheader56.i.i.i.i.preheader ], [ %i.ay, %.preheader56.i.i.i.i ], !dbg !3440 ; 2 uses
  %not..sink.i.i.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.bd, %bb.h ], [ %i.bd, %.lr.ph.i.i.i.i ], [ false, %bb.g ], [ false, %.preheader56.i.i.i.i.preheader ], [ true, %.preheader56.i.i.i.i ]
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.i, !dbg !3441, !noalias !3317

bb.i:                                             ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body60.i unwind label %bb.j, !dbg !3442, !noalias !3317

bb.j:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3441, !noalias !3317
  unreachable, !dbg !3441

_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc62.i unwind label %bb.y, !dbg !3443, !noalias !3317

.noexc62.i:                                       ; preds = %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3444, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !3445
  br i1 %not..sink.i.i.i.i, label %bb.m, label %bb.l, !dbg !3446

bb.k:                                             ; preds = %bb.c, %.noexc59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !3445
  br label %bb.l, !dbg !3446

bb.l:                                             ; preds = %bb.k, %.noexc62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i.i), !dbg !3447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3447, !noalias !3319
  invoke void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 17)
          to label %.noexc63.i unwind label %bb.y, !dbg !3447, !noalias !3317

.noexc63.i:                                       ; preds = %bb.l
  %i.bl = load i64, ptr %i.f, align 8, !dbg !3448, !range !1978, !noalias !3319, !noundef !1971
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !3449
  br i1 %i.bm, label %.thread11.i.i, label %bb.o, !dbg !3449

bb.m:                                             ; preds = %.noexc62.i
  %.not29.i.i = icmp eq i64 %.sroa.102.0.i.i.i, 0, !dbg !3450
  br i1 %.not29.i.i, label %bb.n, label %bb.z, !dbg !3450

bb.n:                                             ; preds = %bb.m
  %i.bn = invoke { i64, ptr } @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions21available_parallelism()
          to label %.noexc64.i unwind label %bb.y, !dbg !3451, !noalias !3317 ; 2 uses

.noexc64.i:                                       ; preds = %bb.n
  %i.bo = extractvalue { i64, ptr } %i.bn, 0, !dbg !3451
  %i.bp = extractvalue { i64, ptr } %i.bn, 1, !dbg !3451 ; 2 uses
  %i.bq = trunc nuw i64 %i.bo to i1, !dbg !3452
  br i1 %i.bq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i, label %.sink.split.i, !dbg !3452

.thread11.i.i:                                    ; preds = %.noexc63.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %.noexc66.i unwind label %bb.y, !dbg !3453, !noalias !3317

.noexc66.i:                                       ; preds = %.thread11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3454, !noalias !3319
  br label %bb.w, !dbg !3455

bb.o:                                             ; preds = %.noexc63.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3456
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.br, align 8, !dbg !3456, !noalias !3319 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i.i, i64 16, i1 false), !dbg !3456, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3454, !noalias !3319
  %.not28.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i, -9223372036854775808, !dbg !3457
  br i1 %.not28.i.i, label %bb.w, label %bb.p, !dbg !3455

bb.p:                                             ; preds = %bb.o
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3458 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3458, !noalias !3319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i.i, i64 16, i1 false), !dbg !3459, !noalias !3319
  store i64 %.sroa.021.0.copyload.i.i, ptr %i.d, align 8, !dbg !3458, !noalias !3319
  call void @llvm.experimental.noalias.scope.decl(metadata !3326), !dbg !3458
  %i.bs = load ptr, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !dbg !3460, !alias.scope !3326, !noalias !3319, !nonnull !1971, !noundef !1971 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !3461
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !3461, !alias.scope !3326, !noalias !3319, !noundef !1971 ; 2 uses
  switch i64 %i.bu, label %thread-pre-split.i.i54.i.i [
    i64 0, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
    i64 1, label %bb.q
  ], !dbg !3462

bb.q:                                             ; preds = %bb.p
  %i.bv = load i8, ptr %i.bs, align 1, !dbg !3463, !alias.scope !3327, !noalias !3328, !noundef !1971 ; 2 uses
  switch i8 %i.bv, label %bb.r [
    i8 43, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
    i8 45, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  ], !dbg !3463

thread-pre-split.i.i54.i.i:                       ; preds = %bb.p
  %.pr.i.i55.i.i = load i8, ptr %i.bs, align 1, !dbg !3463, !alias.scope !3327, !noalias !3328
  br label %bb.r, !dbg !3463

bb.r:                                             ; preds = %thread-pre-split.i.i54.i.i, %bb.q
  %i.bw = phi i8 [ %.pr.i.i55.i.i, %thread-pre-split.i.i54.i.i ], [ %i.bv, %bb.q ], !dbg !3463
  %cond.i.i37.i.i = icmp eq i8 %i.bw, 43, !dbg !3463 ; 2 uses
  %i.bx = sext i1 %cond.i.i37.i.i to i64, !dbg !3463
  %.sroa.15.0.i.i38.i.i = add nsw i64 %i.bu, %i.bx, !dbg !3463 ; 4 uses
  %.sroa.0.0.idx.i.i39.i.i = zext i1 %cond.i.i37.i.i to i64, !dbg !3463
  %.sroa.0.0.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.idx.i.i39.i.i, !dbg !3463 ; 2 uses
  %i.by = icmp samesign ult i64 %.sroa.15.0.i.i38.i.i, 17
  br i1 %i.by, label %.preheader.i.i47.i.i, label %.preheader56.i.i41.i.i.preheader, !dbg !3464

.preheader.i.i47.i.i:                             ; preds = %bb.r
  %.not5366.i.i48.i.i = icmp eq i64 %.sroa.15.0.i.i38.i.i, 0, !dbg !3465
  br i1 %.not5366.i.i48.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.lr.ph.i.i49.i.i, !dbg !3465

.preheader56.i.i41.i.i:                           ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i.i95, i64 1, !dbg !3466
  %i.ca = add nsw i64 %.sroa.15.1.i.i43.i.i94, -1, !dbg !3466 ; 2 uses
  %.not52.i.not.i45.not.i.not.i.not = icmp eq i64 %i.ca, 0, !dbg !3467
  br i1 %.not52.i.not.i45.not.i.not.i.not, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.preheader56.i.i41.i.i.preheader, !dbg !3467

.preheader56.i.i41.i.i.preheader:                 ; preds = %bb.r, %.preheader56.i.i41.i.i
  %.sroa.0.1.i.i44.i.i95 = phi ptr [ %i.bz, %.preheader56.i.i41.i.i ], [ %.sroa.0.0.i.i40.i.i, %bb.r ] ; 2 uses
  %.sroa.15.1.i.i43.i.i94 = phi i64 [ %i.ca, %.preheader56.i.i41.i.i ], [ %.sroa.15.0.i.i38.i.i, %bb.r ]
  %.sroa.042.0.i.i42.i.i93 = phi i64 [ %i.cj, %.preheader56.i.i41.i.i ], [ 0, %bb.r ]
  %i.cb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i.i93, i64 10), !dbg !3468 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1, !dbg !3468
  br i1 %i.cc, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %bb.s, !dbg !3469, !prof !2004

bb.s:                                             ; preds = %.preheader56.i.i41.i.i.preheader
  %i.cd = extractvalue { i64, i1 } %i.cb, 0, !dbg !3468 ; 2 uses
  %i.ce = load i8, ptr %.sroa.0.1.i.i44.i.i95, align 1, !dbg !3470, !alias.scope !3327, !noalias !3328, !noundef !1971
  %i.cf = zext i8 %i.ce to i32, !dbg !3471
  %i.cg = add nsw i32 %i.cf, -48, !dbg !3472      ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9, !dbg !3473
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = add i64 %i.cd, %i.ci                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cd
  %or.cond.i46.i.i = select i1 %i.ch, i1 true, i1 %i.ck, !dbg !3474, !prof !3325
  br i1 %or.cond.i46.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.preheader56.i.i41.i.i, !dbg !3474, !prof !3325

.lr.ph.i.i49.i.i:                                 ; preds = %.preheader.i.i47.i.i, %bb.t
  %.sroa.0.269.i.i50.i.i = phi ptr [ %i.cr, %bb.t ], [ %.sroa.0.0.i.i40.i.i, %.preheader.i.i47.i.i ] ; 2 uses
  %.sroa.15.268.i.i51.i.i = phi i64 [ %i.cq, %bb.t ], [ %.sroa.15.0.i.i38.i.i, %.preheader.i.i47.i.i ]
  %.sroa.042.267.i.i52.i.i = phi i64 [ %i.ct, %bb.t ], [ 0, %.preheader.i.i47.i.i ]
  %i.cl = load i8, ptr %.sroa.0.269.i.i50.i.i, align 1, !dbg !3475, !alias.scope !3327, !noalias !3328, !noundef !1971
  %i.cm = zext i8 %i.cl to i32, !dbg !3476
  %i.cn = add nsw i32 %i.cm, -48, !dbg !3477      ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9, !dbg !3478       ; 3 uses
  br i1 %i.co, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %bb.t, !dbg !3479

bb.t:                                             ; preds = %.lr.ph.i.i49.i.i
  %i.cp = mul i64 %.sroa.042.267.i.i52.i.i, 10, !dbg !3480
  %i.cq = add nsw i64 %.sroa.15.268.i.i51.i.i, -1, !dbg !3481 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i.i, i64 1, !dbg !3481
  %i.cs = zext nneg i32 %i.cn to i64, !dbg !3482
  %i.ct = add i64 %i.cp, %i.cs, !dbg !3483        ; 2 uses
  %.not53.i.i53.i.i = icmp eq i64 %i.cq, 0, !dbg !3465
  br i1 %.not53.i.i53.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.lr.ph.i.i49.i.i, !dbg !3465

_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i: ; preds = %bb.s, %.preheader56.i.i41.i.i.preheader, %.preheader56.i.i41.i.i, %bb.t, %.lr.ph.i.i49.i.i, %.preheader.i.i47.i.i, %bb.q, %bb.q, %bb.p
  %.sroa.102.0.i31.i.i = phi i64 [ undef, %bb.q ], [ 0, %.preheader.i.i47.i.i ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %.lr.ph.i.i49.i.i ], [ %i.ct, %bb.t ], [ undef, %bb.s ], [ undef, %.preheader56.i.i41.i.i.preheader ], [ %i.cj, %.preheader56.i.i41.i.i ], !dbg !3484
  %.sink.i.i32.i.i = phi i1 [ true, %bb.q ], [ false, %.preheader.i.i47.i.i ], [ true, %bb.p ], [ true, %bb.q ], [ %i.co, %bb.t ], [ %i.co, %.lr.ph.i.i49.i.i ], [ true, %bb.s ], [ true, %.preheader56.i.i41.i.i.preheader ], [ false, %.preheader56.i.i41.i.i ] ; 2 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.u, !dbg !3485, !noalias !3317

bb.u:                                             ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body60.i unwind label %bb.v, !dbg !3486, !noalias !3317

bb.v:                                             ; preds = %bb.u
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3485, !noalias !3317
  unreachable, !dbg !3485

_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc67.i unwind label %bb.y, !dbg !3487, !noalias !3317

.noexc67.i:                                       ; preds = %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.sroa.3.0.i36.i.i = select i1 %.sink.i.i32.i.i, i64 undef, i64 %.sroa.102.0.i31.i.i, !dbg !3488 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3489, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i.i), !dbg !3490
  %i.cw = icmp eq i64 %.sroa.3.0.i36.i.i, 0
  %or.cond.not.i.i = select i1 %.sink.i.i32.i.i, i1 true, i1 %i.cw, !dbg !3491
  br i1 %or.cond.not.i.i, label %bb.x, label %bb.z, !dbg !3491

bb.w:                                             ; preds = %bb.o, %.noexc66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i.i), !dbg !3490
  br label %bb.x, !dbg !3491

bb.x:                                             ; preds = %bb.w, %.noexc67.i
  %i.cx = invoke { i64, ptr } @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions21available_parallelism()
          to label %.noexc68.i unwind label %bb.y, !dbg !3492, !noalias !3317 ; 2 uses

.noexc68.i:                                       ; preds = %bb.x
  %i.cy = extractvalue { i64, ptr } %i.cx, 0, !dbg !3492
  %i.cz = extractvalue { i64, ptr } %i.cx, 1, !dbg !3492 ; 2 uses
  %i.da = trunc nuw i64 %i.cy to i1, !dbg !3493
  br i1 %i.da, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i, label %.sink.split.i, !dbg !3493

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i: ; preds = %.noexc68.i, %.noexc64.i
  %.sink216.i = phi ptr [ %i.bp, %.noexc64.i ], [ %i.cz, %.noexc68.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink216.i) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.sink216.i)
          to label %bb.z unwind label %bb.y, !dbg !3494, !noalias !3317

.body60.i:                                        ; preds = %.thread162.i, %bb.cd, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.ac, %bb.y, %bb.u, %bb.i
  %.pn47.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn116165.i, %.thread162.i ], [ %i.cu, %bb.u ], [ %i.db, %bb.y ], [ %i.bj, %bb.i ], [ %.pn47.pn.pn.pn.i, %bb.cd ], [ %.pn47.pn.pn.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.dr, %bb.ac ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(96) %1) #33
          to label %bb.cn unwind label %bb.ch, !dbg !3495, !noalias !3317

bb.y:                                             ; preds = %bb.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i, %bb.x, %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %.thread11.i.i, %bb.n, %bb.l, %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %.thread4.i.i, %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i

.sink.split.i:                                    ; preds = %.noexc68.i, %.noexc64.i
  %.sink215.i = phi ptr [ %i.bp, %.noexc64.i ], [ %i.cz, %.noexc68.i ] ; 2 uses
  %i.dc = ptrtoint ptr %.sink215.i to i64, !dbg !3496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink215.i) ], !dbg !3497
  br label %bb.z, !dbg !3498

bb.z:                                             ; preds = %.sink.split.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i, %.noexc67.i, %bb.m, %bb.a
  %.sroa.0.1.i.i = phi i64 [ %.sroa.102.0.i.i.i, %bb.m ], [ %.val.i, %bb.a ], [ %.sroa.3.0.i36.i.i, %.noexc67.i ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i57.i.invoke.i ], [ %i.dc, %.sink.split.i ], !dbg !3499
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i, i64 65535), !dbg !3498 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !3500, !noalias !3319
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 89, !dbg !3501
  %i.de = load i8, ptr %i.dd, align 1, !dbg !3501, !range !2019, !alias.scope !3316, !noalias !3317, !noundef !1971
  store i8 %i.de, ptr %i.ac, align 1, !dbg !3501, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !3502, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !3502, !noalias !3319
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !3503
  store i64 0, ptr %i.df, align 8, !dbg !3503, !noalias !3319
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !3503
  store i64 %.sroa.0.0.i.i, ptr %i.dg, align 8, !dbg !3503, !noalias !3319
  store ptr %i.ac, ptr %i.y, align 8, !dbg !3503, !noalias !3319
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %bb.aa unwind label %bb.y, !dbg !3504, !noalias !3317

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !3505, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !3506, !noalias !3319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !3506, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !3507, !noalias !3319
  %i.dh = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !3507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !dbg !3507, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !3508, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !3509, !noalias !3319
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, i64 noundef 0, i64 noundef %.sroa.0.0.i.i)
          to label %bb.ab unwind label %bb.cm, !dbg !3510, !noalias !3317

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !3511, !noalias !3319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !3511, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !3512, !noalias !3319
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !3512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 24, i1 false), !dbg !3512, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !3513, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !3514, !noalias !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !3515, !noalias !3319
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !3515
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !3515, !noalias !3319, !nonnull !1971, !noundef !1971 ; 3 uses
  %i.dl = load i64, ptr %i.aa, align 8, !dbg !3515, !range !2029, !noalias !3319, !noundef !1971
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !3515
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !3515, !noalias !3319, !noundef !1971 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 576460752303423488, !dbg !3516
  call void @llvm.assume(i1 %i.do), !dbg !3517
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dn, !dbg !3518
  store ptr %i.dk, ptr %i.s, align 8, !dbg !3519, !noalias !3319
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3519
  store ptr %i.dk, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3519, !noalias !3319
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3519
  store i64 %i.dl, ptr %.sroa.52.0..sroa_idx.i, align 8, !dbg !3519, !noalias !3319
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !3519
  store ptr %i.dp, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !3519, !noalias !3319
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %bb.ad unwind label %.thread135.i, !dbg !3520, !noalias !3317

.thread135.i:                                     ; preds = %bb.ab
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i, !dbg !3521

bb.ac:                                            ; preds = %bb.cf
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i, !dbg !3521

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3522, !noalias !3319
  invoke void @_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, i64 noundef %.sroa.0.0.i.i)
          to label %bb.ag unwind label %bb.af, !dbg !3522, !noalias !3317

bb.ae:                                            ; preds = %bb.ah, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.du, %bb.ah ], [ %i.ds, %bb.af ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #33
          to label %.thread117.i unwind label %bb.ch, !dbg !3523, !noalias !3317

bb.af:                                            ; preds = %bb.ad
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ad
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCsfcROwRM8ZtH_11polars_plan()
          to label %bb.ai unwind label %bb.ah, !dbg !3524, !noalias !3317 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core5sleep5SleepECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.r) #33
          to label %bb.ae unwind label %bb.ch, !dbg !3523, !noalias !3317

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537.i), !dbg !3525
  %.sroa.537.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.537.i, i64 3, !dbg !3526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.537.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !3526, !noalias !3319
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3527 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3528 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !3529 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 504, !dbg !3530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3530, !noalias !3319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !3531, !noalias !3319
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 472, !dbg !3530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !3531, !noalias !3319
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 389, !dbg !3530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.537.i, i64 27, i1 false), !dbg !3531, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537.i), !dbg !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3523, !noalias !3319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !3523, !noalias !3319
  store i64 1, ptr %i.h, align 128, !dbg !3530, !noalias !3319
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !3530
  store i64 1, ptr %i.dy, align 8, !dbg !3530, !noalias !3319
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 128, !dbg !3530
  store i64 0, ptr %i.dz, align 128, !dbg !3530, !noalias !3319
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136, !dbg !3530
  store ptr %i.dt, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !dbg !3530, !noalias !3319
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256, !dbg !3530
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 128, !dbg !3530, !noalias !3319
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264, !dbg !3530
  store ptr %i.dt, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !3530, !noalias !3319
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384, !dbg !3530
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 128, !dbg !3530, !noalias !3319
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 388, !dbg !3530
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, align 4, !dbg !3530, !noalias !3319
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 416, !dbg !3530
  %i.ea = load <2 x ptr>, ptr %i.dv, align 8, !dbg !3527, !alias.scope !3316, !noalias !3317
  store ptr null, ptr %i.dv, align 8, !dbg !3532, !alias.scope !3316, !noalias !3317
  store <2 x ptr> %i.ea, ptr %.sroa.5.0..sroa_idx.i, align 32, !dbg !3530, !noalias !3319
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432, !dbg !3530
  %i.eb = load <2 x ptr>, ptr %i.dw, align 8, !dbg !3528, !alias.scope !3316, !noalias !3317
  store ptr null, ptr %i.dw, align 8, !dbg !3533, !alias.scope !3316, !noalias !3317
  store <2 x ptr> %i.eb, ptr %.sroa.7.0..sroa_idx.i, align 16, !dbg !3530, !noalias !3319
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448, !dbg !3530
  %i.ec = load <2 x ptr>, ptr %i.dx, align 8, !dbg !3529, !alias.scope !3316, !noalias !3317
  store ptr null, ptr %i.dx, align 8, !dbg !3534, !alias.scope !3316, !noalias !3317
  store <2 x ptr> %i.ec, ptr %.sroa.9.0..sroa_idx.i, align 64, !dbg !3530, !noalias !3319
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 464, !dbg !3530
  store i64 1, ptr %.sroa.11.0..sroa_idx.i, align 16, !dbg !3530, !noalias !3319
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !3535, !noalias !3344
  %i.ed = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 641) 640, i64 noundef range(i64 8, 129) 128) #34, !dbg !3536, !noalias !3344 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null, !dbg !3537
  br i1 %i.ee, label %bb.aj, label %bb.an, !dbg !3538, !prof !2004

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #35
          to label %.noexc70.i unwind label %bb.ak, !dbg !3539, !noalias !3317

.noexc70.i:                                       ; preds = %bb.aj
  unreachable, !dbg !3539

bb.ak:                                            ; preds = %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.h) #33
          to label %.thread117.i unwind label %bb.al, !dbg !3540, !noalias !3317

bb.al:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3541, !noalias !3317
  unreachable, !dbg !3541

end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info00Bd_:bb.a
bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !148657
  %i.ex = load ptr, ptr %i.aq, align 8, !dbg !148658, !nonnull !1971, !noundef !1971
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !dbg !148659
  %i.ez = icmp slt i64 %i.ey, 0, !dbg !148660
  br i1 %i.ez, label %bb.al, label %bb.aj, !dbg !148660

bb.aj:                                            ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.aq, align 8, !dbg !148661, !nonnull !1971, !noundef !1971
  store ptr %i.fa, ptr %i.ah, align 8, !dbg !148662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !148663
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643), !dbg !148445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !148445
  %i.fb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !148664
  %i.fc = icmp eq i32 %i.fb, 0, !dbg !148665
  br i1 %i.fc, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220, label %bb.ak, !dbg !148665, !prof !2096

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !148666
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.b, align 8, !dbg !148667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !148668
  store ptr %i.b, ptr %i.a, align 8, !dbg !148668
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc219 unwind label %bb.ax, !dbg !148669

.noexc219:                                        ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !148670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !148671
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220, !dbg !148671

bb.al:                                            ; preds = %bb.ai
  call void @llvm.trap(), !dbg !148672
  unreachable, !dbg !148672

.thread283:                                       ; preds = %bb.ar, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220
  %lpad.thr_comm281 = landingpad { ptr, i32 }
          cleanup
  br label %.thread267, !dbg !148673

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220: ; preds = %.noexc219, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !148674
  %i.fd = load ptr, ptr %i.ah, align 8, !dbg !148674, !nonnull !1971, !noundef !1971
  store ptr %i.fd, ptr %i.ae, align 8, !dbg !148674
  store i64 %.sroa.029.0, ptr %i.dz, align 8, !dbg !148674
  store i64 %.sroa.0.0.i, ptr %i.ea, align 8, !dbg !148674
  store i8 0, ptr %i.eb, align 8, !dbg !148674
  invoke void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info00s1_0EB1f_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.af, ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(5056) %i.ae)
          to label %bb.am unwind label %.thread283, !dbg !148675

bb.am:                                            ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !148676
  %i.fe = load i64, ptr %i.af, align 8, !dbg !148677, !range !2679, !noundef !1971 ; 2 uses
  %.not192 = icmp eq i64 %i.fe, 18, !dbg !148677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !dbg !148678
  br i1 %.not192, label %bb.ao, label %bb.an, !dbg !148679

bb.an:                                            ; preds = %bb.am
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !148680
  %.sroa.3151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !148681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3151.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6148.0..sroa_idx, i64 40, i1 false), !dbg !148680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !148682
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !148681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, i64 24, i1 false), !dbg !148682
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148681
  store i64 %i.fe, ptr %i.ff, align 8, !dbg !148681
  store i64 1, ptr %0, align 8, !dbg !148681
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643), !dbg !148683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !148684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !148673
  br label %bb.at, !dbg !148685

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !148682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, i64 24, i1 false), !dbg !148445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643), !dbg !148683
  %i.fg = load i64, ptr %i.ed, align 8, !dbg !148686, !noundef !1971 ; 5 uses
  %i.fh = add i64 %i.fg, %.sroa.029.0, !dbg !148687
  %i.fi = load ptr, ptr %i.ee, align 8, !dbg !148688, !nonnull !1971, !noundef !1971
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.fg)
          to label %.noexc221 unwind label %bb.aq, !dbg !148689

.noexc221:                                        ; preds = %bb.ao
  %i.fj = load i64, ptr %i.dy, align 8, !dbg !148690, !alias.scope !148458, !noundef !1971 ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1, !dbg !148691
  call void @llvm.assume(i1 %i.fk), !dbg !148692
  %.not.i = icmp eq i64 %i.fg, 0, !dbg !148693
  br i1 %.not.i, label %bb.ar, label %bb.ap, !dbg !148693

bb.ap:                                            ; preds = %.noexc221
  %i.fl = load ptr, ptr %i.dx, align 8, !dbg !148694, !alias.scope !148458, !nonnull !1971, !noundef !1971
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fj, !dbg !148695
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.fi, i64 %i.fg, i1 false), !dbg !148696
  %.pre.i = load i64, ptr %i.dy, align 8, !dbg !148697, !alias.scope !148458
  br label %bb.ar, !dbg !148698

bb.aq:                                            ; preds = %bb.ao
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread267 unwind label %bb.as, !dbg !148699

bb.ar:                                            ; preds = %bb.ap, %.noexc221
  %i.fo = phi i64 [ %.pre.i, %bb.ap ], [ %i.fj, %.noexc221 ], !dbg !148697
  %i.fp = add i64 %i.fo, %i.fg, !dbg !148697
  store i64 %i.fp, ptr %i.dy, align 8, !dbg !148697, !alias.scope !148458
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 unwind label %.thread283, !dbg !148700

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !148684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !148673
  br label %bb.az, !dbg !148701

bb.as:                                            ; preds = %bb.cq, %bb.cn, %bb.cl, %bb.bm, %.thread290, %bb.ay, %bb.aq, %bb.ab, %bb.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %bb.da, %.thread267, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !148702
  unreachable, !dbg !148702

bb.at:                                            ; preds = %bb.cg, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.av unwind label %bb.au, !dbg !148703

bb.au:                                            ; preds = %bb.at
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.thread260 unwind label %bb.aw, !dbg !148704

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.ac, !dbg !148705

bb.aw:                                            ; preds = %bb.au
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !148703
  unreachable, !dbg !148703

bb.ax:                                            ; preds = %bb.ak
  %lpad.thr_comm.split-lp282 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148459), !dbg !148673
  call void @llvm.experimental.noalias.scope.decl(metadata !148460), !dbg !148706
  %i.ft = load ptr, ptr %i.ah, align 8, !dbg !148707, !alias.scope !148461, !nonnull !1971, !noundef !1971
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !dbg !148708, !noalias !148461
  %i.fv = icmp eq i64 %i.fu, 1, !dbg !148709
  br i1 %i.fv, label %bb.ay, label %.thread267, !dbg !148709

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !dbg !148710
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah) #36
          to label %.thread267 unwind label %bb.as, !dbg !148711

bb.az:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225, %bb.ah
  %.sroa.039.1 = phi i1 [ %.sroa.039.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 ], [ true, %bb.ah ], !dbg !148649 ; 3 uses
  %.sroa.029.1 = phi i64 [ %i.fh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 ], [ %.sroa.029.0, %bb.ah ], !dbg !148712 ; 3 uses
  %i.fw = shl i64 %.sroa.029.1, %i.ef, !dbg !148713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !148714
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.652), !dbg !148464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !148464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !148462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !148715
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ba unwind label %.split.thread.loopexit, !dbg !148716

bb.ba:                                            ; preds = %bb.az
  %i.fx = invoke noundef nonnull ptr @_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStoragehE10from_ownerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.bb unwind label %.split.thread.loopexit, !dbg !148717

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull %i.fx)
          to label %bb.bc unwind label %.split.thread.loopexit, !dbg !148718

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !148719
  invoke void @_RNvMs2_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE11from_memory(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.bd unwind label %.split.thread.loopexit, !dbg !148464

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !148720
  %i.fy = load i64, ptr %i.ac, align 8, !dbg !148721, !range !148463, !noundef !1971 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 7, !dbg !148721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5153.0..sroa_idx, i64 72, i1 false), !dbg !148722
  br i1 %i.fz, label %bb.be, label %bb.bf, !dbg !148723

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !148724
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ga, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, i64 72, i1 false), !dbg !148724
  store i64 1, ptr %0, align 8, !dbg !148725
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.652), !dbg !148726
  br label %bb.cg, !dbg !148727

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6154.0..sroa_idx, i64 240, i1 false), !dbg !148728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !148724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, i64 72, i1 false), !dbg !148464
  store i64 %i.fy, ptr %i.ad, align 8, !dbg !148729
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.652), !dbg !148726
  %..sroa.037.0 = select i1 %.sroa.039.1, i64 -1, i64 %.sroa.037.0, !dbg !148730
  %.sroa.057.0 = select i1 %i.eg, i64 %..sroa.037.0, i64 %.sroa.029.1, !dbg !148730 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !148731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !148468
  %i.gb = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE5emptyCsfcROwRM8ZtH_11polars_plan()
          to label %bb.bg unwind label %.loopexit, !dbg !148732

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bm, %.thread290
  %.sroa.0118.2 = phi i1 [ %.sroa.0118.4, %bb.bm ], [ true, %.thread290 ], [ true, %.loopexit ], [ %.sroa.0118.3.ph, %.loopexit.split-lp ], !dbg !148649
  %.pn201 = phi { ptr, i32 } [ %lpad.phi303, %bb.bm ], [ %.pn199, %.thread290 ], [ %lpad.loopexit296, %.loopexit ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad) #33
          to label %bb.ag unwind label %bb.as, !dbg !148733

.loopexit:                                        ; preds = %bb.bf, %bb.bg, %bb.bt, %bb.cd
  %lpad.loopexit296 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231

.loopexit.split-lp:                               ; preds = %bb.bq, %bb.bw, %bb.cf
  %.sroa.0118.3.ph = phi i1 [ true, %bb.bq ], [ true, %bb.cf ], [ false, %bb.bw ]
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull %i.gb)
          to label %bb.bh unwind label %.loopexit, !dbg !148734

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs1_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE15read_next_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, i64 noundef %.sroa.057.0, i64 noundef 1, i64 %i.fw)
          to label %bb.bj unwind label %bb.bi, !dbg !148735

.thread290:                                       ; preds = %.thread290.loopexit, %.thread290.loopexit.split-lp, %bb.bi
  %.pn199 = phi { ptr, i32 } [ %i.gc, %bb.bi ], [ %lpad.loopexit304, %.thread290.loopexit ], [ %lpad.loopexit.split-lp305, %.thread290.loopexit.split-lp ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231 unwind label %bb.as, !dbg !148736

bb.bi:                                            ; preds = %bb.bh
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.thread290

bb.bj:                                            ; preds = %bb.bh
  %i.gd = load ptr, ptr %i.y, align 8, !dbg !148731, !noundef !1971
  %i.ge = icmp eq ptr %i.gd, null, !dbg !148731
  br i1 %i.ge, label %bb.bk, label %bb.bl, !dbg !148737

bb.bk:                                            ; preds = %bb.bj
  %.val210 = load ptr, ptr %i.ev, align 8, !dbg !148738, !nonnull !1971, !noundef !1971 ; 3 uses
  %i.gf = call fastcc noundef i8 @_RNvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val210), !dbg !148738
  %i.gg = icmp eq i8 %i.gf, 37, !dbg !148739
  br i1 %i.gg, label %bb.cb, label %bb.cc, !dbg !148739

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !148740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !148741
  %i.gh = load i64, ptr %i.eh, align 8, !dbg !148741, !noundef !1971 ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233 unwind label %.loopexit299, !dbg !148742

.loopexit299:                                     ; preds = %bb.bn, %bb.bl
  %lpad.loopexit301 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp300:                            ; preds = %bb.bs, %bb.bv
  %lpad.loopexit.split-lp302 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp300, %.loopexit299
  %.sroa.0118.4 = phi i1 [ true, %.loopexit299 ], [ false, %.loopexit.split-lp300 ], !dbg !148649
  %lpad.phi303 = phi { ptr, i32 } [ %lpad.loopexit301, %.loopexit299 ], [ %lpad.loopexit.split-lp302, %.loopexit.split-lp300 ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231 unwind label %bb.as, !dbg !148743

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !148744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !148744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !148484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !148745
  %i.gi = load ptr, ptr %i.z, align 8, !dbg !148746, !nonnull !1971, !noundef !1971 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !148747, !range !2577, !noundef !1971
  %i.gk = icmp eq i64 %i.gj, 3, !dbg !148748
  br i1 %i.gk, label %bb.bn, label %bb.bo, !dbg !148748

bb.bn:                                            ; preds = %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233
  %i.gl = load ptr, ptr %i.ei, align 8, !dbg !148749, !noundef !1971
  %i.gm = load i64, ptr %i.ej, align 8, !dbg !148750, !noundef !1971
  store ptr %i.gi, ptr %i.v, align 8, !dbg !148751
  store ptr %i.gl, ptr %i.ek, align 8, !dbg !148751
  store i64 %i.gm, ptr %i.el, align 8, !dbg !148751
  %i.gn = load ptr, ptr %i.eo, align 8, !dbg !148752, !nonnull !1971, !noundef !1971 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72, !dbg !148474
  %i.gp = load i8, ptr %i.go, align 8, !dbg !148474, !range !2019, !noundef !1971
  %i.gq = trunc nuw i8 %i.gp to i1, !dbg !148474
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 73, !dbg !148474
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !148474
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 71, !dbg !148753
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !148753, !range !2579, !noundef !1971
  %.not195 = icmp eq i8 %i.gu, -37, !dbg !148753
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 48, !dbg !148754
  %.sroa.069.0 = select i1 %.not195, ptr null, ptr %i.gv, !dbg !148754
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 80, !dbg !148755
  %i.gx = load i8, ptr %i.gw, align 8, !dbg !148755, !noundef !1971
  %i.gy = load i8, ptr %i.ep, align 2, !dbg !148756, !range !2019, !noundef !1971
  %i.gz = trunc nuw i8 %i.gy to i1, !dbg !148756
  %i.ha = load i64, ptr %i.eq, align 8, !dbg !148757, !noundef !1971
  %i.hb = load i64, ptr %i.er, align 8, !dbg !148758, !noundef !1971
  %i.hc = load i64, ptr %i.es, align 8, !dbg !148759, !noundef !1971
  %i.hd = load i8, ptr %i.et, align 1, !dbg !148760, !range !2019, !noundef !1971
  %i.he = trunc nuw i8 %i.hd to i1, !dbg !148760
  invoke void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser25count_rows_from_slice_par(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i1 noundef zeroext %i.gq, i8 %i.gs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.069.0, i8 noundef %i.gx, i1 noundef zeroext %i.gz, i64 noundef %i.ha, i64 noundef %i.hb, i64 noundef %i.hc, i1 noundef zeroext %i.he)
          to label %bb.bp unwind label %.loopexit299, !dbg !148484

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 24, !dbg !148761
  %i.hg = atomicrmw add ptr %i.hf, i64 1 monotonic, align 8, !dbg !148762 ; 0 uses
  br label %bb.bn, !dbg !148763

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !148764
  %i.hh = load i64, ptr %i.w, align 8, !dbg !148765, !range !2679, !noundef !1971 ; 2 uses
  %.not196 = icmp eq i64 %i.hh, 18, !dbg !148765
  %i.hi = load i64, ptr %i.eu, align 8, !dbg !148766 ; 2 uses
  br i1 %.not196, label %bb.br, label %bb.bq, !dbg !148767

bb.bq:                                            ; preds = %bb.bp
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !148768
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !148769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6160.0..sroa_idx, i64 56, i1 false), !dbg !148768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !148770
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148769
  store i64 %i.hh, ptr %i.hj, align 8, !dbg !148769
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !148769
  store i64 %i.hi, ptr %.sroa.2162.0..sroa_idx, align 8, !dbg !148769
  store i64 1, ptr %0, align 8, !dbg !148769
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237 unwind label %.loopexit.split-lp, !dbg !148771

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !148770
  %i.hk = icmp uge i64 %i.hi, %i.bn, !dbg !148772
  %or.cond = select i1 %i.hk, i1 true, i1 %.sroa.039.1, !dbg !148772
  br i1 %or.cond, label %bb.bs, label %bb.bt, !dbg !148772

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !148773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !148773
  %i.hl = invoke noundef nonnull ptr @_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStoragehE10from_ownerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.bv unwind label %.loopexit.split-lp300, !dbg !148774

bb.bt:                                            ; preds = %bb.br
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 unwind label %.loopexit, !dbg !148775

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239: ; preds = %bb.bt
  %i.hm = icmp eq i64 %i.gh, %.sroa.057.0
  %or.cond5 = select i1 %i.eg, i1 %i.hm, i1 false, !dbg !148776 ; 2 uses
  %not.or.cond5 = xor i1 %or.cond5, true, !dbg !148776
  %i.hn = zext i1 %not.or.cond5 to i64, !dbg !148776
  %.sroa.034.1 = shl i64 %.sroa.034.0, %i.hn, !dbg !148776
  %i.ho = zext i1 %or.cond5 to i64, !dbg !148776
  %.sroa.037.1 = shl i64 %.sroa.037.0, %i.ho, !dbg !148776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !148777
  br label %bb.bu, !dbg !148778

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239
  %.sroa.037.2 = phi i64 [ %.sroa.037.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 ], [ %.sroa.037.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 ], !dbg !148779
  %.sroa.034.2 = phi i64 [ %i.hv, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 ], [ %.sroa.034.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 ], !dbg !148651
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.ce unwind label %.split.thread.loopexit, !dbg !148733

bb.bv:                                            ; preds = %bb.bs
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull %i.hl)
          to label %bb.bw unwind label %.loopexit.split-lp300, !dbg !148780

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !148781
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241 unwind label %.loopexit.split-lp, !dbg !148782

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !148777
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.bx unwind label %.split, !dbg !148733

bb.bx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !148733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !148648
  call void @llvm.experimental.noalias.scope.decl(metadata !148489), !dbg !148631
  call void @llvm.experimental.noalias.scope.decl(metadata !148490), !dbg !148783
  %i.hp = load ptr, ptr %i.aq, align 8, !dbg !148784, !alias.scope !148491, !nonnull !1971, !noundef !1971
  %i.hq = atomicrmw sub ptr %i.hp, i64 1 release, align 8, !dbg !148785, !noalias !148491
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !148786
  br i1 %i.hr, label %bb.by, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242, !dbg !148786

bb.by:                                            ; preds = %bb.bx
  fence acquire, !dbg !148787
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #36, !dbg !148788
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242, !dbg !148788

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !148631
  br label %bb.bz, !dbg !148789

bb.bz:                                            ; preds = %bb.cr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242
  %.sroa.390.0 = phi i64 [ %i.gh, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242 ], [ %.sroa.091.0, %bb.cr ], !dbg !148790
  %.sroa.083.0 = phi i64 [ %i.cp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242 ], [ %i.ij, %bb.cr ], !dbg !148790 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !148791
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.694), !dbg !148492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !148492
  call void @_RNvMs2_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE11from_memory(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !dbg !148492
  %i.hs = load i64, ptr %i.p, align 8, !dbg !148792, !range !148463, !noundef !1971 ; 4 uses
  %i.ht = icmp eq i64 %i.hs, 7, !dbg !148792
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !148793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.694, ptr noundef nonnull align 8 dereferenceable(72) %i.hu, i64 72, i1 false), !dbg !148793
  br i1 %i.ht, label %bb.cs, label %bb.ct, !dbg !148794

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !148777
  br label %bb.ca, !dbg !148778

bb.ca:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.cg unwind label %.split.thread.loopexit.split-lp, !dbg !148733

.thread290.loopexit:                              ; preds = %bb.cb
  %lpad.loopexit304 = landingpad { ptr, i32 }
          cleanup
  br label %.thread290

.thread290.loopexit.split-lp:                     ; preds = %bb.cc
  %lpad.loopexit.split-lp305 = landingpad { ptr, i32 }
          cleanup
  br label %.thread290

bb.cb:                                            ; preds = %bb.bk
  %i.hv = shl i64 %.sroa.034.0, 1, !dbg !148795
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val210)
          to label %bb.cd unwind label %.thread290.loopexit, !dbg !148796

bb.cc:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !148797
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull %.val210)
          to label %bb.cf unwind label %.thread290.loopexit.split-lp, !dbg !148797

bb.cd:                                            ; preds = %bb.cb
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 unwind label %.loopexit, !dbg !148798

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !148744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !148744
  br label %bb.bu, !dbg !148778

bb.ce:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !148733
  br label %bb.ah, !dbg !148799

bb.cf:                                            ; preds = %bb.cc
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !148800
  store i64 1, ptr %0, align 8, !dbg !148800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !148801
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246 unwind label %.loopexit.split-lp, !dbg !148802

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !148744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !148744
  br label %bb.ca, !dbg !148778

bb.cg:                                            ; preds = %bb.ca, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !148733
  br label %bb.at, !dbg !148685

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !148648
  br label %bb.ci, !dbg !148803

.thread267:                                       ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %bb.ax, %bb.ay, %bb.aq, %.thread283, %bb.ag
  %.pn203270 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp282, %bb.ax ], [ %.pn201, %bb.ag ], [ %i.fn, %bb.aq ], [ %lpad.thr_comm281, %.thread283 ], [ %lpad.thr_comm.split-lp282, %bb.ay ], [ %lpad.loopexit, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #33
          to label %.thread260 unwind label %bb.as, !dbg !148648

bb.ch:                                            ; preds = %bb.ae
  unreachable

bb.ci:                                            ; preds = %bb.x, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !148497), !dbg !148631
  call void @llvm.experimental.noalias.scope.decl(metadata !148498), !dbg !148804
  %i.hx = load ptr, ptr %i.aq, align 8, !dbg !148805, !alias.scope !148499, !nonnull !1971, !noundef !1971
  %i.hy = atomicrmw sub ptr %i.hx, i64 1 release, align 8, !dbg !148806, !noalias !148499
  %i.hz = icmp eq i64 %i.hy, 1, !dbg !148807
  br i1 %i.hz, label %bb.cj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247, !dbg !148807

bb.cj:                                            ; preds = %bb.ci
  fence acquire, !dbg !148808
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #36, !dbg !148809
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247, !dbg !148809

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247: ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !148631
  br label %bb.db, !dbg !148810

bb.ck:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148500), !dbg !148612
  call void @llvm.experimental.noalias.scope.decl(metadata !148501), !dbg !148811
  %i.ia = load ptr, ptr %i.am, align 8, !dbg !148812, !alias.scope !148502, !nonnull !1971, !noundef !1971
  %i.ib = atomicrmw sub ptr %i.ia, i64 1 release, align 8, !dbg !148813, !noalias !148502
  %i.ic = icmp eq i64 %i.ib, 1, !dbg !148814
  br i1 %i.ic, label %bb.cl, label %.thread260, !dbg !148814

bb.cl:                                            ; preds = %bb.ck
  fence acquire, !dbg !148815
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #36
          to label %.thread260 unwind label %bb.as, !dbg !148816

bb.cm:                                            ; preds = %bb.l
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !148503), !dbg !148581
  call void @llvm.experimental.noalias.scope.decl(metadata !148504), !dbg !148817
  %i.ie = load ptr, ptr %i.ap, align 8, !dbg !148818, !alias.scope !148505, !nonnull !1971, !noundef !1971
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !dbg !148819, !noalias !148505
  %i.ig = icmp eq i64 %i.if, 1, !dbg !148820
  br i1 %i.ig, label %bb.cn, label %.thread260, !dbg !148820

bb.cn:                                            ; preds = %bb.cm
  fence acquire, !dbg !148821
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #36
          to label %.thread260 unwind label %bb.as, !dbg !148822

bb.co:                                            ; preds = %bb.b
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !148823
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !148824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6169.0..sroa_idx, i64 40, i1 false), !dbg !148823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !148825
  %.sroa.2171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !148824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675, i64 24, i1 false), !dbg !148825
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !148824
  store i64 %i.bg, ptr %i.ih, align 8, !dbg !148824
  store i64 1, ptr %0, align 8, !dbg !148824
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !148826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !148827
  br label %bb.db, !dbg !148554

bb.cp:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !148825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675, i64 24, i1 false), !dbg !148374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !148826
  %i.ii = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !148828
  %i.ij = load i64, ptr %i.ii, align 8, !dbg !148828, !noundef !1971 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !148829
  %i.il = load ptr, ptr %i.ik, align 8, !dbg !148829, !noundef !1971
end_hunk_1
