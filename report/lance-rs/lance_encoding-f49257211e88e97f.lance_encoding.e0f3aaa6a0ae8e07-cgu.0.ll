Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvXs2_NtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8strategyNtB5_13ArrayStrategyNtNtB9_7encoder21ArrayEncodingStrategy20create_array_encoder:bb.a
  br i1 %i.dl, label %.sink.split.sink.split.i, label %.sink.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.ad, %bb.ac, %.body.i, %.body.i.thread, %bb.ae, %.loopexit.split-lp89.i, %.loopexit88.i
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp91.i, %.loopexit.split-lp89.i ], [ %lpad.loopexit90.i, %.loopexit88.i ], [ %i.gj, %.body.i.thread ], [ %eh.lpad-body.i.ph, %.body.i ], [ %eh.lpad-body.i.ph, %bb.ac ], [ %eh.lpad-body.i.ph, %bb.ad ], [ %eh.lpad-body.i.ph, %bb.ae ]
  call void @llvm.experimental.noalias.scope.decl(metadata !69133)
  %.val.i6 = load ptr, ptr %i.cr, align 8, !alias.scope !69133 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.val2.i = load i64, ptr %i.dm, align 8, !alias.scope !69133, !noundef !75 ; 4 uses
  %i.dn = icmp eq i64 %.val2.i, 0
  br i1 %i.dn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit
  %i.do = shl i64 %.val2.i, 2
  %i.dp = icmp slt i64 %.val2.i, 4611686018427387900
  call void @llvm.assume(i1 %i.dp)
  %i.dq = and i64 %i.do, -16                      ; 2 uses
  %i.dr = add i64 %i.dq, 16                       ; 2 uses
  %i.ds = add nsw i64 %.val2.i, 17
  %i.dt = add i64 %i.ds, %i.dr                    ; 4 uses
  %i.du = icmp uge i64 %i.dt, %i.dr
  %i.dv = icmp ult i64 %i.dt, 9223372036854775793
  call void @llvm.assume(i1 %i.du)
  call void @llvm.assume(i1 %i.dv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i6) ]
  %i.dw = icmp eq i64 %i.dt, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  %i.dx = sub nuw nsw i64 -16, %i.dq
  %i.dy = getelementptr inbounds i8, ptr %.val.i6, i64 %i.dx
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 16) #63, !noalias !69133
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.p, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !69134 ; 2 uses
  %i.dz = icmp eq i64 %.val3.i, 0
  br i1 %i.dz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdxgIq2b31Ya_15hyperloglogplus8encoding9DifIntVecECsjjpCCFGI3ul_14lance_encoding.exit11.i, label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %.val4.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !69133, !nonnull !75, !noundef !75
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val3.i, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !69135
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdxgIq2b31Ya_15hyperloglogplus8encoding9DifIntVecECsjjpCCFGI3ul_14lance_encoding.exit11.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdxgIq2b31Ya_15hyperloglogplus8encoding9DifIntVecECsjjpCCFGI3ul_14lance_encoding.exit11.i: ; preds = %bb.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetmEECsjjpCCFGI3ul_14lance_encoding.exit.i
  %.val7.i = load i64, ptr %.sroa.858.0..sroa_idx.i, align 8, !range !99, !alias.scope !69133, !noundef !75 ; 2 uses
  %i.ea = icmp sgt i64 %.val7.i, 0
  br i1 %i.ea, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsdxgIq2b31Ya_15hyperloglogplus15hyperloglogplus15HyperLogLogPlusNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECsjjpCCFGI3ul_14lance_encoding.exit

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdxgIq2b31Ya_15hyperloglogplus8encoding9DifIntVecECsjjpCCFGI3ul_14lance_encoding.exit11.i
  %.val8.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !69133, !nonnull !75, !noundef !75
  %i.eb = shl nuw i64 %.val7.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) 4) #63, !noalias !69133
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsdxgIq2b31Ya_15hyperloglogplus15hyperloglogplus15HyperLogLogPlusNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsdxgIq2b31Ya_15hyperloglogplus15hyperloglogplus15HyperLogLogPlusNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdxgIq2b31Ya_15hyperloglogplus8encoding9DifIntVecECsjjpCCFGI3ul_14lance_encoding.exit11.i, %bb.r
  resume { ptr, i32 } %.pn.i

