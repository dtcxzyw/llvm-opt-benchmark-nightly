Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr:bb.a
    #dbg_value(ptr %0, !14455, !DIExpression(), !14549)
    #dbg_value(ptr %0, !14459, !DIExpression(), !14552)
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15315
  %i.pe = load i64, ptr %i.pd, align 8, !dbg !15315, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.pe, !13218, !DIExpression(), !14553)
  %i.pf = icmp ult i64 %i.pe, 164703072086692426, !dbg !15316
  call void @llvm.assume(i1 %i.pf), !dbg !15317
    #dbg_value(ptr %0, !14524, !DIExpression(), !14554)
    #dbg_value(ptr %0, !14555, !DIExpression(), !14558)
    #dbg_value(ptr %0, !14559, !DIExpression(), !14562)
    #dbg_value(ptr %0, !14563, !DIExpression(), !14566)
    #dbg_value(ptr poison, !14529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(ptr poison, !14535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
    #dbg_value(i64 %i.pe, !14529, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14545)
    #dbg_value(i64 %i.pe, !14535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14547)
  %i.pg = icmp ult i64 %.sroa.521.0, %i.pe, !dbg !15318
  br i1 %i.pg, label %bb.em, label %.invoke, !dbg !15318, !prof !3672

bb.el:                                            ; preds = %bb.en, %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !15319
  %i.ph = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !15319
  store i64 %i.ow, ptr %i.ph, align 8, !dbg !15319
  store i8 25, ptr %i.au, align 8, !dbg !15319
  %i.pi = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e)
          to label %bb.eo unwind label %.thread974.thread1102, !dbg !15320 ; 0 uses

bb.em:                                            ; preds = %bb.ek
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15321
  %i.pk = load ptr, ptr %i.pj, align 8, !dbg !15321, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.pk, !14529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14545)
    #dbg_value(ptr %i.pk, !14535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14547)
  %i.pl = getelementptr inbounds nuw [56 x i8], ptr %i.pk, i64 %.sroa.521.0, !dbg !15322 ; 2 uses
  %i.pm = load i8, ptr %i.pl, align 8, !dbg !15323, !range !3235, !noundef !1394
  %i.pn = icmp eq i8 %i.pm, 26, !dbg !15324
  br i1 %i.pn, label %bb.en, label %.invoke, !dbg !15324, !prof !3672

.invoke:                                          ; preds = %bb.ep, %bb.eo, %bb.em, %bb.ek
  %i.po = phi ptr [ @19, %bb.em ], [ @19, %bb.ek ], [ @20, %bb.eo ], [ @20, %bb.ep ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.po) #32
          to label %.cont unwind label %.thread974.thread1102, !dbg !14540

.cont:                                            ; preds = %.invoke
  unreachable

bb.en:                                            ; preds = %bb.em
    #dbg_value(ptr %i.pl, !13219, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14572)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pl, i64 8, !dbg !15325
  store i64 %i.pe, ptr %i.pp, align 8, !dbg !15325
  br label %bb.el, !dbg !15326

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !15327
    #dbg_value(ptr %0, !14455, !DIExpression(), !14574)
    #dbg_value(ptr %0, !14459, !DIExpression(), !14577)
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15328
  %i.pr = load i64, ptr %i.pq, align 8, !dbg !15328, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.pr, !13220, !DIExpression(), !14578)
  %i.ps = icmp ult i64 %i.pr, 164703072086692426, !dbg !15329
  call void @llvm.assume(i1 %i.ps), !dbg !15330
    #dbg_value(ptr %0, !14524, !DIExpression(), !14579)
    #dbg_value(ptr %0, !14555, !DIExpression(), !14581)
    #dbg_value(ptr %0, !14559, !DIExpression(), !14584)
    #dbg_value(ptr %0, !14563, !DIExpression(), !14587)
    #dbg_value(ptr poison, !14529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14533)
    #dbg_value(ptr poison, !14535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14539)
    #dbg_value(i64 %i.pr, !14529, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14533)
    #dbg_value(i64 %i.pr, !14535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14539)
  %i.pt = icmp samesign ugt i64 %i.pr, %i.ow, !dbg !15331
  br i1 %i.pt, label %bb.ep, label %.invoke, !dbg !15331, !prof !3672

bb.ep:                                            ; preds = %bb.eo
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15332
  %i.pv = load ptr, ptr %i.pu, align 8, !dbg !15332, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.pv, !14529, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14533)
    #dbg_value(ptr %i.pv, !14535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14539)
  %i.pw = getelementptr inbounds nuw [56 x i8], ptr %i.pv, i64 %i.ow, !dbg !15333 ; 2 uses
  %i.px = load i8, ptr %i.pw, align 8, !dbg !15334, !range !3235, !noundef !1394
  %i.py = icmp eq i8 %i.px, 33, !dbg !15335
  br i1 %i.py, label %bb.eq, label %.invoke, !dbg !15335, !prof !3672

bb.eq:                                            ; preds = %bb.ep
    #dbg_value(ptr %i.pw, !13221, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14594)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 8, !dbg !15336
  store i64 %i.pr, ptr %i.pz, align 8, !dbg !15336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !15337
  store i8 37, ptr %i.at, align 8, !dbg !15337
  %i.qa = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e)
          to label %bb.er unwind label %.thread974.thread1102, !dbg !15338 ; 0 uses

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !15339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !15340
    #dbg_value(ptr %0, !13703, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14595)
    #dbg_value(ptr %0, !13705, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14596)
    #dbg_value(ptr %0, !14347, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14598)
    #dbg_value(ptr %0, !14599, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !14602)
  %i.qb = load i64, ptr %i.oh, align 8, !dbg !15341, !noundef !1394 ; 3 uses
  %i.qc = icmp eq i64 %i.qb, 0, !dbg !15341
  br i1 %i.qc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, label %bb.es, !dbg !15341

