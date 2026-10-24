Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.00?download=true
inline.NumInlined: 1326
inline.NumDeleted: 379
begin_hunk_0_@_RNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0B7_:bb.a
_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2672: ; preds = %bb.ei
  %i.afq = getelementptr inbounds nuw i8, ptr %i.de, i64 1, !dbg !31475 ; 2 uses
  %i.afr = load i8, ptr %i.afq, align 1, !dbg !31475, !alias.scope !29440, !noundef !1314
    #dbg_value(i8 %i.afr, !28592, !DIExpression(), !25342)
  %i.afs = icmp sgt i8 %i.afr, -65, !dbg !31476
    #dbg_value(ptr undef, !26978, !DIExpression(), !27033)
    #dbg_value(ptr poison, !26979, !DIExpression(), !29441)
    #dbg_value(ptr undef, !26980, !DIExpression(), !27032)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27031)
    #dbg_value(ptr poison, !26981, !DIExpression(), !29442)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29443)
    #dbg_value(ptr poison, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29446)
    #dbg_value(i64 1, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29446)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29446)
    #dbg_value(i64 1, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29446)
    #dbg_value(ptr poison, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29451)
    #dbg_value(i64 1, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29451)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29452)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29451)
    #dbg_value(i64 1, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29451)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29453)
    #dbg_value(i64 1, !28701, !DIExpression(), !29454)
    #dbg_value(i64 1, !28731, !DIExpression(), !29457)
    #dbg_value(i64 1, !28737, !DIExpression(), !29458)
  br i1 %i.afs, label %bb.fh, label %.critedge2445, !dbg !31477

bb.ej:                                            ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2668
    #dbg_value(ptr poison, !28732, !DIExpression(), !29438)
    #dbg_value(ptr poison, !28733, !DIExpression(), !29438)
  %lhsc2344 = load i8, ptr %i.de, align 1, !dbg !31478
  %i.aft = icmp ne i8 %lhsc2344, 45, !dbg !31478
    #dbg_value(ptr %i.de, !27563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27671)
    #dbg_value(ptr %i.de, !27573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27674)
    #dbg_value(ptr %i.de, !27586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27677)
    #dbg_value(ptr %i.de, !27593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27680)
    #dbg_value(i64 %storemerge385738624516, !27563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27671)
    #dbg_value(i64 %storemerge385738624516, !27573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27674)
    #dbg_value(i64 %storemerge385738624516, !27586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27677)
    #dbg_value(i64 %storemerge385738624516, !27593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27680)
    #dbg_value(ptr %i.de, !29204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25344)
    #dbg_value(i64 %storemerge385738624516, !29204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25344)
    #dbg_value(i64 1, !29207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25344)
    #dbg_value(i64 3, !29207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25344)
    #dbg_value(i64 1, !29208, !DIExpression(), !25345)
    #dbg_value(i64 1, !29212, !DIExpression(), !25347)
    #dbg_value(i64 3, !29209, !DIExpression(), !25345)
    #dbg_value(i64 3, !29212, !DIExpression(), !25349)
    #dbg_value(ptr %i.de, !29210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25350)
    #dbg_value(i64 %storemerge385738624516, !29210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25350)
  %i.afu = icmp ult i64 %storemerge385738624516, 3
  %or.cond3738 = or i1 %i.afu, %i.aft, !dbg !27005
  br i1 %or.cond3738, label %.critedge2440, label %bb.ek, !dbg !27005

bb.ek:                                            ; preds = %bb.ej
    #dbg_value(ptr %i.de, !29213, !DIExpression(), !25347)
    #dbg_value(ptr %i.afn, !29216, !DIExpression(), !25352)
    #dbg_value(ptr %i.afn, !29220, !DIExpression(), !25354)
    #dbg_value(i8 %i.afo, !29223, !DIExpression(), !25356)
  %i.afv = icmp eq i64 %storemerge385738624516, 3, !dbg !31479 ; 2 uses
  br i1 %i.afv, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482.thread3306, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482, !dbg !31479

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482: ; preds = %bb.ek
    #dbg_value(ptr %i.de, !29213, !DIExpression(), !25349)
  %i.afw = getelementptr inbounds nuw i8, ptr %i.de, i64 3, !dbg !31480
    #dbg_value(ptr %i.afw, !29216, !DIExpression(), !25358)
    #dbg_value(ptr %i.afw, !29220, !DIExpression(), !25360)
  %i.afx = load i8, ptr %i.afw, align 1, !dbg !31481, !alias.scope !29459, !noundef !1314
    #dbg_value(i8 %i.afx, !29223, !DIExpression(), !25364)
  %i.afy = icmp sgt i8 %i.afx, -65, !dbg !31482
    #dbg_value(ptr %i.de, !27611, !DIExpression(), !27683)
    #dbg_value(ptr undef, !26978, !DIExpression(), !27003)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29464)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29467)
  %.sroa.6256.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.6256.0 = load i64, ptr %.sroa.6256.0.in, align 8
    #dbg_value(ptr poison, !26979, !DIExpression(), !29468)
    #dbg_value(ptr undef, !26988, !DIExpression(), !27002)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27001)
    #dbg_value(ptr poison, !26989, !DIExpression(), !29469)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29470)
    #dbg_value(ptr %i.de, !28685, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29473)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29473)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29473)
    #dbg_value(i64 %.sroa.6256.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29473)
    #dbg_value(ptr %i.de, !28696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29478)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29479)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(i64 %.sroa.6256.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29478)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29480)
    #dbg_value(i64 2, !28705, !DIExpression(), !29481)
    #dbg_value(i64 2, !28731, !DIExpression(), !29484)
    #dbg_value(i64 2, !28741, !DIExpression(), !29485)
  %i.afz = icmp eq i64 %.sroa.6256.0, 2
  %or.cond3739 = select i1 %i.afy, i1 %i.afz, i1 false, !dbg !31483
  br i1 %or.cond3739, label %bb.el, label %.critedge2440.thread, !dbg !31483

.critedge2440:                                    ; preds = %bb.ej, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2668
    #dbg_value(ptr %i.de, !27187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27699)
    #dbg_value(i64 %storemerge385738624516, !27187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27699)
    #dbg_value(i64 2, !28580, !DIExpression(), !25367)
    #dbg_value(ptr %i.de, !28584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25367)
    #dbg_value(ptr %i.de, !28586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25369)
    #dbg_value(i64 %storemerge385738624516, !28584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25367)
    #dbg_value(i64 %storemerge385738624516, !28586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25369)
    #dbg_value(i64 2, !28589, !DIExpression(), !25369)
  %.not.i2673 = icmp ugt i64 %storemerge385738624516, 2, !dbg !31484
  br i1 %.not.i2673, label %.critedge2440.thread, label %.critedge2440.thread4227, !dbg !31484

