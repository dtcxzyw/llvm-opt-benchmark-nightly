Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat:bb.a
bb.av:                                            ; preds = %.noexc254
    #dbg_value(ptr %i.fa, !5288, !DIExpression(), !5290)
  %i.fj = load ptr, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5307, !alias.scope !5294, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.fj, !5301, !DIExpression(), !5302)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fh, !dbg !5314
    #dbg_value(ptr %i.fk, !5289, !DIExpression(), !5290)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull readonly align 1 %i.fa, i64 %i.fb, i1 false), !dbg !5315
  %.pre.i = load i64, ptr %i.ak, align 8, !dbg !5316, !alias.scope !5294
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit, !dbg !5317

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit: ; preds = %.noexc254, %bb.av
  %i.fl = phi i64 [ %.pre.i, %bb.av ], [ %i.fh, %.noexc254 ], !dbg !5316
  %i.fm = add i64 %i.fl, %i.fb, !dbg !5316
  br label %bb.az, !dbg !5318

bb.aw:                                            ; preds = %bb.as
    #dbg_value(ptr %i.fa, !4294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5319)
    #dbg_value(ptr %i.fa, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5320)
    #dbg_value(ptr %i.fa, !4301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5321)
    #dbg_value(i64 %i.fb, !4294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5319)
    #dbg_value(i64 %i.fb, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5320)
    #dbg_value(i64 %i.fb, !4301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5321)
    #dbg_value(i64 %i.fb, !4302, !DIExpression(), !5322)
    #dbg_value(i64 %i.fb, !4318, !DIExpression(), !5323)
    #dbg_value(i64 %i.fb, !4327, !DIExpression(), !5324)
    #dbg_value(i64 %i.fb, !5325, !DIExpression(), !5335)
    #dbg_value(i64 %i.fb, !5337, !DIExpression(), !5342)
    #dbg_value(i64 %i.fb, !4356, !DIExpression(), !5344)
    #dbg_value(i64 %i.fb, !4372, !DIExpression(), !4374)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5344)
    #dbg_value(i64 1, !4373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4374)
    #dbg_value(i64 1, !4357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5344)
    #dbg_value(i64 1, !4373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4374)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5345
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %.loopexit404, !dbg !5345

bb.ax:                                            ; preds = %.loopexit404, %.loopexit.split-lp405, %.body258
  %.pn205 = phi { ptr, i32 } [ %eh.lpad-body259, %.body258 ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ] ; 2 uses
    #dbg_value(ptr poison, !948, !DIExpression(), !5346)
    #dbg_value(ptr poison, !958, !DIExpression(), !5348)
    #dbg_value(ptr poison, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5350)
    #dbg_value(i64 %i.fb, !962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5350)
    #dbg_value(i64 1, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5351)
    #dbg_value(i64 %i.fb, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5351)
  %i.fn = icmp eq i64 %i.fb, 0, !dbg !5352
  br i1 %i.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366, label %bb.ay, !dbg !5352

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(ptr %i.fa, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5350)
    #dbg_value(ptr poison, !976, !DIExpression(), !5353)
    #dbg_value(ptr poison, !985, !DIExpression(), !5355)
    #dbg_value(ptr %i.fa, !981, !DIExpression(), !5353)
    #dbg_value(ptr %i.fa, !990, !DIExpression(), !5355)
    #dbg_value(ptr %i.fa, !994, !DIExpression(), !5357)
    #dbg_value(ptr %i.fa, !1003, !DIExpression(), !5359)
    #dbg_value(i64 1, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5353)
    #dbg_value(i64 1, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5355)
    #dbg_value(i64 1, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5357)
    #dbg_value(i64 1, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5359)
    #dbg_value(i64 %i.fb, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5353)
    #dbg_value(i64 %i.fb, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5355)
    #dbg_value(i64 %i.fb, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5357)
    #dbg_value(i64 %i.fb, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5359)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef range(i64 1, 0) %i.fb, i64 noundef 1) #23, !dbg !5361
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366, !dbg !5362

.loopexit404:                                     ; preds = %bb.aw, %bb.au
  %lpad.loopexit406 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp405:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp407 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261
  %storemerge587 = phi i64 [ %i.fm, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs3roNzt6HBWW_12regex_syntax.exit ], [ %i.fb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261 ], !dbg !5190
  store i64 %storemerge587, ptr %i.ak, align 8, !dbg !5190
    #dbg_value(ptr poison, !948, !DIExpression(), !5363)
    #dbg_value(ptr poison, !958, !DIExpression(), !5365)
    #dbg_value(ptr poison, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5367)
    #dbg_value(i64 %i.fb, !962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5367)
    #dbg_value(i64 1, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5368)
    #dbg_value(i64 %i.fb, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5368)
  %i.fo = icmp eq i64 %i.fb, 0, !dbg !5369
  br i1 %i.fo, label %bb.bl, label %bb.ba, !dbg !5369

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %i.fa, !962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5367)
    #dbg_value(ptr poison, !976, !DIExpression(), !5370)
    #dbg_value(ptr poison, !985, !DIExpression(), !5372)
    #dbg_value(ptr %i.fa, !981, !DIExpression(), !5370)
    #dbg_value(ptr %i.fa, !990, !DIExpression(), !5372)
    #dbg_value(ptr %i.fa, !994, !DIExpression(), !5374)
    #dbg_value(ptr %i.fa, !1003, !DIExpression(), !5376)
    #dbg_value(i64 1, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5370)
    #dbg_value(i64 1, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5372)
    #dbg_value(i64 1, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5374)
    #dbg_value(i64 1, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5376)
    #dbg_value(i64 %i.fb, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5370)
    #dbg_value(i64 %i.fb, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5372)
    #dbg_value(i64 %i.fb, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5374)
    #dbg_value(i64 %i.fb, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5376)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef range(i64 1, 0) %i.fb, i64 noundef 1) #23, !dbg !5378
  br label %bb.bl, !dbg !5379

bb.bb:                                            ; preds = %bb.aw
  %i.fp = load i64, ptr %i.d, align 8, !dbg !5345, !range !763, !noundef !15
  %i.fq = trunc nuw i64 %i.fp to i1, !dbg !5380
  %i.fr = load i64, ptr %i.an, align 8, !dbg !5344, !range !2306, !noundef !15 ; 4 uses
  br i1 %i.fq, label %bb.bc, label %bb.bd, !dbg !5380, !prof !890

bb.bc:                                            ; preds = %bb.bb
  %i.fs = load i64, ptr %i.ao, align 8, !dbg !5381
    #dbg_value(i64 %i.fr, !4360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5382)
    #dbg_value(i64 %i.fs, !4360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5382)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fr, i64 %i.fs) #24
          to label %bb.ad unwind label %.loopexit.split-lp405, !dbg !5383

bb.bd:                                            ; preds = %bb.bb
  %i.ft = load ptr, ptr %i.ao, align 8, !dbg !5384, !nonnull !15, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.fr, !4358, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5385)
    #dbg_value(ptr %i.ft, !4358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5385)
    #dbg_value(ptr poison, !4371, !DIExpression(), !5386)
    #dbg_value(ptr poison, !4176, !DIExpression(), !5387)
    #dbg_value(i64 %i.fr, !4451, !DIExpression(), !5388)
  %i.fu = icmp ule i64 %i.fb, %i.fr, !dbg !5391
    #dbg_value(i1 true, !5093, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5392)
  call void @llvm.assume(i1 %i.fu), !dbg !5394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5395
    #dbg_value(i64 %i.fr, !4304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5396)
    #dbg_value(ptr %i.ft, !4304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5396)
    #dbg_value(i64 0, !4304, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5396)
  %.not204 = icmp eq i64 %i.fb, 0, !dbg !5397
  br i1 %.not204, label %bb.be, label %bb.bi, !dbg !5397

bb.be:                                            ; preds = %bb.bi, %bb.bd
    #dbg_value(i64 %i.fb, !4304, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5396)
    #dbg_value(ptr %i.v, !4485, !DIExpression(), !5398)
  %i.fv = load i64, ptr %i.v, align 8, !dbg !5400, !range !4496, !alias.scope !5401, !noundef !15
  %i.fw = icmp eq i64 %i.fv, -1, !dbg !5400
  br i1 %i.fw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261, label %bb.bf, !dbg !5400

