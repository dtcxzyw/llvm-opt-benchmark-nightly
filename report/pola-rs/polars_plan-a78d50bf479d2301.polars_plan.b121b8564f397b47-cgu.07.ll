Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.07?download=true
inline.NumInlined: 10851
inline.NumDeleted: 5377
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB3_10ThreadPool5buildNtNtB5_8registry12DefaultSpawnECsfcROwRM8ZtH_11polars_plan:bb.a
  %.sroa.042.0.i.i.i.i91 = phi i64 [ %i.ay, %.preheader56.i.i.i.i ], [ 0, %bb.f ]
  %i.aq = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i91, i64 10), !dbg !3428 ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1, !dbg !3428
  br i1 %i.ar, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %bb.g, !dbg !3429, !prof !2006

bb.g:                                             ; preds = %.preheader56.i.i.i.i.preheader
  %i.as = extractvalue { i64, i1 } %i.aq, 0, !dbg !3428 ; 2 uses
  %i.at = load i8, ptr %.sroa.0.1.i.i.i.i93, align 1, !dbg !3430, !alias.scope !3330, !noalias !3331, !noundef !1973
  %i.au = zext i8 %i.at to i32, !dbg !3431
  %i.av = add nsw i32 %i.au, -48, !dbg !3432      ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 9, !dbg !3433
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = add i64 %i.as, %i.ax                    ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.as
  %or.cond.i.i.i = select i1 %i.aw, i1 true, i1 %i.az, !dbg !3434, !prof !3332
  br i1 %or.cond.i.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %.preheader56.i.i.i.i, !dbg !3434, !prof !3332

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.bg, %bb.h ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.bf, %bb.h ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ 0, %.preheader.i.i.i.i ]
  %i.ba = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !dbg !3435, !alias.scope !3330, !noalias !3331, !noundef !1973
  %i.bb = zext i8 %i.ba to i32, !dbg !3436
  %i.bc = add nsw i32 %i.bb, -48, !dbg !3437      ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10, !dbg !3438      ; 3 uses
  br i1 %i.bd, label %bb.h, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, !dbg !3439

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = mul i64 %.sroa.042.267.i.i.i.i, 10, !dbg !3440
  %i.bf = add nsw i64 %.sroa.15.268.i.i.i.i, -1, !dbg !3441 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i, i64 1, !dbg !3441
  %i.bh = zext nneg i32 %i.bc to i64, !dbg !3442
  %i.bi = add i64 %i.be, %i.bh, !dbg !3443        ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.bf, 0, !dbg !3425
  br i1 %.not53.i.i.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !3425

_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.preheader, %.preheader56.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.h ], [ undef, %bb.g ], [ undef, %.preheader56.i.i.i.i.preheader ], [ %i.ay, %.preheader56.i.i.i.i ], !dbg !3444 ; 2 uses
  %not..sink.i.i.i.i = phi i1 [ false, %bb.e ], [ true, %.preheader.i.i.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ %i.bd, %bb.h ], [ %i.bd, %.lr.ph.i.i.i.i ], [ false, %bb.g ], [ false, %.preheader56.i.i.i.i.preheader ], [ true, %.preheader56.i.i.i.i ]
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.i, !dbg !3445, !noalias !3326

bb.i:                                             ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body60.i unwind label %bb.j, !dbg !3446, !noalias !3326

bb.j:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3445, !noalias !3326
  unreachable, !dbg !3445

_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc62.i unwind label %bb.ab, !dbg !3447, !noalias !3326

.noexc62.i:                                       ; preds = %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3448, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !3449
  br i1 %not..sink.i.i.i.i, label %bb.m, label %bb.l, !dbg !3450

bb.k:                                             ; preds = %bb.c, %.noexc59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !3449
  br label %bb.l, !dbg !3450

bb.l:                                             ; preds = %bb.k, %.noexc62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i.i), !dbg !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3451, !noalias !3325
  invoke void @_RINvNtCsh8eZTKRCwoO_3std3env3varReECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 17)
          to label %.noexc63.i unwind label %bb.ab, !dbg !3451, !noalias !3326

.noexc63.i:                                       ; preds = %bb.l
  %i.bl = load i64, ptr %i.f, align 8, !dbg !3452, !range !1980, !noalias !3325, !noundef !1973
  %i.bm = trunc nuw i64 %i.bl to i1, !dbg !3453
  br i1 %i.bm, label %.thread11.i.i, label %bb.o, !dbg !3453

bb.m:                                             ; preds = %.noexc62.i
  %.not29.i.i = icmp eq i64 %.sroa.102.0.i.i.i, 0, !dbg !3454
  br i1 %.not29.i.i, label %bb.n, label %bb.y, !dbg !3454

bb.n:                                             ; preds = %bb.m
  %i.bn = invoke { i64, ptr } @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions21available_parallelism()
          to label %.noexc64.i unwind label %bb.ab, !dbg !3455, !noalias !3326 ; 2 uses

.noexc64.i:                                       ; preds = %bb.n
  %i.bo = extractvalue { i64, ptr } %i.bn, 0, !dbg !3455
  %i.bp = extractvalue { i64, ptr } %i.bn, 1, !dbg !3455 ; 2 uses
  %i.bq = trunc nuw i64 %i.bo to i1, !dbg !3456
  br i1 %i.bq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i, label %.sink.split.i, !dbg !3456

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i: ; preds = %.noexc68.i, %.noexc64.i
  %.sink217.i = phi ptr [ %i.cz, %.noexc68.i ], [ %i.bp, %.noexc64.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink217.i) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.sink217.i)
          to label %bb.y unwind label %bb.ab, !dbg !3457, !noalias !3326

.thread11.i.i:                                    ; preds = %.noexc63.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsh8eZTKRCwoO_3std3env8VarErrorEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.f)
          to label %.noexc66.i unwind label %bb.ab, !dbg !3458, !noalias !3326

.noexc66.i:                                       ; preds = %.thread11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3459, !noalias !3325
  br label %bb.w, !dbg !3460

bb.o:                                             ; preds = %.noexc63.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3461
  %.sroa.021.0.copyload.i.i = load i64, ptr %i.br, align 8, !dbg !3461, !noalias !3325 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !3461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i.i, i64 16, i1 false), !dbg !3461, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !3459, !noalias !3325
  %.not28.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i, -9223372036854775808, !dbg !3462
  br i1 %.not28.i.i, label %bb.w, label %bb.p, !dbg !3460