bb.es:                                            ; preds = %bb.er
  %i.qd = add nsw i64 %i.qb, -1, !dbg !15342      ; 3 uses
  store i64 %i.qd, ptr %i.oh, align 8, !dbg !15342
  %i.qe = load i64, ptr %i.og, align 8, !dbg !15343, !range !3688, !noundef !1394
    #dbg_value(i64 %i.qe, !14258, !DIExpression(), !14605)
  %i.qf = icmp samesign ult i64 %i.qd, %i.qe, !dbg !15344
    #dbg_value(i1 true, !14314, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14607)
  call void @llvm.assume(i1 %i.qf), !dbg !15345
  %i.qg = load ptr, ptr %i.oq, align 8, !dbg !15346, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.qg, !14614, !DIExpression(), !14618)
    #dbg_value(i64 %i.qd, !14615, !DIExpression(), !14618)
  %i.qh = icmp ult i64 %i.qb, 192153584101141164, !dbg !15347
  call void @llvm.assume(i1 %i.qh), !dbg !15348
  %i.qi = getelementptr inbounds nuw [48 x i8], ptr %i.qg, i64 %i.qd, !dbg !15349
    #dbg_value(ptr %i.qi, !14619, !DIExpression(), !14622)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.qi, i64 48, i1 false), !dbg !15350
  %.pr = load ptr, ptr %i.as, align 8, !dbg !15351, !alias.scope !14623
    #dbg_value(ptr %i.as, !4615, !DIExpression(), !12946)
  %i.qj = icmp eq ptr %.pr, null, !dbg !15351
  br i1 %i.qj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, label %bb.et, !dbg !15351

bb.et:                                            ; preds = %bb.es
    #dbg_value(ptr %i.as, !4583, !DIExpression(), !12948)
    #dbg_value(ptr %i.as, !4587, !DIExpression(), !12950)
    #dbg_value(ptr %i.as, !4594, !DIExpression(), !12952)
    #dbg_value(ptr %i.as, !4601, !DIExpression(), !12954)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit unwind label %.thread974.thread1102, !dbg !15352

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.er, %bb.es, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !15353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !15262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !15249
  br label %bb.q, !dbg !15354

.thread962:                                       ; preds = %bb.dx, %bb.eb, %bb.do
  %.pn569973 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp984, %bb.do ], [ %lpad.thr_comm.split-lp995, %bb.dx ], [ %lpad.thr_comm994, %bb.eb ]
  %.sroa.074.1970 = phi i1 [ true, %bb.do ], [ false, %bb.dx ], [ false, %bb.eb ]
  %.sroa.075.1969 = phi i1 [ %.sroa.075.2.ph, %bb.do ], [ false, %bb.dx ], [ false, %bb.eb ]
    #dbg_value(ptr %i.bg, !4583, !DIExpression(), !12956)
    #dbg_value(ptr %i.bg, !4587, !DIExpression(), !12958)
    #dbg_value(ptr %i.bg, !4594, !DIExpression(), !12960)
    #dbg_value(ptr %i.bg, !4601, !DIExpression(), !12962)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.x, !dbg !15355

bb.eu:                                            ; preds = %.thread974.thread1102, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit
  %.pn569.pn959 = phi { ptr, i32 } [ %.pn569.pn960, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit ], [ %lpad.thr_comm1100, %.thread974.thread1102 ] ; 2 uses
  %.sroa.073.0957 = phi i1 [ %.sroa.073.0958, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit ], [ %.not568.not, %.thread974.thread1102 ]
  %.sroa.074.0955 = phi i1 [ %.sroa.074.0956, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit ], [ %.not567, %.thread974.thread1102 ]
  %.sroa.075.0953 = phi i1 [ %.sroa.075.0954, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit ], [ false, %.thread974.thread1102 ]
  %.sroa.076.0951 = phi i1 [ %.sroa.076.0952, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit ], [ false, %.thread974.thread1102 ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bl, i64 216, !dbg !15249 ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 8, !dbg !15249, !range !2589, !noundef !1394
  %i.qm = icmp ne i64 %i.ql, -1, !dbg !15249
  %or.cond7 = and i1 %.sroa.074.0955, %i.qm, !dbg !15249
  br i1 %or.cond7, label %bb.ew, label %bb.ev, !dbg !15249

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.dv, %.thread974, %bb.dh, %bb.dk, %.thread962
  %.pn569.pn960 = phi { ptr, i32 } [ %.pn569973, %.thread962 ], [ %lpad.thr_comm.split-lp1101, %.thread974 ], [ %i.ng, %bb.dh ], [ %i.nr, %bb.dk ], [ %i.ol, %bb.dv ]
  %.sroa.073.0958 = phi i1 [ true, %.thread962 ], [ %.sroa.073.2.ph.ph1099, %.thread974 ], [ true, %bb.dh ], [ true, %bb.dk ], [ true, %bb.dv ]
  %.sroa.074.0956 = phi i1 [ %.sroa.074.1970, %.thread962 ], [ %.not567, %.thread974 ], [ true, %bb.dh ], [ true, %bb.dk ], [ %.not567, %bb.dv ]
  %.sroa.075.0954 = phi i1 [ %.sroa.075.1969, %.thread962 ], [ false, %.thread974 ], [ true, %bb.dh ], [ true, %bb.dk ], [ false, %bb.dv ]
  %.sroa.076.0952 = phi i1 [ false, %.thread962 ], [ false, %.thread974 ], [ true, %bb.dh ], [ false, %bb.dk ], [ false, %bb.dv ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bl) #30
          to label %bb.eu unwind label %bb.x, !dbg !15249

bb.ev:                                            ; preds = %bb.ew, %bb.eu
  br i1 %.sroa.075.0953, label %bb.ey, label %bb.ex, !dbg !15249

bb.ew:                                            ; preds = %bb.eu
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qk) #30
          to label %bb.ev unwind label %bb.x, !dbg !15249

bb.ex:                                            ; preds = %bb.ey, %bb.ev
  br i1 %.sroa.076.0951, label %bb.fa, label %bb.ez, !dbg !15249

bb.ey:                                            ; preds = %bb.ev
  %i.qn = getelementptr inbounds nuw i8, ptr %i.bl, i64 192, !dbg !15249
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qn) #30
          to label %bb.ex unwind label %bb.x, !dbg !15249

bb.ez:                                            ; preds = %bb.fa, %bb.ex
  %i.qo = getelementptr inbounds nuw i8, ptr %i.bl, i64 128, !dbg !15249 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !dbg !15249, !range !2737, !noundef !1394
  %i.qq = icmp ne i64 %i.qp, -1, !dbg !15249
  %or.cond9 = and i1 %.sroa.073.0957, %i.qq, !dbg !15249
  br i1 %or.cond9, label %bb.fb, label %common.resume, !dbg !15249

bb.fa:                                            ; preds = %bb.ex
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bl, i64 64, !dbg !15249
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.qr) #30
          to label %bb.ez unwind label %bb.x, !dbg !15249

bb.fb:                                            ; preds = %bb.ez
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.qo) #30
          to label %common.resume unwind label %bb.x, !dbg !15249