.critedge2440.thread4227:                         ; preds = %bb.eh, %.critedge2440
  %i.aga = icmp eq i64 %storemerge385738624516, 2, !dbg !31485
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2676, !dbg !31486

.critedge2440.thread:                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482.thread3306, %bb.el, %.critedge2440
  %i.agb = getelementptr inbounds nuw i8, ptr %i.de, i64 2, !dbg !31487
  %i.agc = load i8, ptr %i.agb, align 1, !dbg !31487, !alias.scope !29486, !noundef !1314
    #dbg_value(i8 %i.agc, !28592, !DIExpression(), !25373)
  %i.agd = icmp sgt i8 %i.agc, -65, !dbg !31488
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2676, !dbg !31486

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2676: ; preds = %.critedge2440.thread4227, %.critedge2440.thread
  %.not.i26734225 = phi i1 [ false, %.critedge2440.thread4227 ], [ true, %.critedge2440.thread ]
  %.sroa.01.0.in.i2674 = phi i1 [ %i.aga, %.critedge2440.thread4227 ], [ %i.agd, %.critedge2440.thread ]
    #dbg_value(ptr undef, !26978, !DIExpression(), !26994)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29488)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29491)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29494)
    #dbg_value(i64 poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29494)
    #dbg_value(ptr poison, !26979, !DIExpression(), !29495)
  %.sroa.3282.0.in = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.3282.0 = load i64, ptr %.sroa.3282.0.in, align 8
    #dbg_value(i64 %.sroa.3282.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29494)
    #dbg_value(ptr undef, !26990, !DIExpression(), !26993)
    #dbg_value(ptr undef, !26968, !DIExpression(), !26974)
    #dbg_value(ptr poison, !26991, !DIExpression(), !29496)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29497)
    #dbg_value(ptr poison, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29494)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29494)
    #dbg_value(ptr poison, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29502)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29502)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29503)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29502)
    #dbg_value(i64 %.sroa.3282.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29502)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29504)
    #dbg_value(i64 2, !28706, !DIExpression(), !29505)
    #dbg_value(i64 2, !28731, !DIExpression(), !29508)
    #dbg_value(i64 2, !28742, !DIExpression(), !29509)
  %i.age = icmp eq i64 %.sroa.3282.0, 2
  %or.cond2441 = select i1 %.sroa.01.0.in.i2674, i1 %i.age, i1 false, !dbg !31489
  br i1 %or.cond2441, label %bb.em, label %bb.en, !dbg !31489

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482.thread3306: ; preds = %bb.ek
    #dbg_value(ptr %i.de, !27611, !DIExpression(), !27683)
    #dbg_value(ptr undef, !26978, !DIExpression(), !27003)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29464)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !29467)
  %.sroa.6256.0.in.old = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !31490
  %.sroa.6256.0.old = load i64, ptr %.sroa.6256.0.in.old, align 8, !dbg !31490, !noundef !1314
    #dbg_value(ptr poison, !26979, !DIExpression(), !29468)
    #dbg_value(ptr undef, !26988, !DIExpression(), !27002)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27001)
    #dbg_value(ptr poison, !26989, !DIExpression(), !29469)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29470)
    #dbg_value(ptr %i.de, !28685, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29473)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29473)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29473)
    #dbg_value(i64 %.sroa.6256.0.old, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29473)
    #dbg_value(ptr %i.de, !28696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29478)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29479)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(i64 %.sroa.6256.0.old, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29478)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29480)
    #dbg_value(i64 2, !28705, !DIExpression(), !29481)
    #dbg_value(i64 2, !28731, !DIExpression(), !29484)
    #dbg_value(i64 2, !28741, !DIExpression(), !29485)
  %.old = icmp eq i64 %.sroa.6256.0.old, 2, !dbg !31491
  br i1 %.old, label %bb.el, label %.critedge2440.thread, !dbg !31491

bb.el:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2482.thread3306
    #dbg_value(ptr %i.afn, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(ptr %i.afn, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29473)
  %.sroa.0254.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !31490
  %.sroa.0254.0 = load ptr, ptr %.sroa.0254.0.in, align 8, !dbg !31490, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %.sroa.0254.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29473)
    #dbg_value(ptr %.sroa.0254.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29478)
    #dbg_value(ptr %i.afn, !28732, !DIExpression(), !29484)
    #dbg_value(ptr %.sroa.0254.0, !28733, !DIExpression(), !29484)
  %i.agf = load i16, ptr %i.afn, align 1, !dbg !31492
  %i.agg = load i16, ptr %.sroa.0254.0, align 1, !dbg !31492
  %i.agh = icmp ne i16 %i.agf, %i.agg, !dbg !31492
  %i.agi = zext i1 %i.agh to i32, !dbg !31492
  %i.agj = icmp eq i32 %i.agi, 0, !dbg !31492
  br i1 %i.agj, label %bb.ey, label %.critedge2440.thread, !dbg !26999

bb.em:                                            ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2676
  %.sroa.0281.0.in = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !31493
  %.sroa.0281.0 = load ptr, ptr %.sroa.0281.0.in, align 8, !dbg !31493, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %.sroa.0281.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29494)
    #dbg_value(ptr %.sroa.0281.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29502)
    #dbg_value(ptr poison, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29494)
    #dbg_value(ptr poison, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29502)
    #dbg_value(ptr poison, !28732, !DIExpression(), !29508)
    #dbg_value(ptr %.sroa.0281.0, !28733, !DIExpression(), !29508)
  %i.agk = load i16, ptr %i.de, align 1, !dbg !31494
  %i.agl = load i16, ptr %.sroa.0281.0, align 1, !dbg !31494
  %i.agm = icmp ne i16 %i.agk, %i.agl, !dbg !31494
  %i.agn = zext i1 %i.agm to i32, !dbg !31494
  %i.ago = icmp eq i32 %i.agn, 0, !dbg !31494
  br i1 %i.ago, label %bb.eo, label %bb.en, !dbg !26972

bb.en:                                            ; preds = %bb.fk, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2712, %bb.em, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2676
    #dbg_value(ptr %i.de, !27726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27730)
    #dbg_value(ptr %i.de, !27735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27739)
    #dbg_value(ptr %i.de, !27744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27748)
    #dbg_value(ptr %i.de, !27752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27758)
    #dbg_value(i64 %storemerge385738624516, !27726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27730)
    #dbg_value(i64 %storemerge385738624516, !27735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27739)
    #dbg_value(i64 %storemerge385738624516, !27744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27748)
    #dbg_value(i64 %storemerge385738624516, !27752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27758)
  %i.agp = icmp ugt i64 %storemerge385738624516, 2, !dbg !31495 ; 2 uses
  br i1 %i.agp, label %bb.fm, label %bb.fl, !dbg !31495