bb.p:                                             ; preds = %bb.o
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3463 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3463, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i.i, i64 16, i1 false), !dbg !3464, !noalias !3325
  store i64 %.sroa.021.0.copyload.i.i, ptr %i.d, align 8, !dbg !3463, !noalias !3325
  call void @llvm.experimental.noalias.scope.decl(metadata !3333), !dbg !3463
  %i.bs = load ptr, ptr %.sroa.524.0..sroa_idx.i.i, align 8, !dbg !3465, !alias.scope !3333, !noalias !3325, !nonnull !1973, !noundef !1973 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !3466
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !3466, !alias.scope !3333, !noalias !3325, !noundef !1973 ; 2 uses
  switch i64 %i.bu, label %thread-pre-split.i.i54.i.i [
    i64 0, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
    i64 1, label %bb.q
  ], !dbg !3467

bb.q:                                             ; preds = %bb.p
  %i.bv = load i8, ptr %i.bs, align 1, !dbg !3468, !alias.scope !3334, !noalias !3335, !noundef !1973 ; 2 uses
  switch i8 %i.bv, label %bb.r [
    i8 43, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
    i8 45, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  ], !dbg !3468

thread-pre-split.i.i54.i.i:                       ; preds = %bb.p
  %.pr.i.i55.i.i = load i8, ptr %i.bs, align 1, !dbg !3468, !alias.scope !3334, !noalias !3335
  br label %bb.r, !dbg !3468

bb.r:                                             ; preds = %thread-pre-split.i.i54.i.i, %bb.q
  %i.bw = phi i8 [ %.pr.i.i55.i.i, %thread-pre-split.i.i54.i.i ], [ %i.bv, %bb.q ], !dbg !3468
  %cond.i.i37.i.i = icmp eq i8 %i.bw, 43, !dbg !3468 ; 2 uses
  %i.bx = sext i1 %cond.i.i37.i.i to i64, !dbg !3468
  %.sroa.15.0.i.i38.i.i = add nsw i64 %i.bu, %i.bx, !dbg !3468 ; 4 uses
  %.sroa.0.0.idx.i.i39.i.i = zext i1 %cond.i.i37.i.i to i64, !dbg !3468
  %.sroa.0.0.i.i40.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.0.0.idx.i.i39.i.i, !dbg !3468 ; 2 uses
  %i.by = icmp samesign ult i64 %.sroa.15.0.i.i38.i.i, 17
  br i1 %i.by, label %.preheader.i.i47.i.i, label %.preheader56.i.i41.i.i.preheader, !dbg !3469

.preheader.i.i47.i.i:                             ; preds = %bb.r
  %.not5366.i.i48.i.i = icmp eq i64 %.sroa.15.0.i.i38.i.i, 0, !dbg !3470
  br i1 %.not5366.i.i48.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.lr.ph.i.i49.i.i, !dbg !3470

.preheader56.i.i41.i.i:                           ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i.i96, i64 1, !dbg !3471
  %i.ca = add nsw i64 %.sroa.15.1.i.i43.i.i95, -1, !dbg !3471 ; 2 uses
  %.not52.i.not.i45.not.i.not.i.not = icmp eq i64 %i.ca, 0, !dbg !3472
  br i1 %.not52.i.not.i45.not.i.not.i.not, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.preheader56.i.i41.i.i.preheader, !dbg !3472

.preheader56.i.i41.i.i.preheader:                 ; preds = %bb.r, %.preheader56.i.i41.i.i
  %.sroa.0.1.i.i44.i.i96 = phi ptr [ %i.bz, %.preheader56.i.i41.i.i ], [ %.sroa.0.0.i.i40.i.i, %bb.r ] ; 2 uses
  %.sroa.15.1.i.i43.i.i95 = phi i64 [ %i.ca, %.preheader56.i.i41.i.i ], [ %.sroa.15.0.i.i38.i.i, %bb.r ]
  %.sroa.042.0.i.i42.i.i94 = phi i64 [ %i.cj, %.preheader56.i.i41.i.i ], [ 0, %bb.r ]
  %i.cb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i.i94, i64 10), !dbg !3473 ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1, !dbg !3473
  br i1 %i.cc, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %bb.s, !dbg !3474, !prof !2006

bb.s:                                             ; preds = %.preheader56.i.i41.i.i.preheader
  %i.cd = extractvalue { i64, i1 } %i.cb, 0, !dbg !3473 ; 2 uses
  %i.ce = load i8, ptr %.sroa.0.1.i.i44.i.i96, align 1, !dbg !3475, !alias.scope !3334, !noalias !3335, !noundef !1973
  %i.cf = zext i8 %i.ce to i32, !dbg !3476
  %i.cg = add nsw i32 %i.cf, -48, !dbg !3477      ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9, !dbg !3478
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = add i64 %i.cd, %i.ci                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.cd
  %or.cond.i46.i.i = select i1 %i.ch, i1 true, i1 %i.ck, !dbg !3479, !prof !3332
  br i1 %or.cond.i46.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.preheader56.i.i41.i.i, !dbg !3479, !prof !3332

.lr.ph.i.i49.i.i:                                 ; preds = %.preheader.i.i47.i.i, %bb.t
  %.sroa.0.269.i.i50.i.i = phi ptr [ %i.cr, %bb.t ], [ %.sroa.0.0.i.i40.i.i, %.preheader.i.i47.i.i ] ; 2 uses
  %.sroa.15.268.i.i51.i.i = phi i64 [ %i.cq, %bb.t ], [ %.sroa.15.0.i.i38.i.i, %.preheader.i.i47.i.i ]
  %.sroa.042.267.i.i52.i.i = phi i64 [ %i.ct, %bb.t ], [ 0, %.preheader.i.i47.i.i ]
  %i.cl = load i8, ptr %.sroa.0.269.i.i50.i.i, align 1, !dbg !3480, !alias.scope !3334, !noalias !3335, !noundef !1973
  %i.cm = zext i8 %i.cl to i32, !dbg !3481
  %i.cn = add nsw i32 %i.cm, -48, !dbg !3482      ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 9, !dbg !3483       ; 3 uses
  br i1 %i.co, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %bb.t, !dbg !3484