.thread1018:                                      ; preds = %bb.fk, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, %bb.fj, %bb.fh, %bb.m, %bb.ff, %bb.fc
  %.sroa.068.1.ph = phi i1 [ true, %bb.fc ], [ true, %bb.ff ], [ true, %bb.m ], [ true, %bb.fh ], [ true, %bb.fj ], [ true, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ], [ false, %bb.fk ]
  %.sroa.060.1.ph = phi i8 [ 1, %bb.fc ], [ 1, %bb.ff ], [ 1, %bb.m ], [ 1, %bb.fh ], [ 1, %bb.fj ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread ], [ %.sroa.060.2, %bb.fk ]
  %lpad.thr_comm1016 = landingpad { ptr, i32 }
          cleanup
  %2 = trunc nuw i8 %.sroa.060.1.ph to i1, !dbg !15356
  br label %.thread1003, !dbg !15356

.thread1033:                                      ; preds = %bb.fu, %bb.ft
  %lpad.thr_comm.split-lp1017 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = trunc nuw i8 %.sroa.060.2 to i1, !dbg !15356
  br i1 %3, label %bb.gg, label %common.resume, !dbg !15356

bb.fc:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !15357
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !15357
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB13_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryB1W_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.qs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.fd unwind label %.thread1018, !dbg !15358

bb.fd:                                            ; preds = %bb.fc
  %i.qt = load i64, ptr %i.i, align 8, !dbg !15359, !range !2589, !noundef !1394 ; 2 uses
  %.not563 = icmp eq i64 %i.qt, -1, !dbg !15359
  %i.qu = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !15360
  %i.qv = load ptr, ptr %i.qu, align 8, !dbg !15360 ; 2 uses
  br i1 %.not563, label %bb.fe, label %bb.ff, !dbg !15361

bb.fe:                                            ; preds = %bb.fd
    #dbg_value(i64 -1, !4444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14624)
    #dbg_value(i64 -1, !4455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14625)
    #dbg_value(i64 -1, !4464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14626)
    #dbg_value(i64 -1, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14627)
    #dbg_value(ptr %i.qv, !4444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14624)
    #dbg_value(ptr %i.qv, !4455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14625)
    #dbg_value(ptr %i.qv, !4464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14626)
    #dbg_value(ptr %i.qv, !4462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14627)
    #dbg_value(ptr poison, !4444, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14624)
    #dbg_value(ptr poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14625)
    #dbg_value(ptr poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14626)
    #dbg_value(ptr poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14627)
    #dbg_value(ptr poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14625)
    #dbg_value(ptr poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14626)
    #dbg_value(ptr poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14627)
    #dbg_value(i64 poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14625)
    #dbg_value(i64 poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14626)
    #dbg_value(i64 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14627)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !15363
  br label %bb.fg, !dbg !15364

bb.ff:                                            ; preds = %bb.fd
  %.sroa.5793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !15365
  %.sroa.5793.0.copyload = load ptr, ptr %.sroa.5793.0..sroa_idx, align 8, !dbg !15365
  %.sroa.6794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !15365
  %.sroa.6794.0.copyload = load ptr, ptr %.sroa.6794.0..sroa_idx, align 8, !dbg !15365, !nonnull !1394, !noundef !1394
  %.sroa.7795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !15365
  %.sroa.7795.0.copyload = load i64, ptr %.sroa.7795.0..sroa_idx, align 8, !dbg !15365
    #dbg_value(i64 %i.qt, !4444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14624)
    #dbg_value(i64 %i.qt, !4455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14625)
    #dbg_value(i64 %i.qt, !4464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14626)
    #dbg_value(i64 %i.qt, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14627)
    #dbg_value(ptr %i.qv, !4444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14624)
    #dbg_value(ptr %i.qv, !4455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14625)
    #dbg_value(ptr %i.qv, !4464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14626)
    #dbg_value(ptr %i.qv, !4462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14627)
    #dbg_value(ptr %.sroa.5793.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14624)
    #dbg_value(ptr %.sroa.5793.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14625)
    #dbg_value(ptr %.sroa.5793.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14626)
    #dbg_value(ptr %.sroa.5793.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14627)
    #dbg_value(ptr %.sroa.6794.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14625)
    #dbg_value(ptr %.sroa.6794.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14626)
    #dbg_value(ptr %.sroa.6794.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14627)
    #dbg_value(i64 %.sroa.7795.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14625)
    #dbg_value(i64 %.sroa.7795.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14626)
    #dbg_value(i64 %.sroa.7795.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14627)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !15363
    #dbg_value(i64 0, !4456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12966)
    #dbg_value(i64 0, !4449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12967)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12966)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12967)
    #dbg_value(i64 0, !4456, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12966)
    #dbg_value(i64 0, !4449, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12967)
    #dbg_value(i64 %.sroa.7795.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12967)
    #dbg_value(ptr %.sroa.6794.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15366, !noalias !14628
  store i64 %i.qt, ptr %i.b, align 8, !dbg !15366
  %.sroa.6722.0..sroa_idx723 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15366
  store ptr %i.qv, ptr %.sroa.6722.0..sroa_idx723, align 8, !dbg !15366
  %.sroa.8725.0..sroa_idx726 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15366
  store ptr %.sroa.5793.0.copyload, ptr %.sroa.8725.0..sroa_idx726, align 8, !dbg !15366
  %i.qw = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !15366
  store i64 0, ptr %i.qw, align 8, !dbg !15366, !noalias !14628
  %.sroa.4.0..sroa_idx.i632 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15366
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i632, align 8, !dbg !15366, !noalias !14628
  %.sroa.5.0..sroa_idx.i633 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15366
  store i64 0, ptr %.sroa.5.0..sroa_idx.i633, align 8, !dbg !15366, !noalias !14628
  %i.qx = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14insert_no_growB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6794.0.copyload, i64 noundef %.sroa.7795.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc636 unwind label %.thread1018, !dbg !15367

.noexc636:                                        ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15368, !noalias !14628
  br label %bb.fg, !dbg !15369