bb.eo:                                            ; preds = %bb.em
    #dbg_value(ptr %1, !27634, !DIExpression(), !29510)
    #dbg_value(ptr %1, !27640, !DIExpression(), !29511)
  %i.agq = add i64 %i.ct, -1, !dbg !31496         ; 2 uses
  store i64 %i.agq, ptr %i.cs, align 8, !dbg !31496
  %i.agr = load i64, ptr %1, align 8, !dbg !31497, !range !3278, !noundef !1314
  %i.ags = icmp ult i64 %i.agq, %i.agr, !dbg !31498
    #dbg_value(i1 true, !28978, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !29513)
  tail call void @llvm.assume(i1 %i.ags), !dbg !31499
    #dbg_value(ptr %i.de, !27220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27710)
    #dbg_value(i64 %storemerge385738624516, !27220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27710)
    #dbg_value(ptr %i.de, !28779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25375)
    #dbg_value(ptr %i.de, !28793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25377)
    #dbg_value(i64 %storemerge385738624516, !28779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25375)
    #dbg_value(i64 %storemerge385738624516, !28793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25377)
    #dbg_value(i64 2, !28791, !DIExpression(), !25375)
    #dbg_value(i64 2, !28794, !DIExpression(), !25377)
  br i1 %.not.i26734225, label %bb.ep, label %.split6.i2678, !dbg !31500

.split6.i2678:                                    ; preds = %bb.eo
  %i.agt = icmp eq i64 %storemerge385738624516, 2, !dbg !31501
  br i1 %i.agt, label %.preheader, label %bb.eq, !dbg !31502

.preheader:                                       ; preds = %bb.ep, %.split6.i2678
  br label %bb.er, !dbg !31503

bb.ep:                                            ; preds = %bb.eo
  %i.agu = getelementptr inbounds nuw i8, ptr %i.de, i64 2, !dbg !31504
  %i.agv = load i8, ptr %i.agu, align 1, !dbg !31504, !alias.scope !29514, !noundef !1314
    #dbg_value(i8 %i.agv, !28796, !DIExpression(), !25381)
  %i.agw = icmp sgt i8 %i.agv, -65, !dbg !31505
  br i1 %i.agw, label %.preheader, label %bb.eq, !dbg !31502

bb.eq:                                            ; preds = %bb.ep, %.split6.i2678
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %storemerge385738624516, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #30, !dbg !31506
  unreachable, !dbg !31506

bb.er:                                            ; preds = %.preheader, %bb.ex
  %i.agx = phi i64 [ %i.aip, %bb.ex ], [ %i.df, %.preheader ] ; 2 uses
  %i.agy = phi i64 [ %i.aiq, %bb.ex ], [ %.promoted38494515, %.preheader ] ; 2 uses
  %.sroa.02918.0.idx3908 = phi i64 [ %.sroa.02918.1.ph33203327.idx, %bb.ex ], [ 0, %.preheader ] ; 6 uses
  %i.agz = phi i64 [ %i.air, %bb.ex ], [ %.promoted38504514, %.preheader ]
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.idx3908), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
  %.sroa.02918.0.ptr = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02918.0.idx3908, !dbg !31507
    #dbg_value(ptr %.sroa.02918.0.ptr, !26555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(ptr %.sroa.02918.0.ptr, !2775, !DIExpression(), !25383)
    #dbg_value(ptr %.sroa.02918.0.ptr, !3118, !DIExpression(), !25385)
  %.sroa.02918.0.add = add nuw nsw i64 %.sroa.02918.0.idx3908, 1, !dbg !31508 ; 3 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.add), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
  %i.aha = load i8, ptr %.sroa.02918.0.ptr, align 1, !dbg !31509, !noalias !29516, !noundef !1314 ; 5 uses
    #dbg_value(i8 %i.aha, !2794, !DIExpression(), !25388)
    #dbg_value(i8 %i.aha, !3121, !DIExpression(), !25390)
  %i.ahb = icmp sgt i8 %i.aha, -1, !dbg !31503
  br i1 %i.ahb, label %.thread3317, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687, !dbg !31503

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687: ; preds = %bb.er
  %.ptr3692 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02918.0.add, !dbg !31509
    #dbg_value(ptr %.ptr3692, !26555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29515)
  %i.ahc = and i8 %i.aha, 31, !dbg !31510
  %i.ahd = zext nneg i8 %i.ahc to i32, !dbg !31510 ; 3 uses
    #dbg_value(i32 %i.ahd, !2797, !DIExpression(), !25391)
    #dbg_value(i32 %i.ahd, !3126, !DIExpression(), !25393)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24079)
    #dbg_value(i64 1, !3119, !DIExpression(), !25395)
    #dbg_value(ptr %.ptr3692, !2775, !DIExpression(), !25396)
    #dbg_value(ptr %.ptr3692, !3118, !DIExpression(), !25395)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !25397)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25399)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25400)
  %i.ahe = icmp samesign ne i64 %.sroa.02918.0.add, 2, !dbg !31511
  tail call void @llvm.assume(i1 %i.ahe), !dbg !31512
  %.sroa.02918.0.add3691 = add nuw nsw i64 %.sroa.02918.0.idx3908, 2, !dbg !31513 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.add3691), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
  %i.ahf = load i8, ptr %.ptr3692, align 1, !dbg !31514, !noalias !29516, !noundef !1314
    #dbg_value(i8 %i.ahf, !2798, !DIExpression(), !25401)
    #dbg_value(i8 %i.ahf, !3129, !DIExpression(), !25393)
  %i.ahg = shl nuw nsw i32 %i.ahd, 6, !dbg !31515
  %i.ahh = and i8 %i.ahf, 63, !dbg !31516
  %i.ahi = zext nneg i8 %i.ahh to i32, !dbg !31516 ; 2 uses
  %i.ahj = or disjoint i32 %i.ahg, %i.ahi, !dbg !31515
    #dbg_value(i32 %i.ahj, !2799, !DIExpression(), !25402)
  %i.ahk = icmp samesign ugt i8 %i.aha, -33, !dbg !31517
  br i1 %i.ahk, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690, label %bb.es, !dbg !31517