.loopexit88.i:                                    ; preds = %bb.x, %bb.m
  %lpad.loopexit90.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit

.loopexit.split-lp89.i:                           ; preds = %bb.br
  %lpad.loopexit.split-lp91.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.s:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !69136)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !69137, !noalias !69138, !noundef !75
  call void @llvm.experimental.noalias.scope.decl(metadata !69139)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !69140, !noalias !69141, !noundef !75 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = atomicrmw add ptr %i.ef, i64 1 monotonic, align 8, !noalias !69142
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !alias.scope !69143, !noalias !69141, !noundef !75 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !69143, !noalias !69141, !noundef !75 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !69143, !noalias !69141, !noundef !75 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !69143, !noalias !69141, !noundef !75 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !69143, !noalias !69141, !noundef !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69144
  store ptr %i.ef, ptr %i.b, align 8, !noalias !69145
  store ptr %i.ej, ptr %.sroa.7.0..sroa_idx.i27.i, align 8, !noalias !69145
  store i64 %i.el, ptr %.sroa.9.0..sroa_idx.i28.i, align 8, !noalias !69145
  store i64 %i.en, ptr %.sroa.10.0..sroa_idx.i29.i, align 8, !noalias !69145
  store i64 %i.ep, ptr %.sroa.11.0..sroa_idx.i30.i, align 8, !noalias !69145
  store i64 %i.er, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !noalias !69145
  %.not2.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not2.i.i.i, label %bb.w, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i