bb.fg:                                            ; preds = %bb.fe, %.noexc636
  %.pn.i634 = phi ptr [ %i.qx, %.noexc636 ], [ %i.qv, %bb.fe ] ; 3 uses
  %.sroa.0.0.i635 = getelementptr inbounds i8, ptr %.pn.i634, i64 -24, !dbg !14627 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i635, !14430, !DIExpression(), !14630)
    #dbg_value(i64 %.sroa.6172.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14630)
    #dbg_value(i64 %.sroa.6172.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14631)
    #dbg_value(i64 %.sroa.6172.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14632)
    #dbg_value(i64 %.sroa.7179.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14630)
    #dbg_value(i64 %.sroa.7179.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14631)
    #dbg_value(i64 %.sroa.7179.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14632)
    #dbg_value(i64 %.sroa.8186.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14630)
    #dbg_value(i64 %.sroa.8186.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14631)
    #dbg_value(i64 %.sroa.8186.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14632)
    #dbg_value(i64 %.sroa.9.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14630)
    #dbg_value(i64 %.sroa.9.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14631)
    #dbg_value(i64 %.sroa.9.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14632)
    #dbg_value(i64 %.sroa.0171.sroa.0.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14630)
    #dbg_value(i64 %.sroa.0171.sroa.0.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14631)
    #dbg_value(i64 %.sroa.0171.sroa.0.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14632)
    #dbg_value(i64 %.sroa.0171.sroa.6.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14630)
    #dbg_value(i64 %.sroa.0171.sroa.6.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14631)
    #dbg_value(i64 %.sroa.0171.sroa.6.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14632)
  call void @llvm.experimental.noalias.scope.decl(metadata !14633), !dbg !15370
    #dbg_value(ptr %.sroa.0.0.i635, !4474, !DIExpression(), !12974)
    #dbg_value(ptr %.sroa.0.0.i635, !4484, !DIExpression(), !12976)
    #dbg_value(i64 48, !4489, !DIExpression(), !12979)
  %i.qy = getelementptr inbounds i8, ptr %.pn.i634, i64 -8, !dbg !15371 ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !dbg !15371, !alias.scope !14633, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.qz, !4475, !DIExpression(), !12980)
    #dbg_value(i64 %i.qz, !4498, !DIExpression(), !12982)
    #dbg_value(ptr %.sroa.0.0.i635, !4496, !DIExpression(), !12983)
  %i.ra = load i64, ptr %.sroa.0.0.i635, align 8, !dbg !15372, !range !3688, !alias.scope !14633, !noundef !1394
  %i.rb = icmp eq i64 %i.qz, %i.ra, !dbg !15373
  br i1 %i.rb, label %bb.fh, label %bb.fi, !dbg !15373

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i635) #29
          to label %bb.fi unwind label %.thread1018, !dbg !15374

bb.fi:                                            ; preds = %bb.fg, %bb.fh
  %i.rc = getelementptr inbounds i8, ptr %.pn.i634, i64 -16, !dbg !15375
  %i.rd = load ptr, ptr %i.rc, align 8, !dbg !15375, !alias.scope !14633, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.rd, !4501, !DIExpression(), !12982)
  %i.re = getelementptr inbounds nuw [48 x i8], ptr %i.rd, i64 %i.qz, !dbg !15376 ; 6 uses
    #dbg_value(ptr %i.re, !4477, !DIExpression(), !12987)
    #dbg_value(ptr %i.re, !4482, !DIExpression(), !12988)
  store i64 %.sroa.0171.sroa.0.0.copyload, ptr %i.re, align 8, !dbg !15377, !noalias !14633
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 8, !dbg !15377
  store i64 %.sroa.0171.sroa.6.0.copyload, ptr %.sroa.4731.0..sroa_idx, align 8, !dbg !15377, !noalias !14633
  %.sroa.5732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 16, !dbg !15377
  store i64 %.sroa.6172.0.copyload, ptr %.sroa.5732.0..sroa_idx, align 8, !dbg !15377, !noalias !14633
  %.sroa.6733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 24, !dbg !15377
  store i64 %.sroa.7179.0.copyload, ptr %.sroa.6733.0..sroa_idx, align 8, !dbg !15377, !noalias !14633
  %.sroa.7734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 32, !dbg !15377
  store i64 %.sroa.8186.0.copyload, ptr %.sroa.7734.0..sroa_idx, align 8, !dbg !15377, !noalias !14633
  %.sroa.8735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 40, !dbg !15377
  store i64 %.sroa.9.0.copyload, ptr %.sroa.8735.0..sroa_idx, align 8, !dbg !15377, !noalias !14633
  %i.rf = add i64 %i.qz, 1, !dbg !15378
  store i64 %i.rf, ptr %i.qy, align 8, !dbg !15378, !alias.scope !14633
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ar, i64 72, !dbg !15379 ; 2 uses
  %i.rh = load i8, ptr %i.rg, align 8, !dbg !15379, !range !2544, !noundef !1394
  %i.ri = trunc nuw i8 %i.rh to i1, !dbg !15379
  br i1 %i.ri, label %bb.fk, label %bb.fj, !dbg !15379

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !15380
  store i8 29, ptr %i.ap, align 8, !dbg !15380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !15381
  store i64 0, ptr %i.ao, align 8, !dbg !15381
  %i.rj = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ao)
          to label %bb.fl unwind label %.thread1018, !dbg !15382 ; 0 uses

bb.fk:                                            ; preds = %bb.fq, %bb.fi
  %.sroa.060.2 = phi i8 [ 1, %bb.fi ], [ 0, %bb.fq ], !dbg !14125 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !15383
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !15383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.rk, i64 24, i1 false), !dbg !15383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !15384
  store i64 0, ptr %i.ai, align 8, !dbg !15384
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler19compile_map_entries(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ai)
          to label %bb.fs unwind label %.thread1018, !dbg !15385

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !15386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !15386
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !13302
  %.sroa.0540.0.copyload = load i64, ptr %i.rl, align 8, !dbg !13302 ; 2 uses
    #dbg_value(i64 %.sroa.0540.0.copyload, !13306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14634)
  %.sroa.4541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 56, !dbg !13302
  %.sroa.4541.0.copyload = load ptr, ptr %.sroa.4541.0..sroa_idx, align 8, !dbg !13302, !nonnull !1394, !noundef !1394 ; 4 uses
    #dbg_value(ptr %.sroa.4541.0.copyload, !13306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14634)
  %.sroa.5542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 64, !dbg !13302
  %.sroa.5542.0.copyload = load i64, ptr %.sroa.5542.0..sroa_idx, align 8, !dbg !13302 ; 3 uses
    #dbg_value(i64 %.sroa.5542.0.copyload, !13306, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14634)
    #dbg_value(i64 %.sroa.0540.0.copyload, !13307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14635)
    #dbg_value(ptr %.sroa.4541.0.copyload, !13307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14635)
    #dbg_value(i64 %.sroa.5542.0.copyload, !13307, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14635)
    #dbg_value(ptr %.sroa.4541.0.copyload, !13309, !DIExpression(), !14636)
    #dbg_value(ptr %.sroa.4541.0.copyload, !13310, !DIExpression(), !14637)
    #dbg_value(ptr %.sroa.4541.0.copyload, !14638, !DIExpression(), !14642)
    #dbg_value(ptr undef, !13317, !DIExpression(), !13321)
    #dbg_value(i64 %.sroa.5542.0.copyload, !14639, !DIExpression(), !14642)
  %i.rm = icmp ult i64 %.sroa.5542.0.copyload, 57646075230342349, !dbg !15387
  call void @llvm.assume(i1 %i.rm), !dbg !15388
  %.idx1108 = mul nuw nsw i64 %.sroa.5542.0.copyload, 160, !dbg !15389
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.4541.0.copyload, i64 %.idx1108, !dbg !15389
    #dbg_value(ptr %i.rn, !13311, !DIExpression(), !14643)
    #dbg_value(ptr undef, !13314, !DIExpression(), !13316)
    #dbg_value(ptr undef, !13264, !DIExpression(), !13305)
    #dbg_value(i64 %.sroa.0540.0.copyload, !14258, !DIExpression(), !14646)
  %i.ro = icmp sgt i64 %.sroa.0540.0.copyload, -1, !dbg !15390
  call void @llvm.assume(i1 %i.ro), !dbg !15390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !13302
  store ptr %.sroa.4541.0.copyload, ptr %i.an, align 8, !dbg !13302
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !13302 ; 3 uses
  store ptr %.sroa.4541.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !13302
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !13302
  store i64 %.sroa.0540.0.copyload, ptr %.sroa.529.0..sroa_idx, align 8, !dbg !13302
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !13302 ; 2 uses
  store ptr %i.rn, ptr %.sroa.630.0..sroa_idx, align 8, !dbg !13302
  %i.rp = icmp eq i64 %.sroa.5542.0.copyload, 0, !dbg !15391
  br i1 %i.rp, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, !dbg !15392

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph: ; preds = %bb.fl
  %.sroa.7738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !15392