.thread3317:                                      ; preds = %bb.er
  %i.ahl = zext nneg i8 %i.aha to i32, !dbg !31518
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.add), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29517)
    #dbg_value(i32 %i.ahl, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29517)
    #dbg_value(i32 %i.ahl, !28805, !DIExpression(), !29520)
    #dbg_value(i32 %i.ahl, !28812, !DIExpression(), !29523)
    #dbg_value(i32 %i.ahl, !28820, !DIExpression(), !29526)
    #dbg_value(i32 %i.ahl, !26556, !DIExpression(), !29527)
    #dbg_value(i32 %i.ahl, !28829, !DIExpression(), !29530)
    #dbg_value(i32 %i.ahl, !28834, !DIExpression(), !29533)
  br label %bb.eu, !dbg !31519

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687
  %.ptr3695 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02918.0.add3691, !dbg !31514
    #dbg_value(ptr %.ptr3695, !26555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24077)
    #dbg_value(i64 1, !3119, !DIExpression(), !25404)
    #dbg_value(ptr %.ptr3695, !2775, !DIExpression(), !25405)
    #dbg_value(ptr %.ptr3695, !3118, !DIExpression(), !25404)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !25406)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25408)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25409)
  %i.ahm = icmp ne i64 %.sroa.02918.0.idx3908, 0, !dbg !31520
  tail call void @llvm.assume(i1 %i.ahm), !dbg !31521
  %.sroa.02918.0.add3690 = add nuw nsw i64 %.sroa.02918.0.idx3908, 3, !dbg !31522 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.add3690), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
  %i.ahn = load i8, ptr %.ptr3695, align 1, !dbg !31523, !noalias !29516, !noundef !1314
    #dbg_value(i8 %i.ahn, !2800, !DIExpression(), !25410)
    #dbg_value(i8 %i.ahn, !3129, !DIExpression(), !25412)
    #dbg_value(i32 %i.ahi, !3126, !DIExpression(), !25412)
  %i.aho = shl nuw nsw i32 %i.ahi, 6, !dbg !31524
  %i.ahp = and i8 %i.ahn, 63, !dbg !31525
  %i.ahq = zext nneg i8 %i.ahp to i32, !dbg !31525
  %i.ahr = or disjoint i32 %i.aho, %i.ahq, !dbg !31524 ; 2 uses
    #dbg_value(i32 %i.ahr, !2801, !DIExpression(), !25413)
    #dbg_value(i32 %i.ahr, !3126, !DIExpression(), !25415)
  %i.ahs = shl nuw nsw i32 %i.ahd, 12, !dbg !31526
  %i.aht = or disjoint i32 %i.ahr, %i.ahs, !dbg !31527
    #dbg_value(i32 %i.aht, !2799, !DIExpression(), !25402)
  %i.ahu = icmp samesign ugt i8 %i.aha, -17, !dbg !31528
  br i1 %i.ahu, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2691, label %bb.es, !dbg !31528

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2691: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690
  %.ptr3694 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02918.0.add3690, !dbg !31523
    #dbg_value(ptr %.ptr3694, !26555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24075)
    #dbg_value(i64 1, !3119, !DIExpression(), !25417)
    #dbg_value(ptr %.ptr3694, !2775, !DIExpression(), !25418)
    #dbg_value(ptr %.ptr3694, !3118, !DIExpression(), !25417)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !25419)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25421)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25422)
  %.sroa.02918.0.add3689 = add nuw nsw i64 %.sroa.02918.0.idx3908, 4, !dbg !31529
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.0.add3689), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
  %i.ahv = load i8, ptr %.ptr3694, align 1, !dbg !31530, !noalias !29516, !noundef !1314
    #dbg_value(i8 %i.ahv, !2802, !DIExpression(), !25423)
    #dbg_value(i8 %i.ahv, !3129, !DIExpression(), !25415)
  %i.ahw = shl nuw nsw i32 %i.ahd, 18, !dbg !31531
  %i.ahx = and i32 %i.ahw, 1835008, !dbg !31531
  %i.ahy = shl nuw nsw i32 %i.ahr, 6, !dbg !31532
  %i.ahz = and i8 %i.ahv, 63, !dbg !31533
  %i.aia = zext nneg i8 %i.ahz to i32, !dbg !31533
  %i.aib = or disjoint i32 %i.ahy, %i.aia, !dbg !31532
  %i.aic = or disjoint i32 %i.aib, %i.ahx, !dbg !31534
    #dbg_value(i32 %i.aic, !2799, !DIExpression(), !25402)
  br label %bb.es, !dbg !31535

bb.es:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2691, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690
  %.sroa.02918.1.ph.idx = phi i64 [ %.sroa.02918.0.add3691, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687 ], [ %.sroa.02918.0.add3690, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690 ], [ %.sroa.02918.0.add3689, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2691 ] ; 2 uses
  %.sroa.4.0.i2688.ph = phi i32 [ %i.ahj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2687 ], [ %i.aht, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2690 ], [ %i.aic, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2691 ] ; 5 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02918.1.ph.idx), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29517)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29517)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !28805, !DIExpression(), !29520)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !28812, !DIExpression(), !29523)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !28820, !DIExpression(), !29526)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !26556, !DIExpression(), !29527)
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !28829, !DIExpression(), !29530)
  %i.aid = icmp samesign ult i32 %.sroa.4.0.i2688.ph, 1114112, !dbg !31536
  tail call void @llvm.assume(i1 %i.aid), !dbg !31536
    #dbg_value(i32 %.sroa.4.0.i2688.ph, !28834, !DIExpression(), !29533)
  %i.aie = icmp samesign ult i32 %.sroa.4.0.i2688.ph, 128, !dbg !31519
  br i1 %i.aie, label %bb.eu, label %.thread3323, !dbg !31519

bb.et:                                            ; preds = %bb.ex
  %i.aif = getelementptr inbounds nuw i8, ptr %i.de, i64 2, !dbg !31537
  %i.aig = add i64 %storemerge385738624516, -2, !dbg !31538
    #dbg_value(!DIArgList(ptr poison, i64 poison), !26555, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29515)
    #dbg_value(i32 0, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29517)
    #dbg_value(i32 undef, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29517)
  store ptr %i.aif, ptr %i.ci, align 8, !dbg !31539, !captures !4048
  store i64 %i.aig, ptr %i.cj, align 8, !dbg !31539
  store i8 3, ptr %0, align 8, !dbg !31540
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !31540
end_hunk_0
begin_hunk_1_@_RNCNvNtNtCs5yXxDE1DkoT_4tera7parsing5lexer14basic_tokenize0B7_:bb.a
bb.ff:                                            ; preds = %.thread3344, %bb.fd
  %i.akq = phi i64 [ %i.akm, %.thread3344 ], [ %i.akn, %bb.fd ]
  %.sroa.02916.1.ph33413349.idx = phi i64 [ %.sroa.02916.1.ph.idx, %.thread3344 ], [ %.sroa.02916.1.ph3341.idx, %bb.fd ]
  %i.akr = add i64 %i.ajb, 1, !dbg !31599
  br label %bb.fg, !dbg !31599

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aks = phi i64 [ %i.aiz, %bb.ff ], [ %i.akp, %bb.fe ] ; 2 uses
  %i.akt = phi i64 [ %i.akq, %bb.ff ], [ %i.akn, %bb.fe ] ; 2 uses
  %.sroa.02916.1.ph33413348.idx = phi i64 [ %.sroa.02916.1.ph33413349.idx, %bb.ff ], [ %.sroa.02916.1.ph3341.idx, %bb.fe ] ; 2 uses
  %i.aku = phi i64 [ %i.akr, %bb.ff ], [ 0, %bb.fe ], !dbg !29551 ; 3 uses
  store i64 %i.aku, ptr %i.cp, align 8, !dbg !29551
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02916.1.ph33413348.idx), !26548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29539)
    #dbg_value(ptr undef, !26744, !DIExpression(), !26997)
    #dbg_value(ptr undef, !2793, !DIExpression(), !24100)
    #dbg_value(i32 2, !3124, !DIExpression(), !25445)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24099)
    #dbg_value(i64 1, !3119, !DIExpression(), !25440)
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02916.1.ph33413348.idx), !2775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25438)
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02916.1.ph33413348.idx), !3118, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25440)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !25481)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25482)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25483)
  %i.akv = icmp eq i64 %.sroa.02916.1.ph33413348.idx, 3, !dbg !31558
  br i1 %i.akv, label %bb.fc, label %.split6.i2694, !dbg !31600