bb.t:                                             ; preds = %.lr.ph.i.i49.i.i
  %i.cp = mul i64 %.sroa.042.267.i.i52.i.i, 10, !dbg !3485
  %i.cq = add nsw i64 %.sroa.15.268.i.i51.i.i, -1, !dbg !3486 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i.i, i64 1, !dbg !3486
  %i.cs = zext nneg i32 %i.cn to i64, !dbg !3487
  %i.ct = add i64 %i.cp, %i.cs, !dbg !3488        ; 2 uses
  %.not53.i.i53.i.i = icmp eq i64 %i.cq, 0, !dbg !3470
  br i1 %.not53.i.i53.i.i, label %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i, label %.lr.ph.i.i49.i.i, !dbg !3470

_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i: ; preds = %bb.s, %.preheader56.i.i41.i.i.preheader, %.preheader56.i.i41.i.i, %bb.t, %.lr.ph.i.i49.i.i, %.preheader.i.i47.i.i, %bb.q, %bb.q, %bb.p
  %.sroa.102.0.i31.i.i = phi i64 [ undef, %bb.q ], [ 0, %.preheader.i.i47.i.i ], [ undef, %bb.p ], [ undef, %bb.q ], [ undef, %.lr.ph.i.i49.i.i ], [ %i.ct, %bb.t ], [ undef, %bb.s ], [ undef, %.preheader56.i.i41.i.i.preheader ], [ %i.cj, %.preheader56.i.i41.i.i ], !dbg !3489 ; 2 uses
  %.sink.i.i32.i.i = phi i1 [ true, %bb.q ], [ false, %.preheader.i.i47.i.i ], [ true, %bb.p ], [ true, %bb.q ], [ %i.co, %bb.t ], [ %i.co, %.lr.ph.i.i49.i.i ], [ true, %bb.s ], [ true, %.preheader56.i.i41.i.i.preheader ], [ false, %.preheader56.i.i41.i.i ] ; 2 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i unwind label %bb.u, !dbg !3490, !noalias !3326

bb.u:                                             ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body60.i unwind label %bb.v, !dbg !3491, !noalias !3326

bb.v:                                             ; preds = %bb.u
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3490, !noalias !3326
  unreachable, !dbg !3490

_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsv_NtCscgRAwXFJnXP_4core3numj16from_ascii_radix.exit.i30.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc67.i unwind label %bb.ab, !dbg !3492, !noalias !3326

.noexc67.i:                                       ; preds = %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.sroa.3.0.i36.i.i = select i1 %.sink.i.i32.i.i, i64 undef, i64 %.sroa.102.0.i31.i.i, !dbg !3493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3494, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i.i), !dbg !3495
  %i.cw = icmp eq i64 %.sroa.102.0.i31.i.i, 0
  %or.cond.not.i.i = select i1 %.sink.i.i32.i.i, i1 true, i1 %i.cw, !dbg !3496
  br i1 %or.cond.not.i.i, label %bb.x, label %bb.y, !dbg !3496

bb.w:                                             ; preds = %bb.o, %.noexc66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i.i), !dbg !3495
  br label %bb.x, !dbg !3496

bb.x:                                             ; preds = %bb.w, %.noexc67.i
  %i.cx = invoke { i64, ptr } @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions21available_parallelism()
          to label %.noexc68.i unwind label %bb.ab, !dbg !3497, !noalias !3326 ; 2 uses

.noexc68.i:                                       ; preds = %bb.x
  %i.cy = extractvalue { i64, ptr } %i.cx, 0, !dbg !3497
  %i.cz = extractvalue { i64, ptr } %i.cx, 1, !dbg !3497 ; 2 uses
  %i.da = trunc nuw i64 %i.cy to i1, !dbg !3498
  br i1 %i.da, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i, label %.sink.split.i, !dbg !3498

.body60.i:                                        ; preds = %.thread162.i, %bb.ca, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECsfcROwRM8ZtH_11polars_plan.exit.i, %bb.ab, %bb.u, %bb.i
  %.pn47.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn116165.i, %.thread162.i ], [ %i.cu, %bb.u ], [ %i.dq, %bb.ab ], [ %i.bj, %bb.i ], [ %.pn47.pn.pn.pn.i, %bb.ca ], [ %.pn47.pn.pn.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECsfcROwRM8ZtH_11polars_plan.exit.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs4BcJZGCY6Ba_10rayon_core17ThreadPoolBuilderECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(96) %1) #33
          to label %bb.ck unwind label %bb.ce, !dbg !3499, !noalias !3326

.sink.split.i:                                    ; preds = %.noexc68.i, %.noexc64.i
  %.sink216.i = phi ptr [ %i.bp, %.noexc64.i ], [ %i.cz, %.noexc68.i ] ; 2 uses
  %i.db = ptrtoint ptr %.sink216.i to i64, !dbg !3500
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink216.i) ], !dbg !3501
  br label %bb.y, !dbg !3502