bb.fm:                                            ; preds = %bb.fn
  %i.rq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.an, !4641, !DIExpression(), !12993)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %.thread1003 unwind label %bb.x, !dbg !15393

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph, %bb.fr
  %i.rr = phi ptr [ %.sroa.4541.0.copyload, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.lr.ph ], [ %i.rx, %bb.fr ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14647), !dbg !13505
    #dbg_value(ptr %i.rr, !4638, !DIExpression(), !12996)
    #dbg_value(ptr %i.rr, !4639, !DIExpression(), !12997)
    #dbg_value(ptr %i.rr, !4647, !DIExpression(), !12999)
    #dbg_value(ptr %i.rr, !4653, !DIExpression(), !13001)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 160, !dbg !15394
  store ptr %i.rs, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15395, !alias.scope !14647
  %.sroa.0736.0.copyload737 = load i64, ptr %i.rr, align 8, !dbg !15396, !noalias !14647 ; 2 uses
  %.not564 = icmp eq i64 %.sroa.0736.0.copyload737, -1, !dbg !13505
  br i1 %.not564, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %bb.fn, !dbg !13505

bb.fn:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.7738.0..sroa_idx739 = getelementptr inbounds nuw i8, ptr %i.rr, i64 8, !dbg !15396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !15397
  store i64 %.sroa.0736.0.copyload737, ptr %i.am, align 8, !dbg !15397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7738.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7738.0..sroa_idx739, i64 152, i1 false), !dbg !15397
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %i.am)
          to label %bb.fr unwind label %bb.fm, !dbg !15398

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, %bb.fr, %bb.fl
    #dbg_value(ptr %i.an, !4641, !DIExpression(), !13004)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %bb.fp unwind label %.thread1018, !dbg !15399

bb.fo:                                            ; preds = %bb.fp
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %.thread1003, !dbg !15400

bb.fp:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !15401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !15402
  store i8 30, ptr %i.al, align 8, !dbg !15402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !15403
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !15403
  store i64 %.sroa.0171.sroa.0.0.copyload, ptr %i.ru, align 8, !dbg !15403
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !15403
  store i64 %.sroa.0171.sroa.6.0.copyload, ptr %.sroa.432.0..sroa_idx, align 8, !dbg !15403
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24, !dbg !15403
  store i64 %.sroa.6172.0.copyload, ptr %.sroa.533.0..sroa_idx, align 8, !dbg !15403
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !15403
  store i64 %.sroa.7179.0.copyload, ptr %.sroa.634.0..sroa_idx, align 8, !dbg !15403
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !15403
  store i64 %.sroa.8186.0.copyload, ptr %.sroa.735.0..sroa_idx, align 8, !dbg !15403
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 48, !dbg !15403
  store i64 %.sroa.9.0.copyload, ptr %.sroa.836.0..sroa_idx, align 8, !dbg !15403
  store i64 1, ptr %i.ak, align 8, !dbg !15403
  %i.rv = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ak)
          to label %bb.fq unwind label %bb.fo, !dbg !15404 ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !15400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !15400
  br label %bb.fk, !dbg !15405

bb.fr:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !15406
    #dbg_value(ptr %i.an, !4637, !DIExpression(), !13005)
    #dbg_value(i64 1, !4651, !DIExpression(), !12999)
    #dbg_value(ptr %i.an, !4624, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !13006)
  %i.rw = load ptr, ptr %.sroa.630.0..sroa_idx, align 8, !dbg !15407, !alias.scope !14648, !nonnull !1394, !noundef !1394
    #dbg_value(ptr poison, !4625, !DIExpression(), !13009)
  %i.rx = load ptr, ptr %.sroa.428.0..sroa_idx, align 8, !dbg !15391, !alias.scope !14648, !nonnull !1394, !noundef !1394 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.rw, !dbg !15391
  br i1 %i.ry, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit, !dbg !15392