bb.bf:                                            ; preds = %bb.be
    #dbg_value(ptr %i.v, !1131, !DIExpression(), !5404)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257 unwind label %bb.bg, !dbg !5406

bb.bg:                                            ; preds = %bb.bf
  %i.fx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !1135, !DIExpression(), !5407)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body258 unwind label %bb.bh, !dbg !5409

bb.bh:                                            ; preds = %bb.bg
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !5406
  unreachable, !dbg !5406

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257: ; preds = %bb.bf
    #dbg_value(ptr %i.v, !1135, !DIExpression(), !5410)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261 unwind label %bb.bj, !dbg !5412

bb.bi:                                            ; preds = %bb.bd
    #dbg_value(ptr %i.fa, !5333, !DIExpression(), !5335)
    #dbg_value(ptr %i.fa, !5340, !DIExpression(), !5342)
    #dbg_value(ptr %i.ft, !5334, !DIExpression(), !5335)
    #dbg_value(ptr %i.ft, !5341, !DIExpression(), !5342)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr nonnull align 1 %i.fa, i64 %i.fb, i1 false), !dbg !5413
    #dbg_value(i64 %i.fb, !4304, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5396)
  br label %bb.be, !dbg !5414

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body258, !dbg !5415

.body258:                                         ; preds = %bb.bg, %bb.bj
  %eh.lpad-body259 = phi { ptr, i32 } [ %i.fz, %bb.bj ], [ %i.fx, %bb.bg ]
  store i64 %i.fr, ptr %i.v, align 8, !dbg !5415
  store ptr %i.ft, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5415
  store i64 %i.fb, ptr %i.ak, align 8, !dbg !5415
  br label %bb.ax, !dbg !5415

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit261: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i257
  store i64 %i.fr, ptr %i.v, align 8, !dbg !5415
  store ptr %i.ft, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !5415
  br label %bb.az, !dbg !5416

bb.bk:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366: ; preds = %bb.ay, %bb.ax, %bb.bk, %.body265
  %.pn209.ph.ph = phi { ptr, i32 } [ %i.ga, %bb.bk ], [ %.pn205, %bb.ay ], [ %.pn205, %bb.ax ], [ %.pn201, %.body265 ] ; 6 uses
  %.sroa.056.0.ph.ph = phi i1 [ false, %bb.bk ], [ true, %bb.ay ], [ true, %bb.ax ], [ false, %.body265 ]
  %.sroa.055.1.ph.ph = phi i1 [ true, %bb.bk ], [ false, %bb.ay ], [ false, %bb.ax ], [ true, %.body265 ]
    #dbg_value(ptr poison, !1172, !DIExpression(), !5417)
    #dbg_value(ptr poison, !1182, !DIExpression(), !5419)
    #dbg_value(ptr poison, !1192, !DIExpression(), !5421)
    #dbg_value(ptr %i.ev, !1195, !DIExpression(), !5423)
    #dbg_value(i64 8, !1206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5424)
    #dbg_value(i64 80, !1206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5424)
    #dbg_value(ptr poison, !976, !DIExpression(), !5425)
    #dbg_value(ptr poison, !985, !DIExpression(), !5427)
    #dbg_value(ptr %i.ev, !981, !DIExpression(), !5425)
    #dbg_value(ptr %i.ev, !990, !DIExpression(), !5427)
    #dbg_value(ptr %i.ev, !994, !DIExpression(), !5429)
    #dbg_value(ptr %i.ev, !1003, !DIExpression(), !5431)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5425)
    #dbg_value(i64 8, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5427)
    #dbg_value(i64 8, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5429)
    #dbg_value(i64 8, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5431)
    #dbg_value(i64 80, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5425)
    #dbg_value(i64 80, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5427)
    #dbg_value(i64 80, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5429)
    #dbg_value(i64 80, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5431)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5433
  %i.gb = load i64, ptr %i.s, align 8, !dbg !5434, !range !1453, !noundef !15 ; 3 uses
  %i.gc = icmp ne i64 %i.gb, 4, !dbg !5434
  call void @llvm.assume(i1 %i.gc), !dbg !5434
  %i.gd = add nsw i64 %i.gb, -2, !dbg !5434
  %.inv212 = icmp samesign ult i64 %i.gb, 2, !dbg !5434
  %i.ge = select i1 %.inv212, i64 2, i64 %i.gd, !dbg !5434
  switch i64 %i.ge, label %bb.ei [
    i64 1, label %bb.ej
    i64 6, label %bb.ek
  ], !dbg !5434

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %bb.eh
    #dbg_value(ptr poison, !1172, !DIExpression(), !5417)
    #dbg_value(ptr poison, !1182, !DIExpression(), !5419)
    #dbg_value(ptr poison, !1192, !DIExpression(), !5421)
    #dbg_value(ptr %i.ev, !1195, !DIExpression(), !5423)
    #dbg_value(i64 8, !1206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5424)
    #dbg_value(i64 80, !1206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5424)
    #dbg_value(ptr poison, !976, !DIExpression(), !5425)
    #dbg_value(ptr poison, !985, !DIExpression(), !5427)
    #dbg_value(ptr %i.ev, !981, !DIExpression(), !5425)
    #dbg_value(ptr %i.ev, !990, !DIExpression(), !5427)
    #dbg_value(ptr %i.ev, !994, !DIExpression(), !5429)
    #dbg_value(ptr %i.ev, !1003, !DIExpression(), !5431)
    #dbg_value(i64 8, !982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5425)
    #dbg_value(i64 8, !991, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5427)
    #dbg_value(i64 8, !1000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5429)
    #dbg_value(i64 8, !1006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5431)
    #dbg_value(i64 80, !982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5425)
    #dbg_value(i64 80, !991, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5427)
    #dbg_value(i64 80, !1000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5429)
    #dbg_value(i64 80, !1006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5431)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5433
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, !dbg !5434

bb.bl:                                            ; preds = %bb.az, %bb.ba, %bb.aq, %bb.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef 80, i64 noundef 8) #23, !dbg !5435
  %i.gf = load i64, ptr %i.s, align 8, !dbg !5434, !range !1453, !noundef !15 ; 3 uses
  %i.gg = icmp ne i64 %i.gf, 4, !dbg !5434
  call void @llvm.assume(i1 %i.gg), !dbg !5434
  %i.gh = add nsw i64 %i.gf, -2, !dbg !5434
  %.inv207 = icmp samesign ult i64 %i.gf, 2, !dbg !5434
  %i.gi = select i1 %.inv207, i64 2, i64 %i.gh, !dbg !5434
  switch i64 %i.gi, label %bb.cg [
    i64 1, label %bb.cf
    i64 6, label %bb.cf
  ], !dbg !5434

bb.bm:                                            ; preds = %.body265, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread360, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs3roNzt6HBWW_12regex_syntax.exit.thread335, %bb.en, %bb.ei, %bb.eh, %bb.du, %bb.dt
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !5442

.body:                                            ; preds = %bb.e, %bb.bm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !5442
  unreachable, !dbg !5442

.body265:                                         ; preds = %bb.dl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386, %bb.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_.exit, %bb.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread384, %bb.du
  %.pn201 = phi { ptr, i32 } [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread384 ], [ %i.ix, %bb.dl ], [ %.pn, %bb.du ], [ %i.gk, %bb.bn ], [ %.pn.i.i, %bb.bw ], [ %i.gp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_.exit ], [ %eh.lpad-body295.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit273.thread386 ]
    #dbg_value(ptr %i.q, !2382, !DIExpression(), !5443)
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShEECs3roNzt6HBWW_12regex_syntax.exit.thread366 unwind label %bb.bm, !dbg !5445