bb.y:                                             ; preds = %.sink.split.i, %.noexc67.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i, %bb.m, %bb.a
  %.sroa.0.1.i.i = phi i64 [ %.sroa.102.0.i.i.i, %bb.m ], [ %.val.i, %bb.a ], [ %.sroa.3.0.i36.i.i, %.noexc67.i ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i ], [ %i.db, %.sink.split.i ], !dbg !3503
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i, i64 65535), !dbg !3502 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !3504, !noalias !3325
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 89, !dbg !3505
  %i.dd = load i8, ptr %i.dc, align 1, !dbg !3505, !range !2021, !alias.scope !3323, !noundef !1973
  store i8 %i.dd, ptr %i.ac, align 1, !dbg !3505, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !3506, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !3506, !noalias !3325
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !3507
  store i64 0, ptr %i.de, align 8, !dbg !3507, !noalias !3325
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !3507
  store i64 %.sroa.0.0.i.i, ptr %i.df, align 8, !dbg !3507, !noalias !3325
  store ptr %i.ac, ptr %i.y, align 8, !dbg !3507, !noalias !3325
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3n_EIB4P_B4u_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %bb.z unwind label %bb.ab, !dbg !3508, !noalias !3326

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !3509, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !3510, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !3510, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !3511, !noalias !3325
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !3511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !3511, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !3512, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !3513, !noalias !3325
  invoke void @_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3p_EIB4R_B4w_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, i64 noundef 0, i64 noundef %.sroa.0.0.i.i)
          to label %bb.aa unwind label %bb.cj, !dbg !3514, !noalias !3326

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !3515, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !3515, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !3516, !noalias !3325
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !3516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i64 24, i1 false), !dbg !3516, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !3517, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !3518, !noalias !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !3519, !noalias !3325
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !3519
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !3519, !noalias !3325, !nonnull !1973, !noundef !1973 ; 3 uses
  %i.dk = load i64, ptr %i.aa, align 8, !dbg !3519, !range !2031, !noalias !3325, !noundef !1973
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !3519
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !3519, !noalias !3325, !noundef !1973 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 576460752303423488, !dbg !3520
  call void @llvm.assume(i1 %i.dn), !dbg !3521
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dm, !dbg !3522
  store ptr %i.dj, ptr %i.s, align 8, !dbg !3523, !noalias !3325
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3523
  store ptr %i.dj, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3523, !noalias !3325
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !3523
  store i64 %i.dk, ptr %.sroa.52.0..sroa_idx.i, align 8, !dbg !3523, !noalias !3325
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !3523
  store ptr %i.do, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !3523, !noalias !3325
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
          to label %bb.ac unwind label %.thread135.i, !dbg !3524, !noalias !3326

.thread135.i:                                     ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.thread117.i, !dbg !3525

bb.ab:                                            ; preds = %bb.cc, %bb.y, %bb.x, %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %.thread11.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit.i.i.invoke.i, %bb.n, %bb.l, %_RNCNvMs2_Cs4BcJZGCY6Ba_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %.thread4.i.i, %bb.b
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i, !dbg !3525

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3526, !noalias !3325
  invoke void @_RNvMNtCs4BcJZGCY6Ba_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, i64 noundef %.sroa.0.0.i.i)
          to label %bb.af unwind label %bb.ae, !dbg !3526, !noalias !3326

bb.ad:                                            ; preds = %bb.ag, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.dt, %bb.ag ], [ %i.dr, %bb.ae ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs4BcJZGCY6Ba_10rayon_core8registry10ThreadInfoEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.t) #33
          to label %.thread117.i unwind label %bb.ce, !dbg !3527, !noalias !3326

bb.ae:                                            ; preds = %bb.ac
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  %i.ds = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_5BlockNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE3newCsfcROwRM8ZtH_11polars_plan()
          to label %bb.ah unwind label %bb.ag, !dbg !3528, !noalias !3326 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core5sleep5SleepECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %i.r) #33
          to label %bb.ad unwind label %bb.ce, !dbg !3527, !noalias !3326

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.537.i), !dbg !3529
  %.sroa.537.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.537.i, i64 3, !dbg !3530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.537.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !3530, !noalias !3325
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3531 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !3532 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !3533 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 504, !dbg !3534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3534, !noalias !3325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !3535, !noalias !3325
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 472, !dbg !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !3535, !noalias !3325
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 389, !dbg !3534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.537.i, i64 27, i1 false), !dbg !3535, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.537.i), !dbg !3527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3527, !noalias !3325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !3527, !noalias !3325
  store i64 1, ptr %i.h, align 128, !dbg !3534, !noalias !3325
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !3534
  store i64 1, ptr %i.dx, align 8, !dbg !3534, !noalias !3325
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 128, !dbg !3534
  store i64 0, ptr %i.dy, align 128, !dbg !3534, !noalias !3325
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136, !dbg !3534
  store ptr %i.ds, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !dbg !3534, !noalias !3325
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256, !dbg !3534
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 128, !dbg !3534, !noalias !3325
  %.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264, !dbg !3534
  store ptr %i.ds, ptr %.sroa.0.sroa.7.0..sroa_idx.i, align 8, !dbg !3534, !noalias !3325
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 384, !dbg !3534
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 128, !dbg !3534, !noalias !3325
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 388, !dbg !3534
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx.i, align 4, !dbg !3534, !noalias !3325
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 416, !dbg !3534
  %i.dz = load <2 x ptr>, ptr %i.du, align 8, !dbg !3531, !alias.scope !3323
  store ptr null, ptr %i.du, align 8, !dbg !3536, !alias.scope !3323
  store <2 x ptr> %i.dz, ptr %.sroa.5.0..sroa_idx.i, align 32, !dbg !3534, !noalias !3325
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432, !dbg !3534
  %i.ea = load <2 x ptr>, ptr %i.dv, align 8, !dbg !3532, !alias.scope !3323
  store ptr null, ptr %i.dv, align 8, !dbg !3537, !alias.scope !3323
  store <2 x ptr> %i.ea, ptr %.sroa.7.0..sroa_idx.i, align 16, !dbg !3534, !noalias !3325
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448, !dbg !3534
  %i.eb = load <2 x ptr>, ptr %i.dw, align 8, !dbg !3533, !alias.scope !3323
  store ptr null, ptr %i.dw, align 8, !dbg !3538, !alias.scope !3323
  store <2 x ptr> %i.eb, ptr %.sroa.9.0..sroa_idx.i, align 64, !dbg !3534, !noalias !3325
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 464, !dbg !3534
  store i64 1, ptr %.sroa.11.0..sroa_idx.i, align 16, !dbg !3534, !noalias !3325
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !dbg !3539, !noalias !3351
  %i.ec = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 641) 640, i64 noundef range(i64 8, 129) 128) #34, !dbg !3540, !noalias !3351 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null, !dbg !3541
  br i1 %i.ed, label %bb.ai, label %bb.am, !dbg !3542, !prof !2006

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #35
          to label %.noexc70.i unwind label %bb.aj, !dbg !3543, !noalias !3326

.noexc70.i:                                       ; preds = %bb.ai
  unreachable, !dbg !3543

bb.aj:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 128 dereferenceable(640) %i.h) #33
          to label %.thread117.i unwind label %bb.ak, !dbg !3544, !noalias !3326

bb.ak:                                            ; preds = %bb.aj
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !3545, !noalias !3326
  unreachable, !dbg !3545