bb.fs:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !15408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !15408
  %i.rz = load i8, ptr %i.rg, align 8, !dbg !15409, !range !2544, !noundef !1394
  %i.sa = trunc nuw i8 %i.rz to i1, !dbg !15409
  br i1 %i.sa, label %bb.fu, label %bb.ft, !dbg !15409

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !15410
  %i.sb = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !15410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sb, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !dbg !15411
  store i8 20, ptr %i.af, align 8, !dbg !15410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !15412
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !15412
  store i64 %.sroa.0171.sroa.0.0.copyload, ptr %i.sc, align 8, !dbg !15412
  %.sroa.0171.sroa.6.0..sroa_idx814 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !15412
  store i64 %.sroa.0171.sroa.6.0.copyload, ptr %.sroa.0171.sroa.6.0..sroa_idx814, align 8, !dbg !15412
  %.sroa.6172.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !15412
  store i64 %.sroa.6172.0.copyload, ptr %.sroa.6172.0..sroa_idx175, align 8, !dbg !15412
  %.sroa.7179.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !15412
  store i64 %.sroa.7179.0.copyload, ptr %.sroa.7179.0..sroa_idx182, align 8, !dbg !15412
  %.sroa.8186.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !15412
  store i64 %.sroa.8186.0.copyload, ptr %.sroa.8186.0..sroa_idx189, align 8, !dbg !15412
  %.sroa.9.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ae, i64 48, !dbg !15412
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx195, align 8, !dbg !15412
  store i64 1, ptr %i.ae, align 8, !dbg !15412
  %i.sd = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ae)
          to label %bb.fv unwind label %.thread1033, !dbg !15413 ; 0 uses

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !15414
  %i.se = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !15414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.se, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !dbg !15415
  store i8 18, ptr %i.ah, align 8, !dbg !15414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !15416
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !15416
  store i64 %.sroa.0171.sroa.0.0.copyload, ptr %i.sf, align 8, !dbg !15416
  %.sroa.0171.sroa.6.0..sroa_idx816 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !15416
  store i64 %.sroa.0171.sroa.6.0.copyload, ptr %.sroa.0171.sroa.6.0..sroa_idx816, align 8, !dbg !15416
  %.sroa.6172.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !15416
  store i64 %.sroa.6172.0.copyload, ptr %.sroa.6172.0..sroa_idx177, align 8, !dbg !15416
  %.sroa.7179.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32, !dbg !15416
  store i64 %.sroa.7179.0.copyload, ptr %.sroa.7179.0..sroa_idx184, align 8, !dbg !15416
  %.sroa.8186.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40, !dbg !15416
  store i64 %.sroa.8186.0.copyload, ptr %.sroa.8186.0..sroa_idx191, align 8, !dbg !15416
  %.sroa.9.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48, !dbg !15416
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx197, align 8, !dbg !15416
  store i64 1, ptr %i.ag, align 8, !dbg !15416
  %i.sg = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ag)
          to label %bb.fx unwind label %.thread1033, !dbg !15417 ; 0 uses

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !15418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !15418
  br label %bb.fw, !dbg !15419

bb.fw:                                            ; preds = %bb.fx, %bb.fv
  %4 = trunc nuw i8 %.sroa.060.2 to i1, !dbg !15356
  br i1 %4, label %bb.fy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, !dbg !15356

bb.fx:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !15420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !15420
  br label %bb.fw, !dbg !15419

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit: ; preds = %bb.gc, %bb.gb, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !15356
  br label %bb.q, !dbg !15421

bb.fy:                                            ; preds = %bb.fw
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !15356 ; 3 uses
    #dbg_value(ptr %i.sh, !2858, !DIExpression(), !13011)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sh)
          to label %bb.gb unwind label %bb.fz, !dbg !15422

bb.fz:                                            ; preds = %bb.fy
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i = load i64, ptr %i.sh, align 8, !dbg !15422, !alias.scope !14649 ; 2 uses
    #dbg_value(ptr poison, !2863, !DIExpression(), !13017)
    #dbg_value(ptr poison, !2869, !DIExpression(), !13019)
    #dbg_value(ptr poison, !2612, !DIExpression(), !13021)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13021)
    #dbg_value(i64 160, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13021)
    #dbg_value(ptr poison, !2629, !DIExpression(), !13023)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13023)
    #dbg_value(i64 160, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13023)
    #dbg_value(i64 160, !2798, !DIExpression(), !13025)
  %i.sj = icmp eq i64 %.val3.i, 0
  br i1 %i.sj, label %common.resume, label %bb.ga, !dbg !15423

bb.ga:                                            ; preds = %bb.fz
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ar, i64 56, !dbg !15422
  %.val4.i = load ptr, ptr %i.sk, align 8, !dbg !15422, !alias.scope !14650, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val3.i, !2802, !DIExpression(), !13025)
  %i.sl = mul nuw i64 %.val3.i, 160, !dbg !15424
    #dbg_value(ptr %.val4.i, !2625, !DIExpression(), !13026)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13026)
    #dbg_value(i64 %i.sl, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13026)
    #dbg_value(ptr poison, !2652, !DIExpression(), !13028)
    #dbg_value(ptr poison, !2659, !DIExpression(), !13030)
    #dbg_value(ptr %.val4.i, !2656, !DIExpression(), !13028)
    #dbg_value(ptr %.val4.i, !2662, !DIExpression(), !13030)
    #dbg_value(ptr %.val4.i, !2665, !DIExpression(), !13032)
    #dbg_value(ptr %.val4.i, !2671, !DIExpression(), !13034)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13028)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13030)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13032)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13034)
    #dbg_value(i64 %i.sl, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13028)
    #dbg_value(i64 %i.sl, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13030)
    #dbg_value(i64 %i.sl, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13032)
    #dbg_value(i64 %i.sl, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13034)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.sl, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !15425, !noalias !14651
  br label %common.resume, !dbg !15426

bb.gb:                                            ; preds = %bb.fy
  %.val.i643 = load i64, ptr %i.sh, align 8, !dbg !15422, !alias.scope !14649 ; 2 uses
    #dbg_value(ptr poison, !2863, !DIExpression(), !13038)
    #dbg_value(ptr poison, !2869, !DIExpression(), !13040)
    #dbg_value(ptr poison, !2612, !DIExpression(), !13042)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13042)
    #dbg_value(i64 160, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13042)
    #dbg_value(ptr poison, !2629, !DIExpression(), !13044)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13044)
    #dbg_value(i64 160, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13044)
    #dbg_value(i64 160, !2798, !DIExpression(), !13046)
  %i.sm = icmp eq i64 %.val.i643, 0
  br i1 %i.sm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, label %bb.gc, !dbg !15427

bb.gc:                                            ; preds = %bb.gb
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ar, i64 56, !dbg !15422
  %.val2.i = load ptr, ptr %i.sn, align 8, !dbg !15422, !alias.scope !14650, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val.i643, !2802, !DIExpression(), !13046)
  %i.so = mul nuw i64 %.val.i643, 160, !dbg !15428
    #dbg_value(ptr %.val2.i, !2625, !DIExpression(), !13047)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13047)
    #dbg_value(i64 %i.so, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13047)
    #dbg_value(ptr poison, !2652, !DIExpression(), !13049)
    #dbg_value(ptr poison, !2659, !DIExpression(), !13051)
    #dbg_value(ptr %.val2.i, !2656, !DIExpression(), !13049)
    #dbg_value(ptr %.val2.i, !2662, !DIExpression(), !13051)
    #dbg_value(ptr %.val2.i, !2665, !DIExpression(), !13053)
    #dbg_value(ptr %.val2.i, !2671, !DIExpression(), !13055)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13049)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13051)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13053)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13055)
    #dbg_value(i64 %i.so, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13049)
    #dbg_value(i64 %i.so, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13051)
    #dbg_value(i64 %i.so, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13053)
    #dbg_value(i64 %i.so, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13055)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.so, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !15429, !noalias !14652
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, !dbg !15430