bb.bn:                                            ; preds = %bb.dc
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body265

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262: ; preds = %bb.at, %bb.db
  %i.gl = phi ptr [ %i.ih, %bb.db ], [ %.sroa.4177.0.copyload, %bb.at ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5446), !dbg !4253
    #dbg_value(ptr %i.gl, !2376, !DIExpression(), !5449)
    #dbg_value(ptr %i.gl, !2378, !DIExpression(), !5450)
    #dbg_value(ptr %i.gl, !2397, !DIExpression(), !5451)
    #dbg_value(ptr %i.gl, !2406, !DIExpression(), !5453)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48, !dbg !5455
  store ptr %i.gm, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !5456, !alias.scope !5446, !noalias !5457
  %.sroa.0319.0.copyload320 = load i64, ptr %i.gl, align 8, !dbg !5459, !noalias !5446 ; 2 uses
  %.sroa.7321.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8, !dbg !5459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321.0..sroa_idx322, i64 40, i1 false), !dbg !5459, !noalias !5446
  %.not189 = icmp eq i64 %.sroa.0319.0.copyload320, -1, !dbg !4253
  br i1 %.not189, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262.thread, label %bb.bo, !dbg !4253

bb.bo:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !5461
  store i64 %.sroa.0319.0.copyload320, ptr %i.p, align 8, !dbg !5461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7321, i64 40, i1 false), !dbg !5461
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0324), !dbg !5462
  call void @llvm.experimental.noalias.scope.decl(metadata !5463), !dbg !5466
    #dbg_declare(ptr %i.p, !1567, !DIExpression(), !5467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5469, !noalias !5470
    #dbg_value(ptr %i.p, !1570, !DIExpression(), !5472)
    #dbg_value(i64 2, !1576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5474)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 40, i1 false), !dbg !5475, !noalias !5476
  store i64 2, ptr %i.p, align 8, !dbg !5477, !alias.scope !5463, !noalias !5476
    #dbg_value(ptr %i.p, !1581, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !5478)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5480)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5482)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5480)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5482)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5480)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5482)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5480)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5482)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !5480)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 448, 32), !5482)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !5480)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 480, 32), !5482)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !5480)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 512, 32), !5482)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !5480)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 544, 32), !5482)
    #dbg_value(i32 0, !892, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !5480)
    #dbg_value(i32 0, !765, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !5482)
    #dbg_value(i8 1, !892, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !5480)
    #dbg_value(i8 1, !765, !DIExpression(DW_OP_LLVM_fragment, 608, 8), !5482)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !5480)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !5482)
    #dbg_value(i64 1, !892, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5480)
    #dbg_value(i64 1, !765, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5482)
    #dbg_value(i64 0, !892, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5480)
    #dbg_value(i64 0, !765, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !5482)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !5480)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 616, 8), !5482)
    #dbg_value(i8 0, !892, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !5480)
    #dbg_value(i8 0, !765, !DIExpression(DW_OP_LLVM_fragment, 624, 8), !5482)
    #dbg_value(i64 8, !781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5484)
    #dbg_value(i64 8, !803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5486)
    #dbg_value(i64 8, !831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5488)
    #dbg_value(i64 80, !781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5484)
    #dbg_value(i64 80, !803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5486)
    #dbg_value(i64 80, !831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5488)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !828, !DIExpression(), !5486)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !837, !DIExpression(), !5488)
    #dbg_value(i8 0, !838, !DIExpression(), !5488)
    #dbg_value(i64 8, !841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5490)
    #dbg_value(i64 8, !877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5492)
    #dbg_value(i64 80, !841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5490)
    #dbg_value(i64 80, !877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5492)
    #dbg_value(i1 false, !847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5490)
    #dbg_value(i64 80, !848, !DIExpression(), !5494)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !5495, !noalias !5496
  %i.gn = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 81) 80, i64 noundef range(i64 1, 9) 8) #23, !dbg !5499, !noalias !5496 ; 11 uses
  %i.go = icmp eq ptr %i.gn, null, !dbg !5500
  br i1 %i.go, label %bb.bp, label %bb.br, !dbg !5501, !prof !890

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #24
          to label %.noexc.i unwind label %bb.bq, !dbg !5502, !noalias !5470

.noexc.i:                                         ; preds = %bb.bp
  unreachable, !dbg !5502

bb.bq:                                            ; preds = %bb.bp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.b) #26
          to label %bb.by unwind label %bb.bx, !dbg !5503, !noalias !5470

bb.br:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.gn, !773, !DIExpression(), !5504)
  store i64 1, ptr %i.gn, align 8, !dbg !5505, !noalias !5470
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8, !dbg !5505
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !5505, !noalias !5470
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16, !dbg !5505
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !5505, !noalias !5470
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 24, !dbg !5505
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !5505, !noalias !5470
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 32, !dbg !5505
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !5505, !noalias !5470
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 40, !dbg !5505
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 76, !dbg !5505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.8.0..sroa_idx.i.i, i8 0, i64 36, i1 false), !dbg !5505, !noalias !5470
  store i8 1, ptr %.sroa.15.0..sroa_idx.i.i, align 4, !dbg !5505, !noalias !5470
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 77, !dbg !5505
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i, align 1, !dbg !5505, !noalias !5470
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 78, !dbg !5505
  store i8 0, ptr %.sroa.17.0..sroa_idx.i.i, align 2, !dbg !5505, !noalias !5470
    #dbg_value(ptr %i.gn, !1586, !DIExpression(), !5506)
end_hunk_0
begin_hunk_1_@_RNvNtCs3roNzt6HBWW_12regex_syntax3hir18lift_common_prefix:bb.a
  %i.ck = load ptr, ptr %i.az, align 8, !dbg !9387, !alias.scope !9275, !noalias !9271, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.ck, !9318, !DIExpression(), !9319)
  %i.cl = getelementptr inbounds nuw [48 x i8], ptr %i.ck, i64 %.sroa.9.0, !dbg !9394
    #dbg_value(ptr %i.cl, !9395, !DIExpression(), !9402)
    #dbg_value(ptr %i.ci, !9400, !DIExpression(), !9402)
    #dbg_value(ptr %i.g, !9292, !DIExpression(), !9404)
    #dbg_value(i64 %i.cd, !9401, !DIExpression(), !9402)
  %i.cm = mul nuw nsw i64 %i.cd, 48, !dbg !9406
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cl, i64 %i.cm, i1 false), !dbg !9406, !noalias !9364
  invoke void @_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3Hir6concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.ai unwind label %.loopexit, !dbg !9269

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9407
    #dbg_value(ptr %i.m, !3820, !DIExpression(), !9408)
    #dbg_value(ptr %i.m, !3833, !DIExpression(), !9410)
    #dbg_declare(ptr %i.h, !3826, !DIExpression(), !9412)
    #dbg_value(i64 48, !3842, !DIExpression(), !9413)
  %i.cn = load i64, ptr %i.ap, align 8, !dbg !9416, !alias.scope !9417, !noalias !9420, !noundef !15 ; 3 uses
    #dbg_value(i64 %i.cn, !3827, !DIExpression(), !9422)
    #dbg_value(i64 %i.cn, !3859, !DIExpression(), !9423)
    #dbg_value(ptr %i.m, !3850, !DIExpression(), !9425)
  %i.co = load i64, ptr %i.m, align 8, !dbg !9426, !range !2731, !alias.scope !9417, !noalias !9420, !noundef !15
  %i.cp = icmp eq i64 %i.cn, %i.co, !dbg !9427
  br i1 %i.cp, label %bb.aj, label %bb.am, !dbg !9427

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.am unwind label %bb.ak, !dbg !9428, !noalias !9420, !inline_history !3869

bb.ak:                                            ; preds = %bb.aj
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h) #26
          to label %.thread unwind label %bb.al, !dbg !9429, !inline_history !3869