bb.w:                                             ; preds = %bb.v
  %i.es = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !69146
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.x, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i unwind label %.loopexit88.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sroa.02.0.ph.i.i = phi ptr [ null, %bb.w ], [ %i.ef, %bb.v ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69144
  br label %bb.y

bb.y:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i, %bb.s
  %.sroa.7.021.i.i = phi ptr [ undef, %bb.s ], [ %i.ej, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %.sroa.9.019.i.i = phi i64 [ undef, %bb.s ], [ %i.el, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %.sroa.10.017.i.i = phi i64 [ undef, %bb.s ], [ %i.en, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %.sroa.11.015.i.i = phi i64 [ undef, %bb.s ], [ %i.ep, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %.sroa.12.013.i.i = phi i64 [ undef, %bb.s ], [ %i.er, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %.sroa.02.0.i31.i = phi ptr [ null, %bb.s ], [ %.sroa.02.0.ph.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferE6filterNCNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB1R_9ArrayIterRINtNtNtB1T_5array10byte_array16GenericByteArrayINtNtB1T_5types17GenericStringTypelEEE3new0ECsjjpCCFGI3ul_14lance_encoding.exit.sink.split.i.i ]
  %i.eu = lshr i64 %i.ed, 2
  %i.ev = add nsw i64 %i.eu, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !69123
  store i64 0, ptr %i.d, align 8, !noalias !69123
  store i64 0, ptr %.sroa.313.0..sroa_idx.i, align 8, !noalias !69123
  store ptr %i.cw, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !69123
  store ptr %.sroa.02.0.i31.i, ptr %.sroa.515.sroa.2.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store ptr %.sroa.7.021.i.i, ptr %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 %.sroa.9.019.i.i, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 %.sroa.10.017.i.i, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 %.sroa.11.015.i.i, ptr %.sroa.515.sroa.6.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 %.sroa.12.013.i.i, ptr %.sroa.515.sroa.7.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 0, ptr %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  store i64 %i.ev, ptr %.sroa.515.sroa.9.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !noalias !69123
  br label %bb.z

bb.z:                                             ; preds = %_RNvXs0_NtCsdxgIq2b31Ya_15hyperloglogplus15hyperloglogplusINtB5_15HyperLogLogPlusNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtB7_11HyperLogLogB1g_E5countCsjjpCCFGI3ul_14lance_encoding.exit.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !69147)
  %i.ew = load ptr, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !69123, !noundef !75 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.ex = load i64, ptr %.sroa.515.sroa.9.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69148, !noalias !69149, !noundef !75 ; 2 uses
  %i.ey = load ptr, ptr %.sroa.515.sroa.2.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69147, !noalias !69123
  %.fr.i.i = freeze ptr %i.ey                     ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i, null
  %i.ez = load i64, ptr %.sroa.515.sroa.6.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69147, !noalias !69123
  %i.fa = load ptr, ptr %.sroa.515.sroa.3.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69147, !noalias !69123
  %i.fb = load i64, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69147, !noalias !69123
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 56 ; 2 uses
  %i.ff = load i64, ptr %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69150, !noalias !69149, !noundef !75 ; 5 uses
  %i.fg = icmp eq i64 %i.ff, %i.ex                ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i
  br i1 %i.fg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph.split.us.split.i.i
  %i.fh = load ptr, ptr %i.fe, align 8, !alias.scope !69151, !noalias !69152, !noundef !75 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.us.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %.lr.ph44.split.i.i

.lr.ph44.split.i.i:                               ; preds = %.lr.ph44.i.i
  %i.fi = load i64, ptr %i.fd, align 8, !alias.scope !69151, !noalias !69152, !noundef !75
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = load ptr, ptr %i.fc, align 8, !alias.scope !69151, !noalias !69152, !noundef !75 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69153)
  call void @llvm.experimental.noalias.scope.decl(metadata !69154)
  call void @llvm.experimental.noalias.scope.decl(metadata !69155)
  call void @llvm.experimental.noalias.scope.decl(metadata !69156)
  %i.fl = add i64 %i.ff, 1                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69151)
  %i.fm = icmp ult i64 %i.fl, %i.fj
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fo = load i32, ptr %i.fn, align 4, !noalias !69157, !noundef !75
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.ff
  %i.fq = load i32, ptr %i.fp, align 4, !noalias !69157, !noundef !75 ; 2 uses
  %i.fr = sub i32 %i.fo, %i.fq                    ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, -1
  call void @llvm.assume(i1 %i.fs)
  store i64 %i.fl, ptr %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69148, !noalias !69149
  br label %.noexc21.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i
  br i1 %i.fg, label %.split.us.thread60.i.i, label %.lr.ph38.i.preheader.i

.lr.ph38.i.preheader.i:                           ; preds = %.lr.ph.split.split.i.i
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.ez)
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.thread.i.i, %.lr.ph38.i.preheader.i
  %i.ft = phi i64 [ %i.gg, %.thread.i.i ], [ %i.ff, %.lr.ph38.i.preheader.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69153)
  call void @llvm.experimental.noalias.scope.decl(metadata !69154)
  call void @llvm.experimental.noalias.scope.decl(metadata !69155)
  call void @llvm.experimental.noalias.scope.decl(metadata !69156)
  %exitcond.not.i = icmp eq i64 %i.ft, %umax.i
  br i1 %exitcond.not.i, label %.split27.us.i.invoke.i, label %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, !prof !81

.split27.us.i.invoke.i:                           ; preds = %bb.ay, %.lr.ph38.i.i
  %i.fu = phi ptr [ @239, %.lr.ph38.i.i ], [ @87, %bb.ay ]
  %i.fv = phi i64 [ 36, %.lr.ph38.i.i ], [ 40, %bb.ay ]
  %i.fw = phi ptr [ @241, %.lr.ph38.i.i ], [ @2738, %bb.ay ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef %i.fv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw) #66
          to label %.split27.us.i.cont.i unwind label %.loopexit.split-lp.i

.split27.us.i.cont.i:                             ; preds = %.split27.us.i.invoke.i
  unreachable

_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %.lr.ph38.i.i
  %i.fx = add i64 %i.ft, %i.fb                    ; 2 uses
  %i.fy = lshr i64 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !69158, !noundef !75
  %i.gb = trunc i64 %i.fx to i8
  %i.gc = and i8 %i.gb, 7
  %i.gd = xor i8 %i.ga, -1
  %i.ge = lshr i8 %i.gd, %i.gc
  %i.gf = trunc i8 %i.ge to i1
  %i.gg = add i64 %i.ft, 1                        ; 5 uses
  store i64 %i.gg, ptr %.sroa.515.sroa.8.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69148, !noalias !69149
  br i1 %i.gf, label %.thread.i.i, label %bb.ab

.split.us.thread60.i.i:                           ; preds = %.lr.ph.split.split.i.i, %.thread.i.i
  %i.gh = atomicrmw sub ptr %.fr.i.i, i64 1 release, align 8, !noalias !69159
  %i.gi = icmp eq i64 %i.gh, 1
  br i1 %i.gi, label %bb.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.aa:                                            ; preds = %.split.us.thread60.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.515.sroa.2.0..sroa.515.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit.i unwind label %.body.i.thread, !noalias !69160

.body.i.thread:                                   ; preds = %bb.aa
  %i.gj = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !69161, !noalias !69162
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ab:                                            ; preds = %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !69151)
  %i.gk = load ptr, ptr %i.fc, align 8, !alias.scope !69151, !noalias !69152, !noundef !75 ; 2 uses
  %i.gl = load i64, ptr %i.fd, align 8, !alias.scope !69151, !noalias !69152, !noundef !75
  %i.gm = lshr i64 %i.gl, 2
  %i.gn = icmp ult i64 %i.gg, %i.gm
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gg
  %i.gp = load i32, ptr %i.go, align 4, !noalias !69157, !noundef !75
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ft
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !69157, !noundef !75 ; 2 uses
  %i.gs = load ptr, ptr %i.fe, align 8, !alias.scope !69151, !noalias !69152, !noundef !75 ; 2 uses
  %i.gt = sub i32 %i.gp, %i.gr                    ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  %.not.i34.i = icmp eq ptr %i.gs, null
  br i1 %.not.i34.i, label %.thread.i.i, label %.noexc21.i

.thread.i.i:                                      ; preds = %bb.ab, %_RNvMNtCs4ytUTZt2Gw9_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.gv = icmp eq i64 %i.gg, %i.ex
  br i1 %i.gv, label %.split.us.thread60.i.i, label %.lr.ph38.i.i

.loopexit.i:                                      ; preds = %bb.ao, %bb.bn, %bb.bd, %bb.ar, %bb.ap
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah, %.split27.us.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ] ; 4 uses
  %.pr = load ptr, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !69163
  call void @llvm.experimental.noalias.scope.decl(metadata !69164)
  call void @llvm.experimental.noalias.scope.decl(metadata !69165)
  call void @llvm.experimental.noalias.scope.decl(metadata !69166)
  call void @llvm.experimental.noalias.scope.decl(metadata !69167)
  %i.gw = icmp eq ptr %.pr, null
  br i1 %i.gw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ac