bb.fh:                                            ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2672
    #dbg_value(ptr poison, !28732, !DIExpression(), !29457)
    #dbg_value(ptr poison, !28733, !DIExpression(), !29457)
  %lhsc = load i8, ptr %i.de, align 1, !dbg !31601
  %i.akw = icmp ne i8 %lhsc, 45, !dbg !31601
    #dbg_value(ptr %i.de, !27563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27568)
    #dbg_value(ptr %i.de, !27573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27576)
    #dbg_value(ptr %i.de, !27586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27589)
    #dbg_value(ptr %i.de, !27593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27609)
    #dbg_value(i64 %storemerge385738624516, !27563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27568)
    #dbg_value(i64 %storemerge385738624516, !27573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27576)
    #dbg_value(i64 %storemerge385738624516, !27586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27589)
    #dbg_value(i64 %storemerge385738624516, !27593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27609)
    #dbg_value(ptr %i.de, !29204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25485)
    #dbg_value(i64 %storemerge385738624516, !29204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25485)
    #dbg_value(i64 1, !29207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25485)
    #dbg_value(i64 3, !29207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25485)
    #dbg_value(i64 1, !29208, !DIExpression(), !25486)
    #dbg_value(i64 1, !29212, !DIExpression(), !25488)
    #dbg_value(i64 3, !29209, !DIExpression(), !25486)
    #dbg_value(i64 3, !29212, !DIExpression(), !25490)
    #dbg_value(ptr %i.de, !29210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25491)
    #dbg_value(i64 %storemerge385738624516, !29210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25491)
  %i.akx = icmp ult i64 %storemerge385738624516, 3
  %or.cond3741 = or i1 %i.akx, %i.akw, !dbg !27029
  br i1 %or.cond3741, label %.critedge2445, label %bb.fi, !dbg !27029

bb.fi:                                            ; preds = %bb.fh
    #dbg_value(ptr %i.de, !29213, !DIExpression(), !25488)
    #dbg_value(ptr %i.afq, !29216, !DIExpression(), !25493)
    #dbg_value(ptr %i.afq, !29220, !DIExpression(), !25495)
    #dbg_value(i8 %i.afr, !29223, !DIExpression(), !25497)
  %i.aky = icmp eq i64 %storemerge385738624516, 3, !dbg !31602 ; 2 uses
  br i1 %i.aky, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479.thread3355, label %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479, !dbg !31602

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479: ; preds = %bb.fi
    #dbg_value(ptr %i.de, !29213, !DIExpression(), !25490)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.de, i64 3, !dbg !31603
    #dbg_value(ptr %i.akz, !29216, !DIExpression(), !25499)
    #dbg_value(ptr %i.akz, !29220, !DIExpression(), !25501)
  %i.ala = load i8, ptr %i.akz, align 1, !dbg !31604, !alias.scope !29558, !noundef !1314
    #dbg_value(i8 %i.ala, !29223, !DIExpression(), !25505)
  %i.alb = icmp sgt i8 %i.ala, -65, !dbg !31605
    #dbg_value(ptr %i.de, !27611, !DIExpression(), !27616)
    #dbg_value(ptr undef, !26978, !DIExpression(), !27027)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29560)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29562)
  %.sroa.6201.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6201.0 = load i64, ptr %.sroa.6201.0.in, align 8
    #dbg_value(ptr poison, !26979, !DIExpression(), !29563)
    #dbg_value(ptr undef, !26982, !DIExpression(), !27026)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27025)
    #dbg_value(ptr poison, !26983, !DIExpression(), !29564)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29565)
    #dbg_value(ptr %i.de, !28685, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29568)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29568)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29568)
    #dbg_value(i64 %.sroa.6201.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29568)
    #dbg_value(ptr %i.de, !28696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29573)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29574)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(i64 %.sroa.6201.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29573)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29575)
    #dbg_value(i64 2, !28702, !DIExpression(), !29576)
    #dbg_value(i64 2, !28731, !DIExpression(), !29579)
    #dbg_value(i64 2, !28738, !DIExpression(), !29580)
  %i.alc = icmp eq i64 %.sroa.6201.0, 2
  %or.cond3743 = select i1 %i.alb, i1 %i.alc, i1 false, !dbg !31606
  br i1 %or.cond3743, label %bb.fj, label %.critedge2445.thread, !dbg !31606

.critedge2445:                                    ; preds = %bb.fh, %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2672
    #dbg_value(ptr %i.de, !27187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27655)
    #dbg_value(i64 %storemerge385738624516, !27187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27655)
    #dbg_value(i64 2, !28580, !DIExpression(), !25507)
    #dbg_value(ptr %i.de, !28584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25507)
    #dbg_value(ptr %i.de, !28586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25509)
    #dbg_value(i64 %storemerge385738624516, !28584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25507)
    #dbg_value(i64 %storemerge385738624516, !28586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25509)
    #dbg_value(i64 2, !28589, !DIExpression(), !25509)
  %.not.i2709 = icmp ugt i64 %storemerge385738624516, 2, !dbg !31607
  br i1 %.not.i2709, label %.critedge2445.thread, label %.critedge2445.thread4233, !dbg !31607

.critedge2445.thread4233:                         ; preds = %bb.ei, %.critedge2445
  %i.ald = icmp eq i64 %storemerge385738624516, 2, !dbg !31608
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2712, !dbg !31609