.body76.i:                                        ; preds = %bb.bx, %bb.at, %.critedge.i, %bb.al
  %.pn47.pn.pn.i = phi { ptr, i32 } [ %.pn47.pn.i, %.critedge.i ], [ %i.fu, %bb.at ], [ %i.eg, %bb.al ], [ %i.hp, %bb.bx ]
  invoke void @_RNvXs3_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB5_10TerminatorNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4BcJZGCY6Ba_10rayon_core8registry10TerminatorECsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.ce, !dbg !3546, !noalias !3326

bb.al:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECsfcROwRM8ZtH_11polars_plan.exit.i90.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIB1f_INtB25_7StealerB2P_EEEECsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

bb.am:                                            ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info00Bd_:bb.a
bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !151748
  %i.ev = load ptr, ptr %i.aq, align 8, !dbg !151749, !nonnull !1973, !noundef !1973
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8, !dbg !151750
  %i.ex = icmp slt i64 %i.ew, 0, !dbg !151751
  br i1 %i.ex, label %bb.aj, label %bb.ah, !dbg !151751

bb.ah:                                            ; preds = %bb.ag
  %i.ey = load ptr, ptr %i.aq, align 8, !dbg !151752, !nonnull !1973, !noundef !1973
  store ptr %i.ey, ptr %i.ah, align 8, !dbg !151753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !151754
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643), !dbg !151536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !151536
  %i.ez = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !151755
  %i.fa = icmp eq i32 %i.ez, 0, !dbg !151756
  br i1 %i.fa, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220, label %bb.ai, !dbg !151756, !prof !2098

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !151757
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.b, align 8, !dbg !151758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !151759
  store ptr %i.b, ptr %i.a, align 8, !dbg !151759
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc219 unwind label %bb.av, !dbg !151760

.noexc219:                                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !151761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !151762
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220, !dbg !151762

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.trap(), !dbg !151763
  unreachable, !dbg !151763

.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.br, %bb.ap, %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220, %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread267

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220: ; preds = %.noexc219, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !151764
  %i.fb = load ptr, ptr %i.ah, align 8, !dbg !151764, !nonnull !1973, !noundef !1973
  store ptr %i.fb, ptr %i.ae, align 8, !dbg !151764
  store i64 %.sroa.029.0, ptr %i.dy, align 8, !dbg !151764
  store i64 %.sroa.0.0.i, ptr %i.dz, align 8, !dbg !151764
  store i8 0, ptr %i.ea, align 8, !dbg !151764
  invoke void @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager8block_onNCNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info00s1_0EB1f_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.af, ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(5056) %i.ae)
          to label %bb.ak unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151765

bb.ak:                                            ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerE5force0ECsfcROwRM8ZtH_11polars_plan.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !151766
  %i.fc = load i64, ptr %i.af, align 8, !dbg !151767, !range !2681, !noundef !1973 ; 2 uses
  %.not192 = icmp eq i64 %i.fc, 18, !dbg !151767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false), !dbg !151768
  br i1 %.not192, label %bb.am, label %bb.al, !dbg !151769

bb.al:                                            ; preds = %bb.ak
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !151770
  %.sroa.3151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !151771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3151.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6148.0..sroa_idx, i64 40, i1 false), !dbg !151770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !151772
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !151771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2150.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, i64 24, i1 false), !dbg !151772
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151771
  store i64 %i.fc, ptr %i.fd, align 8, !dbg !151771
  store i64 1, ptr %0, align 8, !dbg !151771
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643), !dbg !151773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !151774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !151775
  br label %bb.ar, !dbg !151776

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !151772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643, i64 24, i1 false), !dbg !151536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643), !dbg !151773
  %i.fe = load i64, ptr %i.ec, align 8, !dbg !151777, !noundef !1973 ; 5 uses
  %i.ff = add i64 %i.fe, %.sroa.029.0, !dbg !151778
  %i.fg = load ptr, ptr %i.ed, align 8, !dbg !151779, !nonnull !1973, !noundef !1973
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.fe)
          to label %.noexc221 unwind label %bb.ao, !dbg !151780

.noexc221:                                        ; preds = %bb.am
  %i.fh = load i64, ptr %i.dx, align 8, !dbg !151781, !alias.scope !151549, !noundef !1973 ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, -1, !dbg !151782
  call void @llvm.assume(i1 %i.fi), !dbg !151783
  %.not.i = icmp eq i64 %i.fe, 0, !dbg !151784
  br i1 %.not.i, label %bb.ap, label %bb.an, !dbg !151784

bb.an:                                            ; preds = %.noexc221
  %i.fj = load ptr, ptr %i.dw, align 8, !dbg !151785, !alias.scope !151549, !nonnull !1973, !noundef !1973
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !151786
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %i.fg, i64 %i.fe, i1 false), !dbg !151787
  %.pre.i = load i64, ptr %i.dx, align 8, !dbg !151788, !alias.scope !151549
  br label %bb.ap, !dbg !151789

bb.ao:                                            ; preds = %bb.am
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread267 unwind label %bb.aq, !dbg !151790

bb.ap:                                            ; preds = %bb.an, %.noexc221
  %i.fm = phi i64 [ %.pre.i, %bb.an ], [ %i.fh, %.noexc221 ], !dbg !151788
  %i.fn = add i64 %i.fm, %i.fe, !dbg !151788
  store i64 %i.fn, ptr %i.dx, align 8, !dbg !151788, !alias.scope !151549
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151791

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !151774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !151775
  br label %bb.ax, !dbg !151792

bb.aq:                                            ; preds = %bb.cn, %bb.ck, %bb.ci, %bb.bj, %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.ao, %bb.aa, %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECsfcROwRM8ZtH_11polars_plan.exit, %bb.cw, %.thread267, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !151793
  unreachable, !dbg !151793

bb.ar:                                            ; preds = %bb.cd, %bb.al
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.at unwind label %bb.as, !dbg !151794

bb.as:                                            ; preds = %bb.ar
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.thread260 unwind label %bb.au, !dbg !151795

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit unwind label %.split, !dbg !151796

bb.au:                                            ; preds = %bb.as
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !151794
  unreachable, !dbg !151794