bb.al:                                            ; preds = %bb.ak
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !9430, !inline_history !3869
  unreachable, !dbg !9430

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.cs = load ptr, ptr %i.ao, align 8, !dbg !9431, !alias.scope !9417, !noalias !9420, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.cs, !3862, !DIExpression(), !9423)
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %i.cn, !dbg !9435
    #dbg_value(ptr %i.ct, !3829, !DIExpression(), !9436)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !9437
  %i.cu = add i64 %i.cn, 1, !dbg !9438
  store i64 %i.cu, ptr %i.ap, align 8, !dbg !9438, !alias.scope !9417, !noalias !9420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9439
    #dbg_value(ptr %i.n, !9440, !DIExpression(), !9443)
    #dbg_value(ptr %i.n, !8641, !DIExpression(), !9445)
  %i.cv = load i64, ptr %i.an, align 8, !dbg !9447, !noundef !15 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, 192153584101141163, !dbg !9448
  call void @llvm.assume(i1 %i.cw), !dbg !9449
  %i.cx = icmp eq i64 %i.cv, 0, !dbg !9450
  br i1 %i.cx, label %bb.ar, label %bb.an, !dbg !9451

bb.an:                                            ; preds = %bb.am
    #dbg_value(ptr %i.j, !1071, !DIExpression(), !9452)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ap unwind label %bb.ao, !dbg !9454

bb.ao:                                            ; preds = %bb.an
  %i.cy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1076, !DIExpression(), !9455)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.aq, !dbg !9457

bb.ap:                                            ; preds = %bb.an
    #dbg_value(ptr %i.j, !1076, !DIExpression(), !9458)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit unwind label %bb.m, !dbg !9460

bb.aq:                                            ; preds = %bb.ao
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !9454
  unreachable, !dbg !9454

bb.ar:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !9461
    #dbg_value(ptr %i.n, !1071, !DIExpression(), !9462)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.at unwind label %bb.as, !dbg !9464

bb.as:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.n, !1076, !DIExpression(), !9465)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1j_.exit.i114 unwind label %bb.au, !dbg !9467

bb.at:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.n, !1076, !DIExpression(), !9468)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit118 unwind label %bb.av, !dbg !9470

bb.au:                                            ; preds = %bb.as
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !9464
  unreachable, !dbg !9464

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit: ; preds = %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9195
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7131), !dbg !9195
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7131), !dbg !8867
    #dbg_value(ptr %i.l, !2375, !DIExpression(), !9471)
    #dbg_value(i64 1, !2403, !DIExpression(), !9145)
    #dbg_value(ptr %i.l, !2365, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9472)
  %i.dc = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9474, !alias.scope !9475, !noalias !9151, !nonnull !15, !noundef !15
    #dbg_value(ptr poison, !2366, !DIExpression(), !9477)
  %i.dd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !9478, !alias.scope !9475, !noalias !9151, !nonnull !15, !noundef !15 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.dc, !dbg !9478
  br i1 %i.de, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit, !dbg !9103

bb.av:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1j_.exit.i114, !dbg !9370

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit118: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !9370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9479
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_.exit, !dbg !9371

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ak
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.cq, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %.body unwind label %bb.aa, !dbg !9371

bb.aw:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #26
          to label %.body unwind label %bb.aa, !dbg !9267

bb.ax:                                            ; preds = %bb.t, %.body
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bk, %bb.t ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #26
          to label %bb.ay unwind label %bb.aa, !dbg !9242

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #26
          to label %.critedge.thread unwind label %bb.aa, !dbg !9243

bb.az:                                            ; preds = %bb.k
    #dbg_value(ptr %.sroa.01.0, !8584, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9480)
    #dbg_value(ptr %.sroa.01.0, !8944, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9481)
    #dbg_value(ptr %.sroa.01.0, !8949, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9483)
    #dbg_value(ptr %.sroa.01.0, !8954, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9489
    #dbg_value(ptr %i.aa, !9041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9490)
    #dbg_value(ptr %i.aa, !9016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9492)
    #dbg_value(i64 %.sroa.9.0, !9041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9490)
    #dbg_value(i64 %.sroa.9.0, !9016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9492)
    #dbg_value(i64 %.sroa.9.0, !9025, !DIExpression(), !9495)
    #dbg_value(i64 %.sroa.9.0, !9043, !DIExpression(), !9496)
    #dbg_value(ptr %i.aa, !9027, !DIExpression(), !9499)
    #dbg_value(ptr %i.aa, !9046, !DIExpression(), !9496)
  %i.dh = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.sroa.9.0, !dbg !9500
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16, !dbg !9501
  %i.dj = load ptr, ptr %i.di, align 8, !dbg !9501, !nonnull !15, !noundef !15 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24, !dbg !9508
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !9508, !noundef !15
    #dbg_value(i64 %i.dl, !9031, !DIExpression(), !9509)
    #dbg_value(i64 %i.dl, !9043, !DIExpression(), !9513)
    #dbg_value(ptr %i.dj, !9041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9516)
    #dbg_value(ptr %i.dj, !9016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9517)
    #dbg_value(i64 %i.dl, !9041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9516)
    #dbg_value(i64 %i.dl, !9016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9517)
    #dbg_value(ptr %i.dj, !9033, !DIExpression(), !9518)
    #dbg_value(ptr %i.dj, !9046, !DIExpression(), !9513)
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %i.dl, !dbg !9519
    #dbg_value(ptr %i.aa, !9520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9529)
    #dbg_value(ptr %i.dh, !9520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9529)
    #dbg_value(ptr %i.dj, !9525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9529)
    #dbg_value(ptr %i.dm, !9525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9529)
    #dbg_value(ptr %i.aa, !9531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9536)
    #dbg_value(ptr %i.dh, !9531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9536)
    #dbg_value(ptr %i.dj, !9535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9536)
    #dbg_value(ptr %i.dm, !9535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9536)
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm)
          to label %bb.bb unwind label %.loopexit.split-lp158.loopexit, !dbg !9538

bb.ba:                                            ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9539
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !9540
  store i64 -1, ptr %0, align 8, !dbg !9539
  br label %bb.z, !dbg !9541

bb.bb:                                            ; preds = %bb.az
  %.sroa.0123.0.copyload = load ptr, ptr %i.o, align 8, !dbg !9543 ; 2 uses
    #dbg_value(ptr %.sroa.0123.0.copyload, !8687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9547)
    #dbg_value(ptr %.sroa.0123.0.copyload, !8646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9548)
  %.sroa.4125.0.copyload = load ptr, ptr %.sroa.4125.0..sroa_idx, align 8, !dbg !9543 ; 2 uses
    #dbg_value(ptr %.sroa.4125.0.copyload, !8687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9547)
    #dbg_value(ptr %.sroa.4125.0.copyload, !8646, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9548)
  %.sroa.5127.0.copyload = load i64, ptr %.sroa.5127.0..sroa_idx, align 8, !dbg !9543 ; 3 uses
    #dbg_value(i64 %.sroa.5127.0.copyload, !8687, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9547)
    #dbg_value(i64 %.sroa.5127.0.copyload, !8646, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9548)
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx128, align 8, !dbg !9543 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !8687, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9547)
    #dbg_value(i64 %.sroa.6.0.copyload, !8646, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9548)
    #dbg_value(i8 0, !8687, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !9547)
    #dbg_value(i8 0, !8646, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !9548)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9549
    #dbg_value(i64 0, !8676, !DIExpression(), !9548)
    #dbg_declare(ptr poison, !8677, !DIExpression(), !9550)
    #dbg_value(ptr undef, !8802, !DIExpression(), !8814)
    #dbg_value(i64 0, !8803, !DIExpression(), !8814)
    #dbg_declare(ptr poison, !8804, !DIExpression(), !9551)
    #dbg_value(ptr undef, !8805, !DIExpression(), !9552)
    #dbg_value(ptr undef, !8806, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value), !9553)
    #dbg_value(ptr undef, !8767, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(ptr undef, !8767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8813)
    #dbg_value(ptr undef, !8765, !DIExpression(), !8813)
    #dbg_value(i64 0, !8766, !DIExpression(), !8813)
    #dbg_value(i64 0, !8768, !DIExpression(), !9554)
    #dbg_value(ptr undef, !8724, !DIExpression(), !8812)
    #dbg_value(ptr undef, !8692, !DIExpression(), !8719)
  %i.do = icmp ult i64 %.sroa.5127.0.copyload, %.sroa.6.0.copyload, !dbg !9555
  br i1 %i.do, label %.lr.ph.i.i.i, label %.thread154, !dbg !9555