.critedge2445.thread:                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479.thread3355, %bb.fj, %.critedge2445
  %i.ale = getelementptr inbounds nuw i8, ptr %i.de, i64 2, !dbg !31610
  %i.alf = load i8, ptr %i.ale, align 1, !dbg !31610, !alias.scope !29581, !noundef !1314
    #dbg_value(i8 %i.alf, !28592, !DIExpression(), !25513)
  %i.alg = icmp sgt i8 %i.alf, -65, !dbg !31611
  br label %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2712, !dbg !31609

_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2712: ; preds = %.critedge2445.thread4233, %.critedge2445.thread
  %.not.i27094231 = phi i1 [ false, %.critedge2445.thread4233 ], [ true, %.critedge2445.thread ]
  %.sroa.01.0.in.i2710 = phi i1 [ %i.ald, %.critedge2445.thread4233 ], [ %i.alg, %.critedge2445.thread ]
    #dbg_value(ptr undef, !26978, !DIExpression(), !27018)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29583)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29586)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29589)
    #dbg_value(i64 poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29589)
    #dbg_value(ptr poison, !26979, !DIExpression(), !29590)
  %.sroa.3227.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3227.0 = load i64, ptr %.sroa.3227.0.in, align 8
    #dbg_value(i64 %.sroa.3227.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29589)
    #dbg_value(ptr undef, !26984, !DIExpression(), !27017)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27016)
    #dbg_value(ptr poison, !26985, !DIExpression(), !29591)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29592)
    #dbg_value(ptr poison, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29589)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29589)
    #dbg_value(ptr poison, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29597)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29597)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29598)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29597)
    #dbg_value(i64 %.sroa.3227.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29597)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29599)
    #dbg_value(i64 2, !28703, !DIExpression(), !29600)
    #dbg_value(i64 2, !28731, !DIExpression(), !29603)
    #dbg_value(i64 2, !28739, !DIExpression(), !29604)
  %i.alh = icmp eq i64 %.sroa.3227.0, 2
  %or.cond2446 = select i1 %.sroa.01.0.in.i2710, i1 %i.alh, i1 false, !dbg !31612
  br i1 %or.cond2446, label %bb.fk, label %bb.en, !dbg !31612

_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479.thread3355: ; preds = %bb.fi
    #dbg_value(ptr %i.de, !27611, !DIExpression(), !27616)
    #dbg_value(ptr undef, !26978, !DIExpression(), !27027)
    #dbg_value(ptr %1, !29460, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29560)
    #dbg_value(ptr %1, !28653, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !29562)
  %.sroa.6201.0.in.old = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !31613
  %.sroa.6201.0.old = load i64, ptr %.sroa.6201.0.in.old, align 8, !dbg !31613, !noundef !1314
    #dbg_value(ptr poison, !26979, !DIExpression(), !29563)
    #dbg_value(ptr undef, !26982, !DIExpression(), !27026)
    #dbg_value(ptr undef, !26968, !DIExpression(), !27025)
    #dbg_value(ptr poison, !26983, !DIExpression(), !29564)
    #dbg_value(ptr poison, !26969, !DIExpression(), !29565)
    #dbg_value(ptr %i.de, !28685, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29568)
    #dbg_value(i64 2, !28685, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29568)
    #dbg_value(ptr poison, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29568)
    #dbg_value(i64 %.sroa.6201.0.old, !28686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29568)
    #dbg_value(ptr %i.de, !28696, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(i64 2, !28696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29573)
    #dbg_value(ptr poison, !28715, !DIExpression(), !29574)
    #dbg_value(ptr poison, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(i64 %.sroa.6201.0.old, !28697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29573)
    #dbg_value(ptr poison, !28716, !DIExpression(), !29575)
    #dbg_value(i64 2, !28702, !DIExpression(), !29576)
    #dbg_value(i64 2, !28731, !DIExpression(), !29579)
    #dbg_value(i64 2, !28738, !DIExpression(), !29580)
  %.old3742 = icmp eq i64 %.sroa.6201.0.old, 2, !dbg !31614
  br i1 %.old3742, label %bb.fj, label %.critedge2445.thread, !dbg !31614

bb.fj:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479, %_RNvNtNtCsf3Ta7LF998c_4core3str6traits11check_range.exit2479.thread3355
    #dbg_value(ptr %i.afq, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(ptr %i.afq, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29568)
  %.sroa.0199.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31613
  %.sroa.0199.0 = load ptr, ptr %.sroa.0199.0.in, align 8, !dbg !31613, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %.sroa.0199.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29568)
    #dbg_value(ptr %.sroa.0199.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29573)
    #dbg_value(ptr %i.afq, !28732, !DIExpression(), !29579)
    #dbg_value(ptr %.sroa.0199.0, !28733, !DIExpression(), !29579)
  %i.ali = load i16, ptr %i.afq, align 1, !dbg !31615
  %i.alj = load i16, ptr %.sroa.0199.0, align 1, !dbg !31615
  %i.alk = icmp ne i16 %i.ali, %i.alj, !dbg !31615
  %i.all = zext i1 %i.alk to i32, !dbg !31615
  %i.alm = icmp eq i32 %i.all, 0, !dbg !31615
  br i1 %i.alm, label %bb.nt, label %.critedge2445.thread, !dbg !27023

bb.fk:                                            ; preds = %_RNvXs8_NtNtCsf3Ta7LF998c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit2712
  %.sroa.0226.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !31616
  %.sroa.0226.0 = load ptr, ptr %.sroa.0226.0.in, align 8, !dbg !31616, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %.sroa.0226.0, !28686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29589)
    #dbg_value(ptr %.sroa.0226.0, !28697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29597)
    #dbg_value(ptr poison, !28685, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29589)
    #dbg_value(ptr poison, !28696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29597)
    #dbg_value(ptr poison, !28732, !DIExpression(), !29603)
    #dbg_value(ptr %.sroa.0226.0, !28733, !DIExpression(), !29603)
  %i.aln = load i16, ptr %i.de, align 1, !dbg !31617
  %i.alo = load i16, ptr %.sroa.0226.0, align 1, !dbg !31617
  %i.alp = icmp ne i16 %i.aln, %i.alo, !dbg !31617
  %i.alq = zext i1 %i.alp to i32, !dbg !31617
  %i.alr = icmp eq i32 %i.alq, 0, !dbg !31617
  br i1 %i.alr, label %bb.nj, label %bb.en, !dbg !27014

bb.fl:                                            ; preds = %bb.en
    #dbg_value(ptr %i.de, !27726, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27766)
    #dbg_value(ptr %i.de, !27735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27769)
    #dbg_value(ptr %i.de, !27744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27772)
    #dbg_value(ptr %i.de, !27752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27775)
    #dbg_value(i64 %storemerge385738624516, !27726, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27766)
    #dbg_value(i64 %storemerge385738624516, !27735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27769)
    #dbg_value(i64 %storemerge385738624516, !27744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27772)
    #dbg_value(i64 %storemerge385738624516, !27752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27775)
  %.not3664 = icmp eq i64 %storemerge385738624516, 1, !dbg !31618
  %.pre4017 = load i8, ptr %i.de, align 1, !dbg !31619 ; 2 uses
  br i1 %.not3664, label %thread-pre-split, label %.thread3358, !dbg !31618