bb.av:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp282 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151550), !dbg !151775
  call void @llvm.experimental.noalias.scope.decl(metadata !151551), !dbg !151797
  %i.fr = load ptr, ptr %i.ah, align 8, !dbg !151798, !alias.scope !151552, !nonnull !1973, !noundef !1973
  %i.fs = atomicrmw add ptr %i.fr, i64 -1 release, align 8, !dbg !151799, !noalias !151552
  %i.ft = icmp eq i64 %i.fs, 1, !dbg !151800
  br i1 %i.ft, label %bb.aw, label %.thread267, !dbg !151800

bb.aw:                                            ; preds = %bb.av
  fence acquire, !dbg !151801
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah) #36
          to label %.thread267 unwind label %bb.aq, !dbg !151802

bb.ax:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225, %bb.af
  %.sroa.039.1 = phi i1 [ %.sroa.039.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 ], [ true, %bb.af ], !dbg !151740 ; 3 uses
  %.sroa.029.1 = phi i64 [ %i.ff, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit225 ], [ %.sroa.029.0, %bb.af ], !dbg !151803 ; 3 uses
  %i.fu = shl i64 %.sroa.029.1, %i.ee, !dbg !151804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !151805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.652), !dbg !151555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !151555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !151553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !151806
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.ay unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151807

bb.ay:                                            ; preds = %bb.ax
  %i.fv = invoke noundef nonnull ptr @_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStoragehE10from_ownerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.az unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151808

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull %i.fv)
          to label %bb.ba unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151809

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !151810
  invoke void @_RNvMs2_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE11from_memory(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab)
          to label %bb.bb unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151555

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !151811
  %i.fw = load i64, ptr %i.ac, align 8, !dbg !151812, !range !151554, !noundef !1973 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 7, !dbg !151812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5153.0..sroa_idx, i64 72, i1 false), !dbg !151813
  br i1 %i.fx, label %bb.bc, label %bb.bd, !dbg !151814

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !151815
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fy, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, i64 72, i1 false), !dbg !151815
  store i64 1, ptr %0, align 8, !dbg !151816
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.652), !dbg !151817
  br label %bb.cd, !dbg !151818

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.6154.0..sroa_idx, i64 240, i1 false), !dbg !151819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !151815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.652, i64 72, i1 false), !dbg !151555
  store i64 %i.fw, ptr %i.ad, align 8, !dbg !151820
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.652), !dbg !151817
  %..sroa.037.0 = select i1 %.sroa.039.1, i64 -1, i64 %.sroa.037.0, !dbg !151821 ; 2 uses
  %.sroa.057.0 = select i1 %.sroa.017.0, i64 %.sroa.029.1, i64 %..sroa.037.0, !dbg !151821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !151822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !151559
  %i.fz = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE5emptyCsfcROwRM8ZtH_11polars_plan()
          to label %bb.be unwind label %.loopexit, !dbg !151823

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sroa.0118.2 = phi i1 [ %.sroa.0118.4, %bb.bj ], [ true, %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit ], [ %.sroa.0118.3.ph, %.loopexit.split-lp ], !dbg !151740
  %.pn201 = phi { ptr, i32 } [ %lpad.phi306, %bb.bj ], [ %lpad.loopexit.split-lp351, %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit296, %.loopexit ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad) #33
          to label %bb.ae unwind label %bb.aq, !dbg !151824

.loopexit:                                        ; preds = %bb.bd, %bb.be, %bb.bq, %bb.ca
  %lpad.loopexit296 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231

.loopexit.split-lp:                               ; preds = %bb.bn, %bb.bt, %bb.cc
  %.sroa.0118.3.ph = phi i1 [ true, %bb.bn ], [ true, %bb.cc ], [ false, %bb.bt ]
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull %i.fz)
          to label %bb.bf unwind label %.loopexit, !dbg !151825

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvMs1_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE15read_next_sliceCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, i64 noundef %.sroa.057.0, i64 noundef 1, i64 %i.fu)
          to label %bb.bg unwind label %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151826

bb.bg:                                            ; preds = %bb.bf
  %i.ga = load ptr, ptr %i.y, align 8, !dbg !151822, !noundef !1973
  %i.gb = icmp eq ptr %i.ga, null, !dbg !151822
  br i1 %i.gb, label %bb.bh, label %bb.bi, !dbg !151827

bb.bh:                                            ; preds = %bb.bg
  %.val210 = load ptr, ptr %i.et, align 8, !dbg !151828, !nonnull !1973, !noundef !1973 ; 3 uses
  %i.gc = call fastcc noundef i8 @_RNvMs5_NtNtCsh8eZTKRCwoO_3std2io5errorNtB5_5Error4kind(ptr nonnull %.val210), !dbg !151828
  %i.gd = icmp eq i8 %i.gc, 37, !dbg !151829
  br i1 %i.gd, label %bb.by, label %bb.bz, !dbg !151829

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !151830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !151831
  %i.ge = load i64, ptr %i.ef, align 8, !dbg !151831, !noundef !1973 ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233 unwind label %.loopexit302, !dbg !151832