.lr.ph.i.i.i:                                     ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0123.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4125.0.copyload) ]
  %i.dp = sub nuw i64 %.sroa.6.0.copyload, %.sroa.5127.0.copyload, !dbg !9555 ; 2 uses
  br label %bb.bc, !dbg !9555

bb.bc:                                            ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dv, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i ] ; 2 uses
  %i.dq = phi i64 [ %.sroa.5127.0.copyload, %.lr.ph.i.i.i ], [ %i.du, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.01.025.i.i.i, !8768, !DIExpression(), !9554)
    #dbg_value(i64 %i.dq, !8717, !DIExpression(), !9556)
    #dbg_value(ptr poison, !9557, !DIExpression(), !9563)
    #dbg_value(i64 %i.dq, !9562, !DIExpression(), !9563)
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0123.0.copyload, i64 %i.dq, !dbg !9565
    #dbg_value(ptr poison, !9557, !DIExpression(), !9568)
    #dbg_value(i64 %i.dq, !9562, !DIExpression(), !9568)
  %i.ds = getelementptr inbounds nuw [48 x i8], ptr %.sroa.4125.0.copyload, i64 %i.dq, !dbg !9570
    #dbg_value(ptr %i.dr, !8769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9572)
    #dbg_value(ptr %i.ds, !8769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9572)
    #dbg_value(ptr %i.dr, !9573, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9586)
    #dbg_value(ptr %i.ds, !9573, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9586)
    #dbg_value(ptr poison, !9580, !DIExpression(DW_OP_deref), !9586)
    #dbg_value(ptr poison, !9582, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !9586)
    #dbg_value(i64 %.sroa.01.025.i.i.i, !9579, !DIExpression(), !9586)
    #dbg_value(ptr poison, !9588, !DIExpression(), !9599)
    #dbg_value(ptr poison, !9598, !DIExpression(), !9599)
    #dbg_value(ptr poison, !9594, !DIExpression(), !9601)
    #dbg_value(ptr poison, !9597, !DIExpression(), !9601)
    #dbg_value(ptr poison, !9602, !DIExpression(), !9614)
    #dbg_value(ptr poison, !9610, !DIExpression(), !9616)
    #dbg_value(ptr poison, !9617, !DIExpression(), !9626)
    #dbg_value(ptr poison, !9622, !DIExpression(), !9626)
  %i.dt = invoke fastcc noundef zeroext i1 @_RNvXsF_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ds) #31
          to label %.noexc120 unwind label %.loopexit157, !dbg !9628

.noexc120:                                        ; preds = %bb.bc
  br i1 %i.dt, label %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB1r_ENCNvB1T_18lift_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1V_.exit, !dbg !9629

_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i: ; preds = %.noexc120
  %i.du = add nuw i64 %i.dq, 1, !dbg !9630
    #dbg_value(i64 %.sroa.01.025.i.i.i, !9631, !DIExpression(), !9644)
    #dbg_value(ptr poison, !9638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9644)
    #dbg_value(ptr poison, !9638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9644)
    #dbg_value(ptr poison, !9646, !DIExpression(), !9654)
    #dbg_value(i64 %.sroa.01.025.i.i.i, !9652, !DIExpression(), !9654)
    #dbg_value(ptr poison, !9653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9654)
    #dbg_value(ptr poison, !9653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9654)
  %i.dv = add nuw i64 %.sroa.01.025.i.i.i, 1, !dbg !9656 ; 2 uses
    #dbg_value(i64 %i.dv, !8768, !DIExpression(), !9554)
    #dbg_value(ptr undef, !8724, !DIExpression(), !8812)
    #dbg_value(ptr undef, !8692, !DIExpression(), !8719)
  %exitcond.not.i.i.i = icmp eq i64 %i.dv, %i.dp, !dbg !9555
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB1r_ENCNvB1T_18lift_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1V_.exit, label %bb.bc, !dbg !9555

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB1r_ENCNvB1T_18lift_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1V_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i, %.noexc120
  %.sroa.0.1.i.i = phi i64 [ %.sroa.01.025.i.i.i, %.noexc120 ], [ %i.dp, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvB29_18lift_common_prefix0NCINvMB2U_B2R_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB4Y_EB3A_EB1i_5count0E0E0B2b_.exit.i.i.i ], !dbg !8814 ; 4 uses
    #dbg_value(i64 %.sroa.0.1.i.i, !8588, !DIExpression(), !9657)
    #dbg_value(i64 %.sroa.0.1.i.i, !8931, !DIExpression(), !8990)
    #dbg_value(i64 %.sroa.0.1.i.i, !8921, !DIExpression(), !8991)
    #dbg_value(i64 %.sroa.0.1.i.i, !8897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8911)
    #dbg_value(i64 %.sroa.0.1.i.i, !8910, !DIExpression(), !8911)
  %.not100 = icmp ugt i64 %.sroa.0.1.i.i, %.sroa.9.0, !dbg !9658
  br i1 %.not100, label %bb.be, label %bb.bd, !dbg !9658, !prof !9659

bb.bd:                                            ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB1r_ENCNvB1T_18lift_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1V_.exit
    #dbg_value(ptr %i.aa, !8571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8989)
    #dbg_value(ptr %i.aa, !8930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8990)
    #dbg_value(ptr %i.aa, !8922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8991)
    #dbg_value(ptr %i.aa, !8909, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8911)
    #dbg_value(i64 %.sroa.0.1.i.i, !8571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8989)
    #dbg_value(i64 %.sroa.0.1.i.i, !8930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8990)
    #dbg_value(i64 %.sroa.0.1.i.i, !8922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8991)
    #dbg_value(i64 %.sroa.0.1.i.i, !8909, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8911)
    #dbg_value(ptr %i.aa, !8992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9660)
    #dbg_value(i64 %.sroa.0.1.i.i, !8992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9660)
  %i.dw = icmp eq i64 %.sroa.0.1.i.i, 0, !dbg !9662
  br i1 %i.dw, label %.thread154, label %bb.i, !dbg !9663

bb.be:                                            ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEB1r_ENCNvB1T_18lift_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B35_5count0EB1V_.exit
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.1.i.i, i64 noundef %.sroa.9.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.d unwind label %.loopexit.split-lp158.loopexit.split-lp, !dbg !9664

.thread154:                                       ; preds = %bb.bb, %bb.bd
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9665
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !9666
  store i64 -1, ptr %0, align 8, !dbg !9665
  br label %bb.z, !dbg !9667

.critedge.thread:                                 ; preds = %.body104.thread, %bb.ay, %.loopexit.split-lp158
  %.pn101135 = phi { ptr, i32 } [ %lpad.phi161, %.loopexit.split-lp158 ], [ %.pn.pn.pn.ph, %bb.ay ], [ %eh.lpad-body105145, %.body104.thread ]
  resume { ptr, i32 } %.pn101135, !dbg !9246

.loopexit157:                                     ; preds = %bb.bc
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp158

.loopexit.split-lp158.loopexit:                   ; preds = %bb.az
  %lpad.loopexit162 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp158

.loopexit.split-lp158.loopexit.split-lp:          ; preds = %bb.be
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp158