bb.gd:                                            ; preds = %.thread1003
  br i1 %.sroa.068.01009, label %bb.gf, label %bb.ge, !dbg !15356

.thread1003:                                      ; preds = %bb.fo, %bb.fm, %.thread1018
  %.pn5651013 = phi { ptr, i32 } [ %lpad.thr_comm1016, %.thread1018 ], [ %i.rt, %bb.fo ], [ %i.rq, %bb.fm ] ; 2 uses
  %.sroa.060.01011 = phi i1 [ %2, %.thread1018 ], [ false, %bb.fo ], [ false, %bb.fm ]
  %.sroa.068.01009 = phi i1 [ %.sroa.068.1.ph, %.thread1018 ], [ true, %bb.fo ], [ true, %bb.fm ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar) #30
          to label %bb.gd unwind label %bb.x, !dbg !15356

bb.ge:                                            ; preds = %bb.gf, %bb.gd
  br i1 %.sroa.060.01011, label %bb.gg, label %common.resume, !dbg !15356

bb.gf:                                            ; preds = %bb.gd
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !15356
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sp) #30
          to label %bb.ge unwind label %bb.x, !dbg !15356

bb.gg:                                            ; preds = %.thread1033, %bb.ge
  %.pn565101210371039 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1017, %.thread1033 ], [ %.pn5651013, %bb.ge ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !15356
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sq) #30
          to label %common.resume unwind label %bb.x, !dbg !15356

bb.gh:                                            ; preds = %bb.n
    #dbg_value(ptr %0, !13468, !DIExpression(DW_OP_plus_uconst, 336, DW_OP_stack_value), !14654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !15431
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.gi unwind label %bb.gp, !dbg !15432

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15433
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !15433
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB13_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE11rustc_entryB1W_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.sr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.gj unwind label %bb.gp, !dbg !15434

bb.gj:                                            ; preds = %bb.gi
  %i.ss = load i64, ptr %i.h, align 8, !dbg !15435, !range !2589, !noundef !1394 ; 2 uses
  %.not562 = icmp eq i64 %i.ss, -1, !dbg !15435
  %i.st = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !15436
  %i.su = load ptr, ptr %i.st, align 8, !dbg !15436 ; 2 uses
  br i1 %.not562, label %bb.gk, label %bb.gl, !dbg !15437

bb.gk:                                            ; preds = %bb.gj
    #dbg_value(i64 -1, !4444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14655)
    #dbg_value(i64 -1, !4455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14656)
    #dbg_value(i64 -1, !4464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14657)
    #dbg_value(i64 -1, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14658)
    #dbg_value(ptr %i.su, !4444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14655)
    #dbg_value(ptr %i.su, !4455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14656)
    #dbg_value(ptr %i.su, !4464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14657)
    #dbg_value(ptr %i.su, !4462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14658)
    #dbg_value(ptr poison, !4444, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14655)
    #dbg_value(ptr poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14656)
    #dbg_value(ptr poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14657)
    #dbg_value(ptr poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14658)
    #dbg_value(ptr poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14656)
    #dbg_value(ptr poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14657)
    #dbg_value(ptr poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14658)
    #dbg_value(i64 poison, !4455, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14656)
    #dbg_value(i64 poison, !4464, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14657)
    #dbg_value(i64 poison, !4462, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14658)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !15439
  br label %bb.gm, !dbg !15440

bb.gl:                                            ; preds = %bb.gj
  %.sroa.5803.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !15441
  %.sroa.5803.0.copyload = load ptr, ptr %.sroa.5803.0..sroa_idx, align 8, !dbg !15441
  %.sroa.6804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !15441
  %.sroa.6804.0.copyload = load ptr, ptr %.sroa.6804.0..sroa_idx, align 8, !dbg !15441, !nonnull !1394, !noundef !1394
  %.sroa.7805.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !15441
  %.sroa.7805.0.copyload = load i64, ptr %.sroa.7805.0..sroa_idx, align 8, !dbg !15441
    #dbg_value(i64 %i.ss, !4444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14655)
    #dbg_value(i64 %i.ss, !4455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14656)
    #dbg_value(i64 %i.ss, !4464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14657)
    #dbg_value(i64 %i.ss, !4462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14658)
    #dbg_value(ptr %i.su, !4444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14655)
    #dbg_value(ptr %i.su, !4455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14656)
    #dbg_value(ptr %i.su, !4464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14657)
    #dbg_value(ptr %i.su, !4462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14658)
    #dbg_value(ptr %.sroa.5803.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14655)
    #dbg_value(ptr %.sroa.5803.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14656)
    #dbg_value(ptr %.sroa.5803.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14657)
    #dbg_value(ptr %.sroa.5803.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14658)
    #dbg_value(ptr %.sroa.6804.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14656)
    #dbg_value(ptr %.sroa.6804.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14657)
    #dbg_value(ptr %.sroa.6804.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14658)
    #dbg_value(i64 %.sroa.7805.0.copyload, !4455, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14656)
    #dbg_value(i64 %.sroa.7805.0.copyload, !4464, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14657)
    #dbg_value(i64 %.sroa.7805.0.copyload, !4462, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14658)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !15439
    #dbg_value(i64 0, !4456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13061)
    #dbg_value(i64 0, !4449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13062)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13061)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !4449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13062)
    #dbg_value(i64 0, !4456, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13061)
    #dbg_value(i64 0, !4449, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13062)
    #dbg_value(i64 %.sroa.7805.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13062)
    #dbg_value(ptr %.sroa.6804.0.copyload, !4444, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15442, !noalias !14659
  store i64 %i.ss, ptr %i.a, align 8, !dbg !15442
  %.sroa.6748.0..sroa_idx749 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15442
  store ptr %i.su, ptr %.sroa.6748.0..sroa_idx749, align 8, !dbg !15442
  %.sroa.8751.0..sroa_idx752 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15442
  store ptr %.sroa.5803.0.copyload, ptr %.sroa.8751.0..sroa_idx752, align 8, !dbg !15442
  %i.sv = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !15442
  store i64 0, ptr %i.sv, align 8, !dbg !15442, !noalias !14659
  %.sroa.4.0..sroa_idx.i645 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !15442
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i645, align 8, !dbg !15442, !noalias !14659
  %.sroa.5.0..sroa_idx.i646 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !15442
  store i64 0, ptr %.sroa.5.0..sroa_idx.i646, align 8, !dbg !15442, !noalias !14659
  %i.sw = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBT_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEE14insert_no_growB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.6804.0.copyload, i64 noundef %.sroa.7805.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc649 unwind label %bb.gp, !dbg !15443

.noexc649:                                        ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15444, !noalias !14659
  br label %bb.gm, !dbg !15445