.loopexit302:                                     ; preds = %bb.bk, %bb.bi
  %lpad.loopexit304 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp303:                            ; preds = %bb.bp, %bb.bs
  %lpad.loopexit.split-lp305 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp303, %.loopexit302
  %.sroa.0118.4 = phi i1 [ true, %.loopexit302 ], [ false, %.loopexit.split-lp303 ], !dbg !151740
  %lpad.phi306 = phi { ptr, i32 } [ %lpad.loopexit304, %.loopexit302 ], [ %lpad.loopexit.split-lp305, %.loopexit.split-lp303 ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231 unwind label %bb.aq, !dbg !151833

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !151834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !151834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !151575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !151835
  %i.gf = load ptr, ptr %i.z, align 8, !dbg !151836, !nonnull !1973, !noundef !1973 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !dbg !151837, !range !2579, !noundef !1973
  %i.gh = icmp eq i64 %i.gg, 3, !dbg !151838
  br i1 %i.gh, label %bb.bk, label %bb.bl, !dbg !151838

bb.bk:                                            ; preds = %bb.bl, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233
  %i.gi = load ptr, ptr %i.eg, align 8, !dbg !151839, !noundef !1973
  %i.gj = load i64, ptr %i.eh, align 8, !dbg !151840, !noundef !1973
  store ptr %i.gf, ptr %i.v, align 8, !dbg !151841
  store ptr %i.gi, ptr %i.ei, align 8, !dbg !151841
  store i64 %i.gj, ptr %i.ej, align 8, !dbg !151841
  %i.gk = load ptr, ptr %i.em, align 8, !dbg !151842, !nonnull !1973, !noundef !1973 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 72, !dbg !151565
  %i.gm = load i8, ptr %i.gl, align 8, !dbg !151565, !range !2021, !noundef !1973
  %i.gn = trunc nuw i8 %i.gm to i1, !dbg !151565
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 73, !dbg !151565
  %i.gp = load i8, ptr %i.go, align 1, !dbg !151565
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 71, !dbg !151843
  %i.gr = load i8, ptr %i.gq, align 1, !dbg !151843, !range !2581, !noundef !1973
  %.not195 = icmp eq i8 %i.gr, -37, !dbg !151843
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 48, !dbg !151844
  %.sroa.069.0 = select i1 %.not195, ptr null, ptr %i.gs, !dbg !151844
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 80, !dbg !151845
  %i.gu = load i8, ptr %i.gt, align 8, !dbg !151845, !noundef !1973
  %i.gv = load i8, ptr %i.en, align 2, !dbg !151846, !range !2021, !noundef !1973
  %i.gw = trunc nuw i8 %i.gv to i1, !dbg !151846
  %i.gx = load i64, ptr %i.eo, align 8, !dbg !151847, !noundef !1973
  %i.gy = load i64, ptr %i.ep, align 8, !dbg !151848, !noundef !1973
  %i.gz = load i64, ptr %i.eq, align 8, !dbg !151849, !noundef !1973
  %i.ha = load i8, ptr %i.er, align 1, !dbg !151850, !range !2021, !noundef !1973
  %i.hb = trunc nuw i8 %i.ha to i1, !dbg !151850
  invoke void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser25count_rows_from_slice_par(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i1 noundef zeroext %i.gn, i8 %i.gp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.069.0, i8 noundef %i.gu, i1 noundef zeroext %i.gw, i64 noundef %i.gx, i64 noundef %i.gy, i64 noundef %i.gz, i1 noundef zeroext %i.hb)
          to label %bb.bm unwind label %.loopexit302, !dbg !151575

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit233
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gf, i64 24, !dbg !151851
  %i.hd = atomicrmw add ptr %i.hc, i64 1 monotonic, align 8, !dbg !151852 ; 0 uses
  br label %bb.bk, !dbg !151853

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !151854
  %i.he = load i64, ptr %i.w, align 8, !dbg !151855, !range !2681, !noundef !1973 ; 2 uses
  %.not196 = icmp eq i64 %i.he, 18, !dbg !151855
  %i.hf = load i64, ptr %i.es, align 8, !dbg !151856 ; 2 uses
  br i1 %.not196, label %bb.bo, label %bb.bn, !dbg !151857

bb.bn:                                            ; preds = %bb.bm
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !151858
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !151859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6160.0..sroa_idx, i64 56, i1 false), !dbg !151858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !151860
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151859
  store i64 %i.he, ptr %i.hg, align 8, !dbg !151859
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !151859
  store i64 %i.hf, ptr %.sroa.2162.0..sroa_idx, align 8, !dbg !151859
  store i64 1, ptr %0, align 8, !dbg !151859
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237 unwind label %.loopexit.split-lp, !dbg !151861

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !151860
  %i.hh = icmp uge i64 %i.hf, %i.bn, !dbg !151862
  %or.cond = select i1 %i.hh, i1 true, i1 %.sroa.039.1, !dbg !151862
  br i1 %or.cond, label %bb.bp, label %bb.bq, !dbg !151862

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !151863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !151863
  %i.hi = invoke noundef nonnull ptr @_RINvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB6_13SharedStoragehE10from_ownerINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %bb.bs unwind label %.loopexit.split-lp303, !dbg !151864

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 unwind label %.loopexit, !dbg !151865

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239: ; preds = %bb.bq
  %i.hj = icmp eq i64 %i.ge, %..sroa.037.0
  %or.cond5 = select i1 %.not.i226.not, i1 %i.hj, i1 false, !dbg !151866 ; 2 uses
  %not.or.cond5 = xor i1 %or.cond5, true, !dbg !151866
  %i.hk = zext i1 %not.or.cond5 to i64, !dbg !151866
  %.sroa.034.1 = shl i64 %.sroa.034.0, %i.hk, !dbg !151866
  %i.hl = zext i1 %or.cond5 to i64, !dbg !151866
  %.sroa.037.1 = shl i64 %.sroa.037.0, %i.hl, !dbg !151866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !151867
  br label %bb.br, !dbg !151868

bb.br:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239
  %.sroa.037.2 = phi i64 [ %.sroa.037.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 ], [ %.sroa.037.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 ], !dbg !151869
  %.sroa.034.2 = phi i64 [ %i.hs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 ], [ %.sroa.034.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit239 ], !dbg !151742
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.cb unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151824

bb.bs:                                            ; preds = %bb.bp
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull %i.hi)
          to label %bb.bt unwind label %.loopexit.split-lp303, !dbg !151870

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !151871
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241 unwind label %.loopexit.split-lp, !dbg !151872

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !151867
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.bu unwind label %.split, !dbg !151824

bb.bu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !151824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !151739
  call void @llvm.experimental.noalias.scope.decl(metadata !151580), !dbg !151722
  call void @llvm.experimental.noalias.scope.decl(metadata !151581), !dbg !151873
  %i.hm = load ptr, ptr %i.aq, align 8, !dbg !151874, !alias.scope !151582, !nonnull !1973, !noundef !1973
  %i.hn = atomicrmw add ptr %i.hm, i64 -1 release, align 8, !dbg !151875, !noalias !151582
  %i.ho = icmp eq i64 %i.hn, 1, !dbg !151876
  br i1 %i.ho, label %bb.bv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242, !dbg !151876

bb.bv:                                            ; preds = %bb.bu
  fence acquire, !dbg !151877
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #36, !dbg !151878
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242, !dbg !151878

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !151722
  br label %bb.bw, !dbg !151879