.loopexit.split-lp158:                            ; preds = %.loopexit.split-lp158.loopexit, %.loopexit.split-lp158.loopexit.split-lp, %.loopexit157
  %lpad.phi161 = phi { ptr, i32 } [ %lpad.loopexit159, %.loopexit157 ], [ %lpad.loopexit162, %.loopexit.split-lp158.loopexit ], [ %lpad.loopexit.split-lp163, %.loopexit.split-lp158.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %.critedge.thread unwind label %bb.aa, !dbg !9244
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !9669 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !9691, !DIExpression(), !9693)
    #dbg_value(ptr %0, !9694, !DIExpression(), !9725)
    #dbg_value(ptr %0, !9727, !DIExpression(), !9733)
    #dbg_value(ptr %0, !9735, !DIExpression(), !9741)
    #dbg_value(ptr %0, !9743, !DIExpression(), !9749)
    #dbg_value(ptr %1, !9692, !DIExpression(), !9693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9726
    #dbg_value(ptr %0, !9751, !DIExpression(), !9758)
    #dbg_value(ptr %0, !9760, !DIExpression(), !9764)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9766
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9766, !nonnull !15, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9783
  %i.e = load i64, ptr %i.d, align 8, !dbg !9783, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9785
  store ptr %i.c, ptr %i.a, align 8, !dbg !9786
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9786
  store i64 %i.e, ptr %i.h, align 8, !dbg !9786
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9786
  store ptr %i.f, ptr %i.i, align 8, !dbg !9786
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9786
  store ptr %i.g, ptr %i.j, align 8, !dbg !9786
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !9786
  store ptr null, ptr %i.k, align 8, !dbg !9786
  %i.l = call noundef zeroext i1 @_RNvXs4_NtCs3roNzt6HBWW_12regex_syntax5errorINtB5_9FormatterNtNtB7_3hir9ErrorKindENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9788
  ret i1 %i.l, !dbg !9789
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_9ErrorKindNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !9790 {
switch.lookup:
    #dbg_value(ptr %0, !9795, !DIExpression(), !9799)
    #dbg_value(ptr %1, !9796, !DIExpression(), !9799)
  %i.a = load i8, ptr %0, align 1, !dbg !9800, !range !9801, !noundef !15 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64, !dbg !9802
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3hir9ErrorKindNtB6_7Display3fmtBA_, i64 %i.b, !dbg !9802
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !9802
  %switch.ext = zext i8 %switch.load to i64, !dbg !9802
  %i.c = zext nneg i8 %i.a to i64, !dbg !9802
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3hir9ErrorKindNtB6_7Display3fmtBA_.56, i64 %i.c, !dbg !9802
  %switch.load5 = load ptr, ptr %switch.gep4, align 8, !dbg !9802
    #dbg_value(ptr %switch.load5, !9797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9803)
    #dbg_value(i64 %switch.ext, !9797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9803)
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load5, i64 noundef %switch.ext), !dbg !9804
  ret i1 %i.d, !dbg !9805
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !9806 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !9812, !DIExpression(), !9814)
    #dbg_value(ptr %1, !9813, !DIExpression(), !9814)
  %i.b = load ptr, ptr %0, align 8, !dbg !9815, !nonnull !15, !align !1617, !noundef !15
    #dbg_value(ptr %i.b, !9816, !DIExpression(), !9823)
    #dbg_value(ptr %1, !9822, !DIExpression(), !9823)
end_hunk_1
begin_hunk_2_@_RNvXsc_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_17ClassUnicodeRangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  br label %bb.aj, !dbg !12064

bb.ai:                                            ; preds = %bb.ag
  store i8 %i.cn, ptr %.sroa.0126, align 4, !dbg !12069, !alias.scope !12058
  %.sroa.0126.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0126, i64 1, !dbg !12070
  store i8 %i.ck, ptr %.sroa.0126.1..sroa_idx, align 1, !dbg !12070, !alias.scope !12058
  %.sroa.0126.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0126, i64 2, !dbg !12071
  store i8 %i.cg, ptr %.sroa.0126.2..sroa_idx, align 2, !dbg !12071, !alias.scope !12058
  %.sroa.0126.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0126, i64 3, !dbg !12072
  store i8 %i.cc, ptr %.sroa.0126.3..sroa_idx, align 1, !dbg !12072, !alias.scope !12058
  br label %bb.aj, !dbg !12073

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.sroa.0.09.i110 = phi i64 [ 1, %bb.ae ], [ 2, %bb.af ], [ 3, %bb.ah ], [ 4, %bb.ai ] ; 4 uses
    #dbg_value(ptr undef, !11640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11656)
    #dbg_value(ptr undef, !11620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11632)
    #dbg_value(i64 %.sroa.0.09.i110, !11640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11656)
    #dbg_value(i64 %.sroa.0.09.i110, !11620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11632)
    #dbg_value(ptr undef, !11686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11691)
    #dbg_value(ptr undef, !11680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11690)
    #dbg_value(ptr undef, !11674, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11689)
    #dbg_value(ptr undef, !11657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.0.09.i110, !11686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11691)
    #dbg_value(i64 %.sroa.0.09.i110, !11680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11690)
    #dbg_value(i64 %.sroa.0.09.i110, !11674, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11689)
    #dbg_value(i64 %.sroa.0.09.i110, !11657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.0.09.i110, !11665, !DIExpression(), !12074)
    #dbg_value(i64 %.sroa.0.09.i110, !11761, !DIExpression(), !12075)
    #dbg_value(i64 %.sroa.0.09.i110, !11767, !DIExpression(), !12076)
    #dbg_value(i64 %.sroa.0.09.i110, !11704, !DIExpression(), !11707)
    #dbg_value(i64 %.sroa.0.09.i110, !11696, !DIExpression(), !11697)
    #dbg_value(i64 %.sroa.0.09.i110, !11773, !DIExpression(), !12077)
    #dbg_value(i64 %.sroa.0.09.i110, !11789, !DIExpression(), !11804)
    #dbg_value(i64 1, !11774, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12077)
    #dbg_value(i64 1, !11790, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11804)
    #dbg_value(i64 1, !11774, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12077)
    #dbg_value(i64 1, !11790, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12078
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.09.i110, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %bb.y, !dbg !12078

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load i64, ptr %i.a, align 8, !dbg !12078, !range !763, !noundef !15
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !12079
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12077
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !12077, !range !2306, !noundef !15 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12077 ; 2 uses
  br i1 %i.ct, label %bb.al, label %bb.am, !dbg !12079, !prof !890

bb.al:                                            ; preds = %bb.ak
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !12080
    #dbg_value(i64 %i.cv, !11781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12081)
    #dbg_value(i64 %i.cx, !11781, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12081)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cx) #24
          to label %bb.ao unwind label %bb.y, !dbg !12082

bb.am:                                            ; preds = %bb.ak
  %i.cy = load ptr, ptr %i.cw, align 8, !dbg !12083, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(i64 %i.cv, !11779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12084)
    #dbg_value(ptr %i.cy, !11779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12084)
    #dbg_value(ptr poison, !11788, !DIExpression(), !12085)
  %i.cz = icmp samesign ule i64 %.sroa.0.09.i110, %i.cv, !dbg !12086
    #dbg_value(i1 true, !11976, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12087)
  call void @llvm.assume(i1 %i.cz), !dbg !12089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12090
    #dbg_value(i64 %i.cv, !11983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(i64 %i.cv, !11667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12093)
    #dbg_value(ptr %i.cy, !11983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(ptr %i.cy, !11667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12093)
    #dbg_value(i64 0, !11983, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12091)
    #dbg_value(i64 0, !11667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12093)
    #dbg_value(ptr undef, !11702, !DIExpression(), !11707)
    #dbg_value(ptr undef, !11692, !DIExpression(), !11697)
    #dbg_value(ptr %i.cy, !11703, !DIExpression(), !11707)
    #dbg_value(ptr %i.cy, !11695, !DIExpression(), !11697)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cy, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0126, i64 %.sroa.0.09.i110, i1 false), !dbg !12094
    #dbg_value(i64 %.sroa.0.09.i110, !11667, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12093)
    #dbg_value(i64 %.sroa.0.09.i110, !11983, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12091)
  store i64 %i.cv, ptr %i.g, align 8, !dbg !12095
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12095
  store ptr %i.cy, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !12095
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12095
  store i64 %.sroa.0.09.i110, ptr %.sroa.615.0..sroa_idx, align 8, !dbg !12095
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0126), !dbg !12096
  br label %bb.an, !dbg !12097

bb.an:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3roNzt6HBWW_12regex_syntax.exit, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12098
  invoke void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 17)
          to label %bb.aq unwind label %bb.ap, !dbg !12099

bb.ao:                                            ; preds = %bb.al
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !12100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12022
  br label %bb.an, !dbg !12097

bb.ap:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #26
          to label %.body unwind label %bb.ay, !dbg !12101

bb.aq:                                            ; preds = %bb.an
  %i.db = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 5, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
          to label %bb.ar unwind label %bb.ap, !dbg !12102