bb.fm:                                            ; preds = %bb.en
  %i.als = load i8, ptr %i.de, align 1, !dbg !31620, !noundef !1314 ; 2 uses
  %i.alt = icmp eq i8 %i.als, 46, !dbg !31620
  br i1 %i.alt, label %bb.fn, label %.thread3358, !dbg !31620

bb.fn:                                            ; preds = %bb.fm
  %i.alu = getelementptr inbounds nuw i8, ptr %i.de, i64 1, !dbg !31620
  %i.alv = load i8, ptr %i.alu, align 1, !dbg !31620, !noundef !1314
  %i.alw = icmp eq i8 %i.alv, 46, !dbg !31620
  br i1 %i.alw, label %bb.fo, label %.sink.split, !dbg !31620

bb.fo:                                            ; preds = %bb.fn
  %i.alx = getelementptr inbounds nuw i8, ptr %i.de, i64 2, !dbg !31620
  %i.aly = load i8, ptr %i.alx, align 1, !dbg !31620, !noundef !1314
  %i.alz = icmp eq i8 %i.aly, 46, !dbg !31620
  br i1 %i.alz, label %bb.fp, label %.sink.split, !dbg !31620

bb.fp:                                            ; preds = %bb.fo
    #dbg_value(ptr %i.de, !27220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27761)
    #dbg_value(i64 %storemerge385738624516, !27220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27761)
    #dbg_value(ptr %i.de, !28779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25515)
    #dbg_value(ptr %i.de, !28793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25517)
    #dbg_value(i64 %storemerge385738624516, !28779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25515)
    #dbg_value(i64 %storemerge385738624516, !28793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25517)
    #dbg_value(i64 3, !28791, !DIExpression(), !25515)
    #dbg_value(i64 3, !28794, !DIExpression(), !25517)
  %.not.i2713.not = icmp eq i64 %storemerge385738624516, 3, !dbg !31621
  br i1 %.not.i2713.not, label %.split6.i2714.preheader, label %bb.fq, !dbg !31621

bb.fq:                                            ; preds = %bb.fp
  %i.ama = getelementptr inbounds nuw i8, ptr %i.de, i64 3, !dbg !31622
  %i.amb = load i8, ptr %i.ama, align 1, !dbg !31622, !alias.scope !29605, !noundef !1314
    #dbg_value(i8 %i.amb, !28796, !DIExpression(), !25521)
  %i.amc = icmp sgt i8 %i.amb, -65, !dbg !31623
  br i1 %i.amc, label %.split6.i2714.preheader, label %bb.fr, !dbg !31624

.split6.i2714.preheader:                          ; preds = %bb.fp, %bb.fq
  br label %.split6.i2714, !dbg !31625

bb.fr:                                            ; preds = %bb.fq
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %storemerge385738624516, i64 noundef 0, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #30, !dbg !31626
  unreachable, !dbg !31626

.split6.i2714:                                    ; preds = %.split6.i2714.preheader, %bb.fx
  %i.amd = phi i64 [ %i.anw, %bb.fx ], [ %i.df, %.split6.i2714.preheader ] ; 2 uses
  %i.ame = phi i64 [ %i.anx, %bb.fx ], [ %.promoted38494515, %.split6.i2714.preheader ] ; 2 uses
  %.sroa.02920.0.idx3906 = phi i64 [ %.sroa.02920.1.ph33713378.idx, %bb.fx ], [ 0, %.split6.i2714.preheader ] ; 6 uses
  %i.amf = phi i64 [ %i.any, %bb.fx ], [ %.promoted38504514, %.split6.i2714.preheader ]
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.idx3906), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
  %.sroa.02920.0.ptr = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02920.0.idx3906, !dbg !31627
    #dbg_value(ptr %.sroa.02920.0.ptr, !26562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29606)
    #dbg_value(ptr %.sroa.02920.0.ptr, !2775, !DIExpression(), !25523)
    #dbg_value(ptr %.sroa.02920.0.ptr, !3118, !DIExpression(), !25525)
  %.sroa.02920.0.add = add nuw nsw i64 %.sroa.02920.0.idx3906, 1, !dbg !31628 ; 3 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.add), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
  %i.amg = load i8, ptr %.sroa.02920.0.ptr, align 1, !dbg !31629, !noalias !29607, !noundef !1314 ; 5 uses
    #dbg_value(i8 %i.amg, !2794, !DIExpression(), !25528)
    #dbg_value(i8 %i.amg, !3121, !DIExpression(), !25530)
  %i.amh = icmp sgt i8 %i.amg, -1, !dbg !31625
  br i1 %i.amh, label %.thread3368, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723, !dbg !31625

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723: ; preds = %.split6.i2714
  %.ptr3685 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02920.0.add, !dbg !31629
    #dbg_value(ptr %.ptr3685, !26562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29606)
  %i.ami = and i8 %i.amg, 31, !dbg !31630
  %i.amj = zext nneg i8 %i.ami to i32, !dbg !31630 ; 3 uses
    #dbg_value(i32 %i.amj, !2797, !DIExpression(), !25531)
    #dbg_value(i32 %i.amj, !3126, !DIExpression(), !25533)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24069)
    #dbg_value(i64 1, !3119, !DIExpression(), !25535)
    #dbg_value(ptr %.ptr3685, !2775, !DIExpression(), !25536)
    #dbg_value(ptr %.ptr3685, !3118, !DIExpression(), !25535)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !25537)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25539)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25540)
  %i.amk = icmp samesign ne i64 %.sroa.02920.0.add, 3, !dbg !31631
  tail call void @llvm.assume(i1 %i.amk), !dbg !31632
  %.sroa.02920.0.add3684 = add nuw nsw i64 %.sroa.02920.0.idx3906, 2, !dbg !31633 ; 3 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.add3684), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
  %i.aml = load i8, ptr %.ptr3685, align 1, !dbg !31634, !noalias !29607, !noundef !1314
    #dbg_value(i8 %i.aml, !2798, !DIExpression(), !25541)
    #dbg_value(i8 %i.aml, !3129, !DIExpression(), !25533)
  %i.amm = shl nuw nsw i32 %i.amj, 6, !dbg !31635
  %i.amn = and i8 %i.aml, 63, !dbg !31636
  %i.amo = zext nneg i8 %i.amn to i32, !dbg !31636 ; 2 uses
  %i.amp = or disjoint i32 %i.amm, %i.amo, !dbg !31635
    #dbg_value(i32 %i.amp, !2799, !DIExpression(), !25542)
  %i.amq = icmp samesign ugt i8 %i.amg, -33, !dbg !31637
  br i1 %i.amq, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726, label %bb.fs, !dbg !31637