bb.bw:                                            ; preds = %bb.co, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242
  %.sroa.390.0 = phi i64 [ %i.ge, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242 ], [ %.sroa.091.0, %bb.co ], !dbg !151880
  %.sroa.083.0 = phi i64 [ %i.co, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit242 ], [ %i.ig, %bb.co ], !dbg !151880 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !151881
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.694), !dbg !151583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !151583
  call void @_RNvMs2_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionINtB5_16ByteSourceReaderNtNtB7_17stream_buf_reader12ReaderSourceE11from_memory(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !dbg !151583
  %i.hp = load i64, ptr %i.p, align 8, !dbg !151882, !range !151554, !noundef !1973 ; 4 uses
  %i.hq = icmp eq i64 %i.hp, 7, !dbg !151882
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !151883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.694, ptr noundef nonnull align 8 dereferenceable(72) %i.hr, i64 72, i1 false), !dbg !151883
  br i1 %i.hq, label %bb.cp, label %bb.cq, !dbg !151884

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !151867
  br label %bb.bx, !dbg !151868

bb.bx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit237
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(320) %i.ad)
          to label %bb.cd unwind label %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151824

.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.by, %bb.bz
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit231 unwind label %bb.aq, !dbg !151885

bb.by:                                            ; preds = %bb.bh
  %i.hs = shl i64 %.sroa.034.0, 1, !dbg !151886
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsfcROwRM8ZtH_11polars_plan(ptr nonnull %.val210)
          to label %bb.ca unwind label %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151887

bb.bz:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !151888
  invoke void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull %.val210)
          to label %bb.cc unwind label %.thread290.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !151888

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244 unwind label %.loopexit, !dbg !151889

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit244: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !151834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !151834
  br label %bb.br, !dbg !151868

bb.cb:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !151824
  br label %bb.af, !dbg !151890

bb.cc:                                            ; preds = %bb.bz
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ht, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !dbg !151891
  store i64 1, ptr %0, align 8, !dbg !151891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !151892
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246 unwind label %.loopexit.split-lp, !dbg !151893

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfcROwRM8ZtH_11polars_plan.exit246: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !151834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !151834
  br label %bb.bx, !dbg !151868

bb.cd:                                            ; preds = %bb.bx, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !151824
  br label %bb.ar, !dbg !151776

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !151739
  br label %bb.cf, !dbg !151894

.thread267:                                       ; preds = %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.av, %bb.aw, %bb.ao, %bb.ae
  %.pn203270 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp282, %bb.av ], [ %.pn201, %bb.ae ], [ %i.fl, %bb.ao ], [ %lpad.thr_comm.split-lp282, %bb.aw ], [ %lpad.loopexit.split-lp, %.thread283.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #33
          to label %.thread260 unwind label %bb.aq, !dbg !151739

bb.ce:                                            ; preds = %bb.ac
  unreachable

bb.cf:                                            ; preds = %bb.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfcROwRM8ZtH_11polars_plan.exit, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !151588), !dbg !151722
  call void @llvm.experimental.noalias.scope.decl(metadata !151589), !dbg !151895
  %i.hu = load ptr, ptr %i.aq, align 8, !dbg !151896, !alias.scope !151590, !nonnull !1973, !noundef !1973
  %i.hv = atomicrmw add ptr %i.hu, i64 -1 release, align 8, !dbg !151897, !noalias !151590
  %i.hw = icmp eq i64 %i.hv, 1, !dbg !151898
  br i1 %i.hw, label %bb.cg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247, !dbg !151898

bb.cg:                                            ; preds = %bb.cf
  fence acquire, !dbg !151899
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq) #36, !dbg !151900
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247, !dbg !151900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECsfcROwRM8ZtH_11polars_plan.exit247: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !151722
  br label %bb.cx, !dbg !151901

bb.ch:                                            ; preds = %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151591), !dbg !151714
  call void @llvm.experimental.noalias.scope.decl(metadata !151592), !dbg !151902
  %i.hx = load ptr, ptr %i.am, align 8, !dbg !151903, !alias.scope !151593, !nonnull !1973, !noundef !1973
  %i.hy = atomicrmw add ptr %i.hx, i64 -1 release, align 8, !dbg !151904, !noalias !151593
  %i.hz = icmp eq i64 %i.hy, 1, !dbg !151905
  br i1 %i.hz, label %bb.ci, label %.thread260, !dbg !151905

bb.ci:                                            ; preds = %bb.ch
  fence acquire, !dbg !151906
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #36
          to label %.thread260 unwind label %bb.aq, !dbg !151907

bb.cj:                                            ; preds = %bb.l
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151594), !dbg !151681
  call void @llvm.experimental.noalias.scope.decl(metadata !151595), !dbg !151908
  %i.ib = load ptr, ptr %i.ap, align 8, !dbg !151909, !alias.scope !151596, !nonnull !1973, !noundef !1973
  %i.ic = atomicrmw add ptr %i.ib, i64 -1 release, align 8, !dbg !151910, !noalias !151596
  %i.id = icmp eq i64 %i.ic, 1, !dbg !151911
  br i1 %i.id, label %bb.ck, label %.thread260, !dbg !151911

bb.ck:                                            ; preds = %bb.cj
  fence acquire, !dbg !151912
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #36
          to label %.thread260 unwind label %bb.aq, !dbg !151913

bb.cl:                                            ; preds = %bb.b
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !151914
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !151915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6169.0..sroa_idx, i64 40, i1 false), !dbg !151914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !151916
  %.sroa.2171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !151915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675, i64 24, i1 false), !dbg !151916
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !151915
  store i64 %i.bg, ptr %i.ie, align 8, !dbg !151915
  store i64 1, ptr %0, align 8, !dbg !151915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !151917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !151918
  br label %bb.cx, !dbg !151645

bb.cm:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !151916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.675, i64 24, i1 false), !dbg !151465
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !151917
  %i.if = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !151919
  %i.ig = load i64, ptr %i.if, align 8, !dbg !151919, !noundef !1973 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !151920
  %i.ii = load ptr, ptr %i.ih, align 8, !dbg !151920, !noundef !1973
  %i.ij = invoke noundef i8 @_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ig)
          to label %bb.co unwind label %bb.cn, !dbg !151921

bb.cn:                                            ; preds = %bb.cm
end_hunk_1