bb.ar:                                            ; preds = %bb.aq
  %i.dc = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82)
          to label %bb.as unwind label %bb.ap, !dbg !12103

bb.as:                                            ; preds = %bb.ar
  %i.dd = invoke noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dc)
          to label %bb.at unwind label %bb.ap, !dbg !12104

bb.at:                                            ; preds = %bb.as
    #dbg_value(ptr %i.g, !1544, !DIExpression(), !12105)
    #dbg_value(ptr %i.g, !1131, !DIExpression(), !12107)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i unwind label %bb.au, !dbg !12109

bb.au:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !1135, !DIExpression(), !12110)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.av, !dbg !12112

bb.av:                                            ; preds = %bb.au
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12109
  unreachable, !dbg !12109

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i: ; preds = %bb.at
    #dbg_value(ptr %i.g, !1135, !DIExpression(), !12113)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit unwind label %bb.y, !dbg !12115

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs3roNzt6HBWW_12regex_syntax.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12101
    #dbg_value(ptr %i.j, !1544, !DIExpression(), !12116)
    #dbg_value(ptr %i.j, !1131, !DIExpression(), !12118)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit114 unwind label %bb.aw, !dbg !12120

bb.aw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.j, !1135, !DIExpression(), !12121)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ax, !dbg !12123

bb.ax:                                            ; preds = %bb.aw
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12120
  unreachable, !dbg !12120

common.resume:                                    ; preds = %.body, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %i.dg, %bb.aw ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !11742

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit114: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax.exit
    #dbg_value(ptr %i.j, !1135, !DIExpression(), !12124)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !dbg !12126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12019
  ret i1 %i.dd, !dbg !12127

bb.ay:                                            ; preds = %bb.ap, %.body
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !12128
  unreachable, !dbg !12128
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsd_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_17ClassUnicodeRangeNtNtB5_8interval8Interval16case_fold_simple(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !12129 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
    #dbg_value(ptr poison, !12209, !DIExpression(), !12232)
  %i.b = alloca [12 x i8], align 4                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr %0, !12134, !DIExpression(), !12235)
    #dbg_value(ptr %1, !12135, !DIExpression(), !12235)
    #dbg_value(ptr %1, !12236, !DIExpression(), !12243)
    #dbg_declare(ptr %i.c, !12136, !DIExpression(), !12245)
    #dbg_declare(ptr %i.b, !12175, !DIExpression(), !12246)
    #dbg_declare(ptr poison, !12247, !DIExpression(), !12284)
    #dbg_value(i64 1, !12307, !DIExpression(), !12314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12316
    #dbg_value(ptr @3023, !12170, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12317)
    #dbg_value(i64 2938, !12170, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12317)
    #dbg_value(i64 0, !12170, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12317)
    #dbg_value(i32 -1, !12170, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !12317)
  store ptr @3023, ptr %i.c, align 8, !dbg !12318
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12318
  store i64 2938, ptr %.sroa.427.0..sroa_idx, align 8, !dbg !12318
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12318
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8, !dbg !12318
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !12318
  store i32 -1, ptr %.sroa.629.0..sroa_idx, align 8, !dbg !12318
  %i.d = load i32, ptr %0, align 4, !dbg !12319, !range !3663, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12320
  %i.f = load i32, ptr %i.e, align 4, !dbg !12320, !range !3663, !noundef !15 ; 2 uses
  %i.g = call noundef zeroext i1 @_RNvMs2_NtCs3roNzt6HBWW_12regex_syntax7unicodeNtB5_16SimpleCaseFolder8overlaps(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, i32 noundef %i.d, i32 noundef %i.f), !dbg !12321
  br i1 %i.g, label %.lr.ph71, label %bb.b, !dbg !12322

.lr.ph71:                                         ; preds = %bb.a
    #dbg_value(i32 %i.d, !12172, !DIExpression(), !12323)
    #dbg_value(i32 %i.f, !12174, !DIExpression(), !12323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12324
  store i32 %i.d, ptr %i.b, align 4, !dbg !12324
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !12324 ; 2 uses
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx, align 4, !dbg !12324
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12324 ; 3 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx, align 4, !dbg !12324
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
    #dbg_value(ptr %i.b, !12303, !DIExpression(), !12325)
    #dbg_value(ptr %i.b, !12290, !DIExpression(), !12326)
    #dbg_value(ptr %i.b, !12277, !DIExpression(), !12327)
    #dbg_value(ptr %i.h, !12291, !DIExpression(), !12326)
    #dbg_value(ptr %i.h, !12278, !DIExpression(), !12327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !noalias !12328
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c, !dbg !12332

bb.b:                                             ; preds = %bb.a, %.loopexit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12376
  ret i1 false, !dbg !12377

.loopexit:                                        ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, %bb.d
    #dbg_value(ptr %i.b, !12303, !DIExpression(), !12325)
    #dbg_value(ptr %i.b, !12290, !DIExpression(), !12326)
    #dbg_value(ptr %i.b, !12277, !DIExpression(), !12327)
    #dbg_value(ptr %i.h, !12291, !DIExpression(), !12326)
    #dbg_value(ptr %i.h, !12278, !DIExpression(), !12327)
  call void @llvm.experimental.noalias.scope.decl(metadata !12378), !dbg !12380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !noalias !12381
    #dbg_value(ptr %i.b, !12344, !DIExpression(), !12382)
    #dbg_value(ptr %i.b, !12339, !DIExpression(), !12383)
    #dbg_declare(ptr poison, !12345, !DIExpression(), !12384)
    #dbg_declare(ptr %i.a, !12346, !DIExpression(), !12385)
    #dbg_declare(ptr poison, !12347, !DIExpression(), !12386)
  %i.k = load i8, ptr %.sroa.3.0..sroa_idx, align 4, !dbg !12332, !range !4870, !alias.scope !12378, !noalias !12387, !noundef !15
  %i.l = trunc nuw i8 %i.k to i1, !dbg !12332
  br i1 %i.l, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread, label %bb.c, !dbg !12332

bb.c:                                             ; preds = %.lr.ph71, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !12388), !dbg !12380
  call void @llvm.experimental.noalias.scope.decl(metadata !12390), !dbg !12393
  call void @llvm.experimental.noalias.scope.decl(metadata !12394), !dbg !12393
    #dbg_value(ptr %i.b, !12396, !DIExpression(), !12401)
    #dbg_value(ptr %.sroa.2.0..sroa_idx, !12400, !DIExpression(), !12401)
  %i.m = load i32, ptr %i.b, align 4, !dbg !12403, !alias.scope !12404, !noalias !12405, !noundef !15 ; 3 uses
  %i.n = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !dbg !12406, !alias.scope !12407, !noalias !12408, !noundef !15 ; 4 uses
  %.not14.i = icmp ugt i32 %i.m, %i.n, !dbg !12403
  br i1 %.not14.i, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread, label %.preheader.i.preheader, !dbg !12409

.preheader.i.preheader:                           ; preds = %bb.c
    #dbg_value(ptr %i.b, !12410, !DIExpression(), !12414)
    #dbg_value(ptr %.sroa.2.0..sroa_idx, !12413, !DIExpression(), !12414)
  %exitcond.not.i78 = icmp eq i32 %i.m, %i.n, !dbg !12416
  br i1 %exitcond.not.i78, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit, label %.lr.ph79, !dbg !12417

.preheader.i:                                     ; preds = %.lr.ph79
    #dbg_value(ptr %i.b, !12410, !DIExpression(), !12414)
    #dbg_value(ptr %.sroa.2.0..sroa_idx, !12413, !DIExpression(), !12414)
  %exitcond.not.i = icmp eq i32 %i.p, %i.n, !dbg !12416
  br i1 %exitcond.not.i, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.loopexit, label %.lr.ph79, !dbg !12417