.thread3368:                                      ; preds = %.split6.i2714
  %i.amr = zext nneg i8 %i.amg to i32, !dbg !31638
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.add), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29608)
    #dbg_value(i32 %i.amr, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29608)
    #dbg_value(i32 %i.amr, !28805, !DIExpression(), !29611)
    #dbg_value(i32 %i.amr, !28812, !DIExpression(), !29614)
    #dbg_value(i32 %i.amr, !28820, !DIExpression(), !29617)
    #dbg_value(i32 %i.amr, !26563, !DIExpression(), !29618)
    #dbg_value(i32 %i.amr, !28829, !DIExpression(), !29621)
    #dbg_value(i32 %i.amr, !28834, !DIExpression(), !29624)
  br label %bb.fu, !dbg !31639

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723
  %.ptr3688 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02920.0.add3684, !dbg !31634
    #dbg_value(ptr %.ptr3688, !26562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29606)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24067)
    #dbg_value(i64 1, !3119, !DIExpression(), !25544)
    #dbg_value(ptr %.ptr3688, !2775, !DIExpression(), !25545)
    #dbg_value(ptr %.ptr3688, !3118, !DIExpression(), !25544)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !25546)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25548)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25549)
  %i.ams = icmp samesign ne i64 %.sroa.02920.0.add3684, 3, !dbg !31640
  tail call void @llvm.assume(i1 %i.ams), !dbg !31641
  %.sroa.02920.0.add3683 = add nuw nsw i64 %.sroa.02920.0.idx3906, 3, !dbg !31642 ; 2 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.add3683), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
  %i.amt = load i8, ptr %.ptr3688, align 1, !dbg !31643, !noalias !29607, !noundef !1314
    #dbg_value(i8 %i.amt, !2800, !DIExpression(), !25550)
    #dbg_value(i8 %i.amt, !3129, !DIExpression(), !25552)
    #dbg_value(i32 %i.amo, !3126, !DIExpression(), !25552)
  %i.amu = shl nuw nsw i32 %i.amo, 6, !dbg !31644
  %i.amv = and i8 %i.amt, 63, !dbg !31645
  %i.amw = zext nneg i8 %i.amv to i32, !dbg !31645
  %i.amx = or disjoint i32 %i.amu, %i.amw, !dbg !31644 ; 2 uses
    #dbg_value(i32 %i.amx, !2801, !DIExpression(), !25553)
    #dbg_value(i32 %i.amx, !3126, !DIExpression(), !25555)
  %i.amy = shl nuw nsw i32 %i.amj, 12, !dbg !31646
  %i.amz = or disjoint i32 %i.amx, %i.amy, !dbg !31647
    #dbg_value(i32 %i.amz, !2799, !DIExpression(), !25542)
  %i.ana = icmp samesign ugt i8 %i.amg, -17, !dbg !31648
  br i1 %i.ana, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2727, label %bb.fs, !dbg !31648

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2727: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726
  %.ptr3687 = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.02920.0.add3683, !dbg !31643
    #dbg_value(ptr %.ptr3687, !26562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29606)
    #dbg_value(ptr undef, !2758, !DIExpression(), !24065)
    #dbg_value(i64 1, !3119, !DIExpression(), !25557)
    #dbg_value(ptr %.ptr3687, !2775, !DIExpression(), !25558)
    #dbg_value(ptr %.ptr3687, !3118, !DIExpression(), !25557)
    #dbg_value(ptr %i.de, !2776, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !25559)
    #dbg_value(ptr poison, !3132, !DIExpression(), !25561)
    #dbg_value(ptr poison, !3136, !DIExpression(), !25562)
  %i.anb = icmp ne i64 %.sroa.02920.0.idx3906, 0, !dbg !31649
  tail call void @llvm.assume(i1 %i.anb), !dbg !31650
  %.sroa.02920.0.add3682 = add nuw nsw i64 %.sroa.02920.0.idx3906, 4, !dbg !31651
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.0.add3682), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
  %i.anc = load i8, ptr %.ptr3687, align 1, !dbg !31652, !noalias !29607, !noundef !1314
    #dbg_value(i8 %i.anc, !2802, !DIExpression(), !25563)
    #dbg_value(i8 %i.anc, !3129, !DIExpression(), !25555)
  %i.and = shl nuw nsw i32 %i.amj, 18, !dbg !31653
  %i.ane = and i32 %i.and, 1835008, !dbg !31653
  %i.anf = shl nuw nsw i32 %i.amx, 6, !dbg !31654
  %i.ang = and i8 %i.anc, 63, !dbg !31655
  %i.anh = zext nneg i8 %i.ang to i32, !dbg !31655
  %i.ani = or disjoint i32 %i.anf, %i.anh, !dbg !31654
  %i.anj = or disjoint i32 %i.ani, %i.ane, !dbg !31656
    #dbg_value(i32 %i.anj, !2799, !DIExpression(), !25542)
  br label %bb.fs, !dbg !31657

bb.fs:                                            ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2727, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726
  %.sroa.02920.1.ph.idx = phi i64 [ %.sroa.02920.0.add3684, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723 ], [ %.sroa.02920.0.add3683, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726 ], [ %.sroa.02920.0.add3682, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2727 ] ; 2 uses
  %.sroa.4.0.i2724.ph = phi i32 [ %i.amp, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i2723 ], [ %i.amz, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i2726 ], [ %i.anj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i2727 ] ; 5 uses
    #dbg_value(!DIArgList(ptr %i.de, i64 %.sroa.02920.1.ph.idx), !26562, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !29606)
    #dbg_value(i32 1, !27257, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29608)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !27257, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !29608)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !28805, !DIExpression(), !29611)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !28812, !DIExpression(), !29614)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !28820, !DIExpression(), !29617)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !26563, !DIExpression(), !29618)
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !28829, !DIExpression(), !29621)
  %i.ank = icmp samesign ult i32 %.sroa.4.0.i2724.ph, 1114112, !dbg !31658
  tail call void @llvm.assume(i1 %i.ank), !dbg !31658
    #dbg_value(i32 %.sroa.4.0.i2724.ph, !28834, !DIExpression(), !29624)
  %i.anl = icmp samesign ult i32 %.sroa.4.0.i2724.ph, 128, !dbg !31639
  br i1 %i.anl, label %bb.fu, label %.thread3374, !dbg !31639

bb.ft:                                            ; preds = %bb.fx
end_hunk_1