bb.gm:                                            ; preds = %bb.gk, %.noexc649
  %.pn.i647 = phi ptr [ %i.sw, %.noexc649 ], [ %i.su, %bb.gk ] ; 3 uses
  %.sroa.0.0.i648 = getelementptr inbounds i8, ptr %.pn.i647, i64 -24, !dbg !14658 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i648, !14430, !DIExpression(), !14661)
    #dbg_value(i64 %.sroa.5200.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14661)
    #dbg_value(i64 %.sroa.5200.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14662)
    #dbg_value(i64 %.sroa.5200.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !14663)
    #dbg_value(i64 %.sroa.6205.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14661)
    #dbg_value(i64 %.sroa.6205.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14662)
    #dbg_value(i64 %.sroa.6205.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !14663)
    #dbg_value(i64 %.sroa.7210.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14661)
    #dbg_value(i64 %.sroa.7210.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14662)
    #dbg_value(i64 %.sroa.7210.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !14663)
    #dbg_value(i64 %.sroa.8215.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14661)
    #dbg_value(i64 %.sroa.8215.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14662)
    #dbg_value(i64 %.sroa.8215.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !14663)
    #dbg_value(i64 %.sroa.0199.sroa.0.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14661)
    #dbg_value(i64 %.sroa.0199.sroa.0.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14662)
    #dbg_value(i64 %.sroa.0199.sroa.0.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14663)
    #dbg_value(i64 %.sroa.0199.sroa.5.0.copyload, !14431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14661)
    #dbg_value(i64 %.sroa.0199.sroa.5.0.copyload, !4469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14662)
    #dbg_value(i64 %.sroa.0199.sroa.5.0.copyload, !4479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14663)
  call void @llvm.experimental.noalias.scope.decl(metadata !14664), !dbg !15446
    #dbg_value(ptr %.sroa.0.0.i648, !4474, !DIExpression(), !13069)
    #dbg_value(ptr %.sroa.0.0.i648, !4484, !DIExpression(), !13071)
    #dbg_value(i64 48, !4489, !DIExpression(), !13074)
  %i.sx = getelementptr inbounds i8, ptr %.pn.i647, i64 -8, !dbg !15447 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !dbg !15447, !alias.scope !14664, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.sy, !4475, !DIExpression(), !13075)
    #dbg_value(i64 %i.sy, !4498, !DIExpression(), !13077)
    #dbg_value(ptr %.sroa.0.0.i648, !4496, !DIExpression(), !13078)
  %i.sz = load i64, ptr %.sroa.0.0.i648, align 8, !dbg !15448, !range !3688, !alias.scope !14664, !noundef !1394
  %i.ta = icmp eq i64 %i.sy, %i.sz, !dbg !15449
  br i1 %i.ta, label %bb.gn, label %bb.go, !dbg !15449

bb.gn:                                            ; preds = %bb.gm
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i648) #29
          to label %bb.go unwind label %bb.gp, !dbg !15450

bb.go:                                            ; preds = %bb.gm, %bb.gn
  %i.tb = getelementptr inbounds i8, ptr %.pn.i647, i64 -16, !dbg !15451
  %i.tc = load ptr, ptr %i.tb, align 8, !dbg !15451, !alias.scope !14664, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.tc, !4501, !DIExpression(), !13077)
  %i.td = getelementptr inbounds nuw [48 x i8], ptr %i.tc, i64 %i.sy, !dbg !15452 ; 6 uses
    #dbg_value(ptr %i.td, !4477, !DIExpression(), !13082)
    #dbg_value(ptr %i.td, !4482, !DIExpression(), !13083)
  store i64 %.sroa.0199.sroa.0.0.copyload, ptr %i.td, align 8, !dbg !15453, !noalias !14664
  %.sroa.4757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 8, !dbg !15453
  store i64 %.sroa.0199.sroa.5.0.copyload, ptr %.sroa.4757.0..sroa_idx, align 8, !dbg !15453, !noalias !14664
  %.sroa.5758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 16, !dbg !15453
  store i64 %.sroa.5200.0.copyload, ptr %.sroa.5758.0..sroa_idx, align 8, !dbg !15453, !noalias !14664
  %.sroa.6759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 24, !dbg !15453
  store i64 %.sroa.6205.0.copyload, ptr %.sroa.6759.0..sroa_idx, align 8, !dbg !15453, !noalias !14664
  %.sroa.7760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 32, !dbg !15453
  store i64 %.sroa.7210.0.copyload, ptr %.sroa.7760.0..sroa_idx, align 8, !dbg !15453, !noalias !14664
  %.sroa.8761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.td, i64 40, !dbg !15453
  store i64 %.sroa.8215.0.copyload, ptr %.sroa.8761.0..sroa_idx, align 8, !dbg !15453, !noalias !14664
  %i.te = add i64 %i.sy, 1, !dbg !15454
  store i64 %i.te, ptr %i.sx, align 8, !dbg !15454, !alias.scope !14664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !15455
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !15455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !15456
  store i8 17, ptr %i.ab, align 8, !dbg !15455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !15457
  %i.tg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !15457
  store i64 %.sroa.0199.sroa.0.0.copyload, ptr %i.tg, align 8, !dbg !15457
  %.sroa.0199.sroa.5.0..sroa_idx819 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !15457
  store i64 %.sroa.0199.sroa.5.0.copyload, ptr %.sroa.0199.sroa.5.0..sroa_idx819, align 8, !dbg !15457
  %.sroa.5200.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !15457
  store i64 %.sroa.5200.0.copyload, ptr %.sroa.5200.0..sroa_idx203, align 8, !dbg !15457
  %.sroa.6205.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !15457
  store i64 %.sroa.6205.0.copyload, ptr %.sroa.6205.0..sroa_idx208, align 8, !dbg !15457
  %.sroa.7210.0..sroa_idx213 = getelementptr inbounds nuw i8, ptr %i.aa, i64 40, !dbg !15457
  store i64 %.sroa.7210.0.copyload, ptr %.sroa.7210.0..sroa_idx213, align 8, !dbg !15457
  %.sroa.8215.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.aa, i64 48, !dbg !15457
  store i64 %.sroa.8215.0.copyload, ptr %.sroa.8215.0..sroa_idx218, align 8, !dbg !15457
  store i64 1, ptr %i.aa, align 8, !dbg !15457
  %i.th = call noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.aa), !dbg !15458 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !15459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !15459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !15460
  br label %bb.q, !dbg !15461

bb.gp:                                            ; preds = %bb.gn, %bb.n, %bb.gl, %bb.gi, %bb.gh
  %lpad.thr_comm1042 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