bb.ac:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !69168)
  call void @llvm.experimental.noalias.scope.decl(metadata !69169)
  %i.gx = load ptr, ptr %.sroa.515.sroa.2.0..sroa.515.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !69170, !noundef !75 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gz = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !69171
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %bb.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.515.sroa.2.0..sroa.515.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs4ytUTZt2Gw9_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array10byte_array16GenericByteArrayINtNtB1m_5types17GenericStringTypelEEEEECsjjpCCFGI3ul_14lance_encoding.exit unwind label %bb.bu

.noexc21.i:                                       ; preds = %bb.ab, %.lr.ph44.split.i.i
  %.us-phi.i.i = phi i32 [ %i.fq, %.lr.ph44.split.i.i ], [ %i.gr, %bb.ab ]
  %.us-phi21.i.i = phi ptr [ %i.fh, %.lr.ph44.split.i.i ], [ %i.gs, %bb.ab ]
  %.us-phi22.i.i = phi i32 [ %i.fr, %.lr.ph44.split.i.i ], [ %i.gt, %bb.ab ]
  %i.hb = sext i32 %.us-phi.i.i to i64
  %i.hc = getelementptr inbounds i8, ptr %.us-phi21.i.i, i64 %i.hb
  %i.hd = zext nneg i32 %.us-phi22.i.i to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !69172)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69173
  %i.he = load <2 x i64>, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !69123 ; 3 uses
  %i.hf = shufflevector <2 x i64> %i.he, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hg = xor <2 x i64> %i.hf, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.hg, ptr %i.c, align 16, !alias.scope !69174, !noalias !69123
  %i.hh = shufflevector <2 x i64> %i.he, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.hi = xor <2 x i64> %i.hh, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.hi, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !69174, !noalias !69123
  store <2 x i64> %i.he, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !69174, !noalias !69123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !69174, !noalias !69123
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hc, i64 noundef %i.hd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69175
  store i8 -1, ptr %i.a, align 1, !noalias !69175
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !69176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69175
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !69177, !noalias !69123
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !69177, !noalias !69123
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !69177, !noalias !69123 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !69177, !noalias !69123
  %i.hj = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !69177, !noalias !69123, !noundef !75
  %i.hk = shl i64 %i.hj, 56
  %i.hl = load i64, ptr %i.co, align 8, !alias.scope !69177, !noalias !69123, !noundef !75
  %i.hm = or i64 %i.hk, %i.hl                     ; 2 uses
  %i.hn = xor i64 %i.hm, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.ho = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.hp = add i64 %i.hn, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.hq = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.hr = xor i64 %i.hq, %i.ho                    ; 3 uses
  %i.hs = call noundef i64 @llvm.fshl.i64(i64 %i.hn, i64 %i.hn, i64 16)
  %i.ht = xor i64 %i.hs, %i.hp                    ; 3 uses
  %i.hu = call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 32)
  %i.hv = add i64 %i.hp, %i.hr                    ; 3 uses
  %i.hw = add i64 %i.ht, %i.hu                    ; 2 uses
  %i.hx = call noundef i64 @llvm.fshl.i64(i64 %i.hr, i64 %i.hr, i64 17)
  %i.hy = xor i64 %i.hv, %i.hx                    ; 3 uses
  %i.hz = call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 21)
  %i.ia = xor i64 %i.hz, %i.hw                    ; 3 uses
  %i.ib = call noundef i64 @llvm.fshl.i64(i64 %i.hv, i64 %i.hv, i64 32)
  %i.ic = xor i64 %i.hw, %i.hm
  %i.id = xor i64 %i.ib, 255
  %i.ie = add i64 %i.ic, %i.hy                    ; 3 uses
  %i.if = add i64 %i.ia, %i.id                    ; 2 uses
  %i.ig = call noundef i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 13)
  %i.ih = xor i64 %i.ie, %i.ig                    ; 3 uses
  %i.ii = call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 16)
  %i.ij = xor i64 %i.ii, %i.if                    ; 3 uses
  %i.ik = call noundef i64 @llvm.fshl.i64(i64 %i.ie, i64 %i.ie, i64 32)
  %i.il = add i64 %i.ih, %i.if                    ; 3 uses
  %i.im = add i64 %i.ij, %i.ik                    ; 2 uses
  %i.in = call noundef i64 @llvm.fshl.i64(i64 %i.ih, i64 %i.ih, i64 17)
  %i.io = xor i64 %i.il, %i.in                    ; 3 uses
  %i.ip = call noundef i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 21)
  %i.iq = xor i64 %i.ip, %i.im                    ; 3 uses
  %i.ir = call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 32)
  %i.is = add i64 %i.io, %i.im                    ; 3 uses
  %i.it = add i64 %i.iq, %i.ir                    ; 2 uses
  %i.iu = call noundef i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 13)
  %i.iv = xor i64 %i.iu, %i.is                    ; 3 uses
  %i.iw = call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 16)
  %i.ix = xor i64 %i.iw, %i.it                    ; 3 uses
  %i.iy = call noundef i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 32)
  %i.iz = add i64 %i.iv, %i.it                    ; 3 uses
  %i.ja = add i64 %i.ix, %i.iy                    ; 2 uses
  %i.jb = call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 17)
  %i.jc = xor i64 %i.jb, %i.iz                    ; 3 uses
  %i.jd = call noundef i64 @llvm.fshl.i64(i64 %i.ix, i64 %i.ix, i64 21)
  %i.je = xor i64 %i.jd, %i.ja                    ; 3 uses
  %i.jf = call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 32)
  %i.jg = add i64 %i.jc, %i.ja
  %i.jh = add i64 %i.je, %i.jf                    ; 2 uses
  %i.ji = call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 13)
  %i.jj = xor i64 %i.ji, %i.jg                    ; 3 uses
  %i.jk = call noundef i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 16)
  %i.jl = xor i64 %i.jk, %i.jh                    ; 2 uses
  %i.jm = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jn = call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 17)
  %i.jo = call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 21)
  %i.jp = call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 32)
  %i.jq = xor i64 %i.jo, %i.jn
  %i.jr = xor i64 %i.jq, %i.jp
  %i.js = xor i64 %i.jr, %i.jm                    ; 5 uses
  %i.jt = load i64, ptr %.sroa.858.0..sroa_idx.i, align 8, !range !99, !alias.scope !69172, !noalias !69178, !noundef !75
end_hunk_0