.lr.ph79:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %i.o = phi i32 [ %i.p, %.preheader.i ], [ %i.m, %.preheader.i.preheader ] ; 2 uses
    #dbg_value(i32 %i.o, !12418, !DIExpression(), !12425)
    #dbg_value(i32 %i.o, !12427, !DIExpression(), !12434)
    #dbg_value(i64 1, !12424, !DIExpression(), !12425)
    #dbg_value(i32 1, !12433, !DIExpression(), !12434)
  %i.p = add i32 %i.o, 1, !dbg !12436             ; 4 uses
    #dbg_value(i32 %i.p, !12349, !DIExpression(), !12437)
    #dbg_value(i32 %i.p, !12438, !DIExpression(), !12445)
    #dbg_value(ptr %i.b, !12444, !DIExpression(), !12447)
    #dbg_value(i32 %i.o, !12351, !DIExpression(), !12448)
    #dbg_value(ptr %i.a, !12449, !DIExpression(DW_OP_deref), !12461)
    #dbg_declare(ptr poison, !12458, !DIExpression(), !12463)
    #dbg_value(i32 %i.o, !12455, !DIExpression(), !12461)
  %i.q = call noundef range(i32 -1, 1114112) i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNvNtBb_4char8from_u32INtB7_5FnMutTmEE8call_mutCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.o), !dbg !12464, !noalias !12388 ; 2 uses
  %.not12.i = icmp eq i32 %i.q, -1, !dbg !12465
  br i1 %.not12.i, label %.preheader.i, label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread65, !dbg !12465

_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread65: ; preds = %.lr.ph79
  store i32 %i.p, ptr %i.b, align 4, !dbg !12466, !alias.scope !12388, !noalias !12387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12467
    #dbg_value(i32 %i.q, !12468, !DIExpression(), !12477)
  br label %bb.d, !dbg !12479

_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12467
    #dbg_value(i32 -1, !12468, !DIExpression(), !12477)
  br label %.loopexit69, !dbg !12479

_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.loopexit: ; preds = %.preheader.i
  store i32 %i.p, ptr %i.b, align 4, !dbg !12466, !alias.scope !12388, !noalias !12387
  br label %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit, !dbg !12480

_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit: ; preds = %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.loopexit, %.preheader.i.preheader
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 4, !dbg !12480, !alias.scope !12388, !noalias !12387
    #dbg_value(ptr %i.a, !12449, !DIExpression(DW_OP_deref), !12481)
    #dbg_declare(ptr poison, !12458, !DIExpression(), !12483)
    #dbg_value(i32 %i.n, !12455, !DIExpression(), !12481)
  %i.r = call noundef range(i32 -1, 1114112) i32 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNvNtBb_4char8from_u32INtB7_5FnMutTmEE8call_mutCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.n), !dbg !12484, !noalias !12388 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12467
    #dbg_value(i32 %i.r, !12468, !DIExpression(), !12477)
  %.not = icmp eq i32 %i.r, -1, !dbg !12485
  br i1 %.not, label %.loopexit69, label %bb.d, !dbg !12479

bb.d:                                             ; preds = %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread65, %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit
  %.sroa.0.0.i68 = phi i32 [ %i.q, %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread65 ], [ %i.r, %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit ]
    #dbg_value(i32 %.sroa.0.0.i68, !12195, !DIExpression(), !12486)
  %i.s = call { ptr, i64 } @_RNvMs2_NtCs3roNzt6HBWW_12regex_syntax7unicodeNtB5_16SimpleCaseFolder7mapping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %.sroa.0.0.i68), !dbg !12487 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0, !dbg !12487 ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1, !dbg !12487 ; 2 uses
    #dbg_value(ptr %i.t, !12488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12494)
    #dbg_value(ptr %i.t, !12496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12499)
    #dbg_value(ptr %i.t, !12501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12511)
    #dbg_value(i64 %i.u, !12488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12494)
    #dbg_value(i64 %i.u, !12496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12499)
    #dbg_value(i64 %i.u, !12501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12511)
    #dbg_value(i64 %i.u, !12505, !DIExpression(), !12513)
    #dbg_value(i64 %i.u, !12514, !DIExpression(), !12518)
    #dbg_value(ptr %i.t, !12507, !DIExpression(), !12520)
    #dbg_value(ptr %i.t, !12521, !DIExpression(), !12527)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ], !dbg !12529
    #dbg_value(ptr %i.t, !12517, !DIExpression(), !12518)
  %.idx = shl nuw nsw i64 %i.u, 2, !dbg !12530
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx, !dbg !12530
    #dbg_value(ptr %i.t, !12197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12531)
    #dbg_value(ptr %i.v, !12197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12531)
    #dbg_value(ptr undef, !12209, !DIExpression(), !12232)
    #dbg_value(ptr %i.t, !12226, !DIExpression(), !12532)
    #dbg_value(ptr %i.t, !12313, !DIExpression(), !12314)
    #dbg_value(ptr %i.v, !12228, !DIExpression(), !12533)
    #dbg_value(ptr poison, !12534, !DIExpression(), !12541)
    #dbg_value(ptr poison, !12540, !DIExpression(), !12543)
  %i.w = icmp eq i64 %i.u, 0, !dbg !12544
  br i1 %i.w, label %.loopexit, label %.lr.ph.preheader, !dbg !12542

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load i64, ptr %i.i, align 8, !dbg !12545, !alias.scope !12559
  br label %.lr.ph, !dbg !12562

.loopexit69:                                      ; preds = %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit, %_RINvXsc_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivemENtB6_26RangeInclusiveIteratorImpl13spec_try_folduNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkmcQNvNtBa_4char8from_u32E0INtNtBJ_12control_flow11ControlFlowcEECs3roNzt6HBWW_12regex_syntax.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12563
  br label %bb.b, !dbg !12377

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit
  %i.x = phi i64 [ %i.af, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit ], [ %.pre, %.lr.ph.preheader ], !dbg !12545 ; 3 uses
  %.sroa.05.070 = phi ptr [ %i.y, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
    #dbg_value(ptr %.sroa.05.070, !12197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12531)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.070, i64 4, !dbg !12564 ; 2 uses
    #dbg_value(ptr %i.y, !12197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12531)
  %i.z = load i32, ptr %.sroa.05.070, align 4, !dbg !12565, !range !3663, !noundef !15 ; 2 uses
    #dbg_value(i32 %i.z, !12207, !DIExpression(), !12566)
    #dbg_value(i32 %i.z, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12243)
    #dbg_value(i32 %i.z, !12242, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12243)
    #dbg_value(ptr %1, !12552, !DIExpression(), !12567)
    #dbg_value(ptr %1, !12568, !DIExpression(), !12574)
    #dbg_value(i32 %i.z, !12553, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12567)
    #dbg_value(i32 %i.z, !12553, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12567)
    #dbg_value(i64 8, !12576, !DIExpression(), !12580)
    #dbg_value(i64 %i.x, !12554, !DIExpression(), !12589)
    #dbg_value(i64 %i.x, !12590, !DIExpression(), !12594)
    #dbg_value(ptr %1, !12587, !DIExpression(), !12596)
  %i.aa = load i64, ptr %1, align 8, !dbg !12597, !range !2731, !alias.scope !12559, !noundef !15
  %i.ab = icmp eq i64 %i.x, %i.aa, !dbg !12562
  br i1 %i.ab, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !12562

bb.e:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29, !dbg !12598
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !12599

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit: ; preds = %.lr.ph, %bb.e
  %i.ac = load ptr, ptr %i.j, align 8, !dbg !12600, !alias.scope !12559, !nonnull !15, !noundef !15
    #dbg_value(ptr %i.ac, !12593, !DIExpression(), !12594)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.x, !dbg !12607 ; 2 uses
    #dbg_value(ptr %i.ad, !12556, !DIExpression(), !12608)
    #dbg_value(ptr %i.ad, !12609, !DIExpression(), !12615)
    #dbg_value(i32 %i.z, !12614, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12615)
    #dbg_value(i32 %i.z, !12614, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12615)
  store i32 %i.z, ptr %i.ad, align 4, !dbg !12617
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4, !dbg !12617
  store i32 %i.z, ptr %i.ae, align 4, !dbg !12617
  %i.af = add i64 %i.x, 1, !dbg !12618            ; 2 uses
end_hunk_2
